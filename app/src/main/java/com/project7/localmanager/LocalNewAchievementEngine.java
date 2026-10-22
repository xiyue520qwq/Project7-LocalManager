package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;

/* loaded from: classes.dex */
final class LocalNewAchievementEngine {
    static final Set<Integer> SUB = new HashSet(Arrays.asList(15, 19, 22, 23, 26, 29, 32, 34, 35, 38, 41, 42, 43, 44, 48, 51, 54, 55, 56, 59, 60, 61, 63, 64, 65, 66, 68, 69, 70, 71, 72, 74, 76, 78, 79, 83, 84, 85, 88, 97, 98));

    LocalNewAchievementEngine() {
    }

    /* renamed from: v */
    static int m59v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m58d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static String key(int i, List<Integer> list) {
        return i + ":" + list.toString();
    }

    static int counter(byte[] bArr, int i, List<Integer> list) {
        return m59v(m58d(bArr, "q7AchievementCounts"), key(i, list));
    }

    static int groupCounter(byte[] bArr, int i, List<Integer> list) {
        for (byte[] bArr2 : LocalResourceEngine.array(m58d(m58d(bArr, "nad"), "ga"))) {
            if (m59v(bArr2, "0") == i) {
                if (!SUB.contains(Integer.valueOf(i))) {
                    return m59v(bArr2, "1");
                }
                for (byte[] bArr3 : LocalResourceEngine.array(m58d(bArr2, "1"))) {
                    if (BsonLite.intArrayValues(bArr3, "0").equals(list)) {
                        return m59v(bArr3, "1");
                    }
                }
            }
        }
        return 0;
    }

    static byte[] add(byte[] bArr, int i, List<Integer> list, int i2) {
        if (i2 <= 0) {
            return bArr;
        }
        return BsonLite.withProfileDocument(bArr, "q7AchievementCounts", BsonLite.withProfileInt(m58d(bArr, "q7AchievementCounts"), key(i, list), (int) Math.min(100000000L, m59v(r1, key(i, list)) + i2)));
    }

    static byte[] add(byte[] bArr, int i, int i2) {
        return add(bArr, i, Collections.emptyList(), i2);
    }

    static byte[] moneyTransition(byte[] bArr, byte[] bArr2) {
        int max = Math.max(0, m59v(bArr2, "money") - m59v(bArr, "money"));
        int max2 = Math.max(0, counter(bArr2, 1, Collections.emptyList()) - counter(bArr, 1, Collections.emptyList()));
        return max > max2 ? add(bArr2, 1, max - max2) : bArr2;
    }

    static byte[] recordPatrol(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        if (progress == null || !progress.patrolRewardPending || i < 1 || i > 8) {
            return bArr;
        }
        String dayKey = LocalPatrolEngine.dayKey(bArr);
        if (dayKey.equals(progress.patrolDay)) {
            return progress.patrolCount <= (dayKey.equals(BsonLite.stringValue(bArr, "q7AchievementPatrolDay")) ? m59v(bArr, "q7AchievementPatrolCount") : 0) ? bArr : BsonLite.withProfileInt(BsonLite.withProfileString(add(bArr, 26, Collections.singletonList(Integer.valueOf(i)), 1), "q7AchievementPatrolDay", dayKey), "q7AchievementPatrolCount", progress.patrolCount);
        }
        return bArr;
    }

    static boolean handles(String str) {
        return Arrays.asList("updateNewAchievementTaskFromClient", "requestNewAchievementReward", "requestNewAchievementAutoShow").contains(str);
    }

    static Map<Integer, byte[]> tasks(byte[] bArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (byte[] bArr2 : LocalResourceEngine.array(m58d(m58d(bArr, "nad"), "ad"))) {
            linkedHashMap.put(Integer.valueOf(m59v(bArr2, "0")), m58d(bArr2, "1"));
        }
        return linkedHashMap;
    }

    static int known(byte[] bArr, int i, List<Integer> list) {
        List<byte[]> array = LocalResourceEngine.array(m58d(m58d(bArr, "heromgr"), "hrs"));
        int i2 = 0;
        if (i == 1) {
            return Math.max(0, m59v(bArr, "money"));
        }
        if (i == 2) {
            return m59v(bArr, "q7LoginCount");
        }
        if (i == 4) {
            return m59v(bArr, "level");
        }
        if (i == 19 && list.equals(Collections.singletonList(0))) {
            return new HashSet(BsonLite.intArrayValues(bArr, "cgs")).size();
        }
        if (i == 24) {
            Iterator<byte[]> it = LocalResourceEngine.array(m58d(m58d(bArr, "weeknum"), "wasi")).iterator();
            while (it.hasNext()) {
                i2 = Math.max(i2, m59v(m58d(it.next(), "1"), "total"));
            }
            return i2;
        }
        if (i == 36) {
            int m59v = m59v(m58d(bArr, "ldd"), "ct");
            Iterator<byte[]> it2 = LocalResourceEngine.array(m58d(m58d(bArr, "ldd"), "ad")).iterator();
            while (it2.hasNext()) {
                m59v += m59v(m58d(it2.next(), "1"), "ct");
            }
            return m59v;
        }
        if (i == 46) {
            return new HashSet(BsonLite.intArrayValues(m58d(bArr, "heromgr"), "es")).size();
        }
        if (i == 51 && list.size() == 1) {
            List<byte[]> array2 = LocalResourceEngine.array(m58d(m58d(bArr, "inv"), "items"));
            Iterator<byte[]> it3 = array.iterator();
            while (it3.hasNext()) {
                array2.addAll(LocalResourceEngine.array(m58d(m58d(m58d(it3.next(), "1"), "ti"), "items")));
            }
            int i3 = 0;
            for (byte[] bArr2 : array2) {
                if (m59v(m58d(bArr2, "tr"), "cl") == list.get(0).intValue()) {
                    i3 += Math.max(1, m59v(bArr2, "w"));
                }
            }
            return i3;
        }
        if (i == 29 && list.equals(Collections.singletonList(0))) {
            return array.size();
        }
        if (i == 29 && list.size() == 2) {
            Iterator<byte[]> it4 = array.iterator();
            int i4 = 0;
            while (it4.hasNext()) {
                byte[] m58d = m58d(it4.next(), "1");
                if (m59v(m58d, "sl") > list.get(0).intValue() || (m59v(m58d, "sl") == list.get(0).intValue() && m59v(m58d, "so") >= list.get(1).intValue())) {
                    i4++;
                }
            }
            return i4;
        }
        if (i == 30 || i == 31) {
            Iterator<byte[]> it5 = array.iterator();
            while (it5.hasNext()) {
                if (Boolean.TRUE.equals(BsonLite.boolValue(m58d(it5.next(), "1"), i == 30 ? "oa" : "fd"))) {
                    i2++;
                }
            }
            return i2;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x01f8, code lost:
    
        if (m59v(r4.get(java.lang.Integer.valueOf(r6)), "0") >= (m59v(r12, "finish_prev") == 1 ? 1 : 2)) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0230  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static byte[] refresh(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        Iterator<Map.Entry<String, byte[]>> it;
        boolean z;
        String str = "nad";
        byte[] m58d = m58d(bArr, "nad");
        Map<Integer, byte[]> tasks = tasks(bArr);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String str2 = "ga";
        for (byte[] bArr2 : LocalResourceEngine.array(m58d(m58d, "ga"))) {
            Object intValue = BsonLite.intValue(bArr2, "1");
            Integer valueOf = Integer.valueOf(m59v(bArr2, "0"));
            if (intValue == null) {
                intValue = new BsonLite.ArrayValue(m58d(bArr2, "1"));
            }
            linkedHashMap.put(valueOf, intValue);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator<Integer> it2 = SUB.iterator();
        while (it2.hasNext()) {
            int intValue2 = it2.next().intValue();
            ArrayList arrayList = new ArrayList();
            for (byte[] bArr3 : LocalResourceEngine.array(m58d(m58d, "ga"))) {
                if (m59v(bArr3, "0") == intValue2) {
                    Iterator<byte[]> it3 = LocalResourceEngine.array(m58d(bArr3, "1")).iterator();
                    while (it3.hasNext()) {
                        arrayList.add(new BsonLite.ArrayValue(it3.next()));
                    }
                }
            }
            linkedHashMap2.put(Integer.valueOf(intValue2), arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<Map.Entry<String, byte[]>> it4 = localFeatureCatalog.entries.entrySet().iterator();
        byte[] bArr4 = bArr;
        while (it4.hasNext()) {
            Map.Entry<String, byte[]> next = it4.next();
            if (next.getKey().startsWith("NA:")) {
                int parseInt = Integer.parseInt(next.getKey().substring(3));
                byte[] value = next.getValue();
                List<Integer> intArrayValues = BsonLite.intArrayValues(value, "para");
                it = it4;
                if (intArrayValues.size() >= 2) {
                    int intValue3 = intArrayValues.get(0).intValue();
                    String str3 = str;
                    int intValue4 = intArrayValues.get(intArrayValues.size() - 1).intValue();
                    String str4 = str2;
                    byte[] bArr5 = m58d;
                    final ArrayList arrayList3 = new ArrayList(intArrayValues.subList(1, intArrayValues.size() - 1));
                    int groupCounter = groupCounter(bArr4, intValue3, arrayList3);
                    int known = known(bArr4, intValue3, arrayList3);
                    ArrayList arrayList4 = arrayList2;
                    int max = Math.max(groupCounter, Math.max(counter(bArr4, intValue3, arrayList3), Math.max(0, known)));
                    if (known >= 0) {
                        byte[] m58d2 = m58d(bArr4, "q7AchievementCounts");
                        if (m59v(m58d2, key(intValue3, arrayList3)) != max) {
                            bArr4 = BsonLite.withProfileDocument(bArr4, "q7AchievementCounts", BsonLite.withProfileInt(m58d2, key(intValue3, arrayList3), max));
                        }
                    }
                    if (SUB.contains(Integer.valueOf(intValue3))) {
                        List list = (List) linkedHashMap2.get(Integer.valueOf(intValue3));
                        list.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalNewAchievementEngine$$ExternalSyntheticLambda0
                            @Override // java.util.function.Predicate
                            public final boolean test(Object obj) {
                                return LocalNewAchievementEngine.lambda$refresh$0(arrayList3, obj);
                            }
                        });
                        list.add(Arrays.asList(arrayList3, Integer.valueOf(max)));
                    } else {
                        linkedHashMap.put(Integer.valueOf(intValue3), Integer.valueOf(max));
                    }
                    byte[] bArr6 = tasks.get(Integer.valueOf(parseInt));
                    int m59v = bArr6 == null ? 0 : m59v(bArr6, "0");
                    int m59v2 = m59v(value, "pre");
                    if (m59v2 != 0) {
                        if (tasks.containsKey(Integer.valueOf(m59v2))) {
                        }
                        z = false;
                        if (m59v != 2 && z && max >= intValue4) {
                            m59v = 1;
                        }
                        byte[] document = bArr6 != null ? BsonLite.document("0", Integer.valueOf(m59v), "1", 0, "2", 0) : BsonLite.withProfileInt(bArr6, "0", m59v);
                        tasks.put(Integer.valueOf(parseInt), document);
                        arrayList4.add(Arrays.asList(Integer.valueOf(parseInt), new BsonLite.ArrayValue(document)));
                        arrayList2 = arrayList4;
                        it4 = it;
                        str2 = str4;
                        str = str3;
                        m58d = bArr5;
                    }
                    z = true;
                    if (m59v != 2) {
                        m59v = 1;
                    }
                    if (bArr6 != null) {
                    }
                    tasks.put(Integer.valueOf(parseInt), document);
                    arrayList4.add(Arrays.asList(Integer.valueOf(parseInt), new BsonLite.ArrayValue(document)));
                    arrayList2 = arrayList4;
                    it4 = it;
                    str2 = str4;
                    str = str3;
                    m58d = bArr5;
                }
            } else {
                it = it4;
            }
            it4 = it;
        }
        String str5 = str;
        ArrayList arrayList5 = arrayList2;
        byte[] bArr7 = m58d;
        String str6 = str2;
        for (Map.Entry<Integer, byte[]> entry : tasks.entrySet()) {
            if (localFeatureCatalog.get("NA", entry.getKey()) == null) {
                arrayList5.add(Arrays.asList(entry.getKey(), new BsonLite.ArrayValue(entry.getValue())));
            }
        }
        Iterator<Integer> it5 = SUB.iterator();
        while (it5.hasNext()) {
            int intValue5 = it5.next().intValue();
            if (!((List) linkedHashMap2.get(Integer.valueOf(intValue5))).isEmpty()) {
                linkedHashMap.put(Integer.valueOf(intValue5), linkedHashMap2.get(Integer.valueOf(intValue5)));
            }
        }
        ArrayList arrayList6 = new ArrayList();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            arrayList6.add(Arrays.asList(entry2.getKey(), entry2.getValue()));
        }
        byte[] withProfileArray = BsonLite.withProfileArray(BsonLite.withProfileArray(bArr7, "ad", arrayList5), str6, arrayList6);
        if (BsonLite.documentValue(withProfileArray, "si") == null) {
            withProfileArray = BsonLite.withProfileIntArray(withProfileArray, "si", Collections.singletonList(1));
        }
        return Arrays.equals(m58d(bArr4, str5), withProfileArray) ? bArr4 : BsonLite.withProfileDocument(bArr4, str5, withProfileArray);
    }

    static /* synthetic */ boolean lambda$refresh$0(List list, Object obj) {
        return ((obj instanceof BsonLite.ArrayValue) && BsonLite.intArrayValues(((BsonLite.ArrayValue) obj).bytes, "0").equals(list)) || ((obj instanceof List) && ((List) obj).get(0).equals(list));
    }

    static void sync(LocalResourceEngine.Result result, byte[] bArr, LocalFeatureCatalog localFeatureCatalog, boolean z) {
        result.profile = refresh(LocalAchievementEngine.refresh(result.profile, localFeatureCatalog), localFeatureCatalog);
        if (z || !Arrays.equals(m58d(bArr, "nad"), m58d(result.profile, "nad"))) {
            result.add("syncNewAchievementData", BsonLite.document("d", m58d(result.profile, "nad")));
            Map<Integer, byte[]> tasks = tasks(bArr);
            for (Map.Entry<Integer, byte[]> entry : tasks(result.profile).entrySet()) {
                byte[] bArr2 = localFeatureCatalog.get("NA", entry.getKey());
                List<Integer> emptyList = bArr2 == null ? Collections.emptyList() : BsonLite.intArrayValues(bArr2, "para");
                if ((emptyList.size() > 1 && groupCounter(bArr, emptyList.get(0).intValue(), emptyList.subList(1, emptyList.size() - 1)) != groupCounter(result.profile, emptyList.get(0).intValue(), emptyList.subList(1, emptyList.size() - 1))) || !Arrays.equals(tasks.get(entry.getKey()), entry.getValue())) {
                    result.add("createNewAchievementTask", BsonLite.document("tid", entry.getKey(), "i", new BsonLite.ArrayValue(entry.getValue())));
                }
            }
        }
        if (!Arrays.equals(m58d(bArr, "amd"), m58d(result.profile, "amd"))) {
            int size = result.replies.size();
            for (int i = 0; i < result.replies.size(); i++) {
                if ("updateAllAchievement".equals(result.replies.get(i).method)) {
                    size = Math.min(size, i);
                }
            }
            result.replies.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalNewAchievementEngine$$ExternalSyntheticLambda1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean equals;
                    equals = "updateAllAchievement".equals(((LocalResourceEngine.Reply) obj).method);
                    return equals;
                }
            });
            result.replies.add(Math.min(size, result.replies.size()), new LocalResourceEngine.Reply("updateAllAchievement", BsonLite.document("info", m58d(result.profile, "amd"))));
            byte[] m58d = m58d(m58d(bArr, "amd"), "is");
            for (Map.Entry<String, byte[]> entry2 : BsonLite.documentEntries(m58d(m58d(result.profile, "amd"), "is")).entrySet()) {
                HashMap hashMap = new HashMap();
                for (byte[] bArr3 : LocalResourceEngine.array(m58d(m58d, entry2.getKey()))) {
                    hashMap.put(Integer.valueOf(m59v(bArr3, "id")), bArr3);
                }
                for (byte[] bArr4 : LocalResourceEngine.array(entry2.getValue())) {
                    if (!Arrays.equals((byte[]) hashMap.get(Integer.valueOf(m59v(bArr4, "id"))), bArr4)) {
                        result.add("updateAchievement", BsonLite.document("h", Integer.valueOf(Integer.parseInt(entry2.getKey())), "id", Integer.valueOf(m59v(bArr4, "id")), "info", bArr4));
                    }
                }
            }
        }
    }

    static void syncMoneyAndStatistics(LocalResourceEngine.Result result, byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        result.profile = moneyTransition(bArr, result.profile);
        sync(result, bArr, localFeatureCatalog, false);
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(refresh(bArr, localFeatureCatalog));
        if ("requestNewAchievementAutoShow".equals(str)) {
            byte[] m58d = m58d(result.profile, "nad");
            result.profile = BsonLite.withProfileDocument(result.profile, "nad", BsonLite.withProfileBool(m58d, "as", Boolean.FALSE.equals(BsonLite.boolValue(m58d, "as"))));
        } else if ("requestNewAchievementReward".equals(str)) {
            int m59v = m59v(bArr2, "tid");
            byte[] bArr3 = localFeatureCatalog.get("NA", Integer.valueOf(m59v));
            byte[] bArr4 = tasks(result.profile).get(Integer.valueOf(m59v));
            if (bArr3 != null && bArr4 != null) {
                try {
                    if (m59v(bArr4, "0") == 1) {
                        if (Boolean.FALSE.equals(BsonLite.boolValue(bArr3, "supported"))) {
                            throw new IllegalArgumentException("此成就包含尚未接入的特殊奖励，已保留领取状态");
                        }
                        LocalGiftEngine.reward(result, localResourceCatalog, bArr3, 1);
                        ArrayList arrayList = new ArrayList();
                        for (Map.Entry<Integer, byte[]> entry : tasks(result.profile).entrySet()) {
                            byte[] value = entry.getValue();
                            if (entry.getKey().intValue() == m59v) {
                                value = BsonLite.withProfileInt(value, "0", 2);
                            }
                            arrayList.add(Arrays.asList(entry.getKey(), new BsonLite.ArrayValue(value)));
                        }
                        result.profile = BsonLite.withProfileDocument(result.profile, "nad", BsonLite.withProfileArray(m58d(result.profile, "nad"), "ad", arrayList));
                        LocalResourceEngine.syncCurrencies(result);
                        result.add("replyNewAchievementReward", BsonLite.document("i", BsonLite.document("tid", Integer.valueOf(m59v), "r", result.reward())));
                    }
                } catch (ArithmeticException | IllegalArgumentException e) {
                    result = new LocalResourceEngine.Result(bArr);
                    result.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                }
            }
            throw new IllegalArgumentException("成就尚未完成或已经领取");
        }
        sync(result, bArr, localFeatureCatalog, true);
        return result;
    }
}
