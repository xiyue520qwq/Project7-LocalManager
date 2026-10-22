# -*- coding: utf-8 -*-
# The stock lightning animation has four variants, but Yijieti has five ranks.
# Hardened: no permanent node caching, no list accumulation, all UI access guarded.
import types
import gg
import cocos.panels.hero_star as _q7_star
import cocos.panels.hero_star_window as _q7_window


def _q7_patch_star_animation(function):
    try:
        code = function.func_code
    except AttributeError:
        return 0
    if not all(value in code.co_consts for value in ('c', 'b', 'a', 's')):
        # Already-patched palettes need no rewrite; keep later compatibility hooks reachable.
        return 0
    template = compile("['c','b','a','s']", '<q7_palette>', 'eval')
    load = template.co_code[0]
    build = template.co_code[12]
    pop = compile('x', '<q7_pop>', 'exec').co_code[3]
    constants = list(code.co_consts)
    sequence = ''.join(load + chr(constants.index(value) & 255)
                       + chr(constants.index(value) >> 8) for value in ('c', 'b', 'a', 's'))
    sequence += build + '\x04\x00'
    if sequence not in code.co_code:
        return 0
    palette = len(constants)
    constants.append(('c', 'b', 'a', 's', 's'))
    empty = constants.index(None)
    replacement = load + chr(palette & 255) + chr(palette >> 8)
    replacement += (load + chr(empty & 255) + chr(empty >> 8) + pop) * 3
    patched = code.co_code.replace(sequence, replacement)
    function.func_code = types.CodeType(code.co_argcount, code.co_nlocals,
                                        code.co_stacksize, code.co_flags, patched, tuple(constants),
                                        code.co_names, code.co_varnames, code.co_filename,
                                        code.co_name, code.co_firstlineno, code.co_lnotab,
                                        code.co_freevars, code.co_cellvars)
    return code.co_code.count(sequence)


_q7_animation_patches = []
for _q7_method in (_q7_star.Panel.refresh, _q7_window.Panel.refresh_star):
    try:
        _q7_animation_patches.append(_q7_patch_star_animation(_q7_method.im_func))
    except Exception:
        _q7_animation_patches.append(0)
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_star_animation_v1:' + str(_q7_animation_patches)})


def _q7_update_star_items(self):
    # Fixed widgets outlive the dynamically created reward rows; re-fetch every call,
    # never cache node refs (cached refs go NULL after panel rebuild and crash setVisible).
    try:
        for name in ('fragment_name', 'fragment_num', 'fragment_name_pri', 'fragment_num_pri'):
            node = getattr(self, name, None)
            if node is not None:
                node.setString('')
        self.progress.setPercent(0)
    except Exception:
        pass
    self._q7_original_update_items()
    try:
        hero = gg.avatar.heroMgrData.getHero(self.hero_id)
        if hero and not hero.canIncStarOrder() and not self.consume:
            self.normal_visible(False)
            self.panel_break_items.setVisible(False)
            self.btn_confirm.setBright(False)
            self.title_static.set_title(u'\u5df2\u8fbe\u5347\u661f\u4e0a\u9650'.encode('utf-8'))
    except Exception:
        pass


if not hasattr(_q7_window.Panel, '_q7_original_update_items'):
    _q7_window.Panel._q7_original_update_items = _q7_window.Panel.update_items
    _q7_window.Panel.update_items = _q7_update_star_items
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_star_material_widgets_v1'})

# Offline sessions have no official gate address for combat analytics.
import cutils.dctool_log as _q7_telemetry


def _q7_offline_telemetry(*args, **kwargs):
    if not hasattr(gg, 'gate_cur'):
        return
    return _q7_telemetry._q7_original_log(*args, **kwargs)


if not hasattr(_q7_telemetry, '_q7_original_log'):
    _q7_telemetry._q7_original_log = _q7_telemetry._dctool_log
    _q7_telemetry._dctool_log = _q7_offline_telemetry
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_offline_combat_telemetry_v1'})


# Clear the battle filter before exit_result destroys its native scene node.
def _q7_story_exit_cleanup():
    try:
        mat = render.get_post_process_material('screen_filter', 0)
        mat.set_var('screen_color', (0.0, 0.0, 0.0, 0))
    except TypeError as error:
        if "can't find post effect" not in str(error):
            raise
    gg.ui.panels.combat_result.exit_result(show_ui=False)


def _q7_patch_story_exit(function):
    try:
        code = function.func_code
    except AttributeError:
        return 0
    constants = list(code.co_consts)
    count = 0
    for index, value in enumerate(constants):
        if (isinstance(value, types.CodeType) and value.co_name == 'cb'
                and not value.co_freevars and 'exit_result' in value.co_names
                and 'get_post_process_material' in value.co_names):
            constants[index] = _q7_story_exit_cleanup.func_code
            count += 1
    if count:
        function.func_code = types.CodeType(code.co_argcount, code.co_nlocals,
                                            code.co_stacksize, code.co_flags, code.co_code, tuple(constants),
                                            code.co_names, code.co_varnames, code.co_filename, code.co_name,
                                            code.co_firstlineno, code.co_lnotab, code.co_freevars,
                                            code.co_cellvars)
    return count


import combat.view.logic.events.event_base as _q7_battle_events

try:
    _q7_exit_patches = _q7_patch_story_exit(_q7_battle_events.EventBase._on_battle_finish.im_func)
except Exception:
    _q7_exit_patches = 0
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_story_exit_cleanup_v1:' + str(_q7_exit_patches)})

# Stock incremental city updates omit flags read only during initFromDict.
import entity.avatar_attrs.CityData as _q7_city_data


def _q7_set_city_data(self, city_data):
    try:
        if 'nbb' in city_data:
            self.newBeeBuild = city_data['nbb']
        if 'hb' in city_data:
            self.hidden_building = set(city_data['hb'])
    except Exception:
        pass
    return self._q7_original_set_city_data(city_data)


if not hasattr(_q7_city_data.CityData, '_q7_original_set_city_data'):
    _q7_city_data.CityData._q7_original_set_city_data = _q7_city_data.CityData.set_city_data
    _q7_city_data.CityData.set_city_data = _q7_set_city_data
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_city_build_flags_v1'})

# Preserve CR data; reuse stock stolen-title nodes only when the old layout lacks free_cr.
# IMPORTANT: build the fallback list ONLY when missing. Never append repeatedly:
# repeated appending grew the node list forever and kept stale (destroyed) node refs,
# which is what produced "self == NULL in Node_setVisible" in the city panel.
import cocos.comps.city_common.area as _q7_city_area
import com.const as _q7_const


def _q7_core_area_state(self, state):
    if state == (_q7_const.CityStatus.FREE, True):
        try:
            for titles in self.title_nodes.values():
                if titles.get(state) is None:
                    fallback = titles.get((_q7_const.CityStatus.FALL, True))
                    if fallback is None:
                        fallback = titles.get((_q7_const.CityStatus.FREE, False))
                    if fallback is not None:
                        titles[state] = fallback
                    else:
                        titles.pop(state, None)
            for nodes in self.state_nodes.values():
                if state not in nodes:
                    nodes[state] = list(nodes.get((_q7_const.CityStatus.FREE, False), []))
                    nodes[state] += list(nodes.get((_q7_const.CityStatus.FALL, True), []))
        except Exception:
            pass
    return self._q7_original_core_area_state(state)


if not hasattr(_q7_city_area.Comp, '_q7_original_core_area_state'):
    _q7_city_area.Comp._q7_original_core_area_state = _q7_city_area.Comp.set_state
    _q7_city_area.Comp.set_state = _q7_core_area_state
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_core_area_state_v1'})

# CG teardown must finish before its cached reward builds another modal layer.
import cocos.panels.settlement_fullscreen_cg as _q7_cg_panel


def _q7_cg_on_destroy(self):
    avatar = gg.avatar
    if not avatar or not avatar.rewardData.cg_rewards:
        return
    if getattr(avatar, '_q7_cg_reward_scheduled', False):
        return
    avatar._q7_cg_reward_scheduled = True

    def show_reward():
        avatar._q7_cg_reward_scheduled = False
        if gg.avatar is avatar:
            self._q7_original_cg_on_destroy()

    gg.exec_delay(1, show_reward)


if not hasattr(_q7_cg_panel.Panel, '_q7_original_cg_on_destroy'):
    _q7_cg_panel.Panel._q7_original_cg_on_destroy = _q7_cg_panel.Panel.on_destroy
    _q7_cg_panel.Panel.on_destroy = _q7_cg_on_destroy
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_cg_reward_deferred_v1'})