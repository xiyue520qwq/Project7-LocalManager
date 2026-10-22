package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes.dex */
final class LocalDalviraCityEngine {
    static final int[][] FORMATIONS = {new int[]{2, 359, 7293}, new int[]{3, 363, 7292}, new int[]{5, 360, 7295}, new int[]{6, 361, 7294}, new int[]{7, 362, 7296}};

    LocalDalviraCityEngine() {
    }

    static boolean active(byte[] bArr, LocalTutorialStore.Progress progress) {
        return "13-3".equals(BsonLite.stringValue(LocalResourceEngine.doc(bArr, "std"), "rt")) && LocalDalviraStoryEngine.active(bArr, progress) && LocalDalviraStoryEngine.completed(bArr, progress, 7269, 6, 6);
    }

    static int area(int i) {
        if (i >= 365 && i <= 367) {
            return 3;
        }
        for (int[] iArr : FORMATIONS) {
            if (iArr[1] == i) {
                return iArr[0];
            }
        }
        return 0;
    }

    static Integer state(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        int i2 = 1;
        if (i == 3 && devilActive(bArr, progress)) {
            if (LocalCityProgress.hasBattle(progress, 367) && LocalDalviraStoryEngine.completed(bArr, progress, 30078, 6, 6)) {
                i2 = 0;
            }
            return Integer.valueOf(i2);
        }
        for (int[] iArr : FORMATIONS) {
            if (iArr[0] == i && active(bArr, progress)) {
                if (LocalCityProgress.hasBattle(progress, iArr[1]) && LocalDalviraStoryEngine.completed(bArr, progress, iArr[2], 6, 6)) {
                    i2 = 0;
                }
                return Integer.valueOf(i2);
            }
        }
        return null;
    }

    static int scene(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        for (int[] iArr : FORMATIONS) {
            if (iArr[0] == i && active(bArr, progress)) {
                return iArr[1];
            }
        }
        return 0;
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        if (active(result.profile, progress) || devilActive(result.profile, progress)) {
            byte[] withLocalCityState = BsonLite.withLocalCityState(result.profile, progress);
            if (Arrays.equals(withLocalCityState, result.profile)) {
                return;
            }
            result.profile = withLocalCityState;
            result.add("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, result.profile));
        }
    }

    static boolean devilActive(byte[] bArr, LocalTutorialStore.Progress progress) {
        return "13-4".equals(BsonLite.stringValue(LocalResourceEngine.doc(bArr, "std"), "rt")) && LocalDalviraStoryEngine.active(bArr, progress) && LocalDalviraStoryEngine.completed(bArr, progress, 7281, 6, 6);
    }

    static boolean ownsOutcome(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        return (i < 365 || i > 367) ? area(i) != 0 && active(bArr, progress) : devilActive(bArr, progress);
    }

    static byte[] devilStages(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        if (i != 3 || !devilActive(bArr, progress)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (int i3 = 365; i3 <= 367; i3++) {
            arrayList.add(Collections.singletonList(Integer.valueOf(i3)));
            if (i2 == 0 && !LocalCityProgress.hasBattle(progress, i3)) {
                i2 = i3;
            }
        }
        return BsonLite.document("cs", Integer.valueOf(i2), "sl", arrayList);
    }
}
