package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
final class LocalAlanCityEngine {
    static final String LOCKS = "q7AlanCityLocks";

    LocalAlanCityEngine() {
    }

    static boolean locked(byte[] bArr, int i) {
        byte[] doc = LocalResourceEngine.doc(bArr, LOCKS);
        byte[] doc2 = LocalResourceEngine.doc(bArr, "weeknum");
        String stringValue = BsonLite.stringValue(doc, "cycle");
        return "11-2".equals(BsonLite.stringValue(LocalResourceEngine.doc(bArr, "std"), "rt")) && stringValue != null && stringValue.equals(BsonLite.stringValue(LocalResourceEngine.doc(bArr, "q7WenziCity"), "cycle")) && LocalResourceEngine.value(doc, "week") == LocalResourceEngine.value(doc2, "w") && BsonLite.intArrayValues(doc, "areas").contains(Integer.valueOf(i));
    }

    static boolean completed(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        return progress != null && LocalStoryItemRewardEngine.completedDay(bArr, progress, i) == 0 && progress.eventCompletions.getOrDefault(Integer.valueOf(i), 0).intValue() == 1 && !BsonLite.intArrayValues(bArr, "q7WeekEventBaseline").contains(Integer.valueOf(i));
    }

    static boolean active(byte[] bArr, LocalTutorialStore.Progress progress) {
        if (progress == null || progress.weekCommit == null) {
            return false;
        }
        byte[] doc = LocalResourceEngine.doc(bArr, "q7WenziCity");
        if (LocalResourceEngine.value(doc, "version") != 1 || LocalResourceEngine.value(doc, "week") != progress.weekIndex || !progress.weekCommit.equals(BsonLite.stringValue(doc, "cycle"))) {
            return false;
        }
        String stringValue = BsonLite.stringValue(LocalResourceEngine.doc(bArr, "std"), "rt");
        return (("10-6".equals(stringValue) || "10".equals(stringValue)) || (stringValue != null && ((stringValue.equals("11") || stringValue.startsWith("11-")) && completed(bArr, progress, 1139)))) && completed(bArr, progress, 1066) && completed(bArr, progress, 1129) && completed(bArr, progress, 1141) && completed(bArr, progress, 1140);
    }

    static Integer state(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        if ((i != 3 && i != 4 && i != 5 && i != 6 && i != 7) || !active(bArr, progress)) {
            return null;
        }
        if (i == 4 || i == 5 || i == 7) {
            return rescueFreed(bArr, progress, i) ? 0 : null;
        }
        if (i == 3) {
            return 0;
        }
        return Integer.valueOf((LocalCityProgress.hasBattle(progress, 320) && completed(bArr, progress, 1132)) ? 0 : 1);
    }

    static boolean rescueFreed(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        int i2;
        if (i == 4) {
            i2 = 6138;
        } else if (i == 5) {
            i2 = 6139;
        } else {
            i2 = i == 7 ? 6140 : 0;
        }
        if (i2 == 0 || !active(bArr, progress) || progress.completedEvents.contains(6134) || progress.completedEvents.contains(6137) || !currentDay5(bArr, progress, i2)) {
            return false;
        }
        return currentDay5(bArr, progress, 6135) || currentDay5(bArr, progress, 6136);
    }

    private static boolean currentDay5(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        return LocalStoryItemRewardEngine.completedDay(bArr, progress, i) == 5 && progress.eventCompletions.getOrDefault(Integer.valueOf(i), 0).intValue() == 1 && !BsonLite.intArrayValues(bArr, "q7WeekEventBaseline").contains(Integer.valueOf(i));
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        if (active(result.profile, progress)) {
            byte[] bArr = result.profile;
            if ("11-2".equals(BsonLite.stringValue(LocalResourceEngine.doc(result.profile, "std"), "rt")) && LocalStoryItemRewardEngine.completedDay(result.profile, progress, 7177) == 6 && progress.eventCompletions.getOrDefault(7177, 0).intValue() == 1 && !BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline").contains(7177)) {
                List<Integer> intArrayValues = BsonLite.intArrayValues(localEventCatalog.cityEffects.get(7177), "areaLock");
                if (intArrayValues.equals(Arrays.asList(1, 2, 4, 5, 6, 7, 8))) {
                    result.profile = BsonLite.withProfileDocument(result.profile, LOCKS, BsonLite.document("week", Integer.valueOf(progress.weekIndex), "cycle", progress.weekCommit, "areas", intArrayValues));
                }
            }
            byte[] withLocalCityState = BsonLite.withLocalCityState(result.profile, progress);
            if (Arrays.equals(withLocalCityState, bArr)) {
                return;
            }
            result.profile = withLocalCityState;
            result.add("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, result.profile));
        }
    }
}
