package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalTreasureUpgradeEngine {
    LocalTreasureUpgradeEngine() {
    }

    static boolean handles(String str) {
        return Arrays.asList("changeTreasureForbid", "upgradeTreasure", "upgradeTreasureTargetLv", "upgradeAllTreasure").contains(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 31, insn: 0x0471: MOVE (r9 I:??[OBJECT, ARRAY]) = (r31 I:??[OBJECT, ARRAY]), block:B:266:0x0461 */
    /* JADX WARN: Removed duplicated region for block: B:67:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x052b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x04ef  */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v30, types: [long] */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v43 */
    /* JADX WARN: Type inference failed for: r10v44 */
    /* JADX WARN: Type inference failed for: r10v45 */
    /* JADX WARN: Type inference failed for: r10v47 */
    /* JADX WARN: Type inference failed for: r10v48 */
    /* JADX WARN: Type inference failed for: r10v49 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v50 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r14v1, types: [com.project7.localmanager.LocalResourceEngine$Result] */
    /* JADX WARN: Type inference failed for: r24v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r3v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v71 */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v40, types: [com.project7.localmanager.LocalResourceEngine$Result] */
    /* JADX WARN: Type inference failed for: r7v1, types: [int] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v22, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Type inference failed for: r7v35 */
    /* JADX WARN: Type inference failed for: r7v36 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2) {
        Object obj;
        int i;
        String str2;
        String str3;
        Object obj2;
        String str4;
        String str5;
        Object obj3;
        String str6;
        LinkedHashMap linkedHashMap;
        ?? equals;
        Object obj4;
        String str7;
        String str8;
        String str9;
        String str10;
        LocalResourceEngine.Result result;
        String str11;
        boolean z;
        Map.Entry entry;
        Iterator it;
        byte[] owned;
        byte[] doc;
        String str12;
        Object[] objArr;
        ?? r3 = bArr2;
        String str13 = "l";
        String str14 = "f";
        ?? r10 = "upgradeAllTreasure";
        String str15 = "changeTreasureForbid";
        String str16 = "tr";
        String str17 = "i";
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
        ?? uuidValue = BsonLite.uuidValue(r3, "s");
        ?? value = LocalResourceEngine.value(r3, "h");
        try {
            try {
                if (!handles(str)) {
                    throw new IllegalArgumentException("影装操作尚未实现");
                }
                if (value != 0 && !LocalResourceEngine.ownsHero(bArr, value)) {
                    throw new IllegalArgumentException("未拥有该神器使");
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                obj = "r";
                try {
                    linkedHashMap = new LinkedHashMap();
                    equals = "changeTreasureForbid".equals(str);
                    obj3 = "s";
                } catch (ArithmeticException e) {
                    e = e;
                    i = value;
                    str2 = "l";
                    str3 = "f";
                    str14 = "upgradeAllTreasure";
                    obj2 = "changeTreasureForbid";
                    str4 = "tr";
                    str5 = "i";
                    obj3 = "s";
                    str15 = "Reply";
                    r10 = "upgradeAllTreasureReply";
                    r3 = "changeTreasureForbidReply";
                    str6 = uuidValue;
                    value = obj2;
                    str13 = str6;
                    ?? result3 = new LocalResourceEngine.Result(bArr);
                    result3.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    if (str13 != null) {
                    }
                    if (!value.equals(str)) {
                    }
                } catch (IllegalArgumentException e2) {
                    e = e2;
                    i = value;
                    str2 = "l";
                    str3 = "f";
                    str14 = "upgradeAllTreasure";
                    obj2 = "changeTreasureForbid";
                    str4 = "tr";
                    str5 = "i";
                    obj3 = "s";
                    str15 = "Reply";
                    r10 = "upgradeAllTreasureReply";
                    r3 = "changeTreasureForbidReply";
                    str6 = uuidValue;
                    value = obj2;
                    str13 = str6;
                    ?? result32 = new LocalResourceEngine.Result(bArr);
                    result32.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    if (str13 != null) {
                    }
                    if (!value.equals(str)) {
                    }
                }
                try {
                    if (equals != 0) {
                        try {
                            byte[] doc2 = LocalResourceEngine.doc(owned(bArr, localFeatureCatalog, uuidValue, 0), "tr");
                            equals = "changeTreasureForbid";
                            z = !Boolean.TRUE.equals(BsonLite.boolValue(doc2, "f"));
                            linkedHashMap2.put(uuidValue, BsonLite.withProfileBool(doc2, "f", z));
                            str11 = uuidValue;
                            i = value;
                            str2 = "l";
                            str3 = "f";
                            str10 = "upgradeAllTreasure";
                            str4 = "tr";
                            str5 = "i";
                            result = result2;
                            r10 = 0;
                            value = value;
                        } catch (ArithmeticException e3) {
                            e = e3;
                            i = value;
                            str2 = "l";
                            str3 = "f";
                            str14 = "upgradeAllTreasure";
                            obj2 = "changeTreasureForbid";
                            str4 = "tr";
                            str5 = "i";
                            str15 = "Reply";
                            r10 = "upgradeAllTreasureReply";
                            r3 = "changeTreasureForbidReply";
                            str6 = uuidValue;
                            value = obj2;
                            str13 = str6;
                            ?? result322 = new LocalResourceEngine.Result(bArr);
                            result322.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                            String str18 = str13 != null ? "000000000000000000000000" : str13;
                            if (!value.equals(str)) {
                                result322.add(r3, BsonLite.document(obj3, new BsonLite.UuidValue(str18), obj, Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(LocalResourceEngine.doc(LocalEquipmentEngine.findOwned(bArr, str13), str4), str3)))));
                                return result322;
                            }
                            if (str14.equals(str)) {
                                result322.add(r10, BsonLite.document("h", Integer.valueOf(i), str5, BsonLite.EMPTY_DOCUMENT));
                                return result322;
                            }
                            if (!handles(str)) {
                                return result322;
                            }
                            result322.add(str + str15, BsonLite.document("h", -1, obj3, new BsonLite.UuidValue(str18), str2, 0));
                            return result322;
                        } catch (IllegalArgumentException e4) {
                            e = e4;
                            i = value;
                            str2 = "l";
                            str3 = "f";
                            str14 = "upgradeAllTreasure";
                            obj2 = "changeTreasureForbid";
                            str4 = "tr";
                            str5 = "i";
                            str15 = "Reply";
                            r10 = "upgradeAllTreasureReply";
                            r3 = "changeTreasureForbidReply";
                            str6 = uuidValue;
                            value = obj2;
                            str13 = str6;
                            ?? result3222 = new LocalResourceEngine.Result(bArr);
                            result3222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                            if (str13 != null) {
                            }
                            if (!value.equals(str)) {
                            }
                        }
                    } else {
                        Object obj5 = "changeTreasureForbid";
                        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                        str3 = "f";
                        str14 = "lv";
                        try {
                            if (!"upgradeAllTreasure".equals(str)) {
                                str10 = "upgradeAllTreasure";
                                result = result2;
                                Integer valueOf = Integer.valueOf("upgradeTreasure".equals(str) ? Math.addExact(LocalResourceEngine.value(LocalResourceEngine.doc(owned(bArr, localFeatureCatalog, uuidValue, value), "tr"), "lv"), 1) : BsonLite.intValue(r3, "l").intValue());
                                if (valueOf == null) {
                                    throw new IllegalArgumentException("强化等级无效");
                                }
                                linkedHashMap3.put(uuidValue, valueOf);
                            } else {
                                if (value == 0) {
                                    throw new IllegalArgumentException("请选择神器使");
                                }
                                try {
                                    byte[] documentValue = BsonLite.documentValue(r3, "i");
                                    if (documentValue == null || BsonLite.keys(documentValue).isEmpty()) {
                                        throw new IllegalArgumentException("请选择需要强化的影装");
                                    }
                                    r10 = "upgradeAllTreasure";
                                    for (String str19 : BsonLite.keys(documentValue)) {
                                        Object obj6 = r10;
                                        LocalResourceEngine.Result result4 = result2;
                                        Integer intValue = BsonLite.intValue(documentValue, str19);
                                        byte[] bArr3 = documentValue;
                                        if (!str19.matches("[0-9a-fA-F]{24}") || intValue == null || linkedHashMap3.put(str19.toLowerCase(Locale.ROOT), intValue) != null) {
                                            throw new IllegalArgumentException("影装强化列表无效");
                                        }
                                        documentValue = bArr3;
                                        result2 = result4;
                                        r10 = obj6;
                                    }
                                    str10 = r10;
                                    result = result2;
                                } catch (ArithmeticException e5) {
                                    e = e5;
                                    i = value;
                                    str2 = "l";
                                    str8 = uuidValue;
                                    str7 = r10;
                                    obj4 = obj5;
                                    str14 = str7;
                                    str4 = str16;
                                    str5 = str17;
                                    str15 = "Reply";
                                    r10 = "upgradeAllTreasureReply";
                                    r3 = "changeTreasureForbidReply";
                                    value = obj4;
                                    str6 = str8;
                                    str13 = str6;
                                    ?? result32222 = new LocalResourceEngine.Result(bArr);
                                    result32222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    if (str13 != null) {
                                    }
                                    if (!value.equals(str)) {
                                    }
                                } catch (IllegalArgumentException e6) {
                                    e = e6;
                                    i = value;
                                    str2 = "l";
                                    str8 = uuidValue;
                                    str7 = r10;
                                    obj4 = obj5;
                                    str14 = str7;
                                    str4 = str16;
                                    str5 = str17;
                                    str15 = "Reply";
                                    r10 = "upgradeAllTreasureReply";
                                    r3 = "changeTreasureForbidReply";
                                    value = obj4;
                                    str6 = str8;
                                    str13 = str6;
                                    ?? result322222 = new LocalResourceEngine.Result(bArr);
                                    result322222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    if (str13 != null) {
                                    }
                                    if (!value.equals(str)) {
                                    }
                                }
                            }
                            Iterator it2 = linkedHashMap3.entrySet().iterator();
                            long j = 0;
                            String str20 = uuidValue;
                            int i2 = value;
                            while (it2.hasNext()) {
                                try {
                                    entry = (Map.Entry) it2.next();
                                    it = it2;
                                    owned = owned(bArr, localFeatureCatalog, (String) entry.getKey(), i2);
                                    str2 = str13;
                                    try {
                                        doc = LocalResourceEngine.doc(owned, str16);
                                        str4 = str16;
                                    } catch (ArithmeticException e7) {
                                        e = e7;
                                        i = i2;
                                        str4 = str16;
                                        str5 = str17;
                                        str13 = str20;
                                        str15 = "Reply";
                                        r10 = "upgradeAllTreasureReply";
                                        r3 = "changeTreasureForbidReply";
                                        value = obj5;
                                        str14 = str10;
                                        ?? result3222222 = new LocalResourceEngine.Result(bArr);
                                        result3222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                        if (str13 != null) {
                                        }
                                        if (!value.equals(str)) {
                                        }
                                    } catch (IllegalArgumentException e8) {
                                        e = e8;
                                        i = i2;
                                        str4 = str16;
                                        str5 = str17;
                                        str13 = str20;
                                        str15 = "Reply";
                                        r10 = "upgradeAllTreasureReply";
                                        r3 = "changeTreasureForbidReply";
                                        value = obj5;
                                        str14 = str10;
                                        ?? result32222222 = new LocalResourceEngine.Result(bArr);
                                        result32222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                        if (str13 != null) {
                                        }
                                        if (!value.equals(str)) {
                                        }
                                    }
                                } catch (ArithmeticException e9) {
                                    e = e9;
                                    i = i2;
                                    str2 = str13;
                                    str4 = str16;
                                    str5 = str17;
                                    str13 = str20;
                                    str15 = "Reply";
                                    r10 = "upgradeAllTreasureReply";
                                    r3 = "changeTreasureForbidReply";
                                    value = obj5;
                                    str14 = str10;
                                    ?? result322222222 = new LocalResourceEngine.Result(bArr);
                                    result322222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    if (str13 != null) {
                                    }
                                    if (!value.equals(str)) {
                                    }
                                } catch (IllegalArgumentException e10) {
                                    e = e10;
                                    i = i2;
                                    str2 = str13;
                                    str4 = str16;
                                    str5 = str17;
                                    str13 = str20;
                                    str15 = "Reply";
                                    r10 = "upgradeAllTreasureReply";
                                    r3 = "changeTreasureForbidReply";
                                    value = obj5;
                                    str14 = str10;
                                    ?? result3222222222 = new LocalResourceEngine.Result(bArr);
                                    result3222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    if (str13 != null) {
                                    }
                                    if (!value.equals(str)) {
                                    }
                                }
                                try {
                                    int value2 = LocalResourceEngine.value(doc, "lv");
                                    i = i2;
                                    try {
                                        int intValue2 = ((Integer) entry.getValue()).intValue();
                                        str11 = str20;
                                        if (value2 >= 1 && intValue2 > value2) {
                                            try {
                                                if (intValue2 <= LocalResourceEngine.value(bArr, "level")) {
                                                    int value3 = LocalResourceEngine.value(localFeatureCatalog.get("F", LocalResourceEngine.value(owned, str17) + ":" + LocalResourceEngine.value(doc, "cl")), "cost");
                                                    int i3 = value2;
                                                    long j2 = j;
                                                    while (i3 < intValue2) {
                                                        str5 = str17;
                                                        try {
                                                            List<Integer> intArrayValues = BsonLite.intArrayValues(localFeatureCatalog.get("U", Integer.valueOf(i3)), "costs");
                                                            if (value3 < 1 || value3 > intArrayValues.size()) {
                                                                throw new IllegalArgumentException("缺少该等级的原版强化配置");
                                                            }
                                                            long addExact = Math.addExact(j2, intArrayValues.get(value3 - 1).intValue());
                                                            i3++;
                                                            value3 = value3;
                                                            str17 = str5;
                                                            j2 = addExact;
                                                        } catch (ArithmeticException e11) {
                                                            e = e11;
                                                            str15 = "Reply";
                                                            r10 = "upgradeAllTreasureReply";
                                                            r3 = "changeTreasureForbidReply";
                                                            value = obj5;
                                                            str14 = str10;
                                                            str13 = str11;
                                                            ?? result32222222222 = new LocalResourceEngine.Result(bArr);
                                                            result32222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                                            if (str13 != null) {
                                                            }
                                                            if (!value.equals(str)) {
                                                            }
                                                        } catch (IllegalArgumentException e12) {
                                                            e = e12;
                                                            str15 = "Reply";
                                                            r10 = "upgradeAllTreasureReply";
                                                            r3 = "changeTreasureForbidReply";
                                                            value = obj5;
                                                            str14 = str10;
                                                            str13 = str11;
                                                            ?? result322222222222 = new LocalResourceEngine.Result(bArr);
                                                            result322222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                                            if (str13 != null) {
                                                            }
                                                            if (!value.equals(str)) {
                                                            }
                                                        }
                                                    }
                                                    linkedHashMap.put((String) entry.getKey(), Integer.valueOf(intValue2));
                                                    linkedHashMap2.put((String) entry.getKey(), BsonLite.withProfileInt(doc, "lv", intValue2));
                                                    it2 = it;
                                                    str13 = str2;
                                                    str16 = str4;
                                                    str20 = str11;
                                                    i2 = i;
                                                    str17 = str17;
                                                    j = j2;
                                                }
                                            } catch (ArithmeticException e13) {
                                                e = e13;
                                                str5 = str17;
                                                str15 = "Reply";
                                                r10 = "upgradeAllTreasureReply";
                                                r3 = "changeTreasureForbidReply";
                                                value = obj5;
                                                str14 = str10;
                                                str13 = str11;
                                                ?? result3222222222222 = new LocalResourceEngine.Result(bArr);
                                                result3222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                                if (str13 != null) {
                                                }
                                                if (!value.equals(str)) {
                                                }
                                            } catch (IllegalArgumentException e14) {
                                                e = e14;
                                                str5 = str17;
                                                str15 = "Reply";
                                                r10 = "upgradeAllTreasureReply";
                                                r3 = "changeTreasureForbidReply";
                                                value = obj5;
                                                str14 = str10;
                                                str13 = str11;
                                                ?? result32222222222222 = new LocalResourceEngine.Result(bArr);
                                                result32222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                                if (str13 != null) {
                                                }
                                                if (!value.equals(str)) {
                                                }
                                            }
                                        }
                                        throw new IllegalArgumentException("强化等级不能超过指挥使等级，且必须高于当前等级");
                                    } catch (ArithmeticException e15) {
                                        e = e15;
                                        str5 = str17;
                                        str13 = str20;
                                        str15 = "Reply";
                                        r10 = "upgradeAllTreasureReply";
                                        r3 = "changeTreasureForbidReply";
                                        value = obj5;
                                        str14 = str10;
                                        ?? result322222222222222 = new LocalResourceEngine.Result(bArr);
                                        result322222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                        if (str13 != null) {
                                        }
                                        if (!value.equals(str)) {
                                        }
                                    } catch (IllegalArgumentException e16) {
                                        e = e16;
                                        str5 = str17;
                                        str13 = str20;
                                        str15 = "Reply";
                                        r10 = "upgradeAllTreasureReply";
                                        r3 = "changeTreasureForbidReply";
                                        value = obj5;
                                        str14 = str10;
                                        ?? result3222222222222222 = new LocalResourceEngine.Result(bArr);
                                        result3222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                        if (str13 != null) {
                                        }
                                        if (!value.equals(str)) {
                                        }
                                    }
                                } catch (ArithmeticException e17) {
                                    e = e17;
                                    i = i2;
                                    str5 = str17;
                                    str13 = str20;
                                    str15 = "Reply";
                                    r10 = "upgradeAllTreasureReply";
                                    r3 = "changeTreasureForbidReply";
                                    value = obj5;
                                    str14 = str10;
                                    ?? result32222222222222222 = new LocalResourceEngine.Result(bArr);
                                    result32222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    if (str13 != null) {
                                    }
                                    if (!value.equals(str)) {
                                    }
                                } catch (IllegalArgumentException e18) {
                                    e = e18;
                                    i = i2;
                                    str5 = str17;
                                    str13 = str20;
                                    str15 = "Reply";
                                    r10 = "upgradeAllTreasureReply";
                                    r3 = "changeTreasureForbidReply";
                                    value = obj5;
                                    str14 = str10;
                                    ?? result322222222222222222 = new LocalResourceEngine.Result(bArr);
                                    result322222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    if (str13 != null) {
                                    }
                                    if (!value.equals(str)) {
                                    }
                                }
                            }
                            str11 = str20;
                            i = i2;
                            str2 = str13;
                            str4 = str16;
                            str5 = str17;
                            if (j > LocalResourceEngine.value(bArr, "money")) {
                                throw new IllegalArgumentException("金币不足");
                            }
                            z = false;
                            value = i2;
                            r10 = j;
                            equals = obj5;
                        } catch (ArithmeticException e19) {
                            e = e19;
                            i = value;
                            str2 = "l";
                            str4 = "tr";
                            str5 = "i";
                            str15 = "Reply";
                            r10 = "upgradeAllTreasureReply";
                            r3 = "changeTreasureForbidReply";
                            value = obj5;
                            str14 = str9;
                            str6 = uuidValue;
                            str13 = str6;
                            ?? result3222222222222222222 = new LocalResourceEngine.Result(bArr);
                            result3222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                            if (str13 != null) {
                            }
                            if (!value.equals(str)) {
                            }
                        } catch (IllegalArgumentException e20) {
                            e = e20;
                            i = value;
                            str2 = "l";
                            str4 = "tr";
                            str5 = "i";
                            str15 = "Reply";
                            r10 = "upgradeAllTreasureReply";
                            r3 = "changeTreasureForbidReply";
                            value = obj5;
                            str14 = str9;
                            str6 = uuidValue;
                            str13 = str6;
                            ?? result32222222222222222222 = new LocalResourceEngine.Result(bArr);
                            result32222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                            if (str13 != null) {
                            }
                            if (!value.equals(str)) {
                            }
                        }
                    }
                    uuidValue = result;
                    uuidValue.profile = LocalEquipmentEngine.updateOwned(bArr, linkedHashMap2);
                    if (r10 > 0) {
                        uuidValue.profile = BsonLite.withProfileInt(uuidValue.profile, "money", LocalResourceEngine.value(bArr, "money") - ((int) r10));
                        uuidValue.add("updateMoney", BsonLite.document("v", Integer.valueOf(LocalResourceEngine.value(uuidValue.profile, "money"))));
                    }
                    value = equals;
                    try {
                        if (value.equals(str)) {
                            try {
                                objArr = new Object[4];
                                objArr[0] = obj3;
                                str13 = str11;
                                try {
                                    objArr[1] = new BsonLite.UuidValue(str13);
                                    objArr[2] = obj;
                                    objArr[3] = Boolean.valueOf(z);
                                    str12 = "changeTreasureForbidReply";
                                } catch (ArithmeticException | IllegalArgumentException e21) {
                                    e = e21;
                                    str12 = "changeTreasureForbidReply";
                                }
                            } catch (ArithmeticException | IllegalArgumentException e22) {
                                e = e22;
                                str12 = "changeTreasureForbidReply";
                                str13 = str11;
                            }
                            try {
                                uuidValue.add(str12, BsonLite.document(objArr));
                            } catch (ArithmeticException e23) {
                                e = e23;
                                str15 = "Reply";
                                r10 = "upgradeAllTreasureReply";
                                r3 = str12;
                                value = value;
                                str14 = str10;
                                ?? result322222222222222222222 = new LocalResourceEngine.Result(bArr);
                                result322222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                if (str13 != null) {
                                }
                                if (!value.equals(str)) {
                                }
                            } catch (IllegalArgumentException e24) {
                                e = e24;
                                str15 = "Reply";
                                r10 = "upgradeAllTreasureReply";
                                r3 = str12;
                                value = value;
                                str14 = str10;
                                ?? result3222222222222222222222 = new LocalResourceEngine.Result(bArr);
                                result3222222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                if (str13 != null) {
                                }
                                if (!value.equals(str)) {
                                }
                            }
                        } else {
                            r3 = "changeTreasureForbidReply";
                            str13 = str11;
                            str14 = str10;
                            try {
                                try {
                                    if (str14.equals(str)) {
                                        try {
                                            ArrayList arrayList = new ArrayList();
                                            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                                                arrayList.add(entry2.getKey());
                                                arrayList.add(entry2.getValue());
                                            }
                                            String str21 = "upgradeAllTreasureReply";
                                            uuidValue.add(str21, BsonLite.document("h", Integer.valueOf(i), str5, BsonLite.document(arrayList.toArray())));
                                            r10 = str21;
                                        } catch (ArithmeticException e25) {
                                            e = e25;
                                            r10 = "upgradeAllTreasureReply";
                                            str15 = "Reply";
                                            ?? result32222222222222222222222 = new LocalResourceEngine.Result(bArr);
                                            result32222222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                            if (str13 != null) {
                                            }
                                            if (!value.equals(str)) {
                                            }
                                        } catch (IllegalArgumentException e26) {
                                            e = e26;
                                            r10 = "upgradeAllTreasureReply";
                                            str15 = "Reply";
                                            ?? result322222222222222222222222 = new LocalResourceEngine.Result(bArr);
                                            result322222222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                            if (str13 != null) {
                                            }
                                            if (!value.equals(str)) {
                                            }
                                        }
                                    } else {
                                        r10 = "upgradeAllTreasureReply";
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append("Reply");
                                        uuidValue.add(sb.toString(), BsonLite.document("h", Integer.valueOf(i), obj3, new BsonLite.UuidValue(str13), str2, linkedHashMap.get(str13)));
                                    }
                                } catch (ArithmeticException e27) {
                                    e = e27;
                                } catch (IllegalArgumentException e28) {
                                    e = e28;
                                }
                            } catch (ArithmeticException e29) {
                                e = e29;
                                str15 = "Reply";
                                r10 = "upgradeAllTreasureReply";
                                ?? result3222222222222222222222222 = new LocalResourceEngine.Result(bArr);
                                result3222222222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                if (str13 != null) {
                                }
                                if (!value.equals(str)) {
                                }
                            } catch (IllegalArgumentException e30) {
                                e = e30;
                                str15 = "Reply";
                                r10 = "upgradeAllTreasureReply";
                                ?? result32222222222222222222222222 = new LocalResourceEngine.Result(bArr);
                                result32222222222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                if (str13 != null) {
                                }
                                if (!value.equals(str)) {
                                }
                            }
                        }
                        ArrayList arrayList2 = new ArrayList();
                        for (byte[] bArr4 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(uuidValue.profile, "inv"), "items"))) {
                            if (linkedHashMap2.containsKey(BsonLite.uuidValue(bArr4, "u"))) {
                                arrayList2.add(bArr4);
                            }
                        }
                        if (!arrayList2.isEmpty()) {
                            uuidValue.add("updateItems", BsonLite.document(str5, arrayList2));
                        }
                        return uuidValue;
                    } catch (ArithmeticException e31) {
                        e = e31;
                        str15 = "Reply";
                        r10 = "upgradeAllTreasureReply";
                        r3 = "changeTreasureForbidReply";
                        value = value;
                        str14 = str10;
                        str13 = str11;
                        ?? result322222222222222222222222222 = new LocalResourceEngine.Result(bArr);
                        result322222222222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                        if (str13 != null) {
                        }
                        if (!value.equals(str)) {
                        }
                    } catch (IllegalArgumentException e32) {
                        e = e32;
                        str15 = "Reply";
                        r10 = "upgradeAllTreasureReply";
                        r3 = "changeTreasureForbidReply";
                        value = value;
                        str14 = str10;
                        str13 = str11;
                        ?? result3222222222222222222222222222 = new LocalResourceEngine.Result(bArr);
                        result3222222222222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                        if (str13 != null) {
                        }
                        if (!value.equals(str)) {
                        }
                    }
                } catch (ArithmeticException e33) {
                    e = e33;
                    i = value;
                    str2 = str13;
                    str3 = str14;
                    str8 = uuidValue;
                    str7 = r10;
                    obj4 = equals;
                    str14 = str7;
                    str4 = str16;
                    str5 = str17;
                    str15 = "Reply";
                    r10 = "upgradeAllTreasureReply";
                    r3 = "changeTreasureForbidReply";
                    value = obj4;
                    str6 = str8;
                    str13 = str6;
                    ?? result32222222222222222222222222222 = new LocalResourceEngine.Result(bArr);
                    result32222222222222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    if (str13 != null) {
                    }
                    if (!value.equals(str)) {
                    }
                } catch (IllegalArgumentException e34) {
                    e = e34;
                    i = value;
                    str2 = str13;
                    str3 = str14;
                    str8 = uuidValue;
                    str7 = r10;
                    obj4 = equals;
                    str14 = str7;
                    str4 = str16;
                    str5 = str17;
                    str15 = "Reply";
                    r10 = "upgradeAllTreasureReply";
                    r3 = "changeTreasureForbidReply";
                    value = obj4;
                    str6 = str8;
                    str13 = str6;
                    ?? result322222222222222222222222222222 = new LocalResourceEngine.Result(bArr);
                    result322222222222222222222222222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    if (str13 != null) {
                    }
                    if (!value.equals(str)) {
                    }
                }
            } catch (ArithmeticException e35) {
                e = e35;
            } catch (IllegalArgumentException e36) {
                e = e36;
            }
        } catch (ArithmeticException | IllegalArgumentException e37) {
            e = e37;
            obj = "r";
        }
    }

    private static byte[] owned(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, String str, int i) {
        byte[] findOwned = LocalEquipmentEngine.findOwned(bArr, str);
        if (findOwned == null) {
            throw new IllegalArgumentException("未拥有该影装");
        }
        LocalEquipmentEngine.itemCost(findOwned, localFeatureCatalog);
        if (i != 0) {
            boolean z = false;
            Iterator<byte[]> it = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(BsonLite.profileHeroDocument(bArr, i), "ti"), "items")).iterator();
            while (it.hasNext()) {
                if (str.equals(BsonLite.uuidValue(it.next(), "u"))) {
                    z = true;
                }
            }
            if (!z) {
                throw new IllegalArgumentException("该神器使未装备此影装");
            }
        }
        return findOwned;
    }
}
