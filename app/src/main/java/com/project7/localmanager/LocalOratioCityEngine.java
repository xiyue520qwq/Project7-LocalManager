package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
final class LocalOratioCityEngine {
    static final List<Integer> AREAS = Collections.unmodifiableList(Arrays.asList(2, 3, 4, 5, 6, 7, 8));
    static final String KEY = "q7OratioCity";

    LocalOratioCityEngine() {
    }

    /* renamed from: d */
    static byte[] m60d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m61v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static boolean active(byte[] bArr) {
        String stringValue = BsonLite.stringValue(m60d(bArr, "std"), "rt");
        return stringValue != null && (stringValue.equals("35") || stringValue.startsWith("35-"));
    }

    static boolean proven(byte[] bArr, LocalTutorialStore.Progress progress) {
        return progress != null && active(bArr) && LocalStoryItemRewardEngine.completedDay(bArr, progress, 1832) == 0 && progress.eventCompletions.getOrDefault(1832, 0).intValue() == 1 && !BsonLite.intArrayValues(bArr, "q7WeekEventBaseline").contains(1832);
    }

    static boolean valid(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] m60d = m60d(bArr, KEY);
        return proven(bArr, progress) && m61v(m60d, "version") == 1 && m61v(m60d, "week") == progress.weekIndex && Objects.equals(BsonLite.stringValue(m60d, "cycle"), progress.weekCommit) && AREAS.equals(BsonLite.intArrayValues(m60d, "areas"));
    }

    static boolean liberated(byte[] bArr, LocalTutorialStore.Progress progress) {
        return progress != null && LocalStoryItemRewardEngine.completedDay(bArr, progress, 2391) == 1 && progress.eventCompletions.getOrDefault(2391, 0).intValue() == 1 && !BsonLite.intArrayValues(bArr, "q7WeekEventBaseline").contains(2391);
    }

    static Integer state(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        if (!AREAS.contains(Integer.valueOf(i)) || !valid(bArr, progress)) {
            return null;
        }
        int i2 = 0;
        if (i == 7 && liberated(bArr, progress) && Boolean.TRUE.equals(BsonLite.boolValue(m60d(bArr, KEY), "oldCityFree"))) {
            return 0;
        }
        if (!LocalCityProgress.hasBattle(progress, ((i - 1) * 1000) + 106) && ((i != 2 || !LocalCityProgress.hasBattle(progress, 1107)) && (i != 5 || !LocalCityProgress.hasBattle(progress, 4113)))) {
            i2 = 1;
        }
        return Integer.valueOf(i2);
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        if (proven(result.profile, progress)) {
            List<Integer> list = AREAS;
            if (!list.equals(BsonLite.intArrayValues(localEventCatalog.cityEffects.get(1832), "areaFight"))) {
                return;
            }
            if (BsonLite.keys(result.profile).contains(KEY) && BsonLite.documentValue(result.profile, KEY) == null) {
                return;
            }
            byte[] m60d = m60d(result.profile, KEY);
            if (BsonLite.keys(m60d).isEmpty() || valid(result.profile, progress)) {
                if (BsonLite.keys(m60d).contains("oldCityFree") && BsonLite.boolValue(m60d, "oldCityFree") == null) {
                    return;
                }
                byte[] document = BsonLite.keys(m60d).isEmpty() ? BsonLite.document("version", 1, "week", Integer.valueOf(progress.weekIndex), "cycle", progress.weekCommit, "areas", list) : m60d;
                if (liberated(result.profile, progress) && Arrays.asList(7).equals(BsonLite.intArrayValues(localEventCatalog.cityEffects.get(2391), "areaFree"))) {
                    document = BsonLite.withProfileBool(document, "oldCityFree", true);
                }
                if (Arrays.equals(m60d, document)) {
                    return;
                }
                result.profile = BsonLite.withProfileDocument(result.profile, KEY, document);
                result.profile = BsonLite.withLocalCityState(result.profile, progress);
                result.add("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, result.profile));
            }
        }
    }
}
