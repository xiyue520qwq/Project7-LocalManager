package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
final class LocalWenziCityEngine {
    static final String KEY = "q7WenziCity";

    LocalWenziCityEngine() {
    }

    static boolean proven(byte[] bArr, LocalTutorialStore.Progress progress) {
        String stringValue = BsonLite.stringValue(LocalResourceEngine.doc(bArr, "std"), "rt");
        return (progress == null || stringValue == null || (!stringValue.equals("10") && !stringValue.startsWith("10-")) || !cooperationHistory(bArr, progress)) ? false : true;
    }

    private static boolean cooperationHistory(byte[] bArr, LocalTutorialStore.Progress progress) {
        return progress != null && LocalStoryItemRewardEngine.completedDay(bArr, progress, 1129) == 0 && progress.eventCompletions.getOrDefault(1129, 0).intValue() == 1 && !BsonLite.intArrayValues(bArr, "q7WeekEventBaseline").contains(1129);
    }

    static boolean valid(byte[] bArr, LocalTutorialStore.Progress progress) {
        return proven(bArr, progress) && receiptMatches(bArr, progress);
    }

    private static boolean receiptMatches(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] doc = LocalResourceEngine.doc(bArr, KEY);
        return progress != null && LocalResourceEngine.value(doc, "version") == 1 && LocalResourceEngine.value(doc, "week") == progress.weekIndex && Objects.equals(BsonLite.stringValue(doc, "cycle"), progress.weekCommit);
    }

    static Integer state(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        if (i != 3) {
            return null;
        }
        if (valid(bArr, progress)) {
            return 0;
        }
        String stringValue = BsonLite.stringValue(LocalResourceEngine.doc(bArr, "std"), "rt");
        if (stringValue != null) {
            return ((stringValue.equals("13") || stringValue.startsWith("13-")) && cooperationHistory(bArr, progress) && receiptMatches(bArr, progress) && LocalStoryItemRewardEngine.completedDay(bArr, progress, 4203) == 3 && progress.eventCompletions.getOrDefault(4203, 0).intValue() == 1 && !BsonLite.intArrayValues(bArr, "q7WeekEventBaseline").contains(4203)) ? 0 : null;
        }
        return null;
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        if (!proven(result.profile, progress) || !Arrays.asList(3).equals(BsonLite.intArrayValues(localEventCatalog.cityEffects.get(1129), "areaFree"))) {
            return;
        }
        if (!(BsonLite.keys(result.profile).contains(KEY) && BsonLite.documentValue(result.profile, KEY) == null) && BsonLite.keys(LocalResourceEngine.doc(result.profile, KEY)).isEmpty()) {
            result.profile = BsonLite.withProfileDocument(result.profile, KEY, BsonLite.document("version", 1, "week", Integer.valueOf(progress.weekIndex), "cycle", progress.weekCommit));
            result.profile = BsonLite.withLocalCityState(result.profile, progress);
            result.add("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, result.profile));
        }
    }
}
