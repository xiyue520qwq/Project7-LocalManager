package com.project7.localmanager;

import com.project7.localmanager.LocalResourceCatalog;
import com.project7.localmanager.LocalResourceEngine;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
final class LocalDrawCalendar {
    static final String DATA_SYNC = "import com.data.cdata.activity_config as ac; import com.data.cdata.chouka_info as ci; import com.utils.runtime_mapping_table as mt; ac.data=dict(ac.data); ac.data[175]=dict(ac.data[175]); ci.data=dict(ci.data); ci.data[484]=dict(ci.data[484]); ac.data[175]['open_range']=(2021,9,22,7,0,0,2035,9,22,7,0,0); ci.data[484]['begin_time']=(2016,1,1,7,0,0,0,0,0); ci.data[484]['end_time']=(2035,9,22,7,0,0,0,0,0); mt.reload(); mt._CELL_MAPPING_CONFIG.setdefault('chouka_info',{}).setdefault(484,{}).update({'begin_time':ci.data[484]['begin_time'],'end_time':ci.data[484]['end_time']}); print('local_draw_calendar_v3', ci.data[484]['end_time'], mt.get_table('chouka_info').data.get(484,{}).get('end_time'))";
    static final String HOME_DATA_SYNC = "import com.data.cdata.chouka_info as _q7_hci; import com.data.cdata.furniture_delivery as _q7_hfd; import com.utils.runtime_mapping_table as _q7_hmt; _q7_hci.data=dict(_q7_hci.data); _q7_hci.data[162]=dict(_q7_hci.data[162]); _q7_hfd.data=dict(_q7_hfd.data); _q7_hfd.data[162]=dict(_q7_hfd.data[162]); _q7_hci.data[162].update({'begin_time':(2019,9,11,7,0,5,0,0,0),'end_time':(2035,9,11,7,0,5,0,0,0)}); _q7_hfd.data[162].update({'begin_time':_q7_hci.data[162]['begin_time'],'end_time':_q7_hci.data[162]['end_time']}); _q7_hmt.reload(); _q7_hmt._CELL_MAPPING_CONFIG.setdefault('chouka_info',{}).setdefault(162,{}).update({'begin_time':_q7_hci.data[162]['begin_time'],'end_time':_q7_hci.data[162]['end_time']})";

    LocalDrawCalendar() {
    }

    static byte[] repairSelection(byte[] bArr, LocalResourceCatalog localResourceCatalog) {
        LocalResourceCatalog.Pool pool = localResourceCatalog.pools.get(484);
        if (pool == null) {
            return bArr;
        }
        byte[] state = LocalDrawEngine.state(bArr, 484);
        List<Integer> intArrayValues = BsonLite.intArrayValues(state, "ch");
        if (intArrayValues.size() != 3 || intArrayValues.get(0).intValue() == pool.stamp || !pool.f11s.contains(intArrayValues.get(1)) || !pool.f9a.contains(intArrayValues.get(2))) {
            return bArr;
        }
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        LocalDrawEngine.saveState(result, BsonLite.withProfileIntArray(state, "ch", Arrays.asList(Integer.valueOf(pool.stamp), intArrayValues.get(1), intArrayValues.get(2))), 484);
        return result.profile;
    }
}
