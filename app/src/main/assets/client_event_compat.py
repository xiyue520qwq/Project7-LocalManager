import gg
# Empty-condition events finish only after their native UI/movie/guide pipeline.
import entity.avatar_members.EventTriggerMember as _q7_event_member
import com.data.cdata.event_content as _q7_event_content
import com.const as _q7_const

def _q7_complete_event_dialog(self, event):
    records = getattr(self, '_q7_settlement_continuations', None)
    if records is None:
        records = self._q7_settlement_continuations = {}
    previous = records.get(event)
    if previous and previous.get('handler'):
        previous['bus'].del_event_handler(_q7_const.GameEvent.SETTLEMENT_END,
            previous.pop('handler'))
    if previous:
        previous['phase'] = 'cancelled'
    record = records[event] = {'phase': 'created'}
    # Preserve the native echo/dialogue barrier; completion follows UI/movie work.
    def continue_event(args):
        if gg.avatar is self and records.get(event) is record:
            self.startSettlement(event)
    gg.city.touchable = True
    data = _q7_event_content.data[event]
    gg.ui.lock('wait_reward')
    if 'dialog' in data and not self.eventTriggerData.selectedEvent:
        self.clientTraceProcessingEvent('dialog', data['dialog'], callback=continue_event)
    else:
        self.callServerMethodReliable('reliableEcho', {}, callback=continue_event)

def _q7_start_settlement(self, event):
    records = getattr(self, '_q7_settlement_continuations', None)
    if records is None:
        records = self._q7_settlement_continuations = {}
    record = records.setdefault(event, {'phase': 'created'})
    if record['phase'] != 'created' or gg.avatar is not self:
        return
    gg.ui.unlock('wait_reward')
    record['phase'] = 'waiting'

    def done(*args):
        handler = record.pop('handler', None)
        if handler:
            record['bus'].del_event_handler(_q7_const.GameEvent.SETTLEMENT_END, handler)
        if record['phase'] != 'waiting':
            return
        record['phase'] = 'finished'
        if gg.avatar is self and records.get(event) is record:
            self.startCaidanScene(event)

    if gg.ui._procing_settlement:
        record['bus'] = gg.event
        record['handler'] = done
        gg.event.add_event_handler(_q7_const.GameEvent.SETTLEMENT_END, done)
    else:
        done()

def _q7_update_day(self, day):
    # A rejection/retry sends the current day to release the native UI lock.
    # It is not another calendar transition and must not replay its animation.
    if day == self.weeknumData.daynum:
        gg.ui.unlock('updateDay')
        panel = getattr(gg.ui.panels, 'city', None)
        if panel and panel.valid:
            panel.next_day.setBright(True)
        return
    return self._q7_original_update_day(day)
def _q7_start_event_battle(self, event):
    self._q7_finishing_ui_event = event
    return self._q7_original_start_event_battle(event)

def _q7_start_check_newbee(self):
    event = getattr(self, '_q7_finishing_ui_event', None)
    self._q7_finishing_ui_event = None
    if event in self.eventTriggerData.processingEventsClient:
        data = _q7_event_content.data.get(event, {})
        if data and not data.get('dialog') and not data.get('completeConds') and not data.get('enterBattle'):
            self.callServerMethodReliable('q7CompleteUiEvent', {'e': event})
    return self._q7_original_start_check_newbee()

def _q7_install_ui_event_bridge(avatar_class):
    # GameObjectMeta snapshots member functions onto ClientAvatar.
    if '_q7_original_complete_event_dialog' not in avatar_class.__dict__:
        complete = avatar_class.completeEventDialog
        avatar_class._q7_original_complete_event_dialog = getattr(complete, 'im_func', complete)
    avatar_class.completeEventDialog = _q7_complete_event_dialog
    if '_q7_original_start_settlement' not in avatar_class.__dict__:
        settlement = avatar_class.startSettlement
        avatar_class._q7_original_start_settlement = getattr(settlement, 'im_func', settlement)
    avatar_class.startSettlement = _q7_start_settlement
    if '_q7_original_update_day' not in avatar_class.__dict__:
        update = avatar_class.updateDay
        avatar_class._q7_original_update_day = getattr(update, 'im_func', update)
    avatar_class.updateDay = _q7_update_day
    if '_q7_original_start_check_newbee' not in avatar_class.__dict__:
        battle = avatar_class.startEventBattle
        check = avatar_class.startCheckNewbee
        avatar_class._q7_original_start_event_battle = getattr(battle, 'im_func', battle)
        avatar_class._q7_original_start_check_newbee = getattr(check, 'im_func', check)
        avatar_class.startEventBattle = _q7_start_event_battle
        avatar_class.startCheckNewbee = _q7_start_check_newbee

_q7_install_ui_event_bridge(type(gg.avatar))
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_native_ui_event_finish_v4'})

# Keep area-event completion outside the fullscreen panel's transient cb field.
import com.const as _q7_const
import cocos.panels.settlement_fullscreen as _q7_area_settlement

def _q7_notify_area_event(self, event, *areas, **kwargs):
    avatar = gg.avatar
    callback = kwargs.get('cb')
    opens, fights = [], []
    if not _q7_const.DEBUG_OFFLINE:
        for area in areas:
            area = int(area)
            info = avatar.cityData.get_area_info(area)
            if not info or not info.get('st'):
                continue
            if info['st'][0] == _q7_const.CityStatus.FREE:
                opens.append(area)
            else:
                fights.append(area)
    if (_q7_const.StoryRouteConst.ZHOUNIAN2_WEEK_REFRESH_EVENTID
            in avatar.eventTriggerData.completedEvents or avatar.storyData.change_week):
        fights = []
    batches = []
    if opens:
        if gg.ui.panels.battle_stage.valid:
            gg.ui.panels.battle_stage.visible_self_layer(False)
        batches.append(('notify_settlement_area_open', 'area_open', opens))
    if fights:
        batches.append(('notify_settlement_area_fight', 'area_fight', sorted(fights)))
    self.cb = None
    if not batches:
        if callback and gg.avatar is avatar:
            callback()
        return
    for index, (method, kind, values) in enumerate(batches):
        done = (avatar, callback) if index == len(batches) - 1 else None
        gg.ui.add_settlement('settlement_fullscreen', method, kind, values, _q7_area_done=done)
    gg.ui.proc_settlement()

def _q7_notify_settlement_area_open(self, stype, areas, _q7_area_done=False):
    result = self._q7_original_settlement_area_open(stype, areas)
    if _q7_area_done is not False:
        self._q7_area_done = _q7_area_done
        self.cb = None
    return result

def _q7_notify_settlement_area_fight(self, stype, areas, _q7_area_done=False):
    result = self._q7_original_settlement_area_fight(stype, areas)
    if _q7_area_done is not False:
        self._q7_area_done = _q7_area_done
        self.cb = None
    return result

def _q7_area_settlement_ended(self):
    done = getattr(self, '_q7_area_done', None)
    self._q7_area_done = None
    result = self._q7_original_area_settlement_ended()
    if done:
        avatar, callback = done
        if callback and gg.avatar is avatar:
            callback()
    return result

if not hasattr(_q7_area_settlement.Panel, '_q7_original_area_settlement_ended'):
    _q7_area_settlement.Panel._q7_original_settlement_area_open = _q7_area_settlement.Panel.notify_settlement_area_open
    _q7_area_settlement.Panel._q7_original_settlement_area_fight = _q7_area_settlement.Panel.notify_settlement_area_fight
    _q7_area_settlement.Panel._q7_original_area_settlement_ended = _q7_area_settlement.Panel.settlement_ended
    _q7_area_settlement.Panel.notify_area_event = _q7_notify_area_event
    _q7_area_settlement.Panel.notify_settlement_area_open = _q7_notify_settlement_area_open
    _q7_area_settlement.Panel.notify_settlement_area_fight = _q7_notify_settlement_area_fight
    _q7_area_settlement.Panel.settlement_ended = _q7_area_settlement_ended

gg.avatar.callServerMethod('evalEcho', {'m': 'q7_area_event_completion_v1'})

# Report native diary state without changing its layout or rendering contract.
import cocos.panels.diary_hero as _q7_diary_hero

def _q7_diary_report(message):
    try:
        gg.avatar.callServerMethod('evalEcho', {'m': message})
    except Exception:
        pass

def _q7_diary_refresh(self):
    notes = gg.avatar.notepadData.playerNote
    _q7_diary_report('q7_diary_view_v1 style=%s count=%s last=%s' % (
        getattr(self, 'style', ''), len(notes), notes[-1] if notes else 0))
    try:
        return self._q7_original_diary_refresh()
    except Exception:
        import traceback
        _q7_diary_report('q7_diary_render_failed_v1\n' + traceback.format_exc())
        raise

if not hasattr(_q7_diary_hero.Panel, '_q7_original_diary_refresh'):
    _q7_diary_hero.Panel._q7_original_diary_refresh = _q7_diary_hero.Panel.refresh
    _q7_diary_hero.Panel.refresh = _q7_diary_refresh

# Scene scrolling can run while on_load is still constructing the city widgets.
import cocos.panels.city as _q7_city_panel

def _q7_city_load(self, *args, **kwargs):
    self._q7_city_widgets_ready = False
    result = self._q7_original_city_load(*args, **kwargs)
    self._q7_city_widgets_ready = True
    return result

def _q7_city_destroy(self, *args, **kwargs):
    self._q7_city_widgets_ready = False
    return self._q7_original_city_destroy(*args, **kwargs)

def _q7_city_update(self, *args, **kwargs):
    if not self.valid or not getattr(self, '_q7_city_widgets_ready', True):
        return
    if not hasattr(self, 'xinwu_frame'):
        return
    return self._q7_original_city_update(*args, **kwargs)

def _q7_city_white_love(self):
    if not self.valid or not getattr(self, '_q7_city_widgets_ready', True):
        return
    # Also support the panel already created before this login patch arrives.
    if not hasattr(self, 'visible_semaphore') or not hasattr(self, 'whiteLove_showd'):
        return
    love = getattr(self, 'whiteLove', None)
    if love is None or getattr(love, '_node', None) is None:
        return
    return self._q7_original_city_white_love()

def _q7_install_city_lifecycle(panel_class, panel):
    if '_q7_original_city_load' not in panel_class.__dict__:
        panel_class._q7_original_city_load = panel_class.on_load
        panel_class._q7_original_city_destroy = panel_class.on_destroy
        panel_class._q7_original_city_white_love = panel_class.update_whiteLove_info
        panel_class.on_load = _q7_city_load
        panel_class.on_destroy = _q7_city_destroy
        panel_class.update_whiteLove_info = _q7_city_white_love
    if '_q7_original_city_update' not in panel_class.__dict__:
        panel_class._q7_original_city_update = panel_class.on_update
        panel_class.on_update = _q7_city_update
    # on_init stores bound methods, so an existing event handler must be rebound.
    handlers = getattr(panel, 'event_handlers', None)
    if handlers is not None and 'update_love_mark' in handlers:
        handlers['update_love_mark'] = panel.update_whiteLove_info

_q7_install_city_lifecycle(_q7_city_panel.Panel, getattr(gg.ui.panels, 'city', None))
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_city_widgets_lifecycle_v2'})

# Only server-managed room visits change the native reset/dedup behavior.
import com.data.cdata.puzzle_room_clue as _q7_puzzle_clues

def _q7_puzzle_snapshot(self):
    snapshot = getattr(self, '_q7_puzzle_snapshot', None)
    if not isinstance(snapshot, tuple) or len(snapshot) != 4:
        return None
    week, event, visit, room = snapshot
    if event not in (4229, 6228, 7346) or visit < 1 or week < 0:
        return None
    if _q7_event_content.data.get(event, {}).get('puzzle_room') != room:
        return None
    return snapshot

def _q7_puzzle_sync(self, data):
    snapshot = _q7_puzzle_snapshot(self)
    if snapshot is None:
        return self._q7_original_puzzle_sync(data)
    allowed = set(clue for clue, row in _q7_puzzle_clues.data.items()
        if row['room_id'] == snapshot[3])
    if not isinstance(data, (list, tuple)) or any(type(clue) is not int for clue in data) or len(set(data)) != len(data) or not set(data).issubset(allowed):
        raise ValueError('invalid managed puzzle clue snapshot')
    result = self._q7_original_puzzle_sync(data)
    self.storyData.puzzle_room_clues = list(data)
    if getattr(self, '_q7_puzzle_last_snapshot', None) != snapshot:
        self._q7_puzzle_requested = None
        self._q7_puzzle_inflight = None
    self._q7_puzzle_last_snapshot = snapshot
    return result

def _q7_puzzle_unlock_touch(self, *args, **kwargs):
    result = self._q7_original_puzzle_unlock_touch(*args, **kwargs)
    avatar = gg.avatar
    inflight = getattr(avatar, '_q7_puzzle_inflight', None)
    if inflight is not None and inflight[2] is self:
        avatar._q7_puzzle_inflight = None
    return result

def _q7_puzzle_request(self, clue):
    snapshot = _q7_puzzle_snapshot(self)
    scene = getattr(gg, 'jiemi', None)
    if snapshot is not None and scene is not None:
        scene_class = type(scene)
        if '_q7_original_puzzle_unlock_touch' not in scene_class.__dict__:
            unlock = scene_class.unlock_touch
            scene_class._q7_original_puzzle_unlock_touch = getattr(unlock, 'im_func', unlock)
            scene_class.unlock_touch = _q7_puzzle_unlock_touch
        self._q7_puzzle_requested = (snapshot, clue, scene)
    return self._q7_original_puzzle_request(clue)

def _q7_puzzle_reply(self, result, clue, get_cg):
    snapshot = _q7_puzzle_snapshot(self)
    if snapshot is None:
        return self._q7_original_puzzle_reply(result, clue, get_cg)
    requested = getattr(self, '_q7_puzzle_requested', None)
    inflight = getattr(self, '_q7_puzzle_inflight', None)
    row = _q7_puzzle_clues.data.get(clue, {})
    if not result or row.get('room_id') != snapshot[3] or clue in self.storyData.puzzle_room_clues:
        gg.ui.unlock('puzzleRoomGetClue')
        # A duplicate during the original dialogue/animation must not unlock touch.
        if inflight is None and requested is not None and requested[:2] == (snapshot, clue):
            scene = getattr(gg, 'jiemi', None)
            if scene is requested[2]:
                scene.unlock_touch()
            self._q7_puzzle_requested = None
        return
    if requested is not None and requested[:2] == (snapshot, clue):
        self._q7_puzzle_inflight = requested
        self._q7_puzzle_requested = None
    return self._q7_original_puzzle_reply(result, clue, get_cg)

def _q7_puzzle_cg_rewards(self, reward):
    token = getattr(self, '_q7_puzzle_reward_context', None)
    self._q7_puzzle_reward_context = None
    snapshot = _q7_puzzle_snapshot(self)
    managed = isinstance(token, tuple) and len(token) == 4 and snapshot is not None
    managed = managed and token[:3] == snapshot[:3] and token[3] == 2 and snapshot[3] == 1
    if not managed:
        return self._q7_original_puzzle_cg_rewards(reward)
    seen = getattr(self, '_q7_puzzle_cg_seen', None)
    if seen is None:
        seen = self._q7_puzzle_cg_seen = set()
    if token in seen:
        return
    result = self._q7_original_puzzle_cg_rewards(reward)
    seen.add(token)
    return result

def _q7_install_puzzle_bridge(avatar_class):
    for original, replacement, method in (
        ('_q7_original_puzzle_sync', _q7_puzzle_sync, 'syncPuzzleRoomClue'),
        ('_q7_original_puzzle_request', _q7_puzzle_request, 'puzzleRoomGetClue'),
        ('_q7_original_puzzle_reply', _q7_puzzle_reply, 'puzzleRoomGetClueReturn'),
        ('_q7_original_puzzle_cg_rewards', _q7_puzzle_cg_rewards, 'cgRewards')):
        if original not in avatar_class.__dict__:
            native_method = getattr(avatar_class, method)
            setattr(avatar_class, original, getattr(native_method, 'im_func', native_method))
        setattr(avatar_class, method, replacement)

_q7_install_puzzle_bridge(type(gg.avatar))
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_puzzle_room_bridge_v1'})
