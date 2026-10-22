package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalAnCityEngine {
    static final Set<Integer> LOCK_EVENTS = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList(7044, 7045, 7048, 7049)));

    LocalAnCityEngine() {
    }

    static boolean active(byte[] bArr) {
        String stringValue = BsonLite.stringValue(LocalResourceEngine.doc(bArr, "std"), "rt");
        return "4".equals(stringValue) || "4-1".equals(stringValue);
    }

    static boolean locked(byte[] bArr, int i) {
        return active(bArr) && Boolean.TRUE.equals(BsonLite.boolValue(LocalResourceEngine.doc(bArr, "q7AnCityLocks"), Integer.toString(i)));
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        byte[] bArr;
        if (active(result.profile)) {
            HashSet hashSet = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
            byte[] doc = LocalResourceEngine.doc(result.profile, "q7AnCityEffects");
            byte[] doc2 = LocalResourceEngine.doc(result.profile, "q7AnCityLocks");
            boolean z = false;
            Iterator<Integer> it = progress.completedEvents.iterator();
            while (it.hasNext()) {
                int intValue = it.next().intValue();
                if (LOCK_EVENTS.contains(Integer.valueOf(intValue)) && !hashSet.contains(Integer.valueOf(intValue)) && !Boolean.TRUE.equals(BsonLite.boolValue(doc, Integer.toString(intValue))) && (bArr = localEventCatalog.cityEffects.get(Integer.valueOf(intValue))) != null) {
                    Iterator<Integer> it2 = BsonLite.intArrayValues(bArr, "areaLock").iterator();
                    while (it2.hasNext()) {
                        int intValue2 = it2.next().intValue();
                        if (intValue2 >= 1 && intValue2 <= 8) {
                            doc2 = BsonLite.withProfileBool(doc2, Integer.toString(intValue2), true);
                            z = true;
                        }
                    }
                    doc = BsonLite.withProfileBool(doc, Integer.toString(intValue), true);
                }
            }
            if (z) {
                result.profile = BsonLite.withProfileDocument(result.profile, "q7AnCityEffects", doc);
                result.profile = BsonLite.withProfileDocument(result.profile, "q7AnCityLocks", doc2);
                result.profile = BsonLite.withLocalCityState(result.profile, progress);
                result.add("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, result.profile));
            }
        }
    }
}
