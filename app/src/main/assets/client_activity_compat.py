# Reuse the stock costume-sale banner and shop, without opening unrelated events.
import time as _q7_activity_time
import gg
import com.data.cdata.skin as _q7_activity_skin
import com.data.cdata.item_store as _q7_activity_shop
import com.data.cdata.huodong_main as _q7_activity_main
import com.data.cdata.ui_comp_data as _q7_activity_ui
import com.utils.runtime_mapping_table as _q7_activity_mapping

def _q7_activity_override(module, table, key, values):
    row = dict(module.data.get(key, {}))
    row.update(values)
    module.data = dict(module.data)
    module.data[key] = row
    _q7_activity_mapping._CELL_MAPPING_CONFIG.setdefault(table, {}).setdefault(key, {}).update(values)
    return row

_q7_active_skins = []
_q7_activity_now = int(_q7_activity_time.time())
for _q7_sid, _q7_range in sorted(_q7_skin_windows.items()):
    # The stock UI compares these calendar tuples with guessServerTime's gmtime.
    _q7_dates = tuple(_q7_activity_time.gmtime(_q7_range[0])[:6])
    _q7_dates += tuple(_q7_activity_time.gmtime(_q7_range[1])[:6])
    if _q7_range == (0, 0):
        _q7_dates = (2000, 1, 1, 0, 0, 0) * 2
    _q7_skin = _q7_activity_override(_q7_activity_skin, 'skin', _q7_sid, {'fix_time': _q7_dates})
    for _q7_shop_id, _q7_product in list(_q7_activity_shop.data.items()):
        if _q7_product.get('isSkin') and _q7_product.get('item_num') == _q7_skin.get('item'):
            _q7_activity_override(_q7_activity_shop, 'item_store', _q7_shop_id,
                                  {'fix_time': _q7_dates, 'pre_time': (), 'open': 1})
    if _q7_range[0] <= _q7_activity_now < _q7_range[1]:
        _q7_active_skins.append(_q7_sid)

_q7_banner_id = 900215
_q7_banner = {'id': _q7_banner_id, 'pid': 215, 'gid': _q7_banner_id, 'sort_id': 2,
              'name': u'\u65f6\u88c5\u590d\u523b'.encode('utf-8'), 'sid': 1,
              'tab': 'gui_activity_tab_29.png', 'ui_idxs': (9002151, 9002152)}
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
        _q7_activity_override(_q7_activity_ui, 'ui_comp_data', 9002151 + _q7_index, _q7_image)
else:
    _q7_banner['fix_time'] = (2000, 1, 1, 0, 0, 0) * 2
_q7_activity_override(_q7_activity_main, 'huodong_main', _q7_banner_id, _q7_banner)
gg.avatar.callServerMethod('evalEcho', {'m': 'q7_skin_activity_banner_v1:' + str(len(_q7_active_skins))})
