package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Predicate;

/* loaded from: classes.dex */
final class LocalEquipmentEngine {
    LocalEquipmentEngine() {
    }

    static boolean handles(String str) {
        return Arrays.asList("equipTreasureBatch", "unequipTreasure", "unequipAllTreasure", "unequipTreasureAllHero", "requestItemHotRankList").contains(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2) {
        LocalResourceEngine.Result result;
        String str2;
        byte[] bArr3;
        byte[] bArr4 = bArr;
        byte[] bArr5 = "pi";
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr4);
        String str3 = "i";
        if ("requestItemHotRankList".equals(str)) {
            result2.add("replyItemHotRankList", BsonLite.document("i", Collections.emptyList()));
            return result2;
        }
        try {
            try {
                if (!handles(str)) {
                    throw new IllegalArgumentException("影装操作尚未实现");
                }
                int value = LocalResourceEngine.value(bArr2, "h");
                final String uuidValue = BsonLite.uuidValue(bArr2, "u");
                if ("unequipTreasureAllHero".equals(str)) {
                    if (uuidValue == null) {
                        throw new IllegalArgumentException("影装编号无效");
                    }
                    byte[] findOwned = findOwned(bArr4, uuidValue);
                    if (findOwned == null) {
                        throw new IllegalArgumentException("未拥有该影装");
                    }
                    itemCost(findOwned, localFeatureCatalog);
                    for (byte[] bArr6 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr4, "heromgr"), "hrs"))) {
                        int value2 = LocalResourceEngine.value(bArr6, "0");
                        byte[] doc = LocalResourceEngine.doc(bArr6, "1");
                        List<byte[]> equipped = equipped(doc);
                        ArrayList arrayList = new ArrayList(equipped);
                        if (arrayList.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalEquipmentEngine$$ExternalSyntheticLambda0
                            @Override // java.util.function.Predicate
                            public final boolean test(Object obj) {
                                boolean equals;
                                equals = uuidValue.equals(BsonLite.uuidValue((byte[]) obj, "u"));
                                return equals;
                            }
                        })) {
                            result2.profile = replace(restoreDetached(result2, equipped, arrayList), value2, doc, arrayList);
                        }
                    }
                    result2.add("unequipTreasureAllHeroReply", BsonLite.document("u", new BsonLite.UuidValue(uuidValue)));
                    LocalTreasurePlanEngine.clearMismatchedBindings(result2, localFeatureCatalog, null);
                    return result2;
                }
                if (!LocalResourceEngine.ownsHero(bArr4, value)) {
                    throw new IllegalArgumentException("未拥有该神器使");
                }
                byte[] profileHeroDocument = BsonLite.profileHeroDocument(bArr4, value);
                List<byte[]> equipped2 = equipped(profileHeroDocument);
                if ("equipTreasureBatch".equals(str)) {
                    String stringValue = BsonLite.stringValue(bArr2, "pi");
                    String str4 = "[0-9a-fA-F]{24}";
                    if (stringValue != null && !stringValue.isEmpty() && !stringValue.matches("[0-9a-fA-F]{24}")) {
                        throw new IllegalArgumentException("影装方案编号无效");
                    }
                    byte[] documentValue = BsonLite.documentValue(bArr2, "i");
                    if (documentValue == null) {
                        throw new IllegalArgumentException("影装列表无效");
                    }
                    ArrayList arrayList2 = new ArrayList();
                    HashSet hashSet = new HashSet();
                    ArrayList arrayList3 = new ArrayList();
                    HashSet hashSet2 = new HashSet();
                    String str5 = "u";
                    int i = 0;
                    for (String str6 : BsonLite.keys(documentValue)) {
                        try {
                            List<byte[]> list = equipped2;
                            if (str6.matches(str4)) {
                                String str7 = str4;
                                if (hashSet2.add(str6.toLowerCase(Locale.ROOT))) {
                                    Integer intValue = BsonLite.intValue(documentValue, str6);
                                    if (intValue != null && intValue.intValue() >= 0) {
                                        if (intValue.intValue() != 0) {
                                            bArr3 = documentValue;
                                            if (!LocalResourceEngine.ownsHero(bArr4, intValue.intValue())) {
                                            }
                                        } else {
                                            bArr3 = documentValue;
                                        }
                                        byte[] find = find(bArr4, intValue.intValue(), str6);
                                        if (find == null) {
                                            throw new IllegalArgumentException("未拥有该影装");
                                        }
                                        HashSet hashSet3 = hashSet2;
                                        int value3 = LocalResourceEngine.value(find, str3);
                                        String str8 = str3;
                                        int value4 = LocalResourceEngine.value(LocalResourceEngine.doc(find, "tr"), "cl");
                                        String str9 = stringValue;
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(value3);
                                        byte[] bArr7 = profileHeroDocument;
                                        sb.append(":");
                                        sb.append(value4);
                                        byte[] bArr8 = localFeatureCatalog.get("F", sb.toString());
                                        if (bArr8 == null || LocalResourceEngine.value(find, "c") != 0) {
                                            throw new IllegalArgumentException("该道具不能装备");
                                        }
                                        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr8, "heroes");
                                        if (!intArrayValues.isEmpty() && !intArrayValues.contains(Integer.valueOf(value))) {
                                            throw new IllegalArgumentException("专属影装与神器使不匹配");
                                        }
                                        if (Boolean.TRUE.equals(BsonLite.boolValue(bArr8, "unique")) && !hashSet.add(Integer.valueOf(value3))) {
                                            throw new IllegalArgumentException("该影装不能重复装备");
                                        }
                                        i = Math.addExact(i, itemCost(find, localFeatureCatalog));
                                        arrayList2.add(find);
                                        arrayList3.add(Arrays.asList(str6.toLowerCase(Locale.ROOT), intValue, find));
                                        bArr4 = bArr;
                                        str4 = str7;
                                        documentValue = bArr3;
                                        hashSet2 = hashSet3;
                                        stringValue = str9;
                                        equipped2 = list;
                                        str3 = str8;
                                        profileHeroDocument = bArr7;
                                    }
                                    throw new IllegalArgumentException("影装来源无效");
                                }
                            }
                            throw new IllegalArgumentException("影装编号无效或重复");
                        } catch (ArithmeticException e) {
                            e = e;
                            bArr5 = bArr;
                            LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(bArr5);
                            result3.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                            return result3;
                        } catch (IllegalArgumentException e2) {
                            e = e2;
                            bArr5 = bArr;
                            LocalResourceEngine.Result result32 = new LocalResourceEngine.Result(bArr5);
                            result32.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                            return result32;
                        }
                    }
                    String str10 = stringValue;
                    HashSet hashSet4 = hashSet2;
                    List<byte[]> list2 = equipped2;
                    byte[] bArr9 = profileHeroDocument;
                    if (i > LocalResourceEngine.value(LocalResourceEngine.doc(bArr9, "ti"), "mc")) {
                        throw new IllegalArgumentException("装备所需 cost 超过神器使上限");
                    }
                    if (str10 == null || str10.isEmpty()) {
                        str2 = str10;
                    } else {
                        str2 = str10;
                        if (!LocalTreasurePlanEngine.matches(bArr, localFeatureCatalog, value, str2.toLowerCase(Locale.ROOT), arrayList2)) {
                            throw new IllegalArgumentException("选择的影装与方案不一致");
                        }
                    }
                    ArrayList arrayList4 = new ArrayList();
                    Iterator<byte[]> it = list2.iterator();
                    while (it.hasNext()) {
                        String str11 = str5;
                        String uuidValue2 = BsonLite.uuidValue(it.next(), str11);
                        HashSet hashSet5 = hashSet4;
                        if (!hashSet5.contains(uuidValue2)) {
                            arrayList4.add(uuidValue2);
                        }
                        str5 = str11;
                        hashSet4 = hashSet5;
                    }
                    result = result2;
                    result.profile = replace(restoreDetached(result, list2, arrayList2), value, bArr9, arrayList2);
                    Object[] objArr = new Object[8];
                    objArr[0] = "h";
                    objArr[1] = Integer.valueOf(value);
                    objArr[2] = str5;
                    objArr[3] = arrayList4;
                    objArr[4] = "e";
                    objArr[5] = arrayList3;
                    objArr[6] = "pi";
                    objArr[7] = str2 == null ? "" : str2.toLowerCase(Locale.ROOT);
                    result.add("equipTreasureBatchReply", BsonLite.document(objArr));
                } else {
                    result = result2;
                    if ("unequipTreasure".equals(str)) {
                        if (uuidValue == null) {
                            throw new IllegalArgumentException("影装编号无效");
                        }
                        if (equipped2.stream().noneMatch(new Predicate() { // from class: com.project7.localmanager.LocalEquipmentEngine$$ExternalSyntheticLambda0
                            @Override // java.util.function.Predicate
                            public final boolean test(Object obj) {
                                boolean equals;
                                equals = uuidValue.equals(BsonLite.uuidValue((byte[]) obj, "u"));
                                return equals;
                            }
                        })) {
                            throw new IllegalArgumentException("该神器使未装备此影装");
                        }
                        ArrayList arrayList5 = new ArrayList(equipped2);
                        arrayList5.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalEquipmentEngine$$ExternalSyntheticLambda0
                            @Override // java.util.function.Predicate
                            public final boolean test(Object obj) {
                                boolean equals;
                                equals = uuidValue.equals(BsonLite.uuidValue((byte[]) obj, "u"));
                                return equals;
                            }
                        });
                        result.profile = replace(restoreDetached(result, equipped2, arrayList5), value, profileHeroDocument, arrayList5);
                        result.add("unequipTreasureReply", BsonLite.document("h", Integer.valueOf(value), "u", new BsonLite.UuidValue(uuidValue), "t", true));
                    } else if ("unequipAllTreasure".equals(str)) {
                        result.profile = replace(restoreDetached(result, equipped2, Collections.emptyList()), value, profileHeroDocument, Collections.emptyList());
                        result.add("unequipAllTreasureReply", BsonLite.document("h", Integer.valueOf(value), "hinv", Collections.emptyList(), "t", true));
                    }
                }
                LocalTreasurePlanEngine.clearMismatchedBindings(result, localFeatureCatalog, null);
                return result;
            } catch (ArithmeticException e3) {
                e = e3;
            } catch (IllegalArgumentException e4) {
                e = e4;
            }
        } catch (ArithmeticException | IllegalArgumentException e5) {
            e = e5;
            bArr5 = bArr4;
        }
    }

    private static List<byte[]> equipped(byte[] bArr) {
        return LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "ti"), "items"));
    }

    static int itemCost(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        int value = LocalResourceEngine.value(bArr, "i");
        byte[] doc = LocalResourceEngine.doc(bArr, "tr");
        byte[] bArr2 = localFeatureCatalog.get("F", value + ":" + LocalResourceEngine.value(doc, "cl"));
        if (bArr2 == null || LocalResourceEngine.value(bArr, "c") != 0) {
            throw new IllegalArgumentException("该道具不能装备");
        }
        int value2 = LocalResourceEngine.value(bArr2, "cost");
        byte[] bArr3 = localFeatureCatalog.get("T", Integer.valueOf(value));
        if (bArr3 != null && !BsonLite.intArrayValues(bArr2, "heroes").isEmpty()) {
            int i = -1;
            int value3 = LocalResourceEngine.value(doc, "x");
            int i2 = 0;
            for (byte[] bArr4 : LocalResourceEngine.array(LocalResourceEngine.doc(bArr3, "stages"))) {
                if (LocalResourceEngine.value(bArr4, "exp") <= value3 && LocalResourceEngine.value(bArr4, "stage") > i) {
                    i = LocalResourceEngine.value(bArr4, "stage");
                    i2 = LocalResourceEngine.value(bArr4, "reduce");
                }
            }
            return Math.max(0, value2 - i2);
        }
        return value2;
    }

    private static byte[] restoreDetached(LocalResourceEngine.Result result, List<byte[]> list, List<byte[]> list2) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterator<byte[]> it = list2.iterator();
        while (it.hasNext()) {
            hashSet.add(BsonLite.uuidValue(it.next(), "u"));
        }
        byte[] doc = LocalResourceEngine.doc(result.profile, "inv");
        List<byte[]> array = LocalResourceEngine.array(LocalResourceEngine.doc(doc, "items"));
        Iterator<byte[]> it2 = array.iterator();
        while (it2.hasNext()) {
            hashSet2.add(BsonLite.uuidValue(it2.next(), "u"));
        }
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (byte[] bArr : list) {
            String uuidValue = BsonLite.uuidValue(bArr, "u");
            if (!hashSet.contains(uuidValue) && hashSet2.add(uuidValue)) {
                array.add(bArr);
                arrayList.add(bArr);
                z = true;
            }
        }
        if (z) {
            result.profile = BsonLite.withProfileDocument(result.profile, "inv", BsonLite.withProfileArray(doc, "items", array));
            result.add("updateItems", BsonLite.document("i", arrayList));
        }
        return result.profile;
    }

    static byte[] findOwned(byte[] bArr, String str) {
        if (str == null) {
            return null;
        }
        byte[] find = find(bArr, 0, str);
        if (find != null) {
            return find;
        }
        Iterator<byte[]> it = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "heromgr"), "hrs")).iterator();
        while (it.hasNext()) {
            for (byte[] bArr2 : equipped(LocalResourceEngine.doc(it.next(), "1"))) {
                if (str.equalsIgnoreCase(BsonLite.uuidValue(bArr2, "u"))) {
                    return bArr2;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static byte[] updateOwned(byte[] bArr, Map<String, byte[]> map) {
        byte[] doc = LocalResourceEngine.doc(bArr, "inv");
        byte[] withProfileDocument = BsonLite.withProfileDocument(bArr, "inv", BsonLite.withProfileArray(doc, "items", updatedItems(LocalResourceEngine.doc(doc, "items"), map)));
        byte[] doc2 = LocalResourceEngine.doc(withProfileDocument, "heromgr");
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(doc2, "hrs"))) {
            byte[] doc3 = LocalResourceEngine.doc(bArr2, "1");
            byte[] doc4 = LocalResourceEngine.doc(doc3, "ti");
            arrayList.add(Arrays.asList(Integer.valueOf(LocalResourceEngine.value(bArr2, "0")), BsonLite.withProfileDocument(doc3, "ti", BsonLite.withProfileArray(doc4, "items", updatedItems(LocalResourceEngine.doc(doc4, "items"), map)))));
        }
        return BsonLite.withProfileDocument(withProfileDocument, "heromgr", BsonLite.withProfileArray(doc2, "hrs", arrayList));
    }

    static byte[] updateRecords(byte[] bArr, Map<String, byte[]> map) {
        byte[] doc = LocalResourceEngine.doc(bArr, "inv");
        byte[] withProfileDocument = BsonLite.withProfileDocument(bArr, "inv", BsonLite.withProfileArray(doc, "items", replacedItems(LocalResourceEngine.doc(doc, "items"), map)));
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(withProfileDocument, "heromgr"), "hrs"))) {
            int value = LocalResourceEngine.value(bArr2, "0");
            byte[] doc2 = LocalResourceEngine.doc(bArr2, "1");
            byte[] doc3 = LocalResourceEngine.doc(doc2, "ti");
            withProfileDocument = BsonLite.withHeroDocument(withProfileDocument, value, BsonLite.withProfileDocument(doc2, "ti", BsonLite.withProfileArray(doc3, "items", replacedItems(LocalResourceEngine.doc(doc3, "items"), map))));
        }
        return withProfileDocument;
    }

    private static List<byte[]> replacedItems(byte[] bArr, Map<String, byte[]> map) {
        List<byte[]> array = LocalResourceEngine.array(bArr);
        for (int i = 0; i < array.size(); i++) {
            byte[] bArr2 = map.get(BsonLite.uuidValue(array.get(i), "u"));
            if (bArr2 != null) {
                array.set(i, bArr2);
            }
        }
        return array;
    }

    private static List<byte[]> updatedItems(byte[] bArr, Map<String, byte[]> map) {
        List<byte[]> array = LocalResourceEngine.array(bArr);
        for (int i = 0; i < array.size(); i++) {
            byte[] bArr2 = array.get(i);
            byte[] bArr3 = map.get(BsonLite.uuidValue(bArr2, "u"));
            if (bArr3 != null) {
                array.set(i, BsonLite.withProfileDocument(bArr2, "tr", bArr3));
            }
        }
        return array;
    }

    static byte[] removeOwned(byte[] bArr, final String str) {
        byte[] doc = LocalResourceEngine.doc(bArr, "inv");
        List<byte[]> array = LocalResourceEngine.array(LocalResourceEngine.doc(doc, "items"));
        array.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalEquipmentEngine$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean equalsIgnoreCase;
                equalsIgnoreCase = str.equalsIgnoreCase(BsonLite.uuidValue((byte[]) obj, "u"));
                return equalsIgnoreCase;
            }
        });
        byte[] withProfileDocument = BsonLite.withProfileDocument(bArr, "inv", BsonLite.withProfileArray(doc, "items", array));
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(withProfileDocument, "heromgr"), "hrs"))) {
            int value = LocalResourceEngine.value(bArr2, "0");
            byte[] doc2 = LocalResourceEngine.doc(bArr2, "1");
            List<byte[]> equipped = equipped(doc2);
            if (equipped.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalEquipmentEngine$$ExternalSyntheticLambda1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean equalsIgnoreCase;
                    equalsIgnoreCase = str.equalsIgnoreCase(BsonLite.uuidValue((byte[]) obj, "u"));
                    return equalsIgnoreCase;
                }
            })) {
                withProfileDocument = replace(withProfileDocument, value, doc2, equipped);
            }
        }
        return withProfileDocument;
    }

    private static byte[] replace(byte[] bArr, int i, byte[] bArr2, List<byte[]> list) {
        return BsonLite.withHeroDocument(bArr, i, BsonLite.withProfileDocument(bArr2, "ti", BsonLite.withProfileArray(LocalResourceEngine.doc(bArr2, "ti"), "items", list)));
    }

    private static byte[] find(byte[] bArr, int i, String str) {
        List<byte[]> equipped;
        if (i == 0) {
            equipped = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "inv"), "items"));
        } else {
            equipped = equipped(BsonLite.profileHeroDocument(bArr, i));
        }
        for (byte[] bArr2 : equipped) {
            if (str.equalsIgnoreCase(BsonLite.uuidValue(bArr2, "u"))) {
                return bArr2;
            }
        }
        return null;
    }
}
