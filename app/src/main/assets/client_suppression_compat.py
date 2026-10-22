# Preserve stock score/eligibility calculation, reporting the exact score locally.
import gg
from entity.avatar_members import BattleStageMember as _q7_yazhi_member

def _q7_install_yazhi(avatar_class):
    if avatar_class.__dict__.get('_q7_yazhi_score_v2', False):
        return
    original_available = avatar_class.battleYazhiAvailable
    original_available = getattr(original_available, 'im_func', original_available)

    def _q7_yazhi_available(self, sceneId, heroes):
        week = self.weeknumData.weeknum
        if week < 1:
            return False
        if week >= 2:
            return original_available(self, sceneId, heroes)
        # Local story weeks are zero based; keep all other original eligibility checks.
        from com.data.cdata import mission as _q7_missions
        rule = _q7_missions.data.get(sceneId, {})
        if not rule.get('yazhi_available', False):
            return False
        history = self.battleStageData.passStageHistory
        if not any(history.get(scene, 0) > 0 for scene in
                   (sceneId,) + tuple(rule.get('suppress_mission_ids', ()))):
            return False
        score = sum(self.heroMgrData.getHero(hero).updateScore() for hero in heroes)
        return score >= self.battleYazhiGetScoreThreshold(sceneId)

    def _q7_yazhi_ask(self, areaId, sceneId, heroes):
        if not self.battleYazhiAvailable(sceneId, heroes):
            return
        score = sum(self.heroMgrData.getHero(h).updateScore() for h in heroes)
        gg.ui.lock('yazhi')
        self.callServerMethod('battleYazhiAsk',
            {'a': areaId, 's': sceneId, 'h': heroes, 'q7Score': int(score)},
            callback=lambda *args: gg.ui.unlock('yazhi'))

    avatar_class.battleYazhiAvailable = _q7_yazhi_available
    avatar_class.battleYazhiAsk = _q7_yazhi_ask
    avatar_class._q7_yazhi_score_v2 = True

_q7_install_yazhi(_q7_yazhi_member.Member)
_q7_install_yazhi(type(gg.avatar))

from cocos.panels import battle_stage as _q7_yazhi_panel

def _q7_install_yazhi_panel(panel_class):
    if panel_class.__dict__.get('_q7_yazhi_panel_v2', False):
        return
    original_update = panel_class.update_yazhi_buffon
    original_update = getattr(original_update, 'im_func', original_update)

    def _q7_yazhi_button(self):
        result = original_update(self)
        if gg.avatar.weeknumData.weeknum == 1:
            from com.data.cdata import mission as _q7_missions
            rule = _q7_missions.data.get(self.stage_id, {})
            self.yazhi_button.setVisible(bool(rule.get('yazhi_available', False)))
        return result

    panel_class.update_yazhi_buffon = _q7_yazhi_button
    panel_class._q7_yazhi_panel_v2 = True

_q7_install_yazhi_panel(_q7_yazhi_panel.Panel)
_q7_active_stage = getattr(gg.ui.panels, 'battle_stage', None)
if _q7_active_stage is not None and hasattr(type(_q7_active_stage), 'update_yazhi_buffon'):
    _q7_install_yazhi_panel(type(_q7_active_stage))

gg.avatar.callServerMethod('evalEcho', {'m': 'q7_yazhi_score_v2'})
