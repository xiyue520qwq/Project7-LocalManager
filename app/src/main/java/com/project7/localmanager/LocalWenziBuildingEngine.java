package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
final class LocalWenziBuildingEngine {
    LocalWenziBuildingEngine() {
    }

    /* renamed from: d */
    static byte[] m86d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m87v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        String str;
        if (LocalWenziCityEngine.valid(result.profile, progress) && LocalStoryItemRewardEngine.completedDay(result.profile, progress, 2067) == 1 && progress.eventCompletions.getOrDefault(2067, 0).intValue() == 1 && !BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline").contains(2067)) {
            byte[] m86d = m86d(localEventCatalog.cityEffects.get(2067), "buildBuilding");
            if (BsonLite.keys(m86d).size() != 1 || !Arrays.asList(34, 1).equals(BsonLite.intArrayValues(m86d, "3"))) {
                return;
            }
            String str2 = "q7WenziCity";
            byte[] m86d2 = m86d(result.profile, "q7WenziCity");
            if (!BsonLite.keys(m86d2).contains("fireFormation") && LocalCityProgress.status(progress, 3, result.profile) == 0) {
                byte[] withLocalCityState = BsonLite.withLocalCityState(result.profile, progress);
                byte[] m86d3 = m86d(withLocalCityState, "city");
                byte[] m86d4 = m86d(m86d3, "areas");
                byte[] m86d5 = m86d(m86d4, "area_3");
                byte[] m86d6 = m86d(m86d5, "bd");
                Iterator<String> it = BsonLite.keys(m86d6).iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (m87v(m86d(m86d6, it.next()), "id") == 34) {
                        i++;
                    }
                }
                if (i > 1) {
                    return;
                }
                if (i != 0) {
                    str = "q7WenziCity";
                } else {
                    int i2 = 1;
                    while (true) {
                        if (i2 > m87v(m86d5, "mbn")) {
                            str = str2;
                            i2 = 0;
                            break;
                        } else {
                            str = str2;
                            if (!BsonLite.keys(m86d6).contains(Integer.toString(i2))) {
                                break;
                            }
                            i2++;
                            str2 = str;
                        }
                    }
                    if (i2 == 0) {
                        return;
                    }
                    String num = Integer.toString(i2);
                    byte[] withProfileDocument = BsonLite.withProfileDocument(m86d5, "bd", BsonLite.withProfileDocument(m86d6, num, BsonLite.document("id", 34, "uuid", LocalResourceEngine.uuid())));
                    m86d3 = BsonLite.withProfileDocument(m86d3, "areas", BsonLite.withProfileDocument(m86d4, "area_3", BsonLite.withProfileDocument(withProfileDocument, "dbd", BsonLite.withoutProfileKey(m86d(withProfileDocument, "dbd"), num))));
                }
                result.profile = BsonLite.withProfileDocument(withLocalCityState, "city", m86d3);
                result.profile = BsonLite.withProfileDocument(result.profile, str, BsonLite.withProfileBool(m86d2, "fireFormation", true));
                result.add("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, result.profile));
                result.add("get_city_data_reply", BsonLite.cityDataReplyDocument(progress, result.profile));
            }
        }
    }
}
