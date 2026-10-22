# A completed shop lesson must retain its native entrance marker on return.
import gg
import cocos.panels.city as _q7_shop_city
import entity.avatar_attrs.NewbeeData as _q7_shop_data


def _q7_shop_finish(self, events):
    result = _q7_shop_data.NewbeeData._q7_shop_original_finish(self, events)
    avatar = gg.avatar
    if (avatar is not None and avatar.newbeeData is self
            and 190 in self.finish_newbee and 191 not in self.finish_newbee):
        avatar.finishNewbee((191,))
    return result


def _q7_shop_close(self, *args, **kwargs):
    avatar = gg.avatar
    if avatar is not None:
        data = avatar.newbeeData
        if 190 in data.finish_newbee and 191 not in data.finish_newbee:
            avatar.finishNewbee((191,))
    return _q7_shop_city.Panel._q7_shop_original_close(self, *args, **kwargs)


if not hasattr(_q7_shop_city.Panel, '_q7_shop_original_close'):
    _q7_shop_city.Panel._q7_shop_original_close = _q7_shop_city.Panel.close_souvenir
    _q7_shop_city.Panel.close_souvenir = _q7_shop_close
if not hasattr(_q7_shop_data.NewbeeData, '_q7_shop_original_finish'):
    _q7_shop_data.NewbeeData._q7_shop_original_finish = _q7_shop_data.NewbeeData.finishNewbee
    _q7_shop_data.NewbeeData.finishNewbee = _q7_shop_finish
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_shop_entrance_v1'})
