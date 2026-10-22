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
