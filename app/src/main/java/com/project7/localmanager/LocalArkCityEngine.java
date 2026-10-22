package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalArkCityEngine {
    LocalArkCityEngine() {
    }

    /* renamed from: d */
    private static byte[] m2d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m3v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static boolean active(byte[] bArr) {
        return "3-1".equals(BsonLite.stringValue(m2d(bArr, "std"), "rt"));
    }

    static Integer state(byte[] bArr, int i) {
        byte[] m2d = m2d(bArr, "q7ArkCity");
        if (active(bArr) && Integer.valueOf(m3v(m2d(bArr, "weeknum"), "w")).equals(BsonLite.intValue(m2d, "week"))) {
            return BsonLite.intValue(m2d(m2d, "states"), Integer.toString(i));
        }
        return null;
    }

    static int scene(byte[] bArr, int i) {
        return m3v(m2d(m2d(bArr, "q7ArkCity"), "scenes"), Integer.toString(i));
    }

    static int area(int i) {
        switch (i) {
            case 155:
                return 4;
            case 156:
                return 7;
            case 157:
                return 8;
            case 158:
                return 3;
            case 159:
                return 6;
            case 160:
                return 5;
            default:
                return 0;
        }
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        byte[] bArr;
        HashSet hashSet;
        int m3v = m3v(m2d(result.profile, "weeknum"), "w");
        if (!active(result.profile) || progress.weekIndex != m3v || !progress.completedEvents.contains(6004)) {
            return;
        }
        HashSet hashSet2 = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
        if (hashSet2.contains(6004)) {
            return;
        }
        HashSet hashSet3 = new HashSet(BsonLite.intArrayValues(m2d(result.profile, "q7Intelligence"), "events"));
        byte[] m2d = m2d(result.profile, "q7ArkCity");
        if (!BsonLite.keys(m2d).isEmpty() && !Integer.valueOf(m3v).equals(BsonLite.intValue(m2d, "week"))) {
            bArr = BsonLite.EMPTY_DOCUMENT;
        } else {
            bArr = m2d;
        }
        byte[] m2d2 = m2d(bArr, "states");
        byte[] m2d3 = m2d(bArr, "scenes");
        Iterator<Map.Entry<Integer, int[]>> it = localEventCatalog.arkRaids.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Integer, int[]> next = it.next();
            int intValue = next.getKey().intValue();
            int[] value = next.getValue();
            String num = Integer.toString(value[0]);
            Iterator<Map.Entry<Integer, int[]>> it2 = it;
            if (hashSet2.contains(Integer.valueOf(intValue)) || !hashSet3.contains(Integer.valueOf(intValue))) {
                hashSet = hashSet3;
            } else {
                hashSet = hashSet3;
                if (progress.processingEvents.contains(Integer.valueOf(intValue)) || progress.completedEvents.contains(Integer.valueOf(intValue))) {
                    m2d2 = BsonLite.withProfileInt(m2d2, num, !hashSet2.contains(Integer.valueOf(value[2])) && progress.completedEvents.contains(Integer.valueOf(value[2])) && LocalCityProgress.hasBattle(progress, value[1]) ? 0 : 5);
                    m2d3 = BsonLite.withProfileInt(m2d3, num, value[1]);
                    it = it2;
                    hashSet3 = hashSet;
                }
            }
            it = it2;
            hashSet3 = hashSet;
        }
        if (BsonLite.keys(m2d2).isEmpty()) {
            return;
        }
        byte[] withProfileDocument = BsonLite.withProfileDocument(BsonLite.withProfileDocument(BsonLite.withProfileInt(bArr, "week", m3v), "states", m2d2), "scenes", m2d3);
        if (Arrays.equals(m2d, withProfileDocument)) {
            return;
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "q7ArkCity", withProfileDocument);
        result.profile = BsonLite.withLocalCityState(result.profile, progress);
        result.add("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, result.profile));
    }
}
