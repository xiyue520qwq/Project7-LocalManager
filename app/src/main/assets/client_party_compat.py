# Older local saves may own extra heroes before the native two-hero lesson.
# Only acknowledge its optional underfilled-party prompt; retain native validation.
import gg
import cocos.panels.battle_common as _q7_tutorial_battle


def _q7_tutorial_start(self, *args, **kwargs):
    avatar = gg.avatar
    guide = getattr(gg.ui.panels, 'newbee_guidance', None)
    events = getattr(avatar, 'eventTriggerData', None)
    processing = set(getattr(events, 'processingEventsServer', ()))
    processing.update(getattr(events, 'processingEventsClient', ()))
    heroes = list(getattr(self, 'hero_sels', {}).values())
    active = (guide is not None and getattr(guide, 'valid', False)
              and getattr(guide, 'visible', False) and getattr(guide, 'event_id', None) == 14
              and 1043 in processing and self.stage_id == 101
              and self.mode == _q7_tutorial_battle.Panel.MODE_STAGE
              and len(heroes) == 2 and len(set(heroes)) == 2 and 24 in heroes
              and all(hero in avatar.heroMgrData.getAllHeroes() for hero in heroes))
    original = _q7_tutorial_battle.Panel._q7_tutorial_original_start
    if not active:
        return original(self, *args, **kwargs)
    confirm = gg.ui.panels.common_confirm
    notify = confirm.notify_confirm

    def tutorial_confirm(message, callbacks, *rest, **options):
        if message == 381:
            return callbacks() if callable(callbacks) else callbacks[0]()
        return notify(message, callbacks, *rest, **options)

    confirm.notify_confirm = tutorial_confirm
    try:
        return original(self, *args, **kwargs)
    finally:
        confirm.notify_confirm = notify


if not hasattr(_q7_tutorial_battle.Panel, '_q7_tutorial_original_start'):
    _q7_tutorial_battle.Panel._q7_tutorial_original_start = _q7_tutorial_battle.Panel._on_start_click
    _q7_tutorial_battle.Panel._on_start_click = _q7_tutorial_start
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_tutorial_party_v1'})
