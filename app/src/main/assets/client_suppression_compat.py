# -*- coding: utf-8 -*-
# client_suppression_compat.py
#
# Optimized build:
# - Large caches with short TTL for immediate refresh on hero changes.
# - Throttled recalculation to avoid repeated updateScore() calls.
# - Thread-safe cache lock included.
#
# NOTE:
# Real background threads are NOT used for game logic because game UI/avatar
# data is not thread-safe. Caching + throttling is used instead to prevent
# crashes while reducing main-thread load.

import time
import gg
from entity.avatar_members import BattleStageMember as _q7_yazhi_member

try:
    import threading
    _q7_cache_lock = threading.RLock()
except Exception:
    class _Q7DummyLock(object):
        def __enter__(self):
            return self

        def __exit__(self, exc_type, exc_value, traceback):
            return False

        def acquire(self, *args, **kwargs):
            return True

        def release(self, *args, **kwargs):
            pass

    _q7_cache_lock = _Q7DummyLock()

# ---------------------------------------------------------------------
# Cache TTL settings
# ---------------------------------------------------------------------
# Short TTL for score to ensure "immediate refresh" after hero upgrades.
_Q7_SCORE_TTL = 5.0

# Availability can change after battle / mission progress.
_Q7_AVAILABLE_TTL = 10.0

# Mission config table is normally static for the whole session.
_Q7_RULE_TTL = 86400.0

# Threshold may depend on account progress, but normally changes slowly.
_Q7_THRESHOLD_TTL = 60.0

# Battle stage button visibility does not need fast refresh.
_Q7_BUTTON_TTL = 30.0

# History stamp cache is short, because pass history can change.
_Q7_HISTORY_TTL = 10.0

# Very large cache limit.
_Q7_CACHE_LIMIT = 200000

_Q7_MISS = object()

_q7_score_cache = {}
_q7_available_cache = {}
_q7_rule_cache = {}
_q7_threshold_cache = {}
_q7_button_cache = {}
_q7_history_cache = {}


# ---------------------------------------------------------------------
# Small cache helpers
# ---------------------------------------------------------------------
def _q7_now():
    return time.time()


def _q7_cache_get(cache, key, ttl, now=None):
    if now is None:
        now = _q7_now()

    with _q7_cache_lock:
        row = cache.get(key)
        if row is None:
            return _Q7_MISS

        if now - row[0] >= ttl:
            return _Q7_MISS

        return row[1]


def _q7_cache_prune(cache, ttl, now):
    if len(cache) <= _Q7_CACHE_LIMIT:
        return

    expired = []
    for key, row in cache.items():
        if now - row[0] >= ttl:
            expired.append(key)

    for key in expired:
        cache.pop(key, None)

    if len(cache) <= _Q7_CACHE_LIMIT:
        return

    overflow = len(cache) - _Q7_CACHE_LIMIT + (_Q7_CACHE_LIMIT // 10 or 1)
    for key in list(cache.keys())[:overflow]:
        cache.pop(key, None)


def _q7_cache_set(cache, key, value, ttl, now=None):
    if now is None:
        now = _q7_now()

    with _q7_cache_lock:
        cache[key] = (now, value)
        if len(cache) > _Q7_CACHE_LIMIT:
            _q7_cache_prune(cache, ttl, now)


def _q7_clear_dynamic():
    with _q7_cache_lock:
        _q7_available_cache.clear()
        _q7_button_cache.clear()
        _q7_history_cache.clear()


# ---------------------------------------------------------------------
# Safe attribute helpers
# ---------------------------------------------------------------------
def _q7_unwrap(fn):
    if fn is None:
        return None

    fn = getattr(fn, "im_func", fn)
    fn = getattr(fn, "__func__", fn)
    return fn


def _q7_has_marker(cls, marker):
    try:
        if getattr(cls, marker, False):
            return True
    except Exception:
        pass

    for dict_name in ("dict", "__dict__"):
        try:
            d = getattr(cls, dict_name, None)
            if d is not None and d.get(marker, False):
                return True
        except Exception:
            pass

    return False


def _q7_set_marker(cls, marker):
    try:
        setattr(cls, marker, True)
    except Exception:
        pass


def _q7_hash_key(value):
    try:
        hash(value)
        return value
    except Exception:
        return repr(value)


def _q7_userid(avatar):
    try:
        return _q7_hash_key(getattr(avatar, "userid", None))
    except Exception:
        return None


def _q7_get_week(avatar):
    try:
        return int(avatar.weeknumData.weeknum or 0)
    except Exception:
        return 0


def _q7_hero_tuple(heroes):
    if heroes is None:
        return ()

    if isinstance(heroes, tuple):
        return heroes

    if isinstance(heroes, list):
        return tuple(heroes)

    try:
        return tuple(heroes)
    except Exception:
        return (heroes,)


# ---------------------------------------------------------------------
# Mission rule / history / threshold / score cache
# ---------------------------------------------------------------------
def _q7_get_rule(sceneId):
    now = _q7_now()
    key = _q7_hash_key(sceneId)

    cached = _q7_cache_get(_q7_rule_cache, key, _Q7_RULE_TTL, now)
    if cached is not _Q7_MISS:
        return cached

    rule = {}
    try:
        from com.data.cdata import mission as _q7_missions
        rule = _q7_missions.data.get(sceneId, {}) or {}
    except Exception:
        rule = {}

    _q7_cache_set(_q7_rule_cache, key, rule, _Q7_RULE_TTL, now)
    return rule


def _q7_get_history(avatar):
    try:
        history = avatar.battleStageData.passStageHistory
        if history is None:
            return {}
        return history
    except Exception:
        return {}


def _q7_history_stamp(history):
    if not history:
        return 0

    try:
        stamp = len(history)
        for value in history.values():
            try:
                stamp += int(value or 0)
            except Exception:
                pass
        return stamp
    except Exception:
        try:
            return id(history)
        except Exception:
            return 0


def _q7_history_stamp_cached(history, now=None):
    if not history:
        return 0

    if now is None:
        now = _q7_now()

    try:
        key = (id(history), len(history))
    except Exception:
        return _q7_history_stamp(history)

    cached = _q7_cache_get(_q7_history_cache, key, _Q7_HISTORY_TTL, now)
    if cached is not _Q7_MISS:
        return cached

    stamp = _q7_history_stamp(history)
    _q7_cache_set(_q7_history_cache, key, stamp, _Q7_HISTORY_TTL, now)
    return stamp


def _q7_get_threshold(avatar, sceneId, week, now=None):
    if now is None:
        now = _q7_now()

    key = (_q7_userid(avatar), _q7_hash_key(sceneId), week)
    cached = _q7_cache_get(_q7_threshold_cache, key, _Q7_THRESHOLD_TTL, now)
    if cached is not _Q7_MISS:
        return cached

    threshold = 0
    try:
        threshold = int(avatar.battleYazhiGetScoreThreshold(sceneId) or 0)
    except Exception:
        threshold = 0

    _q7_cache_set(_q7_threshold_cache, key, threshold, _Q7_THRESHOLD_TTL, now)
    return threshold


def _q7_hero_score(avatar, hero_id):
    now = _q7_now()
    key = (_q7_userid(avatar), _q7_hash_key(hero_id))

    cached = _q7_cache_get(_q7_score_cache, key, _Q7_SCORE_TTL, now)
    if cached is not _Q7_MISS:
        return cached

    score = 0
    try:
        hero = avatar.heroMgrData.getHero(hero_id)
        if hero is not None:
            score = int(hero.updateScore() or 0)
    except Exception:
        score = 0

    _q7_cache_set(_q7_score_cache, key, score, _Q7_SCORE_TTL, now)
    return score


def _q7_team_score(avatar, heroes):
    total = 0
    for hero_id in heroes:
        total += _q7_hero_score(avatar, hero_id)
    return total


def _q7_button_visible(stage_id):
    now = _q7_now()
    key = _q7_hash_key(stage_id)

    cached = _q7_cache_get(_q7_button_cache, key, _Q7_BUTTON_TTL, now)
    if cached is not _Q7_MISS:
        return cached

    rule = _q7_get_rule(stage_id)
    visible = False

    try:
        visible = bool(rule.get("yazhi_available", False))
    except Exception:
        visible = False

    _q7_cache_set(_q7_button_cache, key, visible, _Q7_BUTTON_TTL, now)
    return visible


# ---------------------------------------------------------------------
# Avatar patch
# ---------------------------------------------------------------------
def _q7_install_yazhi(avatar_class):
    if avatar_class is None:
        return

    if _q7_has_marker(avatar_class, "_q7_yazhi_score_v2"):
        return

    current = getattr(avatar_class, "battleYazhiAvailable", None)
    if getattr(current, "_q7_yazhi_patch", False):
        _q7_set_marker(avatar_class, "_q7_yazhi_score_v2")
        return

    original_available = getattr(avatar_class, "_q7_yazhi_original_available", None)
    if original_available is None:
        original_available = _q7_unwrap(current)

    if original_available is None or not callable(original_available):
        def original_available(self, sceneId, heroes):
            return False

    def _q7_yazhi_available(self, sceneId, heroes):
        now = _q7_now()
        week = _q7_get_week(self)

        if week < 1:
            return False

        hero_tuple = _q7_hero_tuple(heroes)
        hero_key = repr(hero_tuple)
        userid = _q7_userid(self)

        # Second and later weeks: keep stock logic, but cache it briefly.
        if week >= 2:
            key = (
                "orig",
                userid,
                week,
                _q7_hash_key(sceneId),
                hero_key,
            )

            cached = _q7_cache_get(_q7_available_cache, key, _Q7_AVAILABLE_TTL, now)
            if cached is not _Q7_MISS:
                return cached

            result = False
            try:
                result = bool(original_available(self, sceneId, heroes))
            except Exception:
                result = False

            _q7_cache_set(_q7_available_cache, key, result, _Q7_AVAILABLE_TTL, now)
            return result

        # Local story week == 1: optimized local eligibility logic.
        history = _q7_get_history(self)
        history_stamp = _q7_history_stamp_cached(history, now)
        threshold = _q7_get_threshold(self, sceneId, week, now)

        key = (
            "local",
            userid,
            week,
            _q7_hash_key(sceneId),
            hero_key,
            history_stamp,
            threshold,
        )

        cached = _q7_cache_get(_q7_available_cache, key, _Q7_AVAILABLE_TTL, now)
        if cached is not _Q7_MISS:
            return cached

        result = False

        try:
            rule = _q7_get_rule(sceneId)
            if not rule.get("yazhi_available", False):
                result = False
            else:
                scenes = [sceneId]

                try:
                    suppress_ids = rule.get("suppress_mission_ids", ()) or ()
                    scenes.extend(tuple(suppress_ids))
                except Exception:
                    pass

                passed = False
                for scene in scenes:
                    try:
                        if int(history.get(scene, 0) or 0) > 0:
                            passed = True
                            break
                    except Exception:
                        pass

                if not passed:
                    result = False
                else:
                    score = _q7_team_score(self, hero_tuple)
                    result = score >= threshold
        except Exception:
            result = False

        _q7_cache_set(_q7_available_cache, key, result, _Q7_AVAILABLE_TTL, now)
        return result

    def _q7_yazhi_ask(self, areaId, sceneId, heroes):
        hero_tuple = _q7_hero_tuple(heroes)

        if not self.battleYazhiAvailable(sceneId, hero_tuple):
            return

        score = _q7_team_score(self, hero_tuple)

        try:
            gg.ui.lock("yazhi")
        except Exception:
            pass

        def _q7_ask_callback(*args, **kwargs):
            try:
                gg.ui.unlock("yazhi")
            except Exception:
                pass

            try:
                _q7_clear_dynamic()
            except Exception:
                pass

        payload = {
            "a": areaId,
            "s": sceneId,
            "h": list(hero_tuple),
            "q7Score": int(score),
        }

        try:
            self.callServerMethod("battleYazhiAsk", payload, callback=_q7_ask_callback)
        except Exception:
            try:
                gg.ui.unlock("yazhi")
            except Exception:
                pass

    _q7_yazhi_available._q7_yazhi_patch = True
    _q7_yazhi_ask._q7_yazhi_patch = True

    try:
        avatar_class._q7_yazhi_original_available = original_available
    except Exception:
        pass

    try:
        setattr(avatar_class, "battleYazhiAvailable", _q7_yazhi_available)
        setattr(avatar_class, "battleYazhiAsk", _q7_yazhi_ask)
    except Exception:
        pass

    try:
        avatar_class._q7_yazhi_clear_cache = _q7_clear_dynamic
    except Exception:
        pass

    _q7_set_marker(avatar_class, "_q7_yazhi_score_v2")


# ---------------------------------------------------------------------
# Battle stage panel patch
# ---------------------------------------------------------------------
def _q7_install_yazhi_panel(panel_class):
    if panel_class is None:
        return

    if _q7_has_marker(panel_class, "_q7_yazhi_panel_v2"):
        return

    current = getattr(panel_class, "update_yazhi_buffon", None)
    if getattr(current, "_q7_yazhi_patch", False):
        _q7_set_marker(panel_class, "_q7_yazhi_panel_v2")
        return

    original_update = getattr(panel_class, "_q7_yazhi_original_update", None)
    if original_update is None:
        original_update = _q7_unwrap(current)

    if original_update is None or not callable(original_update):
        return

    def _q7_yazhi_button(self):
        result = original_update(self)

        try:
            week = gg.avatar.weeknumData.weeknum
        except Exception:
            week = 0

        if week == 1:
            try:
                visible = _q7_button_visible(getattr(self, "stage_id", None))
                self.yazhi_button.setVisible(bool(visible))
            except Exception:
                pass

        return result

    _q7_yazhi_button._q7_yazhi_patch = True

    try:
        panel_class._q7_yazhi_original_update = original_update
        setattr(panel_class, "update_yazhi_buffon", _q7_yazhi_button)
    except Exception:
        pass

    _q7_set_marker(panel_class, "_q7_yazhi_panel_v2")


# ---------------------------------------------------------------------
# Install
# ---------------------------------------------------------------------
try:
    _q7_install_yazhi(_q7_yazhi_member.Member)
except Exception:
    pass

try:
    if getattr(gg, "avatar", None) is not None:
        _q7_install_yazhi(type(gg.avatar))
except Exception:
    pass

try:
    from cocos.panels import battle_stage as _q7_yazhi_panel
    _q7_install_yazhi_panel(_q7_yazhi_panel.Panel)
except Exception:
    pass

try:
    _q7_active_stage = getattr(gg.ui.panels, "battle_stage", None)
    if _q7_active_stage is not None and hasattr(type(_q7_active_stage), "update_yazhi_buffon"):
        _q7_install_yazhi_panel(type(_q7_active_stage))
except Exception:
    pass

try:
    gg.avatar.callServerMethod("evalEcho", {"m": "q7_yazhi_score_v2"})
except Exception:
    pass