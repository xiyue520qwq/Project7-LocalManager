package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Predicate;

/* loaded from: classes.dex */
final class LocalTreasurePlanEngine {
    static final int MAX_PLANS = 10;

    LocalTreasurePlanEngine() {
    }

    static boolean handles(String str) {
        return Arrays.asList("requestSaveTreasurePlan", "removeTreasurePlan", "requestUseTreasurePlan", "requestUnuseTreasurePlan").contains(str);
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        try {
            if (!handles(str)) {
                throw new IllegalArgumentException("影装方案操作尚未实现");
            }
            final String uuidValue = BsonLite.uuidValue(bArr2, "id");
            if (uuidValue == null) {
                throw new IllegalArgumentException("影装方案编号无效");
            }
            Map<String, byte[]> plans = plans(bArr);
            Map<Integer, String> bindings = bindings(bArr);
            if ("requestSaveTreasurePlan".equals(str)) {
                if (!plans.containsKey(uuidValue) && plans.size() >= MAX_PLANS) {
                    throw new IllegalArgumentException("最多保存 10 个影装方案");
                }
                String stringValue = BsonLite.stringValue(bArr2, "n");
                Integer intValue = BsonLite.intValue(bArr2, "zc");
                if (stringValue == null || stringValue.trim().isEmpty() || stringValue.length() > 256) {
                    throw new IllegalArgumentException("请输入有效的方案名称");
                }
                if (intValue == null || (intValue.intValue() != 0 && intValue.intValue() != 2 && intValue.intValue() != 4)) {
                    throw new IllegalArgumentException("专属影装占位 cost 无效");
                }
                byte[] documentValue = BsonLite.documentValue(bArr2, "i");
                if (documentValue == null) {
                    throw new IllegalArgumentException("影装方案列表无效");
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                ArrayList arrayList = new ArrayList();
                Iterator<String> it = BsonLite.keys(documentValue).iterator();
                int i = 0;
                while (it.hasNext()) {
                    String uuidValue2 = BsonLite.uuidValue(documentValue, it.next());
                    byte[] findOwned = LocalEquipmentEngine.findOwned(bArr, uuidValue2);
                    if (uuidValue2 == null || findOwned == null || !linkedHashSet.add(uuidValue2)) {
                        throw new IllegalArgumentException("方案包含未拥有或重复的影装");
                    }
                    int itemCost = LocalEquipmentEngine.itemCost(findOwned, localFeatureCatalog);
                    if (intValue.intValue() <= 0 || !isExclusive(findOwned, localFeatureCatalog)) {
                        byte[] bArr3 = documentValue;
                        arrayList.add(new BsonLite.UuidValue(uuidValue2));
                        if (!isExclusive(findOwned, localFeatureCatalog)) {
                            i = Math.addExact(i, itemCost);
                        }
                        documentValue = bArr3;
                    }
                }
                if (arrayList.isEmpty() && intValue.intValue() == 0) {
                    throw new IllegalArgumentException("请选择方案中的影装");
                }
                byte[] document = BsonLite.document("name", stringValue.trim(), "treasure", arrayList, "zhuanshu_cost", intValue, "cost", Integer.valueOf(i));
                plans.put(uuidValue, document);
                result.profile = store(bArr, plans, bindings);
                saveReply(result, uuidValue, document);
                clearMismatchedBindings(result, localFeatureCatalog, uuidValue);
            } else if ("removeTreasurePlan".equals(str)) {
                if (plans.remove(uuidValue) == null) {
                    throw new IllegalArgumentException("影装方案不存在");
                }
                Collection<String> values = bindings.values();
                Objects.requireNonNull(uuidValue);
                values.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalTreasurePlanEngine$$ExternalSyntheticLambda0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return uuidValue.equals((String) obj);
                    }
                });
                result.profile = store(bArr, plans, bindings);
                byte[] doc = LocalResourceEngine.doc(result.profile, "heromgr");
                result.add("replyRemoveTreasurePlan", BsonLite.document("idx", new BsonLite.UuidValue(uuidValue), "htp", new BsonLite.ArrayValue(LocalResourceEngine.doc(doc, "htp")), "tpi", new BsonLite.ArrayValue(LocalResourceEngine.doc(doc, "tpi"))));
            } else {
                int value = LocalResourceEngine.value(bArr2, "h");
                if (!LocalResourceEngine.ownsHero(bArr, value)) {
                    throw new IllegalArgumentException("未拥有该神器使");
                }
                if (!plans.containsKey(uuidValue)) {
                    throw new IllegalArgumentException("影装方案不存在");
                }
                if ("requestUseTreasurePlan".equals(str)) {
                    if (!matches(bArr, localFeatureCatalog, value, uuidValue, equipped(bArr, value))) {
                        throw new IllegalArgumentException("当前装备与方案不一致，请先应用方案");
                    }
                    bindings.put(Integer.valueOf(value), uuidValue);
                    result.profile = store(bArr, plans, bindings);
                    result.add("replyUseTreasurePlan", BsonLite.document("h", Integer.valueOf(value), "id", new BsonLite.UuidValue(uuidValue)));
                } else {
                    if (bindings.containsKey(Integer.valueOf(value)) && !uuidValue.equals(bindings.get(Integer.valueOf(value)))) {
                        throw new IllegalArgumentException("该神器使绑定的是其他影装方案");
                    }
                    bindings.remove(Integer.valueOf(value));
                    result.profile = store(bArr, plans, bindings);
                    result.add("replyUnuseTreasurePlan", BsonLite.document("h", Integer.valueOf(value), "id", new BsonLite.UuidValue(uuidValue)));
                }
            }
            return result;
        } catch (ArithmeticException | IllegalArgumentException e) {
            LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
            result2.add("showMessageStr", BsonLite.document("m", e.getMessage()));
            return result2;
        }
    }

    static boolean matches(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, int i, String str, List<byte[]> list) {
        byte[] bArr2 = plans(bArr).get(str);
        if (bArr2 == null) {
            return false;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(ids(LocalResourceEngine.doc(bArr2, "treasure")));
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        int value = LocalResourceEngine.value(bArr2, "zhuanshu_cost");
        if (linkedHashSet.isEmpty() && value == 0) {
            return false;
        }
        int i2 = 0;
        for (byte[] bArr3 : list) {
            if (value > 0 && isExclusive(bArr3, localFeatureCatalog)) {
                if (!BsonLite.intArrayValues(localFeatureCatalog.get("F", LocalResourceEngine.value(bArr3, "i") + ":" + LocalResourceEngine.value(LocalResourceEngine.doc(bArr3, "tr"), "cl")), "heroes").contains(Integer.valueOf(i)) || LocalEquipmentEngine.itemCost(bArr3, localFeatureCatalog) != value) {
                    return false;
                }
                i2++;
            } else {
                linkedHashSet2.add(BsonLite.uuidValue(bArr3, "u"));
            }
        }
        if (linkedHashSet.equals(linkedHashSet2)) {
            return value == 0 || i2 == 1;
        }
        return false;
    }

    static void clearMismatchedBindings(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, String str) {
        Map<Integer, String> bindings = bindings(result.profile);
        Iterator it = new ArrayList(bindings.entrySet()).iterator();
        boolean z = false;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (str == null || str.equals(entry.getValue())) {
                if (!matches(result.profile, localFeatureCatalog, ((Integer) entry.getKey()).intValue(), (String) entry.getValue(), equipped(result.profile, ((Integer) entry.getKey()).intValue()))) {
                    bindings.remove(entry.getKey());
                    result.add("replyUnuseTreasurePlan", BsonLite.document("h", entry.getKey(), "id", new BsonLite.UuidValue((String) entry.getValue())));
                    z = true;
                }
            }
        }
        if (z) {
            result.profile = store(result.profile, plans(result.profile), bindings);
        }
    }

    static void pruneRemoved(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, String str) {
        Map<String, byte[]> plans = plans(result.profile);
        ArrayList<String> arrayList = new ArrayList();
        for (Map.Entry<String, byte[]> entry : plans.entrySet()) {
            List<String> ids = ids(LocalResourceEngine.doc(entry.getValue(), "treasure"));
            if (ids.remove(str)) {
                ArrayList arrayList2 = new ArrayList();
                int i = 0;
                for (String str2 : ids) {
                    byte[] findOwned = LocalEquipmentEngine.findOwned(result.profile, str2);
                    if (findOwned != null) {
                        arrayList2.add(new BsonLite.UuidValue(str2));
                        if (!isExclusive(findOwned, localFeatureCatalog)) {
                            i = Math.addExact(i, LocalEquipmentEngine.itemCost(findOwned, localFeatureCatalog));
                        }
                    }
                }
                entry.setValue(BsonLite.withProfileInt(BsonLite.withProfileArray(entry.getValue(), "treasure", arrayList2), "cost", i));
                arrayList.add(entry.getKey());
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        result.profile = store(result.profile, plans, bindings(result.profile));
        for (String str3 : arrayList) {
            saveReply(result, str3, plans.get(str3));
        }
        clearMismatchedBindings(result, localFeatureCatalog, null);
    }

    private static void saveReply(LocalResourceEngine.Result result, String str, byte[] bArr) {
        result.add("replySaveTreasurePlan", BsonLite.document("idx", new BsonLite.UuidValue(str), "d", bArr, "tpi", new BsonLite.ArrayValue(LocalResourceEngine.doc(LocalResourceEngine.doc(result.profile, "heromgr"), "tpi"))));
    }

    static Map<String, byte[]> plans(byte[] bArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "heromgr"), "tp"))) {
            String uuidValue = BsonLite.uuidValue(bArr2, "0");
            byte[] documentValue = BsonLite.documentValue(bArr2, "1");
            if (uuidValue != null && documentValue != null) {
                linkedHashMap.put(uuidValue, documentValue);
            }
        }
        return linkedHashMap;
    }

    static Map<Integer, String> bindings(byte[] bArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "heromgr"), "htp"))) {
            Integer intValue = BsonLite.intValue(bArr2, "0");
            String uuidValue = BsonLite.uuidValue(bArr2, "1");
            if (intValue != null && uuidValue != null) {
                linkedHashMap.put(intValue, uuidValue);
            }
        }
        return linkedHashMap;
    }

    private static byte[] store(byte[] bArr, Map<String, byte[]> map, Map<Integer, String> map2) {
        byte[] doc = LocalResourceEngine.doc(bArr, "heromgr");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        HashSet hashSet = new HashSet();
        byte[] doc2 = LocalResourceEngine.doc(doc, "tpi");
        int i = 0;
        while (true) {
            BsonLite.UuidValue uuidValue = null;
            if (i >= MAX_PLANS) {
                break;
            }
            String uuidValue2 = BsonLite.uuidValue(doc2, Integer.toString(i));
            if (uuidValue2 != null && map.containsKey(uuidValue2) && hashSet.add(uuidValue2)) {
                uuidValue = new BsonLite.UuidValue(uuidValue2);
            }
            arrayList3.add(uuidValue);
            i++;
        }
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            arrayList.add(Arrays.asList(new BsonLite.UuidValue(entry.getKey()), entry.getValue()));
            if (hashSet.add(entry.getKey())) {
                int indexOf = arrayList3.indexOf(null);
                if (indexOf < 0) {
                    throw new IllegalArgumentException("影装方案数量超过上限");
                }
                arrayList3.set(indexOf, new BsonLite.UuidValue(entry.getKey()));
            }
        }
        for (Map.Entry<Integer, String> entry2 : map2.entrySet()) {
            arrayList2.add(Arrays.asList(entry2.getKey(), new BsonLite.UuidValue(entry2.getValue())));
        }
        return BsonLite.withProfileDocument(bArr, "heromgr", BsonLite.withProfileArray(BsonLite.withProfileArray(BsonLite.withProfileArray(doc, "tp", arrayList), "htp", arrayList2), "tpi", arrayList3));
    }

    private static List<String> ids(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = BsonLite.keys(bArr).iterator();
        while (it.hasNext()) {
            String uuidValue = BsonLite.uuidValue(bArr, it.next());
            if (uuidValue != null) {
                arrayList.add(uuidValue);
            }
        }
        return arrayList;
    }

    private static List<byte[]> equipped(byte[] bArr, int i) {
        return LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(BsonLite.profileHeroDocument(bArr, i), "ti"), "items"));
    }

    private static boolean isExclusive(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        return localFeatureCatalog.get("T", Integer.valueOf(LocalResourceEngine.value(bArr, "i"))) != null;
    }
}
