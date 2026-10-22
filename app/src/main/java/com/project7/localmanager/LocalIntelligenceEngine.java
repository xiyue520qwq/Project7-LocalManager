package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* loaded from: classes.dex */
final class LocalIntelligenceEngine {
    LocalIntelligenceEngine() {
    }

    private static byte[] doc(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m45v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static boolean handles(String str) {
        return "syncAllIntelligenceRequest".equals(str) || "readTodayIntelligence".equals(str) || "openIntelligenceRequest".equals(str) || "handleIntelligenceRequest".equals(str);
    }

    static byte[] refresh(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, final LocalTutorialStore.Progress progress) {
        String str;
        String str2;
        String str3;
        byte[] bArr2;
        String str4;
        String str5;
        List<byte[]> list;
        int i;
        String str6;
        HashSet hashSet;
        Iterator<Map.Entry<String, byte[]>> it;
        String str7;
        List<byte[]> list2;
        int i2;
        Iterator<Integer> it2;
        String str8;
        byte[] bArr3;
        String str9;
        int i3;
        final byte[] bArr4 = bArr;
        byte[] doc = doc(bArr4, "intelligence");
        String str10 = "is";
        if (BsonLite.documentValue(doc, "is") == null) {
            doc = BsonLite.withProfileArray(doc, "is", new ArrayList());
        }
        String str11 = "rd";
        if (BsonLite.boolValue(doc, "rd") == null) {
            doc = BsonLite.withProfileBool(doc, "rd", false);
        }
        byte[] doc2 = doc(bArr4, "weeknum");
        String str12 = "w";
        if (!((progress == null || progress.initPrologue || (!progress.completedEvents.contains(3034) && !progress.processingNewbees.contains(130) && !progress.finishedNewbees.contains(130) && (m45v(doc2, "w") <= 0 || !progress.completedEvents.contains(1047)))) ? false : true)) {
            str = "intelligence";
        } else {
            List<byte[]> array = LocalResourceEngine.array(doc(doc, "is"));
            int m45v = m45v(doc2, "d");
            String str13 = m45v(doc2, "w") + ":" + m45v;
            byte[] doc3 = doc(bArr4, "q7Intelligence");
            byte[] bArr5 = doc;
            StringBuilder sb = new StringBuilder();
            str = "intelligence";
            sb.append(7 - m45v(doc2, "d"));
            sb.append(":");
            sb.append(m45v(doc2, "w") + 1);
            byte[] bArr6 = localFeatureCatalog.get("INT_REFRESH", sb.toString());
            if (bArr6 == null) {
                bArr6 = localFeatureCatalog.get("INT_REFRESH", (7 - m45v(doc2, "d")) + ":-1");
            }
            if (m45v == 2 && m45v(doc2, "w") == 0 && progress.processingNewbees.contains(130)) {
                array.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalIntelligenceEngine$$ExternalSyntheticLambda1
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return LocalIntelligenceEngine.lambda$refresh$0((byte[]) obj);
                    }
                });
            }
            ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(bArr6, "certain"));
            arrayList.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalIntelligenceEngine$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return LocalIntelligenceEngine.lambda$refresh$1(LocalTutorialStore.Progress.this, bArr4, (Integer) obj);
                }
            });
            String str14 = "day";
            if (!(!str13.equals(BsonLite.stringValue(doc3, "day"))) || bArr6 == null) {
                str2 = "is";
                str3 = "rd";
                bArr2 = doc2;
                str4 = "day";
                str5 = "w";
                list = array;
                i = m45v;
            } else {
                byte[] doc4 = doc(bArr6, "refresh");
                Iterator<String> it3 = BsonLite.keys(doc4).iterator();
                while (it3.hasNext()) {
                    Iterator<String> it4 = it3;
                    String next = it3.next();
                    String str15 = str10;
                    int parseInt = Integer.parseInt(next);
                    String str16 = str11;
                    LinkedHashSet linkedHashSet = new LinkedHashSet(arrayList);
                    for (byte[] bArr7 : array) {
                        List<byte[]> list3 = array;
                        byte[] bArr8 = doc2;
                        if (m45v(bArr7, str14) == m45v) {
                            linkedHashSet.add(Integer.valueOf(m45v(bArr7, "id")));
                        }
                        doc2 = bArr8;
                        array = list3;
                    }
                    byte[] bArr9 = doc2;
                    List<byte[]> list4 = array;
                    Iterator it5 = linkedHashSet.iterator();
                    int i4 = 0;
                    while (true) {
                        str8 = str14;
                        if (!it5.hasNext()) {
                            break;
                        }
                        Iterator it6 = it5;
                        if (m45v(localFeatureCatalog.get("INT", Integer.valueOf(((Integer) it5.next()).intValue())), "type") == parseInt) {
                            i4++;
                        }
                        str14 = str8;
                        it5 = it6;
                    }
                    int m45v2 = m45v(doc4, next) - i4;
                    while (true) {
                        if (m45v2 <= 0) {
                            bArr3 = doc4;
                            str9 = str12;
                            i3 = m45v;
                            break;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<Map.Entry<String, byte[]>> it7 = localFeatureCatalog.entries.entrySet().iterator();
                        bArr3 = doc4;
                        int i5 = 0;
                        while (true) {
                            i3 = m45v;
                            if (!it7.hasNext()) {
                                break;
                            }
                            Map.Entry<String, byte[]> next2 = it7.next();
                            Iterator<Map.Entry<String, byte[]>> it8 = it7;
                            String str17 = str12;
                            if (next2.getKey().startsWith("INT:")) {
                                int m45v3 = m45v(next2.getValue(), "id");
                                int m45v4 = m45v(next2.getValue(), "weight");
                                if (m45v(next2.getValue(), "type") == parseInt && m45v4 > 0 && !linkedHashSet.contains(Integer.valueOf(m45v3)) && LocalIntelligenceEffects.canCreate(m45v3, progress, bArr4)) {
                                    arrayList2.add(Integer.valueOf(m45v3));
                                    i5 = Math.addExact(i5, m45v4);
                                    m45v = i3;
                                    str12 = str17;
                                    it7 = it8;
                                }
                            }
                            m45v = i3;
                            str12 = str17;
                            it7 = it8;
                        }
                        str9 = str12;
                        if (i5 == 0) {
                            break;
                        }
                        int nextInt = LocalStoryEnvironment.nextInt(i5);
                        Iterator it9 = arrayList2.iterator();
                        while (true) {
                            if (it9.hasNext()) {
                                int intValue = ((Integer) it9.next()).intValue();
                                nextInt -= m45v(localFeatureCatalog.get("INT", Integer.valueOf(intValue)), "weight");
                                if (nextInt < 0) {
                                    arrayList.add(Integer.valueOf(intValue));
                                    linkedHashSet.add(Integer.valueOf(intValue));
                                    break;
                                }
                            }
                        }
                        m45v2--;
                        doc4 = bArr3;
                        m45v = i3;
                        str12 = str9;
                    }
                    str10 = str15;
                    it3 = it4;
                    str11 = str16;
                    doc4 = bArr3;
                    doc2 = bArr9;
                    array = list4;
                    str14 = str8;
                    m45v = i3;
                    str12 = str9;
                }
                str2 = str10;
                str3 = str11;
                bArr2 = doc2;
                str4 = str14;
                str5 = str12;
                list = array;
                i = m45v;
            }
            byte[] doc5 = doc(doc3, "story");
            HashSet hashSet2 = new HashSet(BsonLite.intArrayValues(bArr4, "q7WeekEventBaseline"));
            int m45v5 = m45v(bArr2, str5);
            if (progress.weekIndex == m45v5) {
                Iterator<Map.Entry<String, byte[]>> it10 = localFeatureCatalog.entries.entrySet().iterator();
                while (it10.hasNext()) {
                    Map.Entry<String, byte[]> next3 = it10.next();
                    if (next3.getKey().startsWith("INT_EVENT:")) {
                        String substring = next3.getKey().substring("INT_EVENT:".length());
                        int parseInt2 = Integer.parseInt(substring);
                        it = it10;
                        if (!progress.completedEvents.contains(Integer.valueOf(parseInt2)) || hashSet2.contains(Integer.valueOf(parseInt2))) {
                            hashSet = hashSet2;
                        } else if (Integer.valueOf(m45v5).equals(BsonLite.intValue(doc5, substring))) {
                            hashSet = hashSet2;
                        } else {
                            Iterator<Integer> it11 = BsonLite.intArrayValues(next3.getValue(), "entries").iterator();
                            byte[] bArr10 = bArr5;
                            while (it11.hasNext()) {
                                int intValue2 = it11.next().intValue();
                                Iterator<byte[]> it12 = list.iterator();
                                boolean z = false;
                                while (it12.hasNext()) {
                                    HashSet hashSet3 = hashSet2;
                                    if (m45v(it12.next(), "id") == intValue2) {
                                        z = true;
                                    }
                                    hashSet2 = hashSet3;
                                }
                                HashSet hashSet4 = hashSet2;
                                if (z) {
                                    str7 = str3;
                                    list2 = list;
                                    i2 = i;
                                    it2 = it11;
                                } else {
                                    i2 = i;
                                    list2 = list;
                                    list2.add(newEntry(localFeatureCatalog, intValue2, i2));
                                    str7 = str3;
                                    it2 = it11;
                                    bArr10 = BsonLite.withProfileBool(bArr10, str7, false);
                                }
                                i = i2;
                                list = list2;
                                it11 = it2;
                                hashSet2 = hashSet4;
                                str3 = str7;
                            }
                            doc5 = BsonLite.withProfileInt(doc5, substring, m45v5);
                            bArr5 = bArr10;
                            it10 = it;
                            hashSet2 = hashSet2;
                        }
                    } else {
                        hashSet = hashSet2;
                        it = it10;
                    }
                    i = i;
                    str3 = str3;
                    list = list;
                    it10 = it;
                    hashSet2 = hashSet;
                }
            }
            String str18 = str3;
            List<byte[]> list5 = list;
            int i6 = i;
            byte[] withProfileDocument = BsonLite.withProfileDocument(doc3, "story", doc5);
            Iterator it13 = arrayList.iterator();
            byte[] bArr11 = bArr5;
            while (it13.hasNext()) {
                int intValue3 = ((Integer) it13.next()).intValue();
                boolean z2 = false;
                for (byte[] bArr12 : list5) {
                    if (m45v(bArr12, "id") == intValue3) {
                        str6 = str4;
                        if (m45v(bArr12, str6) == i6) {
                            z2 = true;
                        }
                    } else {
                        str6 = str4;
                    }
                    str4 = str6;
                }
                String str19 = str4;
                if (z2) {
                    str4 = str19;
                } else {
                    list5.add(newEntry(localFeatureCatalog, intValue3, i6));
                    bArr11 = BsonLite.withProfileBool(bArr11, str18, false);
                    str4 = str19;
                }
            }
            String str20 = str4;
            for (int i7 = 0; i7 < list5.size(); i7++) {
                byte[] bArr13 = list5.get(i7);
                byte[] bArr14 = localFeatureCatalog.get("INT", Integer.valueOf(m45v(bArr13, "id")));
                if (bArr14 != null && m45v(bArr13, str20) + m45v(bArr14, "lastDay") < i6) {
                    list5.set(i7, BsonLite.withProfileBool(bArr13, "ep", true));
                }
            }
            doc = BsonLite.withProfileArray(bArr11, str2, list5);
            bArr4 = BsonLite.withProfileDocument(bArr4, "q7Intelligence", BsonLite.withProfileString(withProfileDocument, str20, str13));
        }
        return LocalIntelligenceEffects.checkAutomatic(BsonLite.withProfileDocument(bArr4, str, doc), localFeatureCatalog, progress);
    }

    static /* synthetic */ boolean lambda$refresh$0(byte[] bArr) {
        return m45v(bArr, "id") == 4 && m45v(bArr, "day") == 2 && !Boolean.TRUE.equals(BsonLite.boolValue(bArr, "hd")) && LocalResourceEngine.array(doc(bArr, "afs")).isEmpty();
    }

    static /* synthetic */ boolean lambda$refresh$1(LocalTutorialStore.Progress progress, byte[] bArr, Integer num) {
        return !LocalIntelligenceEffects.canCreate(num.intValue(), progress, bArr);
    }

    static void recoverEvents(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        if (progress == null) {
            return;
        }
        Iterator<Integer> it = BsonLite.intArrayValues(doc(bArr, "q7Intelligence"), "events").iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            LocalEventCatalog.Event event = localEventCatalog.get(intValue);
            if (event != null && event.release && Collections.disjoint(localEventCatalog.mutex(intValue), progress.completedEvents) && Collections.disjoint(localEventCatalog.mutex(intValue), progress.processingEvents) && !progress.completedEvents.contains(Integer.valueOf(intValue)) && !progress.processingEvents.contains(Integer.valueOf(intValue))) {
                progress.availableEvents.add(Integer.valueOf(intValue));
            }
        }
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2) {
        return apply(bArr, localFeatureCatalog, null, str, bArr2);
    }

    /* JADX WARN: Removed duplicated region for block: B:175:0x0488  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2) {
        String str2;
        String str3;
        boolean z;
        String str4;
        String str5;
        byte[] bArr3;
        String str6;
        byte[] bArr4;
        String str7;
        byte[] bArr5 = bArr;
        String str8 = "weeknum";
        String str9 = "dvc";
        String str10 = "INT_REWARD";
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr5);
        try {
            try {
            } catch (ArithmeticException e) {
                e = e;
                result = new LocalResourceEngine.Result(bArr);
                result.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                if ("handleIntelligenceRequest".equals(str)) {
                    result.add("evalCode", BsonLite.document("s", "import gg; gg.ui.enable_settlement(True)"));
                }
                return result;
            } catch (IllegalArgumentException e2) {
                e = e2;
                result = new LocalResourceEngine.Result(bArr);
                result.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                if ("handleIntelligenceRequest".equals(str)) {
                }
                return result;
            }
        } catch (ArithmeticException | IllegalArgumentException e3) {
            e = e3;
        }
        if (!handles(str)) {
            throw new IllegalArgumentException("未知情报操作");
        }
        byte[] doc = doc(bArr5, "intelligence");
        if ("readTodayIntelligence".equals(str)) {
            doc = BsonLite.withProfileBool(doc, "rd", true);
            str2 = "intelligence";
        } else if ("syncAllIntelligenceRequest".equals(str)) {
            str2 = "intelligence";
        } else {
            String uuidValue = BsonLite.uuidValue(bArr2, "uuid");
            List<byte[]> array = LocalResourceEngine.array(doc(doc, "is"));
            int i = -1;
            int i2 = 0;
            while (true) {
                str3 = str9;
                if (i2 >= array.size()) {
                    break;
                }
                if (uuidValue != null && uuidValue.equals(BsonLite.uuidValue(array.get(i2), "uuid"))) {
                    i = i2;
                }
                i2++;
                str9 = str3;
            }
            if (i < 0) {
                throw new IllegalArgumentException("情报不存在，请重新打开情报界面");
            }
            byte[] bArr6 = array.get(i);
            byte[] bArr7 = localFeatureCatalog.get("INT", Integer.valueOf(m45v(bArr6, "id")));
            int m45v = m45v(doc(bArr5, "weeknum"), "d");
            if (bArr7 != null && m45v(bArr6, "day") <= m45v) {
                int i3 = i;
                if (!Boolean.TRUE.equals(BsonLite.boolValue(bArr6, "ep"))) {
                    if (!Boolean.TRUE.equals(BsonLite.boolValue(bArr6, "hd")) && m45v(bArr6, "day") + m45v(bArr7, "lastDay") <= m45v) {
                        throw new IllegalArgumentException("该情报已过期");
                    }
                    boolean equals = "handleIntelligenceRequest".equals(str);
                    boolean equals2 = Boolean.TRUE.equals(BsonLite.boolValue(bArr6, equals ? "hd" : "op"));
                    String str11 = "INT_AFFECT";
                    String str12 = "handleAffects";
                    String str13 = "uuid";
                    if (equals2) {
                        z = equals2;
                        str4 = "INT_AFFECT";
                        str5 = "handleAffects";
                        bArr3 = bArr7;
                        str6 = str13;
                        bArr4 = doc;
                    } else {
                        z = equals2;
                        int m45v2 = m45v(bArr7, equals ? "handleNeed" : "openNeed");
                        byte[] doc2 = doc(result.profile, "city");
                        if (m45v2 < 0 || m45v(doc2, str3) < m45v2) {
                            throw new IllegalArgumentException("情报值不足");
                        }
                        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(doc(bArr5, "q7Intelligence"), "events"));
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        if (equals) {
                            Iterator<Integer> it = BsonLite.intArrayValues(bArr7, "handleAffects").iterator();
                            while (it.hasNext()) {
                                int intValue = it.next().intValue();
                                String str14 = str12;
                                boolean z2 = intValue >= 17 && intValue <= 22;
                                byte[] bArr8 = bArr7;
                                if ((intValue < 1 || intValue > 4) && intValue != 16 && intValue != 24 && !z2) {
                                    throw new IllegalArgumentException("该情报的特殊效果尚未实现，未扣除情报值");
                                }
                                byte[] bArr9 = localFeatureCatalog.get(str11, Integer.valueOf(intValue));
                                if (bArr9 == null) {
                                    throw new IllegalArgumentException("缺少原情报效果配置，未扣除情报值");
                                }
                                if (z2) {
                                    str7 = str8;
                                    if (!Integer.valueOf(m45v(doc(bArr5, str8), "w")).equals(BsonLite.intValue(doc(doc(bArr5, "q7Intelligence"), "story"), "6004")) || !BsonLite.intArrayValues(localFeatureCatalog.get("INT_EVENT", 6004), "entries").contains(Integer.valueOf(m45v(bArr6, "id"))) || BsonLite.intArrayValues(bArr9, "events").isEmpty() || !new HashSet(Arrays.asList("id", "events")).containsAll(BsonLite.keys(bArr9))) {
                                        throw new IllegalArgumentException("缺少本周突袭情报来源，未扣除情报值");
                                    }
                                } else {
                                    str7 = str8;
                                }
                                Iterator<Integer> it2 = BsonLite.intArrayValues(bArr9, "events").iterator();
                                while (it2.hasNext()) {
                                    int intValue2 = it2.next().intValue();
                                    if (!arrayList.contains(Integer.valueOf(intValue2))) {
                                        arrayList.add(Integer.valueOf(intValue2));
                                    }
                                }
                                LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
                                Iterator<Integer> it3 = BsonLite.intArrayValues(bArr9, "randomReward").iterator();
                                while (it3.hasNext()) {
                                    int intValue3 = it3.next().intValue();
                                    Iterator<Integer> it4 = it3;
                                    if (localResourceCatalog != null) {
                                        String str15 = str11;
                                        String str16 = str10;
                                        if (localFeatureCatalog.get(str16, Integer.valueOf(intValue3)) != null) {
                                            LocalGiftEngine.reward(result2, localResourceCatalog, localFeatureCatalog.get(str16, Integer.valueOf(intValue3)), 1);
                                            str10 = str16;
                                            it3 = it4;
                                            str11 = str15;
                                        }
                                    }
                                    throw new IllegalArgumentException("缺少原情报奖励配置，未扣除情报值");
                                }
                                String str17 = str11;
                                String str18 = str10;
                                result.profile = result2.profile;
                                result.replies.addAll(result2.replies);
                                linkedHashMap.put(Integer.valueOf(intValue), result2.reward());
                                if (!result2.treasureRewards.isEmpty()) {
                                    result.add("procRewardSettlement", BsonLite.document("r", result2.reward()));
                                }
                                bArr5 = bArr;
                                str10 = str18;
                                str12 = str14;
                                bArr7 = bArr8;
                                str8 = str7;
                                str11 = str17;
                            }
                        }
                        str4 = str11;
                        String str19 = str12;
                        byte[] bArr10 = bArr7;
                        result.profile = BsonLite.withProfileDocument(result.profile, "q7Intelligence", BsonLite.withProfileIntArray(doc(result.profile, "q7Intelligence"), "events", arrayList));
                        result.profile = BsonLite.withProfileDocument(result.profile, "city", BsonLite.withProfileInt(doc2, str3, m45v(doc2, str3) - m45v2));
                        byte[] withProfileBool = BsonLite.withProfileBool(bArr6, "op", true);
                        if (equals) {
                            byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileBool(withProfileBool, "hd", true), "hdd", m45v);
                            List<byte[]> array2 = LocalResourceEngine.array(doc(withProfileInt, "afs"));
                            str5 = str19;
                            bArr3 = bArr10;
                            Iterator<Integer> it5 = BsonLite.intArrayValues(bArr3, str5).iterator();
                            while (it5.hasNext()) {
                                int intValue4 = it5.next().intValue();
                                String str20 = str13;
                                array2.add(BsonLite.withProfileUuid(BsonLite.document("id", Integer.valueOf(intValue4), "ld", 1, "rd", linkedHashMap.get(Integer.valueOf(intValue4))), str20, LocalResourceEngine.uuid()));
                                str13 = str20;
                            }
                            str6 = str13;
                            withProfileBool = BsonLite.withProfileArray(withProfileInt, "afs", array2);
                        } else {
                            str6 = str13;
                            str5 = str19;
                            bArr3 = bArr10;
                        }
                        array.set(i3, withProfileBool);
                        bArr4 = BsonLite.withProfileArray(doc, "is", array);
                    }
                    result.profile = BsonLite.withProfileDocument(result.profile, "intelligence", bArr4);
                    sync(result);
                    result.add(equals ? "handleIntelligenceSuccess" : "openIntelligenceSuccess", BsonLite.withProfileUuid(BsonLite.EMPTY_DOCUMENT, str6, uuidValue));
                    if (equals && !z) {
                        Iterator<Integer> it6 = BsonLite.intArrayValues(bArr3, str5).iterator();
                        while (it6.hasNext()) {
                            String str21 = str4;
                            Iterator<Integer> it7 = BsonLite.intArrayValues(localFeatureCatalog.get(str21, Integer.valueOf(it6.next().intValue())), "events").iterator();
                            while (it7.hasNext()) {
                                result.add("triggerIntelligenceEvents", BsonLite.document("e", Integer.valueOf(it7.next().intValue())));
                            }
                            str4 = str21;
                        }
                    }
                    return result;
                }
            }
            throw new IllegalArgumentException("该情报已过期");
        }
        result.profile = BsonLite.withProfileDocument(result.profile, str2, doc);
        sync(result);
        return result;
    }

    private static void sync(LocalResourceEngine.Result result) {
        result.add("get_city_data_reply", BsonLite.document("cd", doc(result.profile, "city")));
        result.add("syncAllIntelligence", BsonLite.document("is", doc(result.profile, "intelligence")));
    }

    private static byte[] newEntry(LocalFeatureCatalog localFeatureCatalog, int i, int i2) {
        byte[] bArr = localFeatureCatalog.get("INT", Integer.valueOf(i));
        if (bArr == null) {
            throw new IllegalArgumentException("Missing stock intelligence definition");
        }
        Object[] objArr = new Object[16];
        objArr[0] = "id";
        objArr[1] = Integer.valueOf(i);
        objArr[2] = "day";
        objArr[3] = Integer.valueOf(i2);
        objArr[4] = "hd";
        objArr[5] = false;
        objArr[6] = "ep";
        objArr[7] = false;
        objArr[8] = "hdd";
        objArr[9] = null;
        objArr[10] = "op";
        objArr[11] = Boolean.valueOf(m45v(bArr, "openNeed") == 0);
        objArr[12] = "ld";
        objArr[13] = Integer.valueOf(m45v(bArr, "lastDay"));
        objArr[14] = "afs";
        objArr[15] = new ArrayList();
        return BsonLite.withProfileUuid(BsonLite.document(objArr), "uuid", LocalResourceEngine.uuid());
    }
}
