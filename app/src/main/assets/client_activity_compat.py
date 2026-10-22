# -*- coding: utf-8 -*-
# Reuse the stock costume-sale banner and shop, without opening unrelated events.
# Optimized: one-pass shop index + single bulk table copy per table.
import time as _q7_activity_time
import gg
import com.data.cdata.skin as _q7_activity_skin
import com.data.cdata.item_store as _q7_activity_shop
import com.data.cdata.huodong_main as _q7_activity_main
import com.data.cdata.ui_comp_data as _q7_activity_ui
import com.utils.runtime_mapping_table as _q7_activity_mapping

try:
    _q7_skin_windows
except NameError:
    _q7_skin_windows = {}


def _q7_activity_apply_bulk(module, table, changes):
    if not changes:
        return
    new_data = dict(module.data)
    for key, values in changes.items():
        row = dict(new_data.get(key, {}))
        row.update(values)
        new_data[key] = row
    module.data = new_data
    bucket = _q7_activity_mapping._CELL_MAPPING_CONFIG.setdefault(table, {})
    for key, values in changes.items():
        bucket.setdefault(key, {}).update(values)


def _q7_build_skin_shop_index():
    index = {}
    for shop_id, product in _q7_activity_shop.data.items():
        if product.get('isSkin'):
            index.setdefault(product.get('item_num'), []).append(shop_id)
    return index


_q7_active_skins = []
try:
    _q7_activity_now = int(_q7_activity_time.time())
    _q7_shop_index = _q7_build_skin_shop_index()
    _q7_skin_changes = {}
    _q7_shop_changes = {}

    for _q7_sid, _q7_range in sorted(_q7_skin_windows.items()):
        # The stock UI compares these calendar tuples with guessServerTime's gmtime.
        if _q7_range == (0, 0):
            _q7_dates = (2000, 1, 1, 0, 0, 0) * 2
        else:
            _q7_dates = tuple(_q7_activity_time.gmtime(_q7_range[0])[:6])
            _q7_dates += tuple(_q7_activity_time.gmtime(_q7_range[1])[:6])
        _q7_skin_changes[_q7_sid] = {'fix_time': _q7_dates}
        _q7_skin = _q7_activity_skin.data.get(_q7_sid, {})
        for _q7_shop_id in _q7_shop_index.get(_q7_skin.get('item'), ()):
            _q7_shop_changes[_q7_shop_id] = {'fix_time': _q7_dates, 'pre_time': (), 'open': 1}
        if _q7_range[0] <= _q7_activity_now < _q7_range[1]:
            _q7_active_skins.append(_q7_sid)

    _q7_activity_apply_bulk(_q7_activity_skin, 'skin', _q7_skin_changes)
    _q7_activity_apply_bulk(_q7_activity_shop, 'item_store', _q7_shop_changes)

    _q7_banner_id = 900215
    _q7_banner = {'id': _q7_banner_id, 'pid': 215, 'gid': _q7_banner_id, 'sort_id': 2,
                  'name': u'\u65f6\u88c5\u590d\u523b'.encode('utf-8'), 'sid': 1,
                  'tab': 'gui_activity_tab_29.png', 'ui_idxs': (9002151, 9002152)}
    _q7_ui_changes = {}
    if _q7_active_skins:
        _q7_start = min(_q7_skin_windows[s][0] for s in _q7_active_skins)
        _q7_end = max(_q7_skin_windows[s][1] for s in _q7_active_skins)
        _q7_banner['fix_time'] = tuple(_q7_activity_time.gmtime(_q7_start)[:6]) + tuple(_q7_activity_time.gmtime(_q7_end)[:6])
        _q7_banner['timedesc'] = u'\u65f6\u88c5\u590d\u523b'.encode('utf-8')
        for _q7_index in range(2):
            _q7_skin = _q7_activity_skin.data[_q7_active_skins[min(_q7_index, len(_q7_active_skins) - 1)]]
            _q7_image = dict(_q7_activity_ui.data[_q7_index + 1])
            _q7_image.update({'id': 9002151 + _q7_index, 'hero_id': _q7_skin['hero'],
                              'image': str(_q7_skin['painting']) + '.png'})
            _q7_ui_changes[9002151 + _q7_index] = _q7_image
    else:
        _q7_banner['fix_time'] = (2000, 1, 1, 0, 0, 0) * 2

    _q7_activity_apply_bulk(_q7_activity_ui, 'ui_comp_data', _q7_ui_changes)
    _q7_activity_apply_bulk(_q7_activity_main, 'huodong_main', {_q7_banner_id: _q7_banner})
except Exception:
    pass

try:
    gg.avatar.callServerMethod('evalEcho', {'m': 'q7_skin_activity_banner_v1:' + str(len(_q7_active_skins))})
except Exception:
    pass

# ===== Q7 Part A: local blackgate entry =====
# Q7 Part A18: blackgate entry + total damage + challenge record (muzhuang_combat_info)
import gg
import os

_Q7_FILE = '/data/data/com.netease.qrzd/files/q7_muzhuang.txt'
_Q7_MAX = {}
_Q7_RECS = {}


def _q7_load():
    try:
        if not os.path.exists(_Q7_FILE):
            return
        f = open(_Q7_FILE, 'r')
        for line in f:
            line = line.strip()
            parts = line.split(':')
            if not parts:
                continue
            if parts[0] == 'M' and len(parts) >= 3:
                _Q7_MAX[parts[1]] = int(parts[2])
            elif parts[0] == 'R' and len(parts) >= 5:
                _Q7_RECS.setdefault(parts[1], []).append(
                    (float(parts[2]), int(parts[3]), int(parts[4])))
        f.close()
    except Exception:
        pass


def _q7_save():
    try:
        f = open(_Q7_FILE, 'w')
        for k, v in _Q7_MAX.items():
            f.write('M:%s:%d\n' % (k, int(v)))
        for k, lst in _Q7_RECS.items():
            for ts, dmg, hero in lst[-10:]:
                f.write('R:%s:%d:%d:%d\n' % (k, int(ts), int(dmg), int(hero)))
        f.close()
    except Exception:
        pass


_q7_load()


def _q7_find_cls(mod, meth):
    for n in dir(mod):
        o = getattr(mod, n)
        if isinstance(o, type) and hasattr(o, meth):
            return o
    return None


def _q7_records_payload():
    out = {}
    for armor, lst in _Q7_RECS.items():
        rows = []
        for ts, dmg, hero in sorted(lst, key=lambda x: -x[0])[:8]:
            rows.append((ts, dmg, {hero: {'td': dmg}}, '', '',
                         {hero: 0}, 0, {hero: hero}, 0, [hero]))
        out[str(armor)] = rows
    return out


def _q7_payload():
    import com.data.cdata.blackgate_season_info as si
    seasons = sorted(set([k[0] for k in si.data.keys() if isinstance(k, tuple) and len(k) == 2]))
    season = seasons[-1] if seasons else 1
    mx = {}
    for k, v in _Q7_MAX.items():
        mx[str(k)] = int(v)
    return {
        'sn': season, 'wk': 1,
        'csn': season, 'csw': 1,
        'mps': 0, 'wmps': [0, 0],
        'pss': [], 'uh': [], 'ah': [],
        'bds': {}, 'drs': {}, 'acd': {},
        'mmd': mx, 'mci': _q7_records_payload(), 'mrmd': mx,
        'wds': None,
    }


def _q7_open_manual(avatar, payload):
    import com.const as const
    import entity.avatar_members.BlackGateMember as bgm
    bd = bgm.blackdoor_start
    avatar.blackGateData.initFromDict(payload)
    gg.ui.panels.blackgate_start.notify_show()
    scene = bd.Scene(map_id=const.SCENE_BLACK_DOOR,
                     main_ui=gg.ui.panels.blackgate_main,
                     isopen=True)
    gg.city_container.add_scene(scene.scene_id, scene)
    gg.city_container.push_scene(scene.scene_id)
    return 'manual_ok'


def _q7_unlock_entry():
    import cocos.panels.city_mainentry as cme
    import com.const as const
    P = _q7_find_cls(cme, 'on_heimenshilian_click')
    if P is None:
        return 'no_panel'
    if getattr(P, '_q7_entry_patched', False):
        return 'already'
    orig_click = P.on_heimenshilian_click

    def _click(self, sender, event, *a):
        try:
            import ccui
            if event == ccui.TOUCH_EVENT_ENDED:
                gg.audio_mgr.ui_sound('tongyong/ui_dianji')
                self.notify_heimenshilian_show()
                return
        except Exception:
            pass
        return orig_click(self, sender, event)

    P.on_heimenshilian_click = _click
    orig_lock = P.get_newbie_lock

    def _lock(self, gate_key, *a):
        try:
            if gate_key == const.MainEntryConst.TASK_HEIMENSHILIAN:
                return False
        except Exception:
            pass
        return orig_lock(self, gate_key)

    P.get_newbie_lock = _lock
    P._q7_entry_patched = True
    return 'entry_ok'


def _q7_log(m):
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': m[:700]})
    except Exception:
        pass


def _q7_total(ext):
    try:
        cf = ext.get('common_fight') or {}
        td = cf.get('total_damage') or {}
        return sum([int(v) for v in td.values()])
    except Exception:
        return 0


def _q7_finish(self, params):
    ext = params.get('e') if isinstance(params, dict) else None
    cd = getattr(self, 'combatData', None)
    dmg = _q7_total(ext) if isinstance(ext, dict) else 0
    armor = 0
    heroes = []
    try:
        armor = int(ext.get('armor_type') or 0)
    except Exception:
        pass
    try:
        heroes = list(ext.get('herolist') or [])
    except Exception:
        heroes = []
    ts = 0
    try:
        ts = float(ext.get('end_ts') or 0)
    except Exception:
        ts = 0
    if armor and dmg > 0:
        key = str(armor)
        if dmg > int(_Q7_MAX.get(key, 0)):
            _Q7_MAX[key] = dmg
        hero = heroes[0] if heroes else 0
        _Q7_RECS.setdefault(key, []).append((ts, dmg, hero))
        _q7_save()
    _q7_log('q7rec:dmg=%d armor=%s heroes=%s recs=%s' % (
        dmg, armor, heroes, {k: len(v) for k, v in _Q7_RECS.items()}))
    if cd is not None:
        for name, fn in (('finish', getattr(cd, 'combatFinish', None)),
                         ('reward', getattr(cd, 'combatReward', None))):
            if fn is None:
                continue
            try:
                if name == 'reward':
                    fn(True, ext)
                else:
                    fn()
            except Exception:
                pass
    try:
        gg.logic.finish_battle(True)
    except Exception:
        pass
    try:
        if cd is not None and getattr(cd, 'state', 0) != 0:
            cd.state = 0
    except Exception:
        pass
    try:
        bd = getattr(self, 'blackGateData', None)
        if bd is not None and armor:
            for attr, val in (('muzhuang_rewards_max_damage', _Q7_MAX),
                              ('muzhuang_max_damage', _Q7_MAX)):
                d = getattr(bd, attr, None)
                if isinstance(d, dict):
                    d.update(dict([(str(k), int(v)) for k, v in val.items()]))
            ci = getattr(bd, 'muzhuang_combat_info', None)
            if isinstance(ci, dict):
                ci.clear()
                ci.update(_q7_records_payload())
    except Exception:
        pass
    try:
        gg.ui.panels.common_message.notify_message('总伤害：%d（已记录）' % dmg)
    except Exception:
        pass


def _q7_rpc_patch():
    av = gg.avatar
    if av is None:
        return 'no_avatar'
    cls = type(av)
    if getattr(cls, '_q7_rpc_wrapped', False) or getattr(av, '_q7_rpc_wrapped', False):
        return 'already'

    def _wrap(orig):
        def _w(self, method, *a, **kw):
            if method == 'queryBlackGate':
                try:
                    r = _q7_open_manual(self, _q7_payload())
                    _q7_log('q7_bg_open_v19:%s rec=%s' % (r, repr(_Q7_MAX)))
                except Exception:
                    import traceback
                    _q7_log('q7_bg_fail_v18:' + traceback.format_exc())
                return None
            if method == 'combatOfflineFinish':
                try:
                    p = a[0] if a else kw.get('params')
                    _q7_finish(self, p)
                except Exception:
                    import traceback
                    _q7_log('q7fin_x:' + traceback.format_exc()[:500])
                return None
            return orig(self, method, *a, **kw)
        return _w

    try:
        cls.callServerMethod = _wrap(cls.callServerMethod)
        cls._q7_rpc_wrapped = True
        return 'class'
    except Exception:
        return 'failed'




def _q7_delay_patch():
    try:
        orig = gg.exec_delay

        def _w(delay, fn, *a, **kw):
            try:
                if delay == 2000:
                    delay = 8000
            except Exception:
                pass
            return orig(delay, fn, *a, **kw)

        gg.exec_delay = _w
        return 'delay_ok'
    except Exception:
        return 'delay_fail'


try:
    r0 = _q7_delay_patch()
    r1 = _q7_unlock_entry()
    r2 = _q7_rpc_patch()
    _q7_log('q7_bg_patch_v19:%s/%s/%s max=%s' % (r0, r1, r2, repr(_Q7_MAX)))
except Exception:
    import traceback
    _q7_log('q7_bg_bootfail_v19:' + traceback.format_exc())
