# Keep guidance behind draw results without completing or discarding any step.
import gg
import com.const as _q7_draw_const
import cocos.panels.settlement_fullscreen_hero as _q7_reveal_panel
import cocos.comps.common_model.model as _q7_reveal_model
import entity.avatar_attrs.NewbeeData as _q7_draw_newbee_data
import entity.avatar_members.NewbeeMember as _q7_draw_newbee_member
import cocos.panels.newbee_guidance as _q7_draw_guidance_panel


def _q7_draw_visible_node(node):
    if node is None:
        return False
    while node is not None:
        if not node.isVisible():
            return False
        node = node.getParent()
    return True


def _q7_draw_return_position(panel, event_id):
    if event_id not in (95, 97):
        return None
    ui = getattr(gg, 'ui', None)
    if ui is None:
        return None
    candidates = []
    for name, buttons in (('navigation_canvas', ('btn_back', 'btn_back_top')),
                           ('card_box' if event_id == 95 else 'card_room', ('btn_return',))):
        if ui.has_init_panel(name):
            owner = getattr(ui.panels, name)
            if owner.valid and owner.visible:
                candidates.extend(getattr(owner, key, None) for key in buttons)
    for node in candidates:
        try:
            if not _q7_draw_visible_node(node):
                continue
            size = node.getContentSize()
            if size.width <= 0 or size.height <= 0:
                continue
            world = node.convertToWorldSpace(
                _q7_draw_guidance_panel.cc.cc.Vec2(size.width / 2.0, size.height / 2.0))
            local = panel._node.convertToNodeSpace(world)
            # Native indicator and mask each add the safe-area margin once.
            return (local.x - panel.get_resolution_ratio_left_offset(),
                    local.y - panel.get_resolution_ratio_top_offset())
        except Exception:
            # Old node bindings may not expose transforms; retain stock data.
            continue
    return None


def _q7_draw_show_guidance(self, event_id):
    if event_id == 10:
        _q7_court_trace(self, 'show')
    data = _q7_draw_guidance_panel.NEWBEEMOD.data
    original = data.get(event_id)
    position = _q7_draw_return_position(self, event_id)
    if original is None or position is None:
        return self._q7_draw_original_show_panels(event_id)
    aligned = dict(original)
    aligned['indicator_pos'] = position
    aligned['hole_center'] = position
    data[event_id] = aligned
    try:
        return self._q7_draw_original_show_panels(event_id)
    finally:
        data[event_id] = original


def _q7_court_trace(panel, phase):
    # Observe the native handoff without changing region or tutorial state.
    try:
        avatar = getattr(gg, 'avatar', None)
        if avatar is None:
            return
        state = avatar.cityData.get_area_state(1)
        city = getattr(gg, 'city', None)
        stage = gg.ui.panels.battle_stage
        avatar.callServerMethod('evalEcho', {'m':
            'q7_court_entry_trace:%s:guide=%s:status=%s:lock=%s:jump=%s:stage=%s' % (
                phase, getattr(panel, 'event_id', None), state.status, state.lock,
                getattr(city, 'IN_JUMP', None), bool(stage.valid and stage.visible))})
    except Exception:
        # Diagnostic failure must never interrupt the native click callback.
        pass


def _q7_court_touch(self, sender, event, event_id):
    if event_id == 10:
        _q7_court_trace(self, 'touch_%s' % event)
    try:
        return self._q7_court_original_touch(sender, event, event_id)
    finally:
        if event_id == 10:
            _q7_court_trace(self, 'after_%s' % event)


if not hasattr(_q7_draw_guidance_panel.Panel, '_q7_draw_original_show_panels'):
    _q7_draw_guidance_panel.Panel._q7_draw_original_show_panels = _q7_draw_guidance_panel.Panel.show_panels
    _q7_draw_guidance_panel.Panel.show_panels = _q7_draw_show_guidance

if not hasattr(_q7_draw_guidance_panel.Panel, '_q7_court_original_touch'):
    _q7_draw_guidance_panel.Panel._q7_court_original_touch = _q7_draw_guidance_panel.Panel.touch_callback
    _q7_draw_guidance_panel.Panel.touch_callback = _q7_court_touch


def _q7_draw_busy():
    ui = getattr(gg, 'ui', None)
    if ui is None:
        return False
    for name in ('card_open', 'settlement_fullscreen', 'settlement_window'):
        if ui.has_init_panel(name):
            panel = getattr(ui.panels, name)
            if panel.valid and panel.visible:
                return True
    for panel, method, args, kwargs in getattr(ui, '_settlement_list', ()):
        if panel == 'card_open' or (panel == 'settlement_fullscreen'
                                   and method == 'notify_settlement'):
            return True
    container = getattr(gg, 'city_container', None)
    if container is not None:
        scene = container.get_scene_by_key(_q7_draw_const.SCENE_SUMMON)
        if scene is not None and getattr(scene, 'card_opening', False):
            return True
    return False


def _q7_wait_draw(avatar, event=None, from_server=False, server_trigger_process=False):
    pending = getattr(avatar, '_q7_draw_guidance', None)
    if pending is None:
        pending = {'events': [], 'check': False}
        avatar._q7_draw_guidance = pending
        def resume():
            if gg.avatar is not avatar:
                avatar._q7_draw_guidance = None
                return
            if _q7_draw_busy():
                gg.exec_delay(50, resume)
                return
            avatar._q7_draw_guidance = None
            for event_id, server, processing in pending['events']:
                avatar.triggerNewbee(event_id, from_server=server,
                                     server_trigger_process=processing)
            if pending['check']:
                avatar.newbeeData.checkAllNewbee()
        gg.exec_delay(50, resume)
    if event is None:
        pending['check'] = True
    else:
        entry = (event, from_server, server_trigger_process)
        if entry not in pending['events']:
            pending['events'].append(entry)


def _q7_draw_check_newbee(self):
    if _q7_draw_busy():
        if gg.avatar is not None and gg.avatar.newbeeData is self:
            _q7_wait_draw(gg.avatar)
        return False
    return self._q7_draw_original_check()


def _q7_draw_trigger_newbee(self, event, from_server=False, server_trigger_process=False):
    if _q7_draw_busy():
        if gg.avatar is self:
            _q7_wait_draw(self, event, from_server, server_trigger_process)
        return
    original = getattr(self, '_q7_draw_avatar_original_trigger', self._q7_draw_original_trigger)
    return original(event, from_server=from_server,
                                          server_trigger_process=server_trigger_process)


if not hasattr(_q7_draw_newbee_data.NewbeeData, '_q7_draw_original_check'):
    _q7_draw_newbee_data.NewbeeData._q7_draw_original_check = _q7_draw_newbee_data.NewbeeData.checkAllNewbee
    _q7_draw_newbee_data.NewbeeData.checkAllNewbee = _q7_draw_check_newbee
if not hasattr(_q7_draw_newbee_member.Member, '_q7_draw_original_trigger'):
    _q7_draw_newbee_member.Member._q7_draw_original_trigger = _q7_draw_newbee_member.Member.triggerNewbee
    _q7_draw_newbee_member.Member.triggerNewbee = _q7_draw_trigger_newbee
# Retire v1's renderer workaround. Primary draw rewards belong in the stock
# card_open flow, not a duplicate generic settlement supplied by the gateway.
for _q7_cls, _q7_method, _q7_original in (
        (_q7_reveal_panel.Panel, 'on_load', '_q7_reveal_original_load'),
        (_q7_reveal_panel.Panel, 'notify_show_hero', '_q7_reveal_original_show_hero'),
        (_q7_reveal_model.Comp, 'set_style', '_q7_reveal_original_style')):
    if hasattr(_q7_cls, _q7_original):
        setattr(_q7_cls, _q7_method, getattr(_q7_cls, _q7_original))

if getattr(gg, 'avatar', None) is not None:
    # GameObjectMeta copies member functions when creating ClientAvatar.
    _q7_draw_avatar_class = type(gg.avatar)
    if '_q7_draw_avatar_original_trigger' not in _q7_draw_avatar_class.__dict__:
        _q7_draw_native_trigger = _q7_draw_newbee_member.Member._q7_draw_original_trigger
        _q7_draw_native_trigger = getattr(_q7_draw_native_trigger, 'im_func',
                                          getattr(_q7_draw_native_trigger, '__func__', _q7_draw_native_trigger))
        _q7_draw_avatar_class._q7_draw_avatar_original_trigger = _q7_draw_native_trigger
        _q7_draw_avatar_class._q7_draw_original_trigger = _q7_draw_native_trigger
        _q7_draw_avatar_class.triggerNewbee = _q7_draw_trigger_newbee
    gg.avatar.callServerMethod('evalEcho', {'m': 'q7_draw_ui_v3'})


# ==== q7 wardrobe null-node guard v1 (added by 修复版7) ====
# 衣柜/染色面板在数据为空时会去调用已经释放的 ScrollView 原生对象，
# 抛出 "RuntimeError: self == NULL in pycocos_..._ScrollView_jumpToTop"，
# 整个 hero_wardrobe 面板随之崩溃，表现为"染色打不开/一点就退"。
# 这里只吞掉这一种空指针异常，其它异常原样抛出，行为保持原样。
try:
    import sys as _q7w_sys

    _q7w_patched = []

    def _q7w_guard(cls, name):
        try:
            original = getattr(cls, name, None)
        except Exception:
            return
        if original is None or getattr(original, '_q7w_guarded', False):
            return

        def guarded(self, *args, **kwargs):
            try:
                return original(self, *args, **kwargs)
            except RuntimeError as exc:
                if 'NULL' in str(exc):
                    return None
                raise

        guarded._q7w_guarded = True
        try:
            setattr(cls, name, guarded)
            _q7w_patched.append('%s.%s' % (getattr(cls, '__name__', '?'), name))
        except Exception:
            pass

    _q7w_methods = ('jumpToTop', 'jumpToBottom', 'jumpToPercent',
                    'jumpToPercentX', 'jumpToPercentY', 'jumpToTopLeft',
                    'jumpToTopRight', 'jumpToBottomLeft', 'jumpToBottomRight')

    _q7w_classes = []
    for _q7w_modname in list(_q7w_sys.modules.keys()):
        if 'pycocos' not in _q7w_modname:
            continue
        _q7w_mod = _q7w_sys.modules.get(_q7w_modname)
        if _q7w_mod is None:
            continue
        try:
            _q7w_names = dir(_q7w_mod)
        except Exception:
            continue
        for _q7w_attr in _q7w_names:
            if 'ScrollView' not in _q7w_attr:
                continue
            try:
                _q7w_obj = getattr(_q7w_mod, _q7w_attr)
            except Exception:
                continue
            if hasattr(_q7w_obj, '__bases__') and _q7w_obj not in _q7w_classes:
                _q7w_classes.append(_q7w_obj)

    for _q7w_cls in _q7w_classes:
        for _q7w_method in _q7w_methods:
            _q7w_guard(_q7w_cls, _q7w_method)

    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_wardrobe_guard_v1:classes=%d:patched=%d'
                                                % (len(_q7w_classes), len(_q7w_patched))})
    except Exception:
        pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_wardrobe_guard_v1:init_failed'})
    except Exception:
        pass


# ==== q7 module dump v1 (added by 修复版8) ====
# 把衣柜/抽卡相关模块的字节码反汇编写到 /sdcard/q7dump/，
# 用来补全 createDyeLib / 抽卡界面缺失的客户端字段。只读，不改游戏状态。
try:
    import sys as _q7d_sys
    import os as _q7d_os
    import dis as _q7d_dis
    import StringIO as _q7d_io

    _q7d_root = None
    for _q7d_cand in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7d_os.path.isdir(_q7d_cand):
                _q7d_os.makedirs(_q7d_cand)
            _q7d_root = _q7d_cand
            break
        except Exception:
            continue

    if _q7d_root:
        _q7d_keys = []
        for _q7d_k in list(_q7d_sys.modules.keys()):
            _q7d_l = _q7d_k.lower()
            if ('wardrobe' in _q7d_l or 'chouka' in _q7d_l or
                    ('draw' in _q7d_l and 'compat' not in _q7d_l)):
                _q7d_keys.append(_q7d_k)
        _q7d_keys.sort()

        _q7d_index = open(_q7d_root + '/_modules.txt', 'w')
        for _q7d_k in _q7d_keys:
            _q7d_m = _q7d_sys.modules.get(_q7d_k)
            _q7d_index.write('%s\t%s\n' % (_q7d_k, getattr(_q7d_m, '__file__', '?')))
        _q7d_index.close()

        _q7d_count = 0
        for _q7d_k in _q7d_keys[:12]:
            _q7d_m = _q7d_sys.modules.get(_q7d_k)
            if _q7d_m is None:
                continue
            _q7d_buf = _q7d_io.StringIO()
            for _q7d_name in dir(_q7d_m):
                if _q7d_name.startswith('__'):
                    continue
                try:
                    _q7d_obj = getattr(_q7d_m, _q7d_name)
                except Exception:
                    continue
                if callable(_q7d_obj) or isinstance(_q7d_obj, type):
                    try:
                        _q7d_buf.write('\n### %s\n' % _q7d_name)
                        _q7d_dis.dis(_q7d_obj, file=_q7d_buf)
                    except Exception:
                        pass
            _q7d_text = _q7d_buf.getvalue()
            if _q7d_text:
                open(_q7d_root + '/' + _q7d_k.replace('.', '_') + '.txt', 'w').write(_q7d_text)
                _q7d_count += 1

        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_dump_v1:modules=%d:files=%d:dir=%s'
                                                    % (len(_q7d_keys), _q7d_count, _q7d_root)})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_dump_v1:failed'})
    except Exception:
        pass


# ==== q7 api dump v1 (added by 修复版11) ====
# 导出 gg / avatar / 皮肤相关对象的可用接口，用于补 syncOneSkinData 与染色保存
try:
    import sys as _q7a_sys
    import os as _q7a_os

    _q7a_root = None
    for _q7a_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7a_os.path.isdir(_q7a_c):
                _q7a_os.makedirs(_q7a_c)
            _q7a_root = _q7a_c
            break
        except Exception:
            continue

    if _q7a_root:
        _q7a_lines = []
        for _q7a_name, _q7a_obj in (('gg', gg), ('gg.avatar', getattr(gg, 'avatar', None)),
                                    ('gg.ui', getattr(gg, 'ui', None))):
            if _q7a_obj is None:
                _q7a_lines.append('## %s = None' % _q7a_name)
                continue
            _q7a_lines.append('## %s  type=%s' % (_q7a_name, type(_q7a_obj).__name__))
            try:
                for _q7a_attr in dir(_q7a_obj):
                    if _q7a_attr.startswith('__'):
                        continue
                    try:
                        _q7a_v = getattr(_q7a_obj, _q7a_attr)
                        _q7a_lines.append('   %-40s %s' % (_q7a_attr, type(_q7a_v).__name__))
                    except Exception:
                        _q7a_lines.append('   %-40s <err>' % _q7a_attr)
            except Exception as _q7a_e:
                _q7a_lines.append('   dir failed: %r' % (_q7a_e,))
            _q7a_lines.append('')

        _q7a_av = getattr(gg, 'avatar', None)
        _q7a_hm = getattr(_q7a_av, 'heromgr', None) if _q7a_av is not None else None
        if _q7a_hm is not None:
            _q7a_lines.append('## avatar.heromgr type=%s' % type(_q7a_hm).__name__)
            for _q7a_attr in dir(_q7a_hm):
                if _q7a_attr.startswith('__'):
                    continue
                try:
                    _q7a_v = getattr(_q7a_hm, _q7a_attr)
                    _q7a_lines.append('   %-40s %s' % (_q7a_attr, type(_q7a_v).__name__))
                except Exception:
                    pass
            for _q7a_attr in ('es', 'hrs'):
                try:
                    _q7a_v = getattr(_q7a_hm, _q7a_attr)
                    _q7a_lines.append('   %s = %r' % (_q7a_attr, _q7a_v if _q7a_attr == 'es' else '...'))
                except Exception:
                    pass

        open(_q7a_root + '/_api.txt', 'w').write('\n'.join(_q7a_lines))
        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_api_dump_v1:lines=%d' % len(_q7a_lines)})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_api_dump_v1:failed'})
    except Exception:
        pass


# ==== q7 decor scan v1 (added by 修复版14) ====
# 在客户端所有 com.data.cdata.* 表里找「巧夺天工 / 羽焰 / 流光溢彩 / 独具匠心」，
# 连同所在表名、键、ID 一起写到 /sdcard/q7dump/_decor.txt
try:
    import sys as _q7s_sys
    import os as _q7s_os

    _q7s_root = None
    for _q7s_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7s_os.path.isdir(_q7s_c):
                _q7s_os.makedirs(_q7s_c)
            _q7s_root = _q7s_c
            break
        except Exception:
            continue

    if _q7s_root:
        _q7s_keys = [u'\u5de7\u593a\u5929\u5de5', u'\u7fbd\u7130',
                     u'\u6d41\u5149\u6ea2\u5f69', u'\u72ec\u5177\u5320\u5fc3']

        def _q7s_text(v):
            try:
                if isinstance(v, unicode):
                    return v
                if isinstance(v, str):
                    return v.decode('utf-8', 'ignore')
            except Exception:
                pass
            return None

        def _q7s_match(v):
            s = _q7s_text(v)
            if s is None:
                return None
            for k in _q7s_keys:
                if k in s:
                    return k
            return None

        _q7s_out = []
        for _q7s_name in list(_q7s_sys.modules.keys()):
            if not _q7s_name.startswith('com.data'):
                continue
            _q7s_mod = _q7s_sys.modules.get(_q7s_name)
            _q7s_data = getattr(_q7s_mod, 'data', None) if _q7s_mod is not None else None
            if not isinstance(_q7s_data, dict):
                continue
            for _q7s_k, _q7s_v in _q7s_data.items():
                _q7s_hit = _q7s_match(_q7s_v)
                if _q7s_hit:
                    _q7s_out.append('%s\tkey=%r\tvalue=%r' % (_q7s_name, _q7s_k, _q7s_v))
                    continue
                if isinstance(_q7s_v, dict):
                    for _q7s_k2, _q7s_v2 in _q7s_v.items():
                        _q7s_hit = _q7s_match(_q7s_v2)
                        if _q7s_hit:
                            _q7s_out.append('%s\tkey=%r\tinner=%r\tvalue=%r'
                                            % (_q7s_name, _q7s_k, _q7s_k2, _q7s_v2))
                elif isinstance(_q7s_v, (list, tuple)):
                    for _q7s_i, _q7s_v2 in enumerate(_q7s_v):
                        _q7s_hit = _q7s_match(_q7s_v2)
                        if _q7s_hit:
                            _q7s_out.append('%s\tkey=%r\tidx=%d\tvalue=%r'
                                            % (_q7s_name, _q7s_k, _q7s_i, _q7s_v2))

        _q7s_av = getattr(gg, 'avatar', None)
        _q7s_inv = getattr(_q7s_av, 'inv', None) if _q7s_av is not None else None
        _q7s_out.append('')
        _q7s_out.append('## avatar.inv type=%s' % (type(_q7s_inv).__name__,))
        if _q7s_inv is not None:
            for _q7s_a in dir(_q7s_inv):
                if not _q7s_a.startswith('__'):
                    _q7s_out.append('   inv.%s' % _q7s_a)
        _q7s_out.append('')
        _q7s_out.append('## modules with .data')
        for _q7s_name in sorted(_q7s_sys.modules.keys()):
            if _q7s_name.startswith('com.data'):
                _q7s_out.append('   ' + _q7s_name)

        open(_q7s_root + '/_decor.txt', 'w').write('\n'.join(_q7s_out))
        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_decor_scan_v1:hits=%d'
                                                    % (len(_q7s_out),)})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_decor_scan_v1:failed'})
    except Exception:
        pass


# ==== q7 decor table dump v2 (added by 修复版15) ====
# 精确导出 item_decoration / skin_dye_lib / skin 三张表的结构，
# 以及 syncOneSkinData / createDyeLibReply / createWenluDyeLibReply 的参数签名
try:
    import sys as _q7t_sys
    import os as _q7t_os
    import inspect as _q7t_inspect

    _q7t_root = None
    for _q7t_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7t_os.path.isdir(_q7t_c):
                _q7t_os.makedirs(_q7t_c)
            _q7t_root = _q7t_c
            break
        except Exception:
            continue

    if _q7t_root:
        _q7t_out = []

        # 这些表是懒加载的，先强制 import，否则 sys.modules 里根本没有
        for _q7t_i in ('item_decoration', 'skin_dye_lib', 'skin_dye', 'skin_wenlu',
                       'decorate_data', 'skin', 'skin_play'):
            try:
                __import__('com.data.cdata.' + _q7t_i)
            except Exception as _q7t_ie:
                _q7t_out.append('# import %s failed: %r' % (_q7t_i, _q7t_ie))

        def _q7t_head(name, obj):
            _q7t_out.append('## %s  type=%s  len=%s'
                            % (name, type(obj).__name__,
                               len(obj) if hasattr(obj, '__len__') else '?'))

        for _q7t_t in ('item_decoration', 'skin_dye_lib', 'skin_dye', 'skin_wenlu',
                       'decorate_data', 'skin'):
            _q7t_name = 'com.data.cdata.' + _q7t_t
            _q7t_mod = _q7t_sys.modules.get(_q7t_name)
            if _q7t_mod is None:
                _q7t_out.append('## %s  <未加载>' % _q7t_t)
                continue
            _q7t_d = getattr(_q7t_mod, 'data', None)
            if _q7t_d is None:
                _q7t_out.append('## %s  <无 data>' % _q7t_t)
                continue
            _q7t_head(_q7t_t, _q7t_d)
            _q7t_n = 0
            try:
                for _q7t_k, _q7t_v in _q7t_d.items():
                    _q7t_out.append('   key=%r -> %r' % (_q7t_k, _q7t_v))
                    _q7t_n += 1
                    if _q7t_n >= 25:
                        _q7t_out.append('   ... (共 %d 条)' % len(_q7t_d))
                        break
            except Exception as _q7t_e:
                _q7t_out.append('   iter failed: %r' % (_q7t_e,))
            _q7t_out.append('')

        _q7t_out.append('## 方法签名')
        _q7t_av = getattr(gg, 'avatar', None)
        for _q7t_m in ('syncOneSkinData', 'syncEverSkin', 'createDyeLibReply',
                       'createWenluDyeLibReply', 'updateItems', 'setSkinReply'):
            _q7t_f = getattr(_q7t_av, _q7t_m, None) if _q7t_av is not None else None
            if _q7t_f is None:
                _q7t_out.append('   %-24s <缺失>' % _q7t_m)
                continue
            try:
                _q7t_out.append('   %-24s %r' % (_q7t_m, _q7t_inspect.getargspec(_q7t_f)))
            except Exception as _q7t_e:
                _q7t_out.append('   %-24s argspec失败 %r' % (_q7t_m, _q7t_e))

        _q7t_out.append('')
        _q7t_out.append('## 已加载的 cdata 表数量')
        _q7t_out.append('   %d' % len([_x for _x in _q7t_sys.modules
                                       if _x.startswith('com.data.cdata.')]))

        open(_q7t_root + '/_decor2.txt', 'w').write('\n'.join(_q7t_out))
        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_decor_table_v2:lines=%d'
                                                    % (len(_q7t_out),)})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_decor_table_v2:failed'})
    except Exception:
        pass


# ==== q7 decor id export v3 (added by 修复版16) ====
# 导出 item_decoration 里全部「羽焰」系列装饰的 物品ID/英雄/档位
try:
    import sys as _q7e_sys
    import os as _q7e_os

    _q7e_root = None
    for _q7e_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7e_os.path.isdir(_q7e_c):
                _q7e_os.makedirs(_q7e_c)
            _q7e_root = _q7e_c
            break
        except Exception:
            continue

    if _q7e_root:
        try:
            __import__('com.data.cdata.item_decoration')
        except Exception:
            pass
        _q7e_mod = _q7e_sys.modules.get('com.data.cdata.item_decoration')
        _q7e_data = getattr(_q7e_mod, 'data', None) if _q7e_mod is not None else None

        _q7e_lines = []
        _q7e_n = 0
        if isinstance(_q7e_data, dict):
            for _q7e_k, _q7e_v in _q7e_data.items():
                if not isinstance(_q7e_v, dict):
                    continue
                _q7e_name = _q7e_v.get('name')
                try:
                    if isinstance(_q7e_name, str):
                        _q7e_name = _q7e_name.decode('utf-8', 'ignore')
                except Exception:
                    pass
                if not _q7e_name:
                    continue
                _q7e_s = _q7e_name
                if (u'\u7fbd\u7130' in _q7e_s) or (u'\u5de7\u593a\u5929\u5de5' in _q7e_s) \
                        or (u'\u6d41\u5149\u6ea2\u5f69' in _q7e_s) or (u'\u72ec\u5177\u5320\u5fc3' in _q7e_s):
                    _q7e_lines.append('%s\t%s\t%s\t%s'
                                      % (_q7e_v.get('id'), _q7e_v.get('pendant'),
                                         _q7e_v.get('star'), _q7e_name))
                    _q7e_n += 1

        _q7e_head = ['# id\tpendant\tstar\tname', '# 共 %d 条羽焰系列装饰' % _q7e_n]
        open(_q7e_root + '/_decor3.txt', 'w').write(
            '\n'.join(_q7e_head + _q7e_lines))
        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_decor_id_v3:hits=%d' % _q7e_n})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_decor_id_v3:failed'})
    except Exception:
        pass


# ==== q7 decor full dump v4 (added by 修复版17) ====
# 修正：item_decoration 的行是 taggeddict，不是 dict 子类，不能用 isinstance(v, dict) 过滤。
# 这次导出整张表（id / pendant / star / name），并单独输出羽焰系列的 id 列表。
try:
    import sys as _q7f_sys
    import os as _q7f_os

    _q7f_root = None
    for _q7f_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7f_os.path.isdir(_q7f_c):
                _q7f_os.makedirs(_q7f_c)
            _q7f_root = _q7f_c
            break
        except Exception:
            continue

    if _q7f_root:
        try:
            __import__('com.data.cdata.item_decoration')
        except Exception as _q7f_ie:
            pass
        _q7f_mod = _q7f_sys.modules.get('com.data.cdata.item_decoration')
        _q7f_data = getattr(_q7f_mod, 'data', None) if _q7f_mod is not None else None

        def _q7f_u(v):
            try:
                if isinstance(v, unicode):
                    return v
                if isinstance(v, str):
                    return v.decode('utf-8', 'ignore')
                return unicode(v)
            except Exception:
                return u''

        _q7f_all, _q7f_yan = [], []
        _q7f_total = 0
        if _q7f_data is not None and hasattr(_q7f_data, 'items'):
            for _q7f_k, _q7f_v in _q7f_data.items():
                _q7f_total += 1
                if not hasattr(_q7f_v, 'get'):
                    continue
                _q7f_id = _q7f_v.get('id')
                _q7f_nm = _q7f_u(_q7f_v.get('name'))
                _q7f_pd = _q7f_v.get('pendant')
                _q7f_st = _q7f_v.get('star')
                _q7f_line = '%s\t%s\t%s\t%s' % (_q7f_id, _q7f_pd, _q7f_st, _q7f_nm)
                _q7f_all.append(_q7f_line)
                if (u'\u7fbd\u7130' in _q7f_nm) or (u'\u5de7\u593a\u5929\u5de5' in _q7f_nm):
                    _q7f_yan.append(_q7f_line)

        _q7f_head = ['# total=%d  羽焰=%d' % (_q7f_total, len(_q7f_yan)),
                     '# id\tpendant\tstar\tname']
        open(_q7f_root + '/_decor_all.txt', 'w').write('\n'.join(_q7f_head + _q7f_all))
        open(_q7f_root + '/_decor3.txt', 'w').write('\n'.join(_q7f_head + _q7f_yan))

        _q7f_ids = []
        for _q7f_l in _q7f_yan:
            _q7f_ids.append(_q7f_l.split('\t')[0])
        open(_q7f_root + '/_decor_ids.txt', 'w').write(','.join(_q7f_ids))

        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_decor_full_v4:total=%d:yan=%d'
                                                    % (_q7f_total, len(_q7f_yan))})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_decor_full_v4:failed'})
    except Exception:
        pass


# ==== q7 pendant probe v5 (added by 修复版19) ====
# 查清「装饰/挂饰」在客户端到底存在哪个对象里
try:
    import sys as _q7p_sys
    import os as _q7p_os

    _q7p_root = None
    for _q7p_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7p_os.path.isdir(_q7p_c):
                _q7p_os.makedirs(_q7p_c)
            _q7p_root = _q7p_c
            break
        except Exception:
            continue

    if _q7p_root:
        _q7p = []
        _q7p_av = getattr(gg, 'avatar', None)

        # 1) item_data 里有没有装饰ID
        try:
            __import__('com.data.cdata.item_data')
        except Exception:
            pass
        _q7p_id = _q7p_sys.modules.get('com.data.cdata.item_data')
        _q7p_d = getattr(_q7p_id, 'data', None) if _q7p_id is not None else None
        _q7p.append('## item_data type=%s len=%s' % (type(_q7p_d).__name__,
                                                     len(_q7p_d) if hasattr(_q7p_d, '__len__') else '?'))
        for _q7p_k in (16429, '16429', 15780, '15780'):
            try:
                _q7p.append('   has key %r : %s' % (_q7p_k, _q7p_k in _q7p_d))
            except Exception:
                pass
        try:
            for _q7p_k in list(_q7p_d.keys())[:5]:
                _q7p.append('   sample key=%r -> %r' % (_q7p_k, _q7p_d[_q7p_k]))
        except Exception:
            pass

        # 2) avatar 上与挂饰/物品相关的属性
        _q7p.append('')
        _q7p.append('## avatar attrs (pendant/item/inv/decor)')
        if _q7p_av is not None:
            for _q7p_a in dir(_q7p_av):
                _q7p_l = _q7p_a.lower()
                if any(_x in _q7p_l for _x in ('pendant', 'decor', 'item', 'inv', 'dress', 'bag')):
                    try:
                        _q7p_v = getattr(_q7p_av, _q7p_a)
                        _q7p.append('   %-36s %s' % (_q7p_a, type(_q7p_v).__name__))
                    except Exception:
                        _q7p.append('   %-36s <err>' % _q7p_a)

        # 3) heromgr 对象
        _q7p.append('')
        _q7p_hm = None
        for _q7p_n in ('heromgr', 'heroMgrData', 'heroMgr'):
            _q7p_hm = getattr(_q7p_av, _q7p_n, None)
            if _q7p_hm is not None:
                _q7p.append('## avatar.%s type=%s' % (_q7p_n, type(_q7p_hm).__name__))
                break
        if _q7p_hm is not None:
            for _q7p_a in dir(_q7p_hm):
                if _q7p_a.startswith('_'):
                    continue
                try:
                    _q7p_v = getattr(_q7p_hm, _q7p_a)
                    _q7p.append('   %-30s %s' % (_q7p_a, type(_q7p_v).__name__))
                except Exception:
                    pass
            # 找 hero 129 的对象
            for _q7p_attr in ('hrs', 'heroes', 'data', 'heroData'):
                try:
                    _q7p_h = getattr(_q7p_hm, _q7p_attr)
                except Exception:
                    continue
                _q7p.append('   [%s] type=%s len=%s' % (_q7p_attr, type(_q7p_h).__name__,
                                                        len(_q7p_h) if hasattr(_q7p_h, '__len__') else '?'))
                try:
                    _q7p_one = None
                    if hasattr(_q7p_h, 'get'):
                        _q7p_one = _q7p_h.get(129) or _q7p_h.get('129')
                    if _q7p_one is not None:
                        _q7p.append('   hero129 keys=%r' % (list(_q7p_one.keys()) if hasattr(_q7p_one, 'keys') else type(_q7p_one),))
                        for _q7p_kk in ('pendant', 'pendants', 'decor', 'decoration', 'dress', 'skin'):
                            try:
                                _q7p.append('      %s = %r' % (_q7p_kk, _q7p_one.get(_q7p_kk)))
                            except Exception:
                                pass
                except Exception as _q7p_e:
                    _q7p.append('   hero129 probe failed: %r' % (_q7p_e,))

        open(_q7p_root + '/_pendant.txt', 'w').write('\n'.join(_q7p))
        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_pendant_probe_v5:lines=%d' % len(_q7p)})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_pendant_probe_v5:failed'})
    except Exception:
        pass


# ==== q7 pendant probe v6 (added by 修复版20) ====
# 直接问客户端：背包里有没有 16429？getPendantInfo(129) 返回什么？
try:
    import sys as _q7g_sys
    import os as _q7g_os

    _q7g_root = None
    for _q7g_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7g_os.path.isdir(_q7g_c):
                _q7g_os.makedirs(_q7g_c)
            _q7g_root = _q7g_c
            break
        except Exception:
            continue

    if _q7g_root:
        _q7g = []
        _q7g_av = getattr(gg, 'avatar', None)

        # 1) 背包里到底有没有这些装饰物品
        _q7g.append('## 背包检查')
        _q7g_inv = getattr(_q7g_av, 'invData', None)
        _q7g.append('   invData type=%s' % (type(_q7g_inv).__name__,))
        if _q7g_inv is not None:
            for _q7g_a in dir(_q7g_inv):
                if not _q7g_a.startswith('__'):
                    _q7g.append('      invData.%s' % _q7g_a)
        for _q7g_i in (16429, 16439, 16508, 15780):
            try:
                _q7g.append('   findItemByID(%d) = %r' % (_q7g_i, _q7g_av.findItemByID(_q7g_i)))
            except Exception as _q7g_e:
                _q7g.append('   findItemByID(%d) failed %r' % (_q7g_i, _q7g_e))
            try:
                _q7g.append('   invContainByIDs([%d]) = %r' % (_q7g_i, _q7g_av.invContainByIDs([_q7g_i])))
            except Exception as _q7g_e:
                _q7g.append('   invContainByIDs failed %r' % (_q7g_e,))

        # 2) 挂饰信息
        _q7g.append('')
        _q7g.append('## 挂饰信息')
        _q7g_hm = getattr(_q7g_av, 'heroMgrData', None)
        if _q7g_hm is not None:
            for _q7g_h in (129, 141, 135, 24):
                try:
                    _q7g.append('   getPendantInfo(%d) = %r' % (_q7g_h, _q7g_hm.getPendantInfo(_q7g_h)))
                except Exception as _q7g_e:
                    _q7g.append('   getPendantInfo(%d) failed %r' % (_q7g_h, _q7g_e))
            for _q7g_a in ('pendingPendant', 'pendingPendantCreateTime', 'pendingSkins', 'everSkin'):
                try:
                    _q7g.append('   %s = %r' % (_q7g_a, getattr(_q7g_hm, _q7g_a)))
                except Exception as _q7g_e:
                    _q7g.append('   %s failed %r' % (_q7g_a, _q7g_e))
            try:
                _q7g_h1 = _q7g_hm.heroes
                _q7g.append('   heroes len=%d sample_keys=%r' % (len(_q7g_h1), list(_q7g_h1.keys())[:10]))
                _q7g_one = _q7g_h1.get(129) or _q7g_h1.get('129')
                if _q7g_one is not None:
                    _q7g.append('   hero129 type=%s' % (type(_q7g_one).__name__,))
                    if hasattr(_q7g_one, '__dict__'):
                        _q7g.append('   hero129 __dict__ keys=%r' % (list(_q7g_one.__dict__.keys())[:40],))
                    elif hasattr(_q7g_one, 'keys'):
                        _q7g.append('   hero129 keys=%r' % (list(_q7g_one.keys())[:40],))
            except Exception as _q7g_e:
                _q7g.append('   heroes probe failed %r' % (_q7g_e,))

        open(_q7g_root + '/_pendant2.txt', 'w').write('\n'.join(_q7g))
        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_pendant_probe_v6:lines=%d' % len(_q7g)})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_pendant_probe_v6:failed'})
    except Exception:
        pass


# ==== q7 decor inject v1 (added by 修复版21) ====
# 每次登录自动把装饰物品注入客户端背包，对所有账号立即生效，无需改档案。
try:
    import sys as _q7i_sys
    import os as _q7i_os
    import uuid as _q7i_uuid

    _q7i_root = None
    for _q7i_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7i_os.path.isdir(_q7i_c):
                _q7i_os.makedirs(_q7i_c)
            _q7i_root = _q7i_c
            break
        except Exception:
            continue

    if _q7i_root:
        _q7i_log = []
        try:
            __import__('com.data.cdata.item_decoration')
        except Exception:
            pass
        _q7i_mod = _q7i_sys.modules.get('com.data.cdata.item_decoration')
        _q7i_d = getattr(_q7i_mod, 'data', None) if _q7i_mod is not None else None

        def _q7i_u(v):
            try:
                if isinstance(v, unicode):
                    return v
                if isinstance(v, str):
                    return v.decode('utf-8', 'ignore')
                return unicode(v)
            except Exception:
                return u''

        _q7i_ids = []
        if _q7i_d is not None and hasattr(_q7i_d, 'items'):
            for _k, _v in _q7i_d.items():
                if not hasattr(_v, 'get'):
                    continue
                _nm = _q7i_u(_v.get('name'))
                _id = _v.get('id')
                if _id and ((u'\u7fbd\u7130' in _nm) or (u'\u5de7\u593a\u5929\u5de5' in _nm)):
                    _q7i_ids.append(int(_id))

        _q7i_log.append('# 待注入 %d 个装饰' % len(_q7i_ids))
        _q7i_av = getattr(gg, 'avatar', None)

        def _q7i_has(iid):
            try:
                r = _q7i_av.findItemByID(iid)
                return bool(r and r[0])
            except Exception:
                return False

        # 只注入背包里还没有的
        _q7i_todo = [x for x in _q7i_ids if not _q7i_has(x)]
        _q7i_log.append('# 缺 %d 个' % len(_q7i_todo))

        def _q7i_uid():
            return _q7i_uuid.uuid4().hex[:24]

        _q7i_plans = [
            ('list-u-w', lambda ids: {'i': [{'u': _q7i_uid(), 'i': x, 'w': 1} for x in ids]}),
            ('list-i-w', lambda ids: {'i': [{'i': x, 'w': 1} for x in ids]}),
            ('list-u-w-c', lambda ids: {'i': [{'u': _q7i_uid(), 'i': x, 'w': 1, 'c': 0} for x in ids]}),
            ('single-u-w', lambda ids: {'i': {'u': _q7i_uid(), 'i': ids[0], 'w': 1}}),
        ]

        if _q7i_todo:
            _probe = _q7i_todo[0]
            for _name, _mk in _q7i_plans:
                try:
                    if _name == 'single-u-w':
                        for _x in _q7i_todo[:20]:
                            _q7i_av.updateItems(_mk([_x]))
                    else:
                        _q7i_av.updateItems(_mk(_q7i_todo))
                except Exception as _e:
                    _q7i_log.append('  %s 调用失败: %r' % (_name, _e))
                    continue
                if _q7i_has(_probe):
                    _q7i_log.append('  ✅ 格式 %s 成功' % _name)
                    break
                _q7i_log.append('  ❌ 格式 %s 无效果' % _name)

        _q7i_ok = sum(1 for x in _q7i_ids if _q7i_has(x))
        _q7i_log.append('# 注入后已有 %d / %d' % (_q7i_ok, len(_q7i_ids)))
        try:
            _q7i_log.append('getPendantInfo(129) = %r' % (_q7i_av.heroMgrData.getPendantInfo(129),))
        except Exception as _e:
            _q7i_log.append('getPendantInfo 失败 %r' % (_e,))

        open(_q7i_root + '/_inject.txt', 'w').write('\n'.join(_q7i_log))
        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_decor_inject_v1:ok=%d/%d'
                                                    % (_q7i_ok, len(_q7i_ids))})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_decor_inject_v1:failed'})
    except Exception:
        pass


# ==== q7 pendant disasm v7 (added by 修复版22) ====
# 反汇编 getPendantInfo / dressPendant / replyDressPendant，看装饰栏到底读哪些字段
try:
    import sys as _q7d2_sys
    import os as _q7d2_os
    import dis as _q7d2_dis
    import StringIO as _q7d2_io

    _q7d2_root = None
    for _q7d2_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7d2_os.path.isdir(_q7d2_c):
                _q7d2_os.makedirs(_q7d2_c)
            _q7d2_root = _q7d2_c
            break
        except Exception:
            continue

    if _q7d2_root:
        _q7d2_av = getattr(gg, 'avatar', None)
        _q7d2_hm = getattr(_q7d2_av, 'heroMgrData', None) if _q7d2_av is not None else None
        _q7d2_buf = _q7d2_io.StringIO()

        _q7d2_targets = []
        if _q7d2_hm is not None:
            for _n in ('getPendantInfo', 'checkPendantExist'):
                _f = getattr(_q7d2_hm, _n, None)
                if _f is not None:
                    _q7d2_targets.append(('heroMgrData.' + _n, _f))
        if _q7d2_av is not None:
            for _n in ('dressPendant', 'replyDressPendant', 'findItemByType',
                       'updateItems', 'filterFurnitureByDecoration'):
                _f = getattr(_q7d2_av, _n, None)
                if _f is not None:
                    _q7d2_targets.append(('avatar.' + _n, _f))

        for _name, _f in _q7d2_targets:
            _q7d2_buf.write('\n===== %s =====\n' % _name)
            try:
                _q7d2_dis.dis(_f, file=_q7d2_buf)
            except Exception as _e:
                _q7d2_buf.write('dis failed: %r\n' % (_e,))

        # 顺带看已拥有英雄的返回值和几个关键字段
        _q7d2_buf.write('\n===== 状态 =====\n')
        for _h in (24, 135, 81, 7):
            try:
                _q7d2_buf.write('getPendantInfo(%d) = %r\n' % (_h, _q7d2_hm.getPendantInfo(_h)))
            except Exception as _e:
                _q7d2_buf.write('getPendantInfo(%d) failed %r\n' % (_h, _e))
        for _a in ('pendingPendant', 'pendingSkins', 'everSkin'):
            try:
                _q7d2_buf.write('%s = %r\n' % (_a, getattr(_q7d2_hm, _a)))
            except Exception:
                pass
        try:
            _q7d2_buf.write('heroes keys = %r\n' % (list(_q7d2_hm.heroes.keys()),))
        except Exception:
            pass

        open(_q7d2_root + '/_dis.txt', 'w').write(_q7d2_buf.getvalue())
        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_pendant_dis_v7:done'})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_pendant_dis_v7:failed'})
    except Exception:
        pass


# ==== q7 gpi disasm v1 (added by 修复版27) ====
# v23~v26 连写四版都无效，说明装饰栏读的根本不是我们猜的字段。
# 这次不再猜：直接反汇编 heroMgrData 的 getPendantInfo / checkPendantExist 等，
# 把字节码引用的属性名(co_names)与局部变量(co_varnames)打出来，即可确定真正的存储字段。
# 注意：从"类"上取方法(type(hm))，避免取到我们注入的覆盖函数。
try:
    import sys as _q7g_sys
    import os as _q7g_os
    try:
        from StringIO import StringIO as _q7g_SIO
    except Exception:
        from io import StringIO as _q7g_SIO

    _q7g_root = None
    for _q7g_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7g_os.path.isdir(_q7g_c):
                _q7g_os.makedirs(_q7g_c)
            _q7g_root = _q7g_c
            break
        except Exception:
            continue

    if _q7g_root is not None:
        _q7g_out = []
        _q7g_av = getattr(gg, 'avatar', None)
        _q7g_hm = getattr(_q7g_av, 'heroMgrData', None) if _q7g_av is not None else None
        _q7g_out.append('heroMgrData 类型 %s' % (type(_q7g_hm).__name__ if _q7g_hm is not None else 'None'))
        if _q7g_hm is not None:
            _q7g_cls = type(_q7g_hm)
            # 列出 heroMgrData 全部含 pendant/decor/dress 的属性，便于定位
            try:
                _q7g_attrs = [a for a in dir(_q7g_hm)
                              if any(k in a.lower() for k in ('pendant', 'decor', 'dress', 'wing', 'skin'))]
                _q7g_out.append('相关属性: %r' % (_q7g_attrs,))
                for _q7g_a in _q7g_attrs:
                    try:
                        _q7g_v = getattr(_q7g_hm, _q7g_a)
                        if callable(_q7g_v):
                            continue
                        _q7g_s = repr(_q7g_v)
                        if len(_q7g_s) > 300:
                            _q7g_s = _q7g_s[:300] + '...'
                        _q7g_out.append('  %s = %s' % (_q7g_a, _q7g_s))
                    except Exception:
                        pass
            except Exception:
                pass

            for _q7g_name in ('getPendantInfo', 'checkPendantExist', 'syncHeroMgrPendingData',
                              'updatePendant', 'setPendingPendant', 'getPendant', 'dressPendant'):
                _q7g_fn = None
                try:
                    _q7g_fn = getattr(_q7g_cls, _q7g_name, None)
                except Exception:
                    _q7g_fn = None
                _q7g_src = 'class'
                if _q7g_fn is None:
                    try:
                        _q7g_fn = getattr(_q7g_hm, _q7g_name, None)
                        _q7g_src = 'instance'
                    except Exception:
                        _q7g_fn = None
                if _q7g_fn is None:
                    _q7g_out.append('==== %s: 不存在 ====' % _q7g_name)
                    continue
                # 取底层函数对象(py2 im_func / py3 __func__)
                _q7g_f = _q7g_fn
                for _q7g_a in ('im_func', '__func__'):
                    try:
                        _q7g_cand = getattr(_q7g_fn, _q7g_a)
                        if _q7g_cand is not None:
                            _q7g_f = _q7g_cand
                            break
                    except Exception:
                        continue
                _q7g_code = getattr(_q7g_f, 'func_code', None) or getattr(_q7g_f, '__code__', None)
                if _q7g_code is None:
                    _q7g_out.append('==== %s: 无 code 对象 ====' % _q7g_name)
                    continue
                _q7g_fname = getattr(_q7g_f, '__name__', '?')
                _q7g_out.append('==== %s (%s, %s) ====' % (_q7g_name, _q7g_src, _q7g_fname))
                if _q7g_fname.startswith('_q7v'):
                    _q7g_out.append('  !! 这是我们的覆盖函数，非原始实现，仅作参考')
                _q7g_out.append('co_names   =%r' % (list(getattr(_q7g_code, 'co_names', [])),))
                _q7g_out.append('co_varnames=%r' % (list(getattr(_q7g_code, 'co_varnames', [])),))
                try:
                    _q7g_cs = list(getattr(_q7g_code, 'co_consts', []))
                    _q7g_out.append('co_consts  =%r' % ([repr(c)[:80] for c in _q7g_cs[:30]],))
                except Exception:
                    pass
                try:
                    import dis as _q7g_dis
                    _q7g_buf = _q7g_SIO()
                    _q7g_old = _q7g_sys.stdout
                    _q7g_sys.stdout = _q7g_buf
                    try:
                        _q7g_dis.dis(_q7g_f)
                    finally:
                        _q7g_sys.stdout = _q7g_old
                    _q7g_out.append(_q7g_buf.getvalue())
                except Exception as _q7g_e:
                    _q7g_out.append('dis 失败 %r' % (_q7g_e,))
        open(_q7g_root + '/_gpi.txt', 'w').write('\n'.join(_q7g_out))
        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_gpi_disasm_v1:lines=%d' % len(_q7g_out)})
        except Exception:
            pass
except Exception:
    pass


# ==== q7 pendant fix v12 (added by 修复版28) ====
# 取证结论（_gpi.txt 字节码 + hero129.__dict__，不再靠猜）：
#   heroMgrData.getPendantInfo(heroId): co_names=['getHero','getPendantInfo']
#     -> hero = self.getHero(heroId); return hero.getPendantInfo()   **委派给英雄对象**
#   heroMgrData.checkPendantExist:     co_names=['getHero','pendantInfo','pendingPendant','setdefault']
#     -> 读 hero.pendantInfo 与 self.pendingPendant.setdefault(heroId, ...)
#   HeroData.__dict__ 含: pendantInfo / wearPendantInfo / pendantInfoCreateTime
# v23~v27 一直在写 pa / pat / heromgr.pp / ppc，全都不是装饰栏读的字段 -> 所以一直空白。
# 本版写到英雄对象真正的三个字段上，并保持原有容器类型（list/dict），同时 dump 前后值校验。
try:
    import os as _q7f_os
    import time as _q7f_time
    import sys as _q7f_sys

    _q7f_root = None
    for _q7f_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7f_os.path.isdir(_q7f_c):
                _q7f_os.makedirs(_q7f_c)
            _q7f_root = _q7f_c
            break
        except Exception:
            continue

    if _q7f_root is not None:
        _q7f_log = []
        try:
            __import__('com.data.cdata.item_decoration')
        except Exception:
            pass
        _q7f_mod = _q7f_sys.modules.get('com.data.cdata.item_decoration')
        _q7f_d = getattr(_q7f_mod, 'data', None) if _q7f_mod is not None else None
        _q7f_byhero = {}
        if _q7f_d is not None and hasattr(_q7f_d, 'items'):
            for _k, _v in _q7f_d.items():
                if not hasattr(_v, 'get'):
                    continue
                _pd = _v.get('pendant')
                try:
                    _h, _dd = int(_pd[0]), int(_pd[1])
                except Exception:
                    continue
                _q7f_byhero.setdefault(_h, set()).add(_dd)

        _q7f_av = getattr(gg, 'avatar', None)
        _q7f_hm = getattr(_q7f_av, 'heroMgrData', None) if _q7f_av is not None else None
        _q7f_ts = int(_q7f_time.time())
        _q7f_npi = _q7f_nwear = _q7f_npct = 0

        if _q7f_hm is not None:
            _q7f_heroes = getattr(_q7f_hm, 'heroes', None) or {}
            _q7f_log.append('# 挂饰表英雄 %d / 已加载英雄 %d' % (len(_q7f_byhero), len(_q7f_heroes)))

            # 先 dump 一个样本英雄的原值，确认容器类型
            for _q7f_sh in list(_q7f_byhero.keys())[:1]:
                _q7f_sobj = _q7f_heroes.get(_q7f_sh)
                if _q7f_sobj is None:
                    _q7f_sobj = _q7f_heroes.get(str(_q7f_sh))
                if _q7f_sobj is not None:
                    for _q7f_f in ('pendantInfo', 'wearPendantInfo', 'pendantInfoCreateTime'):
                        _q7f_v = getattr(_q7f_sobj, _q7f_f, '<<不存在>>')
                        _q7f_log.append('前 hero%s.%s = %s %r'
                                        % (_q7f_sh, _q7f_f, type(_q7f_v).__name__,
                                           _q7f_v if not hasattr(_q7f_v, '__len__') or len(repr(_q7f_v)) < 200 else repr(_q7f_v)[:200]))

            for _h, _dids in _q7f_byhero.items():
                _obj = _q7f_heroes.get(_h)
                if _obj is None:
                    _obj = _q7f_heroes.get(str(_h))
                if _obj is None:
                    continue
                _slots = sorted(_dids)

                # 1) pendantInfo —— 已拥有挂饰
                try:
                    _pi = getattr(_obj, 'pendantInfo', None)
                    if isinstance(_pi, list):
                        for _s in _slots:
                            if _s not in _pi:
                                _pi.append(_s)
                        _q7f_npi += 1
                    elif isinstance(_pi, dict):
                        for _s in _slots:
                            if _s not in _pi:
                                _pi[_s] = _q7f_ts
                        _q7f_npi += 1
                    elif _pi is None:
                        setattr(_obj, 'pendantInfo', list(_slots))
                        _q7f_npi += 1
                except Exception as _e:
                    _q7f_log.append('hero %s pendantInfo 写失败 %r' % (_h, _e))

                # 2) pendantInfoCreateTime —— 获得时间
                try:
                    _pct = getattr(_obj, 'pendantInfoCreateTime', None)
                    if isinstance(_pct, dict):
                        for _s in _slots:
                            if _s not in _pct:
                                _pct[_s] = _q7f_ts
                        _q7f_npct += 1
                    elif isinstance(_pct, list):
                        _have = set(_x[0] for _x in _pct
                                    if isinstance(_x, (list, tuple)) and _x)
                        for _s in _slots:
                            if _s not in _have:
                                _pct.append([_s, _q7f_ts])
                        _q7f_npct += 1
                    elif _pct is None:
                        setattr(_obj, 'pendantInfoCreateTime',
                                dict((_s, _q7f_ts) for _s in _slots))
                        _q7f_npct += 1
                except Exception as _e:
                    _q7f_log.append('hero %s pendantInfoCreateTime 写失败 %r' % (_h, _e))

                # 3) wearPendantInfo —— 当前穿戴（不穿戴的话界面上不会出现）
                try:
                    _wp = getattr(_obj, 'wearPendantInfo', None)
                    if isinstance(_wp, dict):
                        for _s in _slots:
                            if _s not in _wp:
                                _wp[_s] = _s
                        _q7f_nwear += 1
                    elif isinstance(_wp, list):
                        for _s in _slots:
                            if _s not in _wp:
                                _wp.append(_s)
                        _q7f_nwear += 1
                    elif _wp is None:
                        setattr(_obj, 'wearPendantInfo', list(_slots))
                        _q7f_nwear += 1
                except Exception as _e:
                    _q7f_log.append('hero %s wearPendantInfo 写失败 %r' % (_h, _e))

            # 后值 + 校验
            for _q7f_sh in list(_q7f_byhero.keys())[:3]:
                _q7f_sobj = _q7f_heroes.get(_q7f_sh)
                if _q7f_sobj is None:
                    _q7f_sobj = _q7f_heroes.get(str(_q7f_sh))
                if _q7f_sobj is None:
                    continue
                for _q7f_f in ('pendantInfo', 'wearPendantInfo', 'pendantInfoCreateTime'):
                    _q7f_v = getattr(_q7f_sobj, _q7f_f, None)
                    _q7f_log.append('后 hero%s.%s = %s %r'
                                    % (_q7f_sh, _q7f_f, type(_q7f_v).__name__, _q7f_v))
                try:
                    _q7f_log.append('  英雄.getPendantInfo() = %r' % (_q7f_sobj.getPendantInfo(),))
                except Exception as _e:
                    _q7f_log.append('  英雄.getPendantInfo() 失败 %r' % (_e,))
                try:
                    _q7f_log.append('  checkPendantExist(%s, 26) = %r'
                                    % (_q7f_sh, _q7f_hm.checkPendantExist(_q7f_sh, 26)))
                except Exception as _e:
                    _q7f_log.append('  checkPendantExist 失败 %r' % (_e,))

            _q7f_log.append('# v12 pendantInfo=%d wearPendantInfo=%d createTime=%d'
                           % (_q7f_npi, _q7f_nwear, _q7f_npct))
        open(_q7f_root + '/_gpi2.txt', 'w').write('\n'.join(_q7f_log))
        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_pendant_fix_v12:pi=%d:wear=%d:pct=%d'
                                                    % (_q7f_npi, _q7f_nwear, _q7f_npct)})
        except Exception:
            pass
except Exception:
    pass


# ==== q7 pendant patch v11 (added by 修复版26) ====
# 登录时把挂饰ID写进客户端 heroMgrData 的英雄对象(pa)、heroMgrData.pp/ppc、
# 以及服务端下发的 profile 文档 heromgr.pp/ppc/英雄文档 pa。三条路径全覆盖，
# 无论装饰栏读哪一处都能显示。对所有账号每次登录自动生效。
try:
    import sys as _q7v_sys
    import os as _q7v_os

    _q7v_root = None
    for _q7v_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7v_os.path.isdir(_q7v_c):
                _q7v_os.makedirs(_q7v_c)
            _q7v_root = _q7v_c
            break
        except Exception:
            continue

    if _q7v_root:
        _q7v_log = []
        try:
            __import__('com.data.cdata.item_decoration')
        except Exception:
            pass
        _q7v_mod = _q7v_sys.modules.get('com.data.cdata.item_decoration')
        _q7v_d = getattr(_q7v_mod, 'data', None) if _q7v_mod is not None else None

        _q7v_byhero = {}
        if _q7v_d is not None and hasattr(_q7v_d, 'items'):
            for _k, _v in _q7v_d.items():
                if not hasattr(_v, 'get'):
                    continue
                _pd = _v.get('pendant')
                try:
                    _h, _d = int(_pd[0]), int(_pd[1])
                except Exception:
                    continue
                _q7v_byhero.setdefault(_h, set()).add(_d)
        _q7v_log.append('# 挂饰表: %d 英雄 / %d 条'
                        % (len(_q7v_byhero), sum(len(x) for x in _q7v_byhero.values())))

        _q7v_av = getattr(gg, 'avatar', None)
        _q7v_hm = getattr(_q7v_av, 'heroMgrData', None) if _q7v_av is not None else None
        _q7v_touched = 0
        _q7v_ppset = 0
        _q7v_docset = 0
        if _q7v_hm is not None:
            _q7v_heroes = getattr(_q7v_hm, 'heroes', None) or {}
            # 装饰栏 / getPendantInfo 真正读取的挂饰字典：pendingPendant / pendingPendantCreateTime
            # （heroMgrData 没有 pp/ppc 属性，只有 pendingPendant / pendingPendantCreateTime）
            _q7v_pp = getattr(_q7v_hm, 'pendingPendant', None)
            _q7v_ppc = getattr(_q7v_hm, 'pendingPendantCreateTime', None)
            _q7v_log.append('# 已加载英雄 %d / 挂饰表 %d 英雄' % (len(_q7v_heroes), len(_q7v_byhero)))
            _q7v_log.append('# pendingPendant 类型 %s / pendingPendantCreateTime 类型 %s'
                            % (type(_q7v_pp).__name__, type(_q7v_ppc).__name__))
            for _h, _dids in _q7v_byhero.items():
                _obj = _q7v_heroes.get(_h)
                if _obj is None:
                    _obj = _q7v_heroes.get(str(_h))
                if _obj is None:
                    continue
                try:
                    _cur = getattr(_obj, 'pa', None)
                    if _cur is None:
                        setattr(_obj, 'pa', list(sorted(_dids)))
                    else:
                        for _d in sorted(_dids):
                            if _d not in _cur:
                                _cur.append(_d)
                except Exception as _e:
                    _q7v_log.append('  hero %s pa 失败 %r' % (_h, _e))
                # pat = [[槽位,时间戳]]，已拥有英雄的挂饰存储（LocalHomeEngine.pendant 已拥有分支）
                try:
                    import time as _q7pt
                    _pat = getattr(_obj, 'pat', None)
                    if _pat is None:
                        _pat = []
                        setattr(_obj, 'pat', _pat)
                    _have = set(int(_x[0]) for _x in _pat
                                if isinstance(_x, (list, tuple)) and _x)
                    for _d in sorted(_dids):
                        if _d not in _have:
                            _pat.append([_d, int(_q7pt.time())])
                except Exception as _e:
                    _q7v_log.append('  hero %s pat 失败 %r' % (_h, _e))
                _q7v_touched += 1
            # 写入 pendingPendant / pendingPendantCreateTime（装饰栏实际读取处）
            try:
                if _q7v_pp is not None and hasattr(_q7v_pp, '__setitem__'):
                    for _h, _dids in _q7v_byhero.items():
                        if _q7v_heroes.get(_h) is None and _q7v_heroes.get(str(_h)) is None:
                            continue
                        for _key in (_h, str(_h)):
                            _pl = _q7v_pp.get(_key)
                            if _pl is None:
                                try:
                                    _q7v_pp[_key] = list(sorted(_dids))
                                    _pl = _q7v_pp[_key]
                                except Exception:
                                    _pl = None
                            if _pl is not None:
                                for _d in sorted(_dids):
                                    if _d not in _pl:
                                        _pl.append(_d)
                            break
                        _q7v_ppset += 1
                if _q7v_ppc is not None and hasattr(_q7v_ppc, '__setitem__'):
                    import time as _q7t
                    for _h, _dids in _q7v_byhero.items():
                        if _q7v_heroes.get(_h) is None and _q7v_heroes.get(str(_h)) is None:
                            continue
                        for _key in (_h, str(_h)):
                            _cl = _q7v_ppc.get(_key)
                            if _cl is None:
                                try:
                                    _q7v_ppc[_key] = [[_d, int(_q7t.time())] for _d in sorted(_dids)]
                                    _cl = _q7v_ppc[_key]
                                except Exception:
                                    _cl = None
                            if _cl is not None:
                                _had = set(_x[0] for _x in _cl if isinstance(_x, (list, tuple)) and _x)
                                for _d in sorted(_dids):
                                    if _d not in _had:
                                        _cl.append([_d, int(_q7t.time())])
                            break
            except Exception as _e:
                _q7v_log.append('pendingPendant 写入失败 %r' % (_e,))
            _q7v_log.append('# 注入英雄 %d（已加载 %d）' % (_q7v_touched, len(_q7v_heroes)))

            # 覆盖 getPendantInfo：装饰栏无论以何种方式读取，都从这里拿到正确 ID（槽位）列表
            # 多来源兜底（依据 LocalHomeEngine.pendant 反编译）：
            #   1) pendingPendant   —— 挂饰待下发字典
            #   2) 英雄对象 pa       —— 已拥有英雄的挂饰槽位列表
            #   3) 英雄文档 pat       —— [[槽位,时间戳]]
            try:
                def _q7v_new_gpi(self, h, _pp=_q7v_pp, _hr=_q7v_heroes):
                    try:
                        if _pp is not None:
                            _v = _pp.get(h)
                            if _v is None:
                                _v = _pp.get(str(h))
                            if _v:
                                return list(_v)
                        if _hr is not None:
                            _o = _hr.get(h)
                            if _o is None:
                                _o = _hr.get(str(h))
                            if _o is not None:
                                # pendantInfo 才是装饰栏真正读取的字段（v12 已写入）
                                _p = getattr(_o, 'pendantInfo', None)
                                if _p:
                                    try:
                                        return list(_p)
                                    except Exception:
                                        pass
                                _p = getattr(_o, 'pa', None)
                                if _p is None and hasattr(_o, 'get'):
                                    try:
                                        _p = _o.get('pa')
                                    except Exception:
                                        _p = None
                                if _p:
                                    return list(_p)
                    except Exception:
                        pass
                    return []
                try:
                    import types as _q7types
                    _q7v_hm.getPendantInfo = _q7types.MethodType(_q7v_new_gpi, _q7v_hm)
                except Exception:
                    try:
                        import new as _q7new
                        _q7v_hm.getPendantInfo = _q7new.instancemethod(_q7v_new_gpi, _q7v_hm, type(_q7v_hm))
                    except Exception:
                        _q7v_hm.getPendantInfo = _q7v_new_gpi.__get__(_q7v_hm, type(_q7v_hm))
                _q7v_log.append('# getPendantInfo 已覆盖')
            except Exception as _e:
                _q7v_log.append('getPendantInfo 覆盖失败 %r' % (_e,))
        _q7v_log.append('# pa 打补丁英雄 %d / pp(pending) %d' % (_q7v_touched, _q7v_ppset))

        # 4) 直接修补服务端下发的 profile 文档 heromgr.pp / ppc / 英雄文档 pa
        try:
            _q7v_hm_doc = None
            for _q7v_attr in ('heromgr', 'profile'):
                _q7v_hm_doc = getattr(_q7v_av, _q7v_attr, None)
                if _q7v_hm_doc is not None:
                    break
            if _q7v_hm_doc is not None:
                _q7v_pp_doc = _q7v_hm_doc.get('pp') if hasattr(_q7v_hm_doc, 'get') else getattr(_q7v_hm_doc, 'pp', None)
                _q7v_ppc_doc = _q7v_hm_doc.get('ppc') if hasattr(_q7v_hm_doc, 'get') else getattr(_q7v_hm_doc, 'ppc', None)
                _q7v_hrs = _q7v_hm_doc.get('hrs') if hasattr(_q7v_hm_doc, 'get') else getattr(_q7v_hm_doc, 'hrs', None)
                if _q7v_pp_doc is None and hasattr(_q7v_hm_doc, '__setitem__'):
                    try:
                        _q7v_hm_doc['pp'] = {}
                        _q7v_pp_doc = _q7v_hm_doc['pp']
                    except Exception:
                        _q7v_pp_doc = None
                if _q7v_ppc_doc is None and hasattr(_q7v_hm_doc, '__setitem__'):
                    try:
                        _q7v_hm_doc['ppc'] = {}
                        _q7v_ppc_doc = _q7v_hm_doc['ppc']
                    except Exception:
                        _q7v_ppc_doc = None
                import time as _q7t2
                for _h, _dids in _q7v_byhero.items():
                    if _q7v_pp_doc is not None and hasattr(_q7v_pp_doc, '__setitem__'):
                        _pl = _q7v_pp_doc.get(str(_h))
                        if _pl is None:
                            try:
                                _q7v_pp_doc[str(_h)] = list(sorted(_dids))
                                _pl = _q7v_pp_doc[str(_h)]
                            except Exception:
                                _pl = None
                        if _pl is not None:
                            for _d in sorted(_dids):
                                if _d not in _pl:
                                    _pl.append(_d)
                    if _q7v_ppc_doc is not None and hasattr(_q7v_ppc_doc, '__setitem__'):
                        _cl = _q7v_ppc_doc.get(_h)
                        if _cl is None:
                            try:
                                _q7v_ppc_doc[_h] = [[_d, int(_q7t2.time())] for _d in sorted(_dids)]
                                _cl = _q7v_ppc_doc[_h]
                            except Exception:
                                _cl = None
                        if _cl is not None:
                            _had = set(_x[0] for _x in _cl if isinstance(_x, (list, tuple)) and _x)
                            for _d in sorted(_dids):
                                if _d not in _had:
                                    _cl.append([_d, int(_q7t2.time())])
                    if isinstance(_q7v_hrs, list):
                        for _row in _q7v_hrs:
                            if isinstance(_row, (list, tuple)) and len(_row) > 1 and _row[0] == _h and hasattr(_row[1], '__setitem__'):
                                _pd_doc = _row[1].get('pa') if hasattr(_row[1], 'get') else getattr(_row[1], 'pa', None)
                                if _pd_doc is None:
                                    try:
                                        _row[1]['pa'] = list(sorted(_dids))
                                        _pd_doc = _row[1]['pa']
                                    except Exception:
                                        _pd_doc = None
                                if _pd_doc is not None:
                                    for _d in sorted(_dids):
                                        if _d not in _pd_doc:
                                            _pd_doc.append(_d)
                                # 已拥有英雄：pat = [[槽位,时间戳]]（装饰栏真正读取处）
                                try:
                                    import time as _q7pt2
                                    _ptl = (_row[1].get('pat') if hasattr(_row[1], 'get')
                                            else getattr(_row[1], 'pat', None))
                                    if _ptl is None:
                                        _row[1]['pat'] = []
                                        _ptl = _row[1]['pat']
                                    _have2 = set(int(_x[0]) for _x in _ptl
                                                 if isinstance(_x, (list, tuple)) and _x)
                                    for _d in sorted(_dids):
                                        if _d not in _have2:
                                            _ptl.append([_d, int(_q7pt2.time())])
                                except Exception:
                                    pass
                                _q7v_docset += 1
                                break
                _q7v_log.append('# profile文档 pp/ppc/pa 写入英雄 %d' % _q7v_docset)
        except Exception as _e:
            _q7v_log.append('profile文档修补失败 %r' % (_e,))

        # 结构探测：记录 heroMgrData / heromgr 的真实形状，便于下一轮精确化
        try:
            _q7v_struct = []
            if _q7v_hm is not None:
                _q7v_struct.append('heroMgrData 类型 %s' % type(_q7v_hm).__name__)
                _q7v_struct.append('heroMgrData 有 pp 属性: %s' % hasattr(_q7v_hm, 'pp'))
                _q7v_struct.append('heroMgrData 有 ppc 属性: %s' % hasattr(_q7v_hm, 'ppc'))
                _q7v_h0 = None
                for _q7k in list(getattr(_q7v_hm, 'heroes', {}).keys())[:1]:
                    _q7v_h0 = getattr(_q7v_hm, 'heroes', {}).get(_q7k)
                if _q7v_h0 is not None:
                    _q7v_struct.append('hero 对象类型 %s' % type(_q7v_h0).__name__)
                    _q7v_struct.append('hero 有 pa 属性: %s' % hasattr(_q7v_h0, 'pa'))
            if _q7v_av is not None:
                for _q7a in ('heromgr', 'profile'):
                    _q7v_hmd = getattr(_q7v_av, _q7a, None)
                    if _q7v_hmd is not None:
                        _q7v_struct.append('gg.avatar.%s 类型 %s' % (_q7a, type(_q7v_hmd).__name__))
                        break
            open(_q7v_root + '/_pstruct.txt', 'w').write('\n'.join(_q7v_struct))
        except Exception:
            pass

        # 验证
        if _q7v_hm is not None:
            for _h in list(getattr(_q7v_hm, 'heroes', {}).keys())[:6]:
                try:
                    _q7v_log.append('getPendantInfo(%s) = %r'
                                    % (_h, _q7v_hm.getPendantInfo(_h)))
                except Exception as _e:
                    _q7v_log.append('getPendantInfo(%s) failed %r' % (_h, _e))

        open(_q7v_root + '/_inject2.txt', 'w').write('\n'.join(_q7v_log))
        try:
            gg.avatar.callServerMethod('evalEcho', {'m': 'q7_pendant_patch_v11:touched=%d:pp=%d:doc=%d'
                                                    % (_q7v_touched, _q7v_ppset, _q7v_docset)})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_pendant_patch_v11:failed'})
    except Exception:
        pass


# ==== q7 dye diagnostic + best-effort save (added by 修复版26) ====
# 网关完全没有染色/纹染保存 RPC（updateProfile 仅处理固定方法列表，无 Dye/Skin 分支），
# 所以"保存"被网关丢弃——这就是只能预览不能保存的根因。本段：
#  (1) 包裹 gg.avatar.callServerMethod，把所有含 Dye/Wenlu/Skin/dress/Color/Pattern 的 RPC
#      完整记录到 _dye.txt，定位真正的"保存"方法名与参数结构；
#  (2) 包裹已知染色客户端方法(createDyeLib/createWenluDyeLib/_updateHeroDyeInfo/revertSkinDye)，记录入参；
#  (3) 对"保存类"RPC（方法名含 Dye 且不含 Lib，或含 setSkinDye/saveSkinDye 等）做客户端本地落地：
#      若参数含 hero + uid(skin) + 色值字段，把色值写入内存皮肤文档 sk[uid].cwd/pwd 等，让保存动作闭环。
try:
    import os as _q7d_os
    import time as _q7d_time
    _q7d_av = getattr(gg, 'avatar', None)
    _q7d_root = None
    for _q7d_c in ('/sdcard/q7dump', '/storage/emulated/0/q7dump', '/data/local/tmp/q7dump'):
        try:
            if not _q7d_os.path.isdir(_q7d_c):
                _q7d_os.makedirs(_q7d_c)
            _q7d_root = _q7d_c
            break
        except Exception:
            continue
    if _q7d_av is not None and _q7d_root is not None:
        _q7d_f = _q7d_root + '/_dye.txt'
        open(_q7d_f, 'a').write('\n=== 修复版25 dye 诊断 %s ===\n'
                                % _q7d_time.strftime('%H:%M:%S'))
        _q7d_KEYS = ('dye', 'wenlu', 'skin', 'dress', 'color', 'pattern')

        def _q7d_save_apply(method, args):
            try:
                _p = args[0] if args else None
                if not isinstance(_p, dict):
                    return
                _hero = _p.get('hero') or _p.get('h')
                _uid = _p.get('uid') or _p.get('skin') or _p.get('sk')
                if _hero is None or _uid is None:
                    open(_q7d_f, 'a').write('  skip: 缺少 hero/uid\n')
                    return
                _hm = getattr(_q7d_av, 'heroMgrData', None)
                if _hm is None:
                    return
                _heroes = getattr(_hm, 'heroes', None) or {}
                _obj = _heroes.get(_hero) or _heroes.get(str(_hero))
                if _obj is None:
                    return
                _sk = getattr(_obj, 'sk', None)
                if not isinstance(_sk, dict):
                    return
                _doc = _sk.get(_uid) or _sk.get(str(_uid))
                if not isinstance(_doc, dict):
                    return
                _written = {}
                for _fld in ('cwd', 'pwd', 'color', 'hsv', 'dye', 'pattern'):
                    if _fld in _p:
                        _doc[_fld] = _p[_fld]
                        _written[_fld] = _p[_fld]
                open(_q7d_f, 'a').write('  applied hero=%s uid=%s -> %r\n' % (_hero, _uid, _written))
            except Exception as _e:
                open(_q7d_f, 'a').write('  apply err %r\n' % (_e,))

        _q7d_orig = _q7d_av.callServerMethod

        def _q7d_wrap(method, *args, **kw):
            _m = str(method)
            _low = _m.lower()
            if any(_k in _low for _k in _q7d_KEYS):
                _save = ('lib' not in _low) and (('dye' in _low) or ('skin' in _low))
                _line = 'RPC %s save=%s args=%r\n' % (_m, _save, (args if _save else args[:1]))
                open(_q7d_f, 'a').write(_line)
                if _save:
                    _q7d_save_apply(_m, args)
            return _q7d_orig(method, *args, **kw)

        _q7d_av.callServerMethod = _q7d_wrap

        for _q7d_n in ('createDyeLib', 'createWenluDyeLib', '_updateHeroDyeInfo', 'revertSkinDye'):
            _q7d_fn = getattr(_q7d_av, _q7d_n, None)
            if callable(_q7d_fn):
                def _q7d_mk(name, fn):
                    def _w(*a, **k):
                        try:
                            open(_q7d_f, 'a').write('CLIENT %s args=%r\n' % (name, a))
                        except Exception:
                            pass
                        return fn(*a, **k)
                    return _w
                setattr(_q7d_av, _q7d_n, _q7d_mk(_q7d_n, _q7d_fn))

        try:
            _q7d_av.callServerMethod('evalEcho', {'m': 'q7_dye_diag:on'})
        except Exception:
            pass
except Exception:
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': 'q7_dye_diag:failed'})
    except Exception:
        pass
