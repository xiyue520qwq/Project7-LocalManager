package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalAchievementEngine {
    LocalAchievementEngine() {
    }

    /* renamed from: v */
    static int m1v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m0d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static byte[] refresh(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        String str;
        byte[] bArr2;
        String str2;
        int i;
        byte[] bArr3 = bArr;
        String str3 = "amd";
        byte[] m0d = m0d(bArr3, "amd");
        byte[] m0d2 = m0d(bArr3, "amd");
        String str4 = "is";
        byte[] m0d3 = m0d(m0d2, "is");
        String str5 = "he";
        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(m0d2, "he"));
        Iterator<Map.Entry<String, byte[]>> it = localFeatureCatalog.entries.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, byte[]> next = it.next();
            if (next.getKey().startsWith("E:") && Boolean.TRUE.equals(BsonLite.boolValue(next.getValue(), "init"))) {
                int parseInt = Integer.parseInt(next.getKey().substring(2));
                if (!arrayList.contains(Integer.valueOf(parseInt))) {
                    arrayList.add(Integer.valueOf(parseInt));
                }
            }
            if (next.getKey().startsWith("A:")) {
                byte[] value = next.getValue();
                int m1v = m1v(value, "hero");
                int parseInt2 = Integer.parseInt(next.getKey().substring(2));
                if (LocalResourceEngine.ownsHero(bArr3, m1v)) {
                    List<byte[]> array = LocalResourceEngine.array(m0d(m0d3, Integer.toString(m1v)));
                    int i2 = 0;
                    while (true) {
                        str = "id";
                        if (i2 >= array.size()) {
                            i2 = -1;
                            break;
                        }
                        if (m1v(array.get(i2), "id") == parseInt2) {
                            break;
                        }
                        i2++;
                    }
                    Iterator<Map.Entry<String, byte[]>> it2 = it;
                    String str6 = str3;
                    byte[] document = i2 < 0 ? BsonLite.document("id", Integer.valueOf(parseInt2), "fi", false, "r", false, "cl", Collections.emptyList()) : array.get(i2);
                    ArrayList arrayList2 = new ArrayList();
                    byte[] bArr4 = m0d;
                    Map<Integer, Integer> pairs = LocalAccountFeatures.pairs(m0d(document, "cl"));
                    ArrayList arrayList3 = arrayList;
                    Iterator<byte[]> it3 = LocalResourceEngine.array(m0d(value, "targets")).iterator();
                    boolean z = true;
                    while (it3.hasNext()) {
                        Iterator<byte[]> it4 = it3;
                        byte[] next2 = it3.next();
                        int m1v2 = m1v(next2, str);
                        String str7 = str5;
                        int m1v3 = m1v(next2, "n");
                        byte[] bArr5 = m0d2;
                        int intValue = pairs.containsKey(Integer.valueOf(m1v2)) ? pairs.get(Integer.valueOf(m1v2)).intValue() : 0;
                        Map<Integer, Integer> map = pairs;
                        byte[] m0d4 = m0d(next2, "rule");
                        byte[] profileHeroDocument = BsonLite.profileHeroDocument(bArr3, m1v);
                        String str8 = str4;
                        if (m1v(m0d4, "openArtifact") != 0) {
                            bArr2 = m0d3;
                            if (Boolean.TRUE.equals(BsonLite.boolValue(profileHeroDocument, "oa"))) {
                                intValue = Math.max(intValue, 1);
                            }
                        } else {
                            bArr2 = m0d3;
                        }
                        if (m1v(m0d4, "hero_clear") != 0 && Boolean.TRUE.equals(BsonLite.boolValue(profileHeroDocument, "fd"))) {
                            intValue = Math.max(intValue, 1);
                        }
                        if (m1v(m0d4, "hero_test") != 0 && Boolean.TRUE.equals(BsonLite.boolValue(profileHeroDocument, "pt"))) {
                            intValue = Math.max(intValue, 1);
                        }
                        if (m1v(m0d4, "finishWeekend") != 0) {
                            intValue = Math.max(intValue, m1v(m0d(bArr3, "weeknum"), "w"));
                        }
                        if (m1v(m0d4, "money") != 0) {
                            intValue = Math.max(intValue, m1v(bArr3, "money"));
                        }
                        if (m1v(m0d4, "getHeroes") != 0 || !BsonLite.intArrayValues(m0d4, "getHeroes").isEmpty()) {
                            Iterator<Integer> it5 = BsonLite.intArrayValues(m0d4, "getHeroes").iterator();
                            int i3 = 0;
                            while (it5.hasNext()) {
                                Iterator<Integer> it6 = it5;
                                if (LocalResourceEngine.ownsHero(bArr3, it5.next().intValue())) {
                                    i3++;
                                }
                                it5 = it6;
                            }
                            intValue = Math.max(intValue, i3);
                        }
                        if (m1v(m0d4, "hasFashion") != 0) {
                            intValue = Math.max(intValue, BsonLite.keys(m0d(profileHeroDocument, "sk")).size());
                        }
                        List<Integer> intArrayValues = BsonLite.intArrayValues(m0d4, "treasure");
                        if (!intArrayValues.isEmpty()) {
                            Iterator<byte[]> it7 = LocalResourceEngine.array(m0d(m0d(profileHeroDocument, "ti"), "items")).iterator();
                            while (it7.hasNext()) {
                                byte[] next3 = it7.next();
                                Iterator<byte[]> it8 = it7;
                                int i4 = m1v;
                                if (m1v(next3, "i") == intArrayValues.get(0).intValue()) {
                                    if (intArrayValues.size() >= 2) {
                                        int m1v4 = m1v(m0d(next3, "tr"), "cl");
                                        i = 1;
                                        if (m1v4 != intArrayValues.get(1).intValue()) {
                                        }
                                    } else {
                                        i = 1;
                                    }
                                    intValue = Math.max(intValue, i);
                                }
                                it7 = it8;
                                m1v = i4;
                            }
                        }
                        int i5 = m1v;
                        if (m1v(m0d4, "cityBuilding") != 0) {
                            Iterator<byte[]> it9 = BsonLite.documentEntries(m0d(m0d(bArr3, "city"), "areas")).values().iterator();
                            int i6 = 0;
                            while (it9.hasNext()) {
                                Iterator<byte[]> it10 = it9;
                                Iterator<byte[]> it11 = BsonLite.documentEntries(m0d(it9.next(), "bd")).values().iterator();
                                while (it11.hasNext()) {
                                    Iterator<byte[]> it12 = it11;
                                    if (m1v(it11.next(), str) == m1v(m0d4, "cityBuilding")) {
                                        i6++;
                                    }
                                    it11 = it12;
                                }
                                it9 = it10;
                            }
                            intValue = Math.max(intValue, i6);
                        }
                        List<Integer> intArrayValues2 = BsonLite.intArrayValues(m0d4, "finish_event");
                        if (intArrayValues2.isEmpty()) {
                            str2 = str;
                        } else {
                            Iterator<Integer> it13 = intArrayValues2.iterator();
                            boolean z2 = true;
                            while (it13.hasNext()) {
                                int intValue2 = it13.next().intValue();
                                z2 &= Boolean.TRUE.equals(BsonLite.boolValue(m0d(bArr3, "q7effects"), "c" + intValue2));
                                it13 = it13;
                                str = str;
                            }
                            str2 = str;
                            if (z2) {
                                intValue = Math.max(intValue, 1);
                            }
                        }
                        z &= intValue >= m1v3;
                        arrayList2.add(Arrays.asList(Integer.valueOf(m1v2), Integer.valueOf(intValue)));
                        it3 = it4;
                        str5 = str7;
                        m0d2 = bArr5;
                        pairs = map;
                        str4 = str8;
                        m0d3 = bArr2;
                        m1v = i5;
                        str = str2;
                    }
                    byte[] bArr6 = m0d2;
                    String str9 = str4;
                    byte[] bArr7 = m0d3;
                    String str10 = str5;
                    int i7 = m1v;
                    byte[] withProfileArray = BsonLite.withProfileArray(document, "cl", arrayList2);
                    if (z) {
                        withProfileArray = BsonLite.withProfileBool(withProfileArray, "fi", true);
                    }
                    if (i2 < 0) {
                        array.add(withProfileArray);
                    } else {
                        array.set(i2, withProfileArray);
                    }
                    m0d3 = BsonLite.withProfileArray(bArr7, Integer.toString(i7), array);
                    it = it2;
                    str3 = str6;
                    arrayList = arrayList3;
                    m0d = bArr4;
                    str5 = str10;
                    m0d2 = bArr6;
                    str4 = str9;
                }
            }
        }
        String str11 = str3;
        byte[] bArr8 = m0d;
        byte[] withProfileIntArray = BsonLite.withProfileIntArray(BsonLite.withProfileDocument(m0d2, str4, m0d3), str5, arrayList);
        if (BsonLite.documentValue(withProfileIntArray, "er") == null) {
            withProfileIntArray = BsonLite.withProfileArray(withProfileIntArray, "er", Collections.emptyList());
        }
        if (!Arrays.equals(bArr8, withProfileIntArray)) {
            bArr3 = BsonLite.withProfileDocument(bArr3, str11, withProfileIntArray);
        }
        byte[] m0d5 = m0d(bArr3, "cht");
        if (BsonLite.documentValue(m0d5, "heu") == null) {
            m0d5 = BsonLite.withProfileArray(m0d5, "heu", Collections.singletonList("default"));
        }
        return Arrays.equals(m0d(bArr3, "cht"), m0d5) ? bArr3 : BsonLite.withProfileDocument(bArr3, "cht", m0d5);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0190  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static byte[] record(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2) {
        Iterator<Map.Entry<String, byte[]>> it;
        byte[] bArr3;
        String str2;
        byte[] bArr4;
        String str3;
        byte[] bArr5;
        int i;
        Map.Entry<String, byte[]> entry;
        String str4;
        int i2;
        byte[] bArr6;
        int i3;
        int i4;
        String str5;
        byte[] m0d;
        ArrayList arrayList;
        int m1v;
        String str6 = str;
        byte[] bArr7 = bArr2;
        String str7 = "amd";
        byte[] bArr8 = bArr;
        byte[] m0d2 = m0d(bArr8, "amd");
        String str8 = "is";
        byte[] m0d3 = m0d(m0d2, "is");
        Iterator<Map.Entry<String, byte[]>> it2 = localFeatureCatalog.entries.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<String, byte[]> next = it2.next();
            if (next.getKey().startsWith("A:")) {
                int m1v2 = m1v(next.getValue(), "hero");
                int parseInt = Integer.parseInt(next.getKey().substring(2));
                if (LocalResourceEngine.ownsHero(bArr8, m1v2)) {
                    List<byte[]> array = LocalResourceEngine.array(m0d(m0d3, Integer.toString(m1v2)));
                    Iterator<byte[]> it3 = array.iterator();
                    boolean z = false;
                    while (it3.hasNext()) {
                        if (m1v(it3.next(), "id") == parseInt) {
                            z = true;
                        }
                    }
                    String str9 = "fi";
                    if (z) {
                        it = it2;
                    } else {
                        it = it2;
                        array.add(BsonLite.document("id", Integer.valueOf(parseInt), "fi", false, "r", false, "cl", Collections.emptyList()));
                    }
                    int i5 = 0;
                    while (true) {
                        bArr3 = bArr8;
                        if (i5 >= array.size()) {
                            break;
                        }
                        byte[] bArr9 = array.get(i5);
                        if (m1v(bArr9, "id") == parseInt) {
                            str2 = str7;
                            if (Boolean.TRUE.equals(BsonLite.boolValue(bArr9, str9))) {
                                bArr4 = m0d2;
                                str3 = str8;
                                bArr5 = m0d3;
                                i = i5;
                                entry = next;
                                str4 = str9;
                            } else {
                                Map<Integer, Integer> pairs = LocalAccountFeatures.pairs(m0d(bArr9, "cl"));
                                entry = next;
                                Iterator<byte[]> it4 = LocalResourceEngine.array(m0d(next.getValue(), "targets")).iterator();
                                byte[] bArr10 = bArr3;
                                while (it4.hasNext()) {
                                    Iterator<byte[]> it5 = it4;
                                    byte[] next2 = it4.next();
                                    String str10 = str9;
                                    byte[] m0d4 = m0d(next2, "rule");
                                    byte[] bArr11 = m0d2;
                                    List<Integer> intArrayValues = BsonLite.intArrayValues(bArr7, "heroes");
                                    String str11 = str8;
                                    if ("battle".equals(str6) && intArrayValues.contains(Integer.valueOf(m1v2))) {
                                        List<Integer> intArrayValues2 = BsonLite.intArrayValues(m0d4, "andHeroBattle");
                                        if (!intArrayValues2.isEmpty() && intArrayValues.containsAll(intArrayValues2)) {
                                            i2 = 1;
                                            int i6 = i2;
                                            if ("build".equals(str6)) {
                                                bArr6 = m0d3;
                                                i3 = i5;
                                            } else {
                                                bArr6 = m0d3;
                                                i3 = i5;
                                                if (m1v(m0d4, "cityBuilding") == m1v(bArr7, "bid") && m1v(m0d4, "cityBuilding") > 0) {
                                                    i4 = 1;
                                                    if ("develop".equals(str6) && intArrayValues.contains(Integer.valueOf(m1v2)) && m1v(m0d4, "developLevel") == m1v(bArr7, "dlevel") && m1v(m0d4, "developLevel") > 0) {
                                                        i4 = 1;
                                                    }
                                                    if ("gift".equals(str6) && m1v2 == m1v(bArr7, "hero_id") && m1v(m0d4, "heroGift") > 0 && m1v(bArr7, "fri") > 5) {
                                                        str5 = parseInt + ":" + m1v(next2, "id");
                                                        m0d = m0d(bArr10, "q7EmojiGiftEvidence");
                                                        arrayList = new ArrayList(BsonLite.intArrayValues(m0d, str5));
                                                        m1v = m1v(bArr7, "itemId");
                                                        if (m1v > 0 && !arrayList.contains(Integer.valueOf(m1v))) {
                                                            arrayList.add(Integer.valueOf(m1v));
                                                            bArr10 = BsonLite.withProfileDocument(bArr10, "q7EmojiGiftEvidence", BsonLite.withProfileIntArray(m0d, str5, arrayList));
                                                            i4 = 1;
                                                        }
                                                    }
                                                    if (i4 > 0) {
                                                        int m1v3 = m1v(next2, "id");
                                                        pairs.put(Integer.valueOf(m1v3), Integer.valueOf(Math.min(m1v(next2, "n"), pairs.getOrDefault(Integer.valueOf(m1v3), 0).intValue() + i4)));
                                                    }
                                                    str6 = str;
                                                    bArr7 = bArr2;
                                                    str9 = str10;
                                                    it4 = it5;
                                                    m0d2 = bArr11;
                                                    str8 = str11;
                                                    m0d3 = bArr6;
                                                    i5 = i3;
                                                }
                                            }
                                            i4 = i6;
                                            if ("develop".equals(str6)) {
                                                i4 = 1;
                                            }
                                            if ("gift".equals(str6)) {
                                                str5 = parseInt + ":" + m1v(next2, "id");
                                                m0d = m0d(bArr10, "q7EmojiGiftEvidence");
                                                arrayList = new ArrayList(BsonLite.intArrayValues(m0d, str5));
                                                m1v = m1v(bArr7, "itemId");
                                                if (m1v > 0) {
                                                    arrayList.add(Integer.valueOf(m1v));
                                                    bArr10 = BsonLite.withProfileDocument(bArr10, "q7EmojiGiftEvidence", BsonLite.withProfileIntArray(m0d, str5, arrayList));
                                                    i4 = 1;
                                                }
                                            }
                                            if (i4 > 0) {
                                            }
                                            str6 = str;
                                            bArr7 = bArr2;
                                            str9 = str10;
                                            it4 = it5;
                                            m0d2 = bArr11;
                                            str8 = str11;
                                            m0d3 = bArr6;
                                            i5 = i3;
                                        }
                                    }
                                    i2 = 0;
                                    int i62 = i2;
                                    if ("build".equals(str6)) {
                                    }
                                    i4 = i62;
                                    if ("develop".equals(str6)) {
                                    }
                                    if ("gift".equals(str6)) {
                                    }
                                    if (i4 > 0) {
                                    }
                                    str6 = str;
                                    bArr7 = bArr2;
                                    str9 = str10;
                                    it4 = it5;
                                    m0d2 = bArr11;
                                    str8 = str11;
                                    m0d3 = bArr6;
                                    i5 = i3;
                                }
                                bArr4 = m0d2;
                                str3 = str8;
                                bArr5 = m0d3;
                                str4 = str9;
                                i = i5;
                                array.set(i, BsonLite.withProfileArray(bArr9, "cl", LocalAccountFeatures.pairList(pairs)));
                                bArr8 = bArr10;
                                i5 = i + 1;
                                str6 = str;
                                bArr7 = bArr2;
                                str7 = str2;
                                next = entry;
                                str9 = str4;
                                m0d2 = bArr4;
                                str8 = str3;
                                m0d3 = bArr5;
                            }
                        } else {
                            str2 = str7;
                            bArr4 = m0d2;
                            str3 = str8;
                            bArr5 = m0d3;
                            i = i5;
                            entry = next;
                            str4 = str9;
                        }
                        bArr8 = bArr3;
                        i5 = i + 1;
                        str6 = str;
                        bArr7 = bArr2;
                        str7 = str2;
                        next = entry;
                        str9 = str4;
                        m0d2 = bArr4;
                        str8 = str3;
                        m0d3 = bArr5;
                    }
                    String str12 = str7;
                    byte[] bArr12 = m0d2;
                    String str13 = str8;
                    byte[] bArr13 = m0d3;
                    m0d3 = !array.isEmpty() ? BsonLite.withProfileArray(bArr13, Integer.toString(m1v2), array) : bArr13;
                    bArr8 = bArr3;
                    str6 = str;
                    bArr7 = bArr2;
                    it2 = it;
                    str7 = str12;
                    m0d2 = bArr12;
                    str8 = str13;
                }
            }
        }
        return refresh(BsonLite.withProfileDocument(bArr8, str7, BsonLite.withProfileDocument(m0d2, str8, m0d3)), localFeatureCatalog);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v6 */
    static LocalResourceEngine.Result claim(byte[] bArr, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, byte[] bArr2) {
        String str;
        String str2;
        String str3 = bArr;
        String str4 = "achievementRewardReply";
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(str3);
        int m1v = m1v(bArr2, "h");
        String str5 = "a";
        int m1v2 = m1v(bArr2, "a");
        try {
            byte[] bArr3 = localFeatureCatalog.get("A", Integer.valueOf(m1v2));
            try {
                if (bArr3 == null || m1v(bArr3, "hero") != m1v || !LocalResourceEngine.ownsHero(str3, m1v)) {
                    throw new IllegalArgumentException("Achievement unavailable");
                }
                result.profile = refresh(str3, localFeatureCatalog);
                byte[] m0d = m0d(result.profile, "amd");
                byte[] m0d2 = m0d(m0d, "is");
                List<byte[]> array = LocalResourceEngine.array(m0d(m0d2, Integer.toString(m1v)));
                int i = 0;
                while (true) {
                    str2 = str4;
                    try {
                        if (i >= array.size()) {
                            str = str5;
                            i = -1;
                            break;
                        }
                        str = str5;
                        try {
                            if (m1v(array.get(i), "id") == m1v2) {
                                break;
                            }
                            i++;
                            str4 = str2;
                            str5 = str;
                        } catch (ArithmeticException e) {
                            str3 = str2;
                            LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
                            result2.add(str3, BsonLite.document("r", BsonLite.EMPTY_DOCUMENT, "h", Integer.valueOf(m1v), str, 179));
                            return result2;
                        } catch (IllegalArgumentException e2) {
                            str3 = str2;
                            LocalResourceEngine.Result result22 = new LocalResourceEngine.Result(bArr);
                            result22.add(str3, BsonLite.document("r", BsonLite.EMPTY_DOCUMENT, "h", Integer.valueOf(m1v), str, 179));
                            return result22;
                        }
                    } catch (ArithmeticException e3) {
                        str = str5;
                        str3 = str2;
                        LocalResourceEngine.Result result222 = new LocalResourceEngine.Result(bArr);
                        result222.add(str3, BsonLite.document("r", BsonLite.EMPTY_DOCUMENT, "h", Integer.valueOf(m1v), str, 179));
                        return result222;
                    } catch (IllegalArgumentException e4) {
                        str = str5;
                        str3 = str2;
                        LocalResourceEngine.Result result2222 = new LocalResourceEngine.Result(bArr);
                        result2222.add(str3, BsonLite.document("r", BsonLite.EMPTY_DOCUMENT, "h", Integer.valueOf(m1v), str, 179));
                        return result2222;
                    }
                }
                if (i >= 0 && Boolean.TRUE.equals(BsonLite.boolValue(array.get(i), "fi"))) {
                    if (!Boolean.TRUE.equals(BsonLite.boolValue(array.get(i), "r"))) {
                        LocalGiftEngine.reward(result, localResourceCatalog, bArr3, 1);
                        array.set(i, BsonLite.withProfileBool(array.get(i), "r", true));
                        byte[] withProfileArray = BsonLite.withProfileArray(m0d2, Integer.toString(m1v), array);
                        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(m0d, "he"));
                        int m1v3 = m1v(bArr3, "icon");
                        if (m1v3 > 0 && !arrayList.contains(Integer.valueOf(m1v3))) {
                            arrayList.add(Integer.valueOf(m1v3));
                        }
                        byte[] withProfileIntArray = BsonLite.withProfileIntArray(BsonLite.withProfileDocument(m0d, "is", withProfileArray), "he", arrayList);
                        Map<Integer, Integer> pairs = LocalAccountFeatures.pairs(m0d(withProfileIntArray, "er"));
                        pairs.put(Integer.valueOf(m1v), 1);
                        byte[] withProfileArray2 = BsonLite.withProfileArray(withProfileIntArray, "er", LocalAccountFeatures.pairList(pairs));
                        result.profile = BsonLite.withProfileDocument(result.profile, "amd", withProfileArray2);
                        LocalResourceEngine.syncCurrencies(result);
                        result.add("updateAllAchievement", BsonLite.document("info", withProfileArray2));
                        result.add(str2, BsonLite.document("r", result.reward(), "h", Integer.valueOf(m1v), str, Integer.valueOf(m1v2)));
                        return result;
                    }
                }
                throw new IllegalArgumentException("Achievement not completed or already claimed");
            } catch (ArithmeticException e5) {
            } catch (IllegalArgumentException e6) {
            }
        } catch (ArithmeticException | IllegalArgumentException e7) {
            str3 = "achievementRewardReply";
            str = "a";
        }
    }
}
