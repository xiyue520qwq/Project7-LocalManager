package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class LocalIntelligenceEffects {
    LocalIntelligenceEffects() {
    }

    private static byte[] doc(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m44v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static boolean canCreate(int i, LocalTutorialStore.Progress progress) {
        return canCreate(i, progress, null);
    }

    static boolean canCreate(int i, LocalTutorialStore.Progress progress, byte[] bArr) {
        return i < 1 || i > 4 || progress == null || LocalCityProgress.status(progress, 9 - i, bArr) == 2;
    }

    static byte[] checkAutomatic(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalTutorialStore.Progress progress) {
        String str;
        LocalFeatureCatalog localFeatureCatalog2 = localFeatureCatalog;
        LocalTutorialStore.Progress progress2 = progress;
        if (progress2 == null) {
            return bArr;
        }
        byte[] doc = doc(bArr, "intelligence");
        String str2 = "q7Intelligence";
        byte[] doc2 = doc(bArr, "q7Intelligence");
        List<byte[]> array = LocalResourceEngine.array(doc(doc, "is"));
        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(doc2, "events"));
        int i = 0;
        boolean z = false;
        while (i < array.size()) {
            byte[] bArr2 = array.get(i);
            int m44v = m44v(bArr2, "id");
            if (m44v < 1 || m44v > 4 || canCreate(m44v, progress2, bArr)) {
                str = str2;
            } else {
                str = str2;
                if (!Boolean.TRUE.equals(BsonLite.boolValue(bArr2, "hd")) && !Boolean.TRUE.equals(BsonLite.boolValue(bArr2, "ep"))) {
                    List<byte[]> array2 = LocalResourceEngine.array(doc(bArr2, "afs"));
                    Iterator<Integer> it = BsonLite.intArrayValues(localFeatureCatalog2.get("INT", Integer.valueOf(m44v)), "autoHandleAffects").iterator();
                    while (it.hasNext()) {
                        int intValue = it.next().intValue();
                        Iterator<Integer> it2 = it;
                        array2.add(effect(localFeatureCatalog2, intValue));
                        Iterator<Integer> it3 = BsonLite.intArrayValues(localFeatureCatalog2.get("INT_AFFECT", Integer.valueOf(intValue)), "events").iterator();
                        while (it3.hasNext()) {
                            int intValue2 = it3.next().intValue();
                            if (!arrayList.contains(Integer.valueOf(intValue2))) {
                                arrayList.add(Integer.valueOf(intValue2));
                            }
                        }
                        localFeatureCatalog2 = localFeatureCatalog;
                        it = it2;
                    }
                    array.set(i, BsonLite.withProfileArray(BsonLite.withProfileBool(BsonLite.withProfileBool(bArr2, "hd", true), "op", true), "afs", array2));
                    z = true;
                }
            }
            i++;
            localFeatureCatalog2 = localFeatureCatalog;
            progress2 = progress;
            str2 = str;
        }
        String str3 = str2;
        if (!z) {
            return bArr;
        }
        return BsonLite.withProfileDocument(BsonLite.withProfileDocument(bArr, "intelligence", BsonLite.withProfileArray(doc, "is", array)), str3, BsonLite.withProfileIntArray(doc2, "events", arrayList));
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x039e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static byte[] advanceDay(byte[] bArr, byte[] bArr2, LocalFeatureCatalog localFeatureCatalog, LocalConstructionCatalog localConstructionCatalog, LocalTutorialStore.Progress progress) {
        String str;
        String str2;
        byte[] bArr3;
        String str3;
        byte[] bArr4;
        int i;
        String str4;
        String str5;
        int i2;
        String str6;
        List<byte[]> list;
        int i3;
        int i4;
        boolean z;
        List<byte[]> list2;
        int i5;
        int i6;
        String str7;
        String str8;
        int i7;
        Integer num;
        LocalFeatureCatalog localFeatureCatalog2 = localFeatureCatalog;
        byte[] doc = doc(bArr, "weeknum");
        byte[] doc2 = doc(bArr2, "weeknum");
        int m44v = m44v(doc2, "d");
        if (m44v(doc, "w") != m44v(doc2, "w") || m44v(doc, "d") + 1 != m44v) {
            return bArr2;
        }
        String str9 = "q7Intelligence";
        byte[] doc3 = doc(bArr2, "q7Intelligence");
        String str10 = m44v(doc2, "w") + ":" + m44v;
        String str11 = "effectsDay";
        if (str10.equals(BsonLite.stringValue(doc3, "effectsDay"))) {
            return bArr2;
        }
        byte[] checkAutomatic = checkAutomatic(bArr2, localFeatureCatalog2, progress);
        String str12 = "intelligence";
        byte[] doc4 = doc(checkAutomatic, "intelligence");
        String str13 = "is";
        List<byte[]> array = LocalResourceEngine.array(doc(doc4, "is"));
        int i8 = 0;
        while (i8 < array.size()) {
            byte[] bArr5 = array.get(i8);
            String str14 = str10;
            byte[] bArr6 = localFeatureCatalog2.get("INT", Integer.valueOf(m44v(bArr5, "id")));
            if (bArr6 == null) {
                str2 = str9;
                i2 = m44v;
                str = str11;
                str3 = str12;
                bArr4 = doc4;
                str6 = str13;
                list2 = array;
                i5 = i8;
                z = true;
            } else {
                String str15 = "afs";
                str = str11;
                List<byte[]> array2 = LocalResourceEngine.array(doc(bArr5, "afs"));
                str2 = str9;
                int i9 = 0;
                while (true) {
                    bArr3 = checkAutomatic;
                    str3 = str12;
                    if (i9 >= array2.size()) {
                        break;
                    }
                    array2.set(i9, BsonLite.withProfileInt(array2.get(i9), "ld", m44v(array2.get(i9), "ld") - 1));
                    i9++;
                    checkAutomatic = bArr3;
                    str12 = str3;
                    doc4 = doc4;
                }
                bArr4 = doc4;
                int m44v2 = m44v(bArr6, "lastDay") - (m44v - m44v(bArr5, "day"));
                String str16 = "ep";
                if (m44v2 == 0) {
                    i2 = m44v;
                    if (Boolean.TRUE.equals(BsonLite.boolValue(bArr5, "hd"))) {
                        i = m44v2;
                        str4 = "ep";
                        str5 = "afs";
                    } else if (Boolean.TRUE.equals(BsonLite.boolValue(bArr5, "ep"))) {
                        i = m44v2;
                        str4 = "ep";
                        str5 = "afs";
                        str6 = str13;
                        list = array;
                        i3 = i8;
                        checkAutomatic = bArr3;
                        i4 = i;
                        byte[] withProfileInt = BsonLite.withProfileInt(bArr5, "ld", i4);
                        if (i4 < 0) {
                        }
                        byte[] withProfileArray = BsonLite.withProfileArray(withProfileInt, str5, array2);
                        list2 = list;
                        i5 = i3;
                        list2.set(i5, withProfileArray);
                    } else {
                        Iterator<Integer> it = BsonLite.intArrayValues(bArr6, "notHandleAffects").iterator();
                        byte[] bArr7 = bArr3;
                        while (it.hasNext()) {
                            int intValue = it.next().intValue();
                            Iterator<Integer> it2 = it;
                            byte[] effect = effect(localFeatureCatalog2, intValue);
                            List<Integer> affectedHeroes = affectedHeroes(bArr7, intValue == 7);
                            String str17 = str13;
                            List<byte[]> list3 = array;
                            if (intValue == 6) {
                                ArrayList arrayList = new ArrayList();
                                i7 = i8;
                                byte[] doc5 = doc(doc(bArr7, "city"), "areas");
                                Iterator<String> it3 = BsonLite.keys(doc5).iterator();
                                while (true) {
                                    str8 = str15;
                                    if (!it3.hasNext()) {
                                        break;
                                    }
                                    Iterator<String> it4 = it3;
                                    String next = it3.next();
                                    String str18 = str16;
                                    byte[] doc6 = doc(doc(doc5, next), "bd");
                                    Iterator<String> it5 = BsonLite.keys(doc6).iterator();
                                    while (it5.hasNext()) {
                                        Iterator<String> it6 = it5;
                                        String next2 = it5.next();
                                        int i10 = m44v2;
                                        byte[] bArr8 = doc6;
                                        int m44v3 = m44v(localConstructionCatalog.rule("B", Integer.valueOf(m44v(doc(doc6, next2), "id"))), "type");
                                        if (m44v3 >= 1 && m44v3 <= 3) {
                                            arrayList.add(new String[]{next, next2});
                                        }
                                        m44v2 = i10;
                                        it5 = it6;
                                        doc6 = bArr8;
                                    }
                                    str16 = str18;
                                    str15 = str8;
                                    it3 = it4;
                                }
                                i6 = m44v2;
                                str7 = str16;
                                if (!arrayList.isEmpty()) {
                                    String[] strArr = (String[]) arrayList.get(LocalStoryEnvironment.nextInt(arrayList.size()));
                                    byte[] doc7 = doc(doc5, strArr[0]);
                                    byte[] withProfileInt2 = BsonLite.withProfileInt(BsonLite.withProfileInt(effect, "aid", m44v(doc7, "id")), "bid", m44v(doc(doc(doc7, "bd"), strArr[1]), "id"));
                                    bArr7 = LocalConstructionEngine.destroyByIntelligence(bArr7, localConstructionCatalog, strArr[0], strArr[1]);
                                    effect = withProfileInt2;
                                } else {
                                    effect = BsonLite.document("id", Integer.valueOf(intValue), "uuid", new BsonLite.UuidValue(LocalResourceEngine.uuid()), "ld", Integer.valueOf(m44v(effect, "ld")), "rd", null, "aid", null, "bid", null);
                                }
                            } else {
                                i6 = m44v2;
                                str7 = str16;
                                str8 = str15;
                                i7 = i8;
                                if (intValue == 7 || intValue == 8 || intValue == 9) {
                                    if (intValue == 7) {
                                        num = affectedHeroes.isEmpty() ? null : affectedHeroes.get(LocalStoryEnvironment.nextInt(affectedHeroes.size()));
                                        if (num != null) {
                                            effect = BsonLite.withProfileInt(effect, "hero", num.intValue());
                                        }
                                        affectedHeroes = num == null ? Collections.emptyList() : Collections.singletonList(num);
                                    }
                                    Iterator<Integer> it7 = affectedHeroes.iterator();
                                    while (it7.hasNext()) {
                                        bArr7 = changeHero(bArr7, it7.next().intValue(), intValue == 9 ? "ef" : "cf", intValue == 7 ? -20 : -5);
                                    }
                                } else if (intValue == 15) {
                                    ArrayList arrayList2 = new ArrayList();
                                    for (int i11 = 1; i11 <= 8; i11++) {
                                        if (progress != null && LocalCityProgress.status(progress, i11, bArr7) == 0) {
                                            arrayList2.add(Integer.valueOf(i11));
                                        }
                                    }
                                    num = arrayList2.isEmpty() ? null : (Integer) arrayList2.get(LocalStoryEnvironment.nextInt(arrayList2.size()));
                                    if (num != null) {
                                        effect = BsonLite.withProfileInt(effect, "aid", num.intValue());
                                    }
                                } else if (intValue != 5 && intValue != 23) {
                                    throw new IllegalArgumentException("未实现的原情报负面效果: " + intValue);
                                }
                            }
                            array2.add(effect);
                            localFeatureCatalog2 = localFeatureCatalog;
                            it = it2;
                            str13 = str17;
                            array = list3;
                            i8 = i7;
                            str16 = str7;
                            str15 = str8;
                            m44v2 = i6;
                        }
                        i = m44v2;
                        str4 = str16;
                        str5 = str15;
                        str6 = str13;
                        list = array;
                        i3 = i8;
                        checkAutomatic = bArr7;
                        i4 = i;
                        byte[] withProfileInt3 = BsonLite.withProfileInt(bArr5, "ld", i4);
                        if (i4 < 0) {
                            z = true;
                            withProfileInt3 = BsonLite.withProfileBool(withProfileInt3, str4, true);
                        } else {
                            z = true;
                        }
                        byte[] withProfileArray2 = BsonLite.withProfileArray(withProfileInt3, str5, array2);
                        list2 = list;
                        i5 = i3;
                        list2.set(i5, withProfileArray2);
                    }
                } else {
                    i = m44v2;
                    str4 = "ep";
                    str5 = "afs";
                    i2 = m44v;
                }
                str6 = str13;
                list = array;
                i3 = i8;
                checkAutomatic = bArr3;
                i4 = i;
                byte[] withProfileInt32 = BsonLite.withProfileInt(bArr5, "ld", i4);
                if (i4 < 0) {
                }
                byte[] withProfileArray22 = BsonLite.withProfileArray(withProfileInt32, str5, array2);
                list2 = list;
                i5 = i3;
                list2.set(i5, withProfileArray22);
            }
            i8 = i5 + 1;
            localFeatureCatalog2 = localFeatureCatalog;
            array = list2;
            str10 = str14;
            str9 = str2;
            str11 = str;
            str12 = str3;
            m44v = i2;
            doc4 = bArr4;
            str13 = str6;
        }
        String str19 = str10;
        String str20 = str9;
        byte[] withProfileDocument = BsonLite.withProfileDocument(checkAutomatic, str12, BsonLite.withProfileArray(doc4, str13, array));
        return BsonLite.withProfileDocument(withProfileDocument, str20, BsonLite.withProfileString(doc(withProfileDocument, str20), str11, str19));
    }

    static int patrolExtra(byte[] bArr, int i) {
        Iterator<byte[]> it = LocalResourceEngine.array(doc(doc(bArr, "intelligence"), "is")).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            for (byte[] bArr2 : LocalResourceEngine.array(doc(it.next(), "afs"))) {
                if (m44v(bArr2, "id") == 15 && m44v(bArr2, "ld") > 0 && m44v(bArr2, "aid") == i) {
                    i2 += 6;
                }
            }
        }
        return i2;
    }

    static double monsterRate(byte[] bArr) {
        Iterator<byte[]> it = LocalResourceEngine.array(doc(doc(bArr, "intelligence"), "is")).iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            for (byte[] bArr2 : LocalResourceEngine.array(doc(it.next(), "afs"))) {
                if (m44v(bArr2, "ld") > 0) {
                    if (m44v(bArr2, "id") == 5) {
                        d += 0.15d;
                    }
                    if (m44v(bArr2, "id") == 23) {
                        d += 0.05d;
                    }
                }
            }
        }
        return d;
    }

    private static byte[] effect(LocalFeatureCatalog localFeatureCatalog, int i) {
        int intValue;
        Integer intValue2 = BsonLite.intValue(localFeatureCatalog.get("INT_AFFECT", Integer.valueOf(i)), "expireTime");
        if (intValue2 == null) {
            intValue = 1;
        } else {
            intValue = intValue2.intValue() < 0 ? 99999 : intValue2.intValue();
        }
        return BsonLite.document("id", Integer.valueOf(i), "uuid", new BsonLite.UuidValue(LocalResourceEngine.uuid()), "ld", Integer.valueOf(intValue), "rd", null);
    }

    private static List<Integer> affectedHeroes(byte[] bArr, boolean z) {
        ArrayList arrayList = new ArrayList();
        byte[] doc = doc(bArr, "heromgr");
        String stringValue = BsonLite.stringValue(doc(bArr, "std"), "rt");
        boolean z2 = stringValue != null && (stringValue.equals("5") || stringValue.startsWith("5-"));
        HashSet hashSet = new HashSet(BsonLite.intArrayValues(doc, "fl"));
        for (String str : z ? new String[]{"hrs"} : new String[]{"hrs", "bhrs"}) {
            Iterator<byte[]> it = LocalResourceEngine.array(doc(doc, str)).iterator();
            while (it.hasNext()) {
                int m44v = m44v(it.next(), "0");
                if (!z2 || !hashSet.contains(Integer.valueOf(m44v))) {
                    arrayList.add(Integer.valueOf(m44v));
                }
            }
        }
        return arrayList;
    }

    private static byte[] changeHero(byte[] bArr, int i, String str, int i2) {
        byte[] doc = doc(bArr, "heromgr");
        String[] strArr = {"hrs", "bhrs"};
        for (int i3 = 0; i3 < 2; i3++) {
            String str2 = strArr[i3];
            List<byte[]> array = LocalResourceEngine.array(doc(doc, str2));
            for (int i4 = 0; i4 < array.size(); i4++) {
                if (m44v(array.get(i4), "0") == i) {
                    byte[] doc2 = doc(array.get(i4), "1");
                    array.set(i4, BsonLite.withProfileDocument(array.get(i4), "1", BsonLite.withProfileInt(doc2, str, Math.max(0, m44v(doc2, str) + i2))));
                    return BsonLite.withProfileDocument(bArr, "heromgr", BsonLite.withProfileArray(doc, str2, array));
                }
            }
        }
        return bArr;
    }
}
