package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
final class LocalDalviraStoryEngine {
    static final String CLOSE = "daerweilaDispatchClose";
    static final int[][] DISPATCH = {new int[]{4124, 4161, 4213, 4126, 4166}, new int[]{4127, 4167, 4214, 4133, 4173}, new int[]{4134, 4174, 4215, 4136, 4175}, new int[]{4137, 4176, 4216, 4138, 4181}, new int[]{4139, 4182, 4217, 4144, 4187}};
    static final String FIRST = "daerweilaFirstChooseAsazile";
    static final String SYNC = "syncDaerweilaLineData";

    LocalDalviraStoryEngine() {
    }

    static boolean active(byte[] bArr, LocalTutorialStore.Progress progress) {
        String stringValue = BsonLite.stringValue(LocalResourceEngine.doc(bArr, "std"), "rt");
        return (progress == null || stringValue == null || (!stringValue.equals("13") && !stringValue.startsWith("13-")) || LocalWenziCityEngine.state(bArr, progress, 3) == null) ? false : true;
    }

    static boolean completed(byte[] bArr, LocalTutorialStore.Progress progress, int i, int i2, int i3) {
        int completedDay = LocalStoryItemRewardEngine.completedDay(bArr, progress, i);
        return completedDay >= i2 && completedDay <= i3 && progress.eventCompletions.getOrDefault(Integer.valueOf(i), 0).intValue() == 1 && !BsonLite.intArrayValues(bArr, "q7WeekEventBaseline").contains(Integer.valueOf(i));
    }

    static boolean blocked(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        for (int[] iArr : DISPATCH) {
            if (i == iArr[0]) {
                return active(bArr, progress) && completed(bArr, progress, 6183, 5, 5);
            }
            if (i == iArr[1]) {
                return active(bArr, progress) && completed(bArr, progress, 6184, 5, 5);
            }
        }
        return false;
    }

    static void sync(LocalResourceEngine.Result result) {
        byte[] doc = LocalResourceEngine.doc(result.profile, "std");
        result.add(SYNC, BsonLite.document("dh", Integer.valueOf(LocalResourceEngine.value(doc, "dwhv")), "dd", Integer.valueOf(LocalResourceEngine.value(doc, "dwdv")), "dhl", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(doc, "dwhl"))), "ddl", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(doc, "dwdl"))), "dca", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(doc, "dwca"))), "u", true));
    }

    static byte[] close(byte[] bArr) {
        byte[] doc = LocalResourceEngine.doc(bArr, "std");
        return BsonLite.document("h", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(doc, "dwhl"))), "d", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(doc, "dwdl"))));
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        if (active(result.profile, progress)) {
            int i = 0;
            int i2 = 0;
            for (int[] iArr : DISPATCH) {
                if (completed(result.profile, progress, iArr[3], 3, 5) && completed(result.profile, progress, iArr[0], 3, 5)) {
                    i++;
                }
                if (completed(result.profile, progress, iArr[4], 3, 5) && completed(result.profile, progress, iArr[1], 3, 5)) {
                    i2++;
                }
            }
            byte[] doc = LocalResourceEngine.doc(result.profile, "std");
            byte[] withProfileBool = BsonLite.withProfileBool(BsonLite.withProfileBool(BsonLite.withProfileInt(BsonLite.withProfileInt(doc, "dwhv", i), "dwdv", i2), "dwhl", completed(result.profile, progress, 6183, 5, 5)), "dwdl", completed(result.profile, progress, 6184, 5, 5));
            if (Arrays.equals(doc, withProfileBool)) {
                return;
            }
            result.profile = BsonLite.withProfileDocument(result.profile, "std", withProfileBool);
            for (int value = LocalResourceEngine.value(doc, "dwhv"); value < i; value++) {
                result.add("addDaerweilaHumanityValue", BsonLite.document("t", "human"));
            }
            for (int value2 = LocalResourceEngine.value(doc, "dwdv"); value2 < i2; value2++) {
                result.add("addDaerweilaHumanityValue", BsonLite.document("t", "devil"));
            }
            sync(result);
            result.add(CLOSE, close(result.profile));
        }
    }

    static LocalResourceEngine.Result first(byte[] bArr, LocalTutorialStore.Progress progress) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        if (!active(bArr, progress) || !progress.patrolRewardPending) {
            return result;
        }
        boolean z = false;
        for (int[] iArr : DISPATCH) {
            if (progress.patrolEvents.contains(Integer.valueOf(iArr[1])) && !blocked(bArr, progress, iArr[1])) {
                z = true;
            }
        }
        if (!z) {
            return result;
        }
        byte[] doc = LocalResourceEngine.doc(bArr, "std");
        if (!Boolean.TRUE.equals(BsonLite.boolValue(doc, "dwca"))) {
            result.profile = BsonLite.withProfileDocument(bArr, "std", BsonLite.withProfileBool(doc, "dwca", true));
            sync(result);
        }
        return result;
    }

    static byte[] reset(byte[] bArr) {
        byte[] doc = LocalResourceEngine.doc(bArr, "std");
        Iterator it = Arrays.asList("dwhv", "dwdv", "dwhl", "dwdl", "dwca").iterator();
        while (it.hasNext()) {
            doc = BsonLite.withoutProfileKey(doc, (String) it.next());
        }
        return BsonLite.withProfileDocument(bArr, "std", doc);
    }
}
