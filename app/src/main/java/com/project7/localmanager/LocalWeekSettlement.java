package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalEconomyEngine;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalWeekSettlement {
    static final int HERO_ROUTE_SCORE = 10;
    static final int VERSION = 2;

    LocalWeekSettlement() {
    }

    static void complete(LocalResourceEngine.Result result, LocalWeekCatalog localWeekCatalog, LocalEconomyCatalog localEconomyCatalog, LocalResourceCatalog localResourceCatalog, LocalTutorialStore.Progress progress, int i, int i2, int i3) {
        String str;
        int i4;
        int i5;
        LinkedHashSet linkedHashSet;
        LinkedHashSet linkedHashSet2;
        int i6;
        int i7;
        LinkedHashSet linkedHashSet3;
        int m85v = m85v(m84d(result.profile, "weeknum"), "w");
        LinkedHashSet linkedHashSet4 = new LinkedHashSet(progress.completedEvents);
        linkedHashSet4.removeAll(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
        String str2 = "ccgs";
        LinkedHashSet linkedHashSet5 = new LinkedHashSet(BsonLite.intArrayValues(result.profile, "ccgs"));
        LinkedHashSet linkedHashSet6 = new LinkedHashSet();
        Iterator it = linkedHashSet4.iterator();
        while (it.hasNext()) {
            byte[] bArr = localWeekCatalog.scoreEvents.get(Integer.valueOf(((Integer) it.next()).intValue()));
            if (bArr != null) {
                linkedHashSet5.addAll(BsonLite.intArrayValues(bArr, "cgs"));
                linkedHashSet6.addAll(BsonLite.intArrayValues(bArr, "heroes"));
            }
        }
        if (i3 > 0) {
            linkedHashSet5.add(Integer.valueOf(i3));
        }
        linkedHashSet5.retainAll(localWeekCatalog.cgScores.keySet());
        byte[] m84d = m84d(result.profile, "city");
        byte[] m84d2 = m84d(m84d, "areas");
        LinkedHashSet linkedHashSet7 = new LinkedHashSet();
        Iterator<byte[]> it2 = LocalResourceEngine.array(m84d(result.profile, "q7BattleReceipts")).iterator();
        while (it2.hasNext()) {
            int m85v2 = m85v(it2.next(), "s");
            if (localWeekCatalog.battleScores.containsKey(Integer.valueOf(m85v2))) {
                linkedHashSet7.add(Integer.valueOf(m85v2));
            }
        }
        String str3 = "ending";
        byte[] document = BsonLite.document("ending", Integer.valueOf(i2), "week", Integer.valueOf(m85v), "cur_cgs", new ArrayList(linkedHashSet5));
        Iterator<Map.Entry<Integer, byte[]>> it3 = localWeekCatalog.scores.entrySet().iterator();
        byte[] bArr2 = document;
        int i8 = 0;
        while (true) {
            str = str3;
            if (!it3.hasNext()) {
                break;
            }
            Map.Entry<Integer, byte[]> next = it3.next();
            int intValue = next.getKey().intValue();
            Iterator<Map.Entry<Integer, byte[]>> it4 = it3;
            byte[] value = next.getValue();
            String str4 = str2;
            List<byte[]> array = LocalResourceEngine.array(m84d(value, "conditions"));
            int size = array.size();
            if (intValue == 1) {
                Iterator it5 = linkedHashSet5.iterator();
                i6 = 0;
                while (it5.hasNext()) {
                    i6 = Math.addExact(i6, localWeekCatalog.cgScores.getOrDefault(Integer.valueOf(((Integer) it5.next()).intValue()), 0).intValue());
                    it5 = it5;
                    m85v = m85v;
                }
                i5 = m85v;
                i7 = linkedHashSet5.size();
                size = i7;
                linkedHashSet = linkedHashSet4;
                linkedHashSet2 = linkedHashSet6;
            } else {
                i5 = m85v;
                if (intValue == 3) {
                    i7 = Math.max(0, m85v(m84d, "dv"));
                    linkedHashSet = linkedHashSet4;
                    linkedHashSet2 = linkedHashSet6;
                    size = 1500;
                    i6 = localWeekCatalog.cityScores.get(Integer.valueOf(Math.min(1500, i7))).intValue();
                } else if (intValue == 6) {
                    Iterator it6 = linkedHashSet7.iterator();
                    int i9 = 0;
                    while (it6.hasNext()) {
                        i9 = Math.addExact(i9, localWeekCatalog.battleScores.get(Integer.valueOf(((Integer) it6.next()).intValue())).intValue());
                    }
                    i7 = linkedHashSet7.size();
                    linkedHashSet = linkedHashSet4;
                    linkedHashSet2 = linkedHashSet6;
                    size = localWeekCatalog.battleScores.size();
                    i6 = i9;
                } else if (intValue == 8) {
                    i7 = linkedHashSet6.size();
                    i6 = Math.multiplyExact(i7, HERO_ROUTE_SCORE);
                    size = i7;
                    linkedHashSet = linkedHashSet4;
                    linkedHashSet2 = linkedHashSet6;
                } else if (intValue == 19) {
                    i7 = Math.max(0, m85v(m84d(result.profile, "weeknum"), "ust"));
                    i6 = Math.multiplyExact(i7, -100);
                    linkedHashSet = linkedHashSet4;
                    linkedHashSet2 = linkedHashSet6;
                    size = 3;
                } else {
                    Iterator<byte[]> it7 = array.iterator();
                    int i10 = 0;
                    int i11 = 0;
                    while (it7.hasNext()) {
                        Iterator<byte[]> it8 = it7;
                        byte[] next2 = it7.next();
                        LinkedHashSet linkedHashSet8 = linkedHashSet6;
                        List<Integer> intArrayValues = BsonLite.intArrayValues(next2, "events");
                        List<Integer> intArrayValues2 = BsonLite.intArrayValues(next2, "areas");
                        boolean z = !intArrayValues.isEmpty() && linkedHashSet4.containsAll(intArrayValues);
                        if (intArrayValues2.isEmpty()) {
                            linkedHashSet3 = linkedHashSet4;
                        } else {
                            Iterator<Integer> it9 = intArrayValues2.iterator();
                            boolean z2 = true;
                            while (it9.hasNext()) {
                                LinkedHashSet linkedHashSet9 = linkedHashSet4;
                                Iterator<Integer> it10 = it9;
                                List<Integer> intArrayValues3 = BsonLite.intArrayValues(m84d(m84d2, Integer.toString(it9.next().intValue())), "st");
                                z2 &= !intArrayValues3.isEmpty() && intArrayValues3.get(0).intValue() == 0;
                                it9 = it10;
                                linkedHashSet4 = linkedHashSet9;
                            }
                            linkedHashSet3 = linkedHashSet4;
                            z = z2;
                        }
                        if (z) {
                            i11++;
                            i10 = Math.addExact(i10, m85v(next2, "score"));
                        }
                        it7 = it8;
                        linkedHashSet6 = linkedHashSet8;
                        linkedHashSet4 = linkedHashSet3;
                    }
                    linkedHashSet = linkedHashSet4;
                    linkedHashSet2 = linkedHashSet6;
                    i6 = i10;
                    i7 = i11;
                }
            }
            bArr2 = BsonLite.withProfileIntArray(bArr2, Integer.toString(intValue), Arrays.asList(Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(size)));
            i8 = Math.addExact(i8, i6);
            str2 = str4;
            str3 = str;
            it3 = it4;
            linkedHashSet6 = linkedHashSet2;
            m85v = i5;
            linkedHashSet4 = linkedHashSet;
        }
        int i12 = m85v;
        String str5 = str2;
        byte[] bArr3 = bArr2;
        byte[] m84d3 = m84d(result.profile, "weeknum");
        List<Integer> intArrayValues4 = BsonLite.intArrayValues(m84d3, "ccl");
        if (intArrayValues4.size() != VERSION) {
            i4 = 0;
            intArrayValues4 = Arrays.asList(1, 1);
        } else {
            i4 = 0;
        }
        long max = Math.max(i4, i8);
        Map<String, Integer> map = localWeekCatalog.bonuses;
        int intValue2 = (int) ((max * map.getOrDefault(intArrayValues4.get(i4) + ":" + intArrayValues4.get(1), Integer.valueOf(i4)).intValue()) / 10000);
        byte[] withProfileArray = BsonLite.withProfileArray(bArr3, "add_score", Arrays.asList(Integer.valueOf(intValue2), intArrayValues4, 0));
        int max2 = Math.max(0, Math.addExact(i8, intValue2));
        byte[] withProfileInt = BsonLite.withProfileInt(withProfileArray, "total", max2);
        result.profile = BsonLite.withProfileDocument(result.profile, "weeknum", best(history(m84d3, i12, withProfileInt), intArrayValues4, max2));
        result.profile = BsonLite.withProfileIntArray(result.profile, str5, linkedHashSet5);
        byte[] bArr4 = null;
        Iterator<Map.Entry<Integer, byte[]>> it11 = localWeekCatalog.settlements.entrySet().iterator();
        while (true) {
            if (!it11.hasNext()) {
                break;
            }
            Map.Entry<Integer, byte[]> next3 = it11.next();
            if (max2 >= next3.getKey().intValue() && max2 <= m85v(next3.getValue(), "max")) {
                bArr4 = next3.getValue();
                break;
            }
        }
        if (bArr4 == null) {
            throw new IllegalArgumentException("Missing original week reward range: " + max2);
        }
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
        LocalGiftEngine.reward(result2, localResourceCatalog, bArr4, 1);
        int m85v3 = m85v(bArr4, "money");
        if (m85v3 > 0) {
            LocalResourceEngine.grant(result2, localResourceCatalog, "money", 0, m85v3, 1);
        }
        if (max2 > 0) {
            LocalResourceEngine.grant(result2, localResourceCatalog, "souvenir", 0, max2, 1);
        }
        byte[] reward = result2.reward();
        ArrayList arrayList = new ArrayList();
        Iterator<byte[]> it12 = LocalResourceEngine.array(m84d(reward, "item")).iterator();
        while (it12.hasNext()) {
            byte[] next4 = it12.next();
            Iterator<byte[]> it13 = it12;
            if (m85v(next4, "0") != 102 && m85v(next4, "0") != 329) {
                arrayList.add(new BsonLite.ArrayValue(next4));
            }
            it12 = it13;
        }
        byte[] withItemSummary = withItemSummary(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileArray(reward, "item", arrayList), "money", m85v3), "souvenir", max2));
        LocalEconomyEngine.Result result3 = new LocalEconomyEngine.Result(result2.profile);
        result3.reward = withItemSummary;
        LocalEconomyEngine.addExperience(result3, localEconomyCatalog, m85v(bArr4, "exp"));
        result.profile = result3.profile;
        result.replies.addAll(result2.replies);
        result.replies.addAll(result3.replies);
        result.profile = BsonLite.withProfileDocument(result.profile, "q7WeekResult", BsonLite.document("version", Integer.valueOf(VERSION), "week", Integer.valueOf(i12), "event", Integer.valueOf(i), str, Integer.valueOf(i2), "score", withProfileInt, "reward", result3.reward));
        LocalResourceEngine.syncCurrencies(result);
    }

    static void repairAwarded(LocalResourceEngine.Result result, LocalWeekCatalog localWeekCatalog, LocalResourceCatalog localResourceCatalog) {
        byte[] bArr;
        byte[] bArr2;
        byte[] m84d = m84d(result.profile, "q7WeekResult");
        if (m85v(m84d, "week") != m85v(m84d(result.profile, "weeknum"), "w")) {
            return;
        }
        byte[] m84d2 = m84d(m84d, "score");
        byte[] m84d3 = m84d(m84d, "reward");
        if (BsonLite.keys(m84d3).isEmpty()) {
            return;
        }
        if (BsonLite.documentValue(m84d3, "its") != null) {
            bArr = m84d;
            bArr2 = m84d3;
        } else {
            byte[] withItemSummary = withItemSummary(m84d3);
            byte[] withProfileDocument = BsonLite.withProfileDocument(m84d, "reward", withItemSummary);
            result.profile = BsonLite.withProfileDocument(result.profile, "q7WeekResult", withProfileDocument);
            bArr = withProfileDocument;
            bArr2 = withItemSummary;
        }
        if (m85v(bArr, "version") != 1) {
            return;
        }
        Iterator<byte[]> it = LocalResourceEngine.array(m84d(m84d(result.profile, "weeknum"), "wasi")).iterator();
        while (it.hasNext()) {
            byte[] next = it.next();
            Iterator<byte[]> it2 = it;
            if (m85v(next, "0") == m85v(bArr, "week") && m85v(m84d(next, "1"), "total") != m85v(m84d2, "total")) {
                return;
            } else {
                it = it2;
            }
        }
        List<Integer> intArrayValues = BsonLite.intArrayValues(m84d2, "8");
        List<Integer> intArrayValues2 = BsonLite.intArrayValues(m84d(m84d2, "add_score"), "1");
        if (intArrayValues.size() == 3 && intArrayValues2.size() == VERSION) {
            byte[] withProfileIntArray = BsonLite.withProfileIntArray(m84d2, "8", Arrays.asList(Integer.valueOf(Math.multiplyExact(Math.max(0, intArrayValues.get(1).intValue()), HERO_ROUTE_SCORE)), intArrayValues.get(1), intArrayValues.get(VERSION)));
            Iterator<Integer> it3 = localWeekCatalog.scores.keySet().iterator();
            int i = 0;
            while (it3.hasNext()) {
                List<Integer> intArrayValues3 = BsonLite.intArrayValues(withProfileIntArray, Integer.toString(it3.next().intValue()));
                if (intArrayValues3.size() != 3) {
                    return;
                } else {
                    i = Math.addExact(i, intArrayValues3.get(0).intValue());
                }
            }
            byte[] bArr3 = bArr;
            long max = Math.max(0, i);
            Map<String, Integer> map = localWeekCatalog.bonuses;
            int intValue = (int) ((max * map.getOrDefault(intArrayValues2.get(0) + ":" + intArrayValues2.get(1), 0).intValue()) / 10000);
            int max2 = Math.max(0, Math.addExact(i, intValue));
            int m85v = max2 - m85v(m84d(bArr3, "score"), "total");
            if (m85v < 0) {
                return;
            }
            byte[] withProfileArray = BsonLite.withProfileArray(BsonLite.withProfileInt(withProfileIntArray, "total", max2), "add_score", Arrays.asList(Integer.valueOf(intValue), intArrayValues2, 0));
            if (m85v > 0) {
                LocalResourceEngine.grant(result, localResourceCatalog, "souvenir", 0, m85v, 1);
            }
            byte[] withProfileInt = BsonLite.withProfileInt(withItemSummary(bArr2), "souvenir", max2);
            result.profile = BsonLite.withProfileDocument(result.profile, "weeknum", best(history(m84d(result.profile, "weeknum"), m85v(bArr3, "week"), withProfileArray), intArrayValues2, max2));
            result.profile = BsonLite.withProfileDocument(result.profile, "q7WeekResult", BsonLite.withProfileDocument(BsonLite.withProfileDocument(BsonLite.withProfileInt(bArr3, "version", VERSION), "score", withProfileArray), "reward", withProfileInt));
            if (m85v > 0) {
                LocalResourceEngine.syncCurrencies(result);
            }
        }
    }

    static byte[] withItemSummary(byte[] bArr) {
        return BsonLite.withProfileDocument(bArr, "its", BsonLite.document("item", new BsonLite.ArrayValue(m84d(bArr, "item")), "treasure", new BsonLite.ArrayValue(m84d(bArr, "treasure")), "hero", new BsonLite.ArrayValue(m84d(bArr, "hero"))));
    }

    private static byte[] best(byte[] bArr, List<Integer> list, int i) {
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr2 : LocalResourceEngine.array(m84d(bArr, "ls"))) {
            if (BsonLite.intArrayValues(bArr2, "0").equals(list)) {
                i = Math.max(i, m85v(bArr2, "1"));
            } else {
                arrayList.add(new BsonLite.ArrayValue(bArr2));
            }
        }
        arrayList.add(Arrays.asList(list, Integer.valueOf(i)));
        return BsonLite.withProfileArray(bArr, "ls", arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static byte[] history(byte[] bArr, int i, byte[] bArr2) {
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr3 : LocalResourceEngine.array(m84d(bArr, "wasi"))) {
            if (m85v(bArr3, "0") != i) {
                arrayList.add(new BsonLite.ArrayValue(bArr3));
            }
        }
        arrayList.add(Arrays.asList(Integer.valueOf(i), bArr2));
        return BsonLite.withProfileArray(BsonLite.withProfileArray(bArr, "wasi", arrayList), "wsi", Collections.singletonList(Arrays.asList(Integer.valueOf(i), bArr2)));
    }

    /* renamed from: d */
    private static byte[] m84d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m85v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }
}
