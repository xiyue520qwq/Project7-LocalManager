package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.ToIntFunction;

/* loaded from: classes.dex */
final class LocalHeroLiberateEngine {
    LocalHeroLiberateEngine() {
    }

    static boolean handles(String str) {
        return "tupoLiberateStage".equals(str) || "upgradeLiberate".equals(str) || "updateWanwufadian".equals(str) || "liberateChange".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public static int m29v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m28d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static int level(LocalFeatureCatalog localFeatureCatalog, int i) {
        long j = i;
        int i2 = 0;
        for (int i3 = 1; i3 <= 100; i3++) {
            byte[] bArr = localFeatureCatalog.get("LE", Integer.valueOf(i3));
            int m29v = m29v(bArr, "exp");
            if (bArr == null || m29v <= 0) {
                break;
            }
            long j2 = m29v;
            if (j < j2) {
                break;
            }
            j -= j2;
            i2 = i3;
        }
        return i2;
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2) {
        return apply(bArr, localFeatureCatalog, null, str, bArr2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 2 */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2) {
        Object obj;
        Object obj2;
        Object obj3;
        List<Integer> list;
        String str2 = bArr;
        if ("liberateChange".equals(str)) {
            return convert(str2, localFeatureCatalog, localResourceCatalog, bArr2);
        }
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(str2);
        if ("updateWanwufadian".equals(str)) {
            Boolean boolValue = BsonLite.boolValue(bArr2, "f");
            if (boolValue != null) {
                result.profile = BsonLite.withProfileDocument(str2, "heromgr", BsonLite.withProfileBool(m28d(str2, "heromgr"), "wwfd", boolValue.booleanValue()));
            }
            return result;
        }
        if ("upgradeLiberate".equals(str)) {
            return train(str2, localFeatureCatalog, bArr2);
        }
        int m29v = m29v(bArr2, "h");
        try {
            try {
                if (!LocalResourceEngine.ownsHero(str2, m29v)) {
                    throw new IllegalArgumentException("未拥有该神器使");
                }
                result.profile = LocalSharedLiberateEngine.normalize(str2, localFeatureCatalog, m29v);
                byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, m29v);
                int m29v2 = m29v(profileHeroDocument, "ls");
                StringBuilder sb = new StringBuilder();
                sb.append(m29v);
                try {
                    sb.append(":");
                    int i = m29v2 + 1;
                    sb.append(i);
                    byte[] bArr3 = localFeatureCatalog.get("LB", sb.toString());
                    if (m29v2 >= 0 && bArr3 != null) {
                        obj2 = "c";
                        if (m29v(bArr3, "is_release") == 1) {
                            try {
                                int m29v3 = m29v(bArr3, "lv_max");
                                if (m29v3 <= 0) {
                                    throw new IllegalArgumentException("指挥使等级未达到突破要求");
                                }
                                m29v(str2, "level");
                                obj3 = "s";
                                try {
                                    m29v(bArr3, "lv_require");
                                    obj = "h";
                                } catch (ArithmeticException e) {
                                    e = e;
                                    obj = "h";
                                    str2 = "tupoLiberateStageReply";
                                    LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
                                    result2.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    result2.add(str2, BsonLite.document(obj, 0, obj3, 609, obj2, 0));
                                    return result2;
                                } catch (IllegalArgumentException e2) {
                                    e = e2;
                                    obj = "h";
                                    str2 = "tupoLiberateStageReply";
                                    LocalResourceEngine.Result result22 = new LocalResourceEngine.Result(bArr);
                                    result22.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    result22.add(str2, BsonLite.document(obj, 0, obj3, 609, obj2, 0));
                                    return result22;
                                }
                                try {
                                    String[] strArr = {"lh", "la", "ld"};
                                    for (int i2 = 0; i2 < 3; i2++) {
                                        if (level(localFeatureCatalog, m29v(profileHeroDocument, strArr[i2])) < m29v3) {
                                            throw new IllegalArgumentException("请先将三项灵解训练提升至当前上限");
                                        }
                                    }
                                    List<Integer> intArrayValues = BsonLite.intArrayValues(bArr3, "itemids");
                                    List<Integer> intArrayValues2 = BsonLite.intArrayValues(bArr3, "itemnums");
                                    List<Integer> intArrayValues3 = BsonLite.intArrayValues(bArr3, "spe_item");
                                    List<Integer> intArrayValues4 = BsonLite.intArrayValues(bArr3, "instead_item");
                                    if (intArrayValues.size() != 3 || intArrayValues2.size() != intArrayValues.size() || intArrayValues3.size() != intArrayValues4.size()) {
                                        throw new IllegalArgumentException("缺少原版突破材料配置");
                                    }
                                    boolean equals = Boolean.TRUE.equals(BsonLite.boolValue(m28d(str2, "heromgr"), "wwfd"));
                                    int i3 = 0;
                                    int i4 = 0;
                                    while (i3 < intArrayValues.size()) {
                                        int intValue = intArrayValues.get(i3).intValue();
                                        int intValue2 = intArrayValues2.get(i3).intValue();
                                        if (intValue <= 0 || intValue2 < 0) {
                                            throw new IllegalArgumentException("突破材料配置无效");
                                        }
                                        List<Integer> list2 = intArrayValues;
                                        int i5 = intValue2;
                                        List<Integer> list3 = intArrayValues2;
                                        int i6 = 0;
                                        while (i6 < intArrayValues3.size()) {
                                            if (intArrayValues4.get(i6).intValue() != intValue || intArrayValues3.get(i6).intValue() <= 0) {
                                                list = intArrayValues4;
                                            } else {
                                                list = intArrayValues4;
                                                int min = Math.min(i5, LocalHeroGrowthEngine.count(result.profile, intArrayValues3.get(i6).intValue()));
                                                LocalGiftEngine.consume(result, intArrayValues3.get(i6).intValue(), min);
                                                i5 -= min;
                                            }
                                            i6++;
                                            intArrayValues4 = list;
                                        }
                                        List<Integer> list4 = intArrayValues4;
                                        int min2 = Math.min(i5, LocalHeroGrowthEngine.count(result.profile, intValue));
                                        LocalGiftEngine.consume(result, intValue, min2);
                                        int i7 = i5 - min2;
                                        if (i7 > 0 && !equals) {
                                            throw new IllegalArgumentException("突破材料不足");
                                        }
                                        i4 = Math.addExact(i4, i7);
                                        i3++;
                                        intArrayValues2 = list3;
                                        intArrayValues = list2;
                                        intArrayValues4 = list4;
                                    }
                                    LocalGiftEngine.consume(result, 4640, i4);
                                    LocalGiftEngine.spend(result, "crystal", m29v(bArr3, "jingchen"));
                                    int m29v4 = m29v(bArr3, "cost");
                                    if (m29v4 < 0) {
                                        throw new IllegalArgumentException("突破cost配置无效");
                                    }
                                    byte[] withProfileInt = BsonLite.withProfileInt(profileHeroDocument, "ls", i);
                                    byte[] m28d = m28d(withProfileInt, "ti");
                                    result.profile = BsonLite.withHeroDocument(result.profile, m29v, BsonLite.withProfileDocument(withProfileInt, "ti", BsonLite.withProfileInt(m28d, "mc", Math.addExact(m29v(m28d, "mc"), m29v4))));
                                    LocalResourceEngine.syncCurrencies(result);
                                    result.add("tupoLiberateStageReply", BsonLite.document(obj, Integer.valueOf(m29v), obj3, Integer.valueOf(i), obj2, Integer.valueOf(m29v4)));
                                    LocalSharedLiberateEngine.reconcile(result, localFeatureCatalog, m29v, true);
                                    return result;
                                } catch (ArithmeticException e3) {
                                    e = e3;
                                    str2 = "tupoLiberateStageReply";
                                    LocalResourceEngine.Result result222 = new LocalResourceEngine.Result(bArr);
                                    result222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    result222.add(str2, BsonLite.document(obj, 0, obj3, 609, obj2, 0));
                                    return result222;
                                } catch (IllegalArgumentException e4) {
                                    e = e4;
                                    str2 = "tupoLiberateStageReply";
                                    LocalResourceEngine.Result result2222 = new LocalResourceEngine.Result(bArr);
                                    result2222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    result2222.add(str2, BsonLite.document(obj, 0, obj3, 609, obj2, 0));
                                    return result2222;
                                }
                            } catch (ArithmeticException e5) {
                                e = e5;
                                obj = "h";
                                obj3 = "s";
                                str2 = "tupoLiberateStageReply";
                                LocalResourceEngine.Result result22222 = new LocalResourceEngine.Result(bArr);
                                result22222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                result22222.add(str2, BsonLite.document(obj, 0, obj3, 609, obj2, 0));
                                return result22222;
                            } catch (IllegalArgumentException e6) {
                                e = e6;
                                obj = "h";
                                obj3 = "s";
                                str2 = "tupoLiberateStageReply";
                                LocalResourceEngine.Result result222222 = new LocalResourceEngine.Result(bArr);
                                result222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                result222222.add(str2, BsonLite.document(obj, 0, obj3, 609, obj2, 0));
                                return result222222;
                            }
                        }
                    }
                    throw new IllegalArgumentException("已达到原版开放的突破上限");
                } catch (ArithmeticException e7) {
                    e = e7;
                    obj = "h";
                    obj2 = "c";
                    obj3 = "s";
                    str2 = "tupoLiberateStageReply";
                    LocalResourceEngine.Result result2222222 = new LocalResourceEngine.Result(bArr);
                    result2222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    result2222222.add(str2, BsonLite.document(obj, 0, obj3, 609, obj2, 0));
                    return result2222222;
                } catch (IllegalArgumentException e8) {
                    e = e8;
                    obj = "h";
                    obj2 = "c";
                    obj3 = "s";
                    str2 = "tupoLiberateStageReply";
                    LocalResourceEngine.Result result22222222 = new LocalResourceEngine.Result(bArr);
                    result22222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    result22222222.add(str2, BsonLite.document(obj, 0, obj3, 609, obj2, 0));
                    return result22222222;
                }
            } catch (ArithmeticException e9) {
                e = e9;
            } catch (IllegalArgumentException e10) {
                e = e10;
            }
        } catch (ArithmeticException | IllegalArgumentException e11) {
            e = e11;
            obj = "h";
            obj2 = "c";
            obj3 = "s";
            str2 = "tupoLiberateStageReply";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r15v1, types: [com.project7.localmanager.LocalResourceEngine$Result] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v11 */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r19v18 */
    /* JADX WARN: Type inference failed for: r19v19 */
    /* JADX WARN: Type inference failed for: r19v2, types: [java.lang.Object[], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r2v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v1, types: [int] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v5 */
    private static LocalResourceEngine.Result convert(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, byte[] bArr2) {
        char c;
        boolean z;
        boolean z2;
        char c2;
        int[] iArr;
        LocalResourceEngine.Result result;
        String str;
        ?? r2 = bArr2;
        String str2 = "b";
        int i = "l";
        String str3 = "replyLiberateChange";
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
        try {
            String stringValue = BsonLite.stringValue(r2, "c");
            ?? r19 = {"hp", "attack", "defend"};
            try {
                if (!Arrays.asList(r19).contains(stringValue) || localResourceCatalog == null) {
                    throw new IllegalArgumentException("余烬调配类型无效");
                }
                ArrayList arrayList = new ArrayList();
                Iterator<String> it = localFeatureCatalog.entries.keySet().iterator();
                while (it.hasNext()) {
                    Iterator<String> it2 = it;
                    String next = it.next();
                    String str4 = str3;
                    try {
                        if (next.startsWith("LI:")) {
                            str = stringValue;
                            if (m29v(localFeatureCatalog.entries.get(next), stringValue) == 1) {
                                byte[] bArr3 = localFeatureCatalog.entries.get(next);
                                if (m29v(bArr3, "hp") + m29v(bArr3, "attack") + m29v(bArr3, "defend") == 1) {
                                    arrayList.add(bArr3);
                                }
                            }
                        } else {
                            str = stringValue;
                        }
                        str3 = str4;
                        it = it2;
                        stringValue = str;
                    } catch (ArithmeticException e) {
                        e = e;
                        r2 = str4;
                        i = 4;
                        r19 = 1;
                        ?? result3 = new LocalResourceEngine.Result(bArr);
                        Object[] objArr = new Object[2];
                        objArr[0] = "m";
                        objArr[r19] = e.getMessage();
                        result3.add("showMessageStr", BsonLite.document(objArr));
                        Object[] objArr2 = new Object[i];
                        objArr2[0] = "r";
                        objArr2[r19] = false;
                        objArr2[2] = "i";
                        objArr2[3] = BsonLite.EMPTY_DOCUMENT;
                        result3.add(r2, BsonLite.document(objArr2));
                        return result3;
                    } catch (IllegalArgumentException e2) {
                        e = e2;
                        r2 = str4;
                        i = 4;
                        r19 = 1;
                        ?? result32 = new LocalResourceEngine.Result(bArr);
                        Object[] objArr3 = new Object[2];
                        objArr3[0] = "m";
                        objArr3[r19] = e.getMessage();
                        result32.add("showMessageStr", BsonLite.document(objArr3));
                        Object[] objArr22 = new Object[i];
                        objArr22[0] = "r";
                        objArr22[r19] = false;
                        objArr22[2] = "i";
                        objArr22[3] = BsonLite.EMPTY_DOCUMENT;
                        result32.add(r2, BsonLite.document(objArr22));
                        return result32;
                    }
                }
                String str5 = str3;
                arrayList.sort(Comparator.comparingInt(new ToIntFunction() { // from class: com.project7.localmanager.LocalHeroLiberateEngine$$ExternalSyntheticLambda0
                    @Override // java.util.function.ToIntFunction
                    public final int applyAsInt(Object obj) {
                        int m29v;
                        m29v = LocalHeroLiberateEngine.m29v((byte[]) obj, "base");
                        return m29v;
                    }
                }));
                if (arrayList.size() != 3) {
                    throw new IllegalArgumentException("缺少原版余烬调配配置");
                }
                int[] iArr2 = new int[3];
                iArr2[0] = m29v(r2, "l");
                try {
                    iArr2[1] = m29v(r2, "m");
                    iArr2[2] = m29v(r2, "b");
                    int[] iArr3 = new int[3];
                    try {
                        iArr3[0] = 1;
                        iArr3[1] = 10;
                        iArr3[2] = 100;
                        int[] iArr4 = new int[3];
                        int[] iArr5 = new int[3];
                        long j = 0;
                        int i2 = 0;
                        long j2 = 0;
                        String str6 = "l";
                        for (int i3 = 3; i2 < i3; i3 = 3) {
                            iArr4[i2] = m29v((byte[]) arrayList.get(i2), "item");
                            if (iArr4[i2] <= 0 || m29v((byte[]) arrayList.get(i2), "base") != iArr3[i2] * 100) {
                                throw new IllegalArgumentException("余烬调配配置无效");
                            }
                            Number numericValue = BsonLite.numericValue(r2, new String[]{str6, "m", str2}[i2]);
                            if (numericValue != null) {
                                String str7 = str2;
                                String str8 = str6;
                                if (numericValue.doubleValue() == iArr2[i2] && iArr2[i2] >= 0) {
                                    iArr5[i2] = LocalHeroGrowthEngine.count(bArr, iArr4[i2]);
                                    j += iArr5[i2] * iArr3[i2];
                                    j2 += iArr2[i2] * iArr3[i2];
                                    i2++;
                                    str2 = str7;
                                    arrayList = arrayList;
                                    str6 = str8;
                                }
                            }
                            throw new IllegalArgumentException("余烬数量无效");
                        }
                        if (j != j2) {
                            throw new IllegalArgumentException("余烬调配总量不一致，请刷新后重试");
                        }
                        for (int i4 = 0; i4 < 3; i4++) {
                            if (iArr5[i4] > iArr2[i4]) {
                                LocalGiftEngine.consume(result2, iArr4[i4], iArr5[i4] - iArr2[i4]);
                            }
                        }
                        int i5 = 0;
                        while (i5 < 3) {
                            try {
                                if (iArr2[i5] > iArr5[i5]) {
                                    z = true;
                                    z2 = true;
                                    iArr = iArr4;
                                    c = 4;
                                    c2 = 4;
                                    result = result2;
                                    try {
                                        LocalResourceEngine.grant(result2, localResourceCatalog, "item", iArr4[i5], iArr2[i5] - iArr5[i5], 1);
                                    } catch (ArithmeticException e3) {
                                        e = e3;
                                        i = c;
                                        r19 = z;
                                        r2 = str5;
                                        ?? result322 = new LocalResourceEngine.Result(bArr);
                                        Object[] objArr32 = new Object[2];
                                        objArr32[0] = "m";
                                        objArr32[r19] = e.getMessage();
                                        result322.add("showMessageStr", BsonLite.document(objArr32));
                                        Object[] objArr222 = new Object[i];
                                        objArr222[0] = "r";
                                        objArr222[r19] = false;
                                        objArr222[2] = "i";
                                        objArr222[3] = BsonLite.EMPTY_DOCUMENT;
                                        result322.add(r2, BsonLite.document(objArr222));
                                        return result322;
                                    } catch (IllegalArgumentException e4) {
                                        e = e4;
                                        i = c2;
                                        r19 = z2;
                                        r2 = str5;
                                        ?? result3222 = new LocalResourceEngine.Result(bArr);
                                        Object[] objArr322 = new Object[2];
                                        objArr322[0] = "m";
                                        objArr322[r19] = e.getMessage();
                                        result3222.add("showMessageStr", BsonLite.document(objArr322));
                                        Object[] objArr2222 = new Object[i];
                                        objArr2222[0] = "r";
                                        objArr2222[r19] = false;
                                        objArr2222[2] = "i";
                                        objArr2222[3] = BsonLite.EMPTY_DOCUMENT;
                                        result3222.add(r2, BsonLite.document(objArr2222));
                                        return result3222;
                                    }
                                } else {
                                    iArr = iArr4;
                                    result = result2;
                                }
                                i5++;
                                result2 = result;
                                iArr4 = iArr;
                            } catch (ArithmeticException e5) {
                                e = e5;
                                i = 4;
                                r19 = 1;
                                r2 = str5;
                                ?? result32222 = new LocalResourceEngine.Result(bArr);
                                Object[] objArr3222 = new Object[2];
                                objArr3222[0] = "m";
                                objArr3222[r19] = e.getMessage();
                                result32222.add("showMessageStr", BsonLite.document(objArr3222));
                                Object[] objArr22222 = new Object[i];
                                objArr22222[0] = "r";
                                objArr22222[r19] = false;
                                objArr22222[2] = "i";
                                objArr22222[3] = BsonLite.EMPTY_DOCUMENT;
                                result32222.add(r2, BsonLite.document(objArr22222));
                                return result32222;
                            } catch (IllegalArgumentException e6) {
                                e = e6;
                                i = 4;
                                r19 = 1;
                                r2 = str5;
                                ?? result322222 = new LocalResourceEngine.Result(bArr);
                                Object[] objArr32222 = new Object[2];
                                objArr32222[0] = "m";
                                objArr32222[r19] = e.getMessage();
                                result322222.add("showMessageStr", BsonLite.document(objArr32222));
                                Object[] objArr222222 = new Object[i];
                                objArr222222[0] = "r";
                                objArr222222[r19] = false;
                                objArr222222[2] = "i";
                                objArr222222[3] = BsonLite.EMPTY_DOCUMENT;
                                result322222.add(r2, BsonLite.document(objArr222222));
                                return result322222;
                            }
                        }
                        LocalResourceEngine.Result result4 = result2;
                        c = 4;
                        c2 = 4;
                        z = true;
                        z2 = true;
                        result4.add(str5, BsonLite.document(new Object[]{"r", true, "i", r2}));
                        return result4;
                    } catch (ArithmeticException e7) {
                        e = e7;
                        r19 = 1;
                        r2 = str5;
                        i = 4;
                        ?? result3222222 = new LocalResourceEngine.Result(bArr);
                        Object[] objArr322222 = new Object[2];
                        objArr322222[0] = "m";
                        objArr322222[r19] = e.getMessage();
                        result3222222.add("showMessageStr", BsonLite.document(objArr322222));
                        Object[] objArr2222222 = new Object[i];
                        objArr2222222[0] = "r";
                        objArr2222222[r19] = false;
                        objArr2222222[2] = "i";
                        objArr2222222[3] = BsonLite.EMPTY_DOCUMENT;
                        result3222222.add(r2, BsonLite.document(objArr2222222));
                        return result3222222;
                    } catch (IllegalArgumentException e8) {
                        e = e8;
                        r19 = 1;
                        r2 = str5;
                        i = 4;
                        ?? result32222222 = new LocalResourceEngine.Result(bArr);
                        Object[] objArr3222222 = new Object[2];
                        objArr3222222[0] = "m";
                        objArr3222222[r19] = e.getMessage();
                        result32222222.add("showMessageStr", BsonLite.document(objArr3222222));
                        Object[] objArr22222222 = new Object[i];
                        objArr22222222[0] = "r";
                        objArr22222222[r19] = false;
                        objArr22222222[2] = "i";
                        objArr22222222[3] = BsonLite.EMPTY_DOCUMENT;
                        result32222222.add(r2, BsonLite.document(objArr22222222));
                        return result32222222;
                    }
                } catch (ArithmeticException e9) {
                    e = e9;
                    r19 = 1;
                    r2 = str5;
                    i = 4;
                    ?? result322222222 = new LocalResourceEngine.Result(bArr);
                    Object[] objArr32222222 = new Object[2];
                    objArr32222222[0] = "m";
                    objArr32222222[r19] = e.getMessage();
                    result322222222.add("showMessageStr", BsonLite.document(objArr32222222));
                    Object[] objArr222222222 = new Object[i];
                    objArr222222222[0] = "r";
                    objArr222222222[r19] = false;
                    objArr222222222[2] = "i";
                    objArr222222222[3] = BsonLite.EMPTY_DOCUMENT;
                    result322222222.add(r2, BsonLite.document(objArr222222222));
                    return result322222222;
                } catch (IllegalArgumentException e10) {
                    e = e10;
                    r19 = 1;
                    r2 = str5;
                    i = 4;
                    ?? result3222222222 = new LocalResourceEngine.Result(bArr);
                    Object[] objArr322222222 = new Object[2];
                    objArr322222222[0] = "m";
                    objArr322222222[r19] = e.getMessage();
                    result3222222222.add("showMessageStr", BsonLite.document(objArr322222222));
                    Object[] objArr2222222222 = new Object[i];
                    objArr2222222222[0] = "r";
                    objArr2222222222[r19] = false;
                    objArr2222222222[2] = "i";
                    objArr2222222222[3] = BsonLite.EMPTY_DOCUMENT;
                    result3222222222.add(r2, BsonLite.document(objArr2222222222));
                    return result3222222222;
                }
            } catch (ArithmeticException e11) {
                e = e11;
            } catch (IllegalArgumentException e12) {
                e = e12;
            }
        } catch (ArithmeticException | IllegalArgumentException e13) {
            e = e13;
            r2 = str3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0191, code lost:
    
        if (r2 <= 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0193, code lost:
    
        com.project7.localmanager.LocalGiftEngine.consume(r11, r10, r1);
        r8 = 0;
        r0 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x019a, code lost:
    
        if (r8 >= r1) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x019c, code lost:
    
        r9 = com.project7.localmanager.LocalStoryEnvironment.nextInt(r2);
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a2, code lost:
    
        r29 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01a8, code lost:
    
        if (r10 >= r7.size()) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01aa, code lost:
    
        r9 = r9 - r7.get(r10).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01b5, code lost:
    
        if (r9 >= 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01c2, code lost:
    
        r10 = r10 + 1;
        r1 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01b7, code lost:
    
        r1 = r15.get(r10).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01c9, code lost:
    
        r6 = java.lang.Math.addExact(r6, java.lang.Math.multiplyExact(m29v(r5, "base"), r1));
        r0 = java.lang.Math.max(r0, r1);
        r8 = r8 + 1;
        r1 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01c7, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01de, code lost:
    
        r20 = r0;
        r10 = r21;
        r1 = r22;
        r7 = r23;
        r5 = r24;
        r2 = r2;
        r15 = r26;
        r9 = r27;
        r8 = r28;
        r0 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01f9, code lost:
    
        throw new java.lang.IllegalArgumentException("灵解倍率配置无效");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02e7 A[Catch: ArithmeticException -> 0x0319, IllegalArgumentException -> 0x031b, TryCatch #7 {ArithmeticException -> 0x0319, IllegalArgumentException -> 0x031b, blocks: (B:121:0x02bc, B:124:0x02cb, B:125:0x02d8, B:126:0x02d9, B:127:0x02e6, B:132:0x02e7, B:133:0x02f4, B:140:0x02ff, B:141:0x030b, B:142:0x030c, B:143:0x0318), top: B:4:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0098 A[Catch: ArithmeticException -> 0x02f5, IllegalArgumentException -> 0x02f7, TRY_LEAVE, TryCatch #8 {ArithmeticException -> 0x02f5, IllegalArgumentException -> 0x02f7, blocks: (B:11:0x0055, B:13:0x006f, B:15:0x0076, B:19:0x0098, B:23:0x00af, B:25:0x00b9, B:27:0x00c9, B:29:0x00d2, B:30:0x00db, B:32:0x00e1, B:128:0x00a6, B:134:0x0090), top: B:10:0x0055 }] */
    /* JADX WARN: Type inference failed for: r1v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static LocalResourceEngine.Result train(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, byte[] bArr2) {
        String str;
        String str2;
        int m29v;
        String str3 = bArr;
        LocalFeatureCatalog localFeatureCatalog2 = localFeatureCatalog;
        String str4 = "r";
        String str5 = "m";
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(str3);
        int m29v2 = m29v(bArr2, "h");
        try {
            try {
                if (!LocalResourceEngine.ownsHero(str3, m29v2)) {
                    throw new IllegalArgumentException("未拥有该神器使");
                }
                String stringValue = BsonLite.stringValue(bArr2, "t");
                if (!Arrays.asList("hp", "attack", "defend").contains(stringValue)) {
                    throw new IllegalArgumentException("灵解训练类型无效");
                }
                result.profile = LocalSharedLiberateEngine.normalize(str3, localFeatureCatalog2, m29v2);
                byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, m29v2);
                StringBuilder sb = new StringBuilder();
                sb.append(m29v2);
                try {
                    sb.append(":");
                    sb.append(m29v(profileHeroDocument, "ls") + 1);
                    byte[] bArr3 = localFeatureCatalog2.get("LB", sb.toString());
                    if (bArr3 == null && m29v(profileHeroDocument, "ls") == 4) {
                        if (localFeatureCatalog2.get("LB", m29v2 + ":1") != null) {
                            m29v = 100;
                            if (m29v > 0) {
                                throw new IllegalArgumentException("缺少原版灵解配置");
                            }
                            String str6 = "la";
                            String str7 = "ld";
                            String str8 = "lh";
                            String str9 = "hp".equals(stringValue) ? "lh" : "attack".equals(stringValue) ? "la" : "ld";
                            if (level(localFeatureCatalog2, m29v(profileHeroDocument, str9)) >= m29v) {
                                throw new IllegalArgumentException("请先突破当前灵解阶段");
                            }
                            List<byte[]> array = LocalResourceEngine.array(m28d(bArr2, "i"));
                            if (array.isEmpty() || array.size() > 10) {
                                throw new IllegalArgumentException("请选择灵解材料");
                            }
                            Iterator<byte[]> it = array.iterator();
                            int i = 0;
                            int i2 = 0;
                            int i3 = 1;
                            loop0: while (it.hasNext()) {
                                Iterator<byte[]> it2 = it;
                                byte[] next = it.next();
                                str2 = str5;
                                try {
                                    int m29v3 = m29v(next, "0");
                                    String str10 = str7;
                                    int m29v4 = m29v(next, "1");
                                    String str11 = str6;
                                    byte[] bArr4 = localFeatureCatalog2.get("LI", Integer.valueOf(m29v3));
                                    if (m29v4 > 0 && m29v4 <= 1000 && bArr4 != null) {
                                        String str12 = stringValue;
                                        if (m29v(bArr4, stringValue) == 1 && m29v(bArr4, "base") > 0) {
                                            int addExact = Math.addExact(i, m29v4);
                                            if (addExact > 1000) {
                                                throw new IllegalArgumentException("单次灵解材料过多");
                                            }
                                            List<Integer> intArrayValues = BsonLite.intArrayValues(bArr4, "multiRate");
                                            List<Integer> intArrayValues2 = BsonLite.intArrayValues(bArr4, "multi");
                                            String str13 = str8;
                                            if (intArrayValues.size() != intArrayValues2.size() || intArrayValues.isEmpty()) {
                                                throw new IllegalArgumentException("灵解倍率配置无效");
                                            }
                                            int i4 = 0;
                                            int i5 = 0;
                                            while (true) {
                                                str = str4;
                                                try {
                                                    if (i4 >= intArrayValues.size()) {
                                                        break;
                                                    }
                                                    if (intArrayValues.get(i4).intValue() < 0 || (intArrayValues.get(i4).intValue() > 0 && intArrayValues2.get(i4).intValue() <= 0)) {
                                                        break loop0;
                                                    }
                                                    i5 = Math.addExact(i5, intArrayValues.get(i4).intValue());
                                                    i4++;
                                                    str4 = str;
                                                } catch (ArithmeticException e) {
                                                    e = e;
                                                    str3 = "upgradeLiberateReply";
                                                    LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
                                                    result2.add("showMessageStr", BsonLite.document(str2, e.getMessage()));
                                                    result2.add(str3, BsonLite.document("h", Integer.valueOf(m29v2), str, BsonLite.document("errId", 609)));
                                                    return result2;
                                                } catch (IllegalArgumentException e2) {
                                                    e = e2;
                                                    str3 = "upgradeLiberateReply";
                                                    LocalResourceEngine.Result result22 = new LocalResourceEngine.Result(bArr);
                                                    result22.add("showMessageStr", BsonLite.document(str2, e.getMessage()));
                                                    result22.add(str3, BsonLite.document("h", Integer.valueOf(m29v2), str, BsonLite.document("errId", 609)));
                                                    return result22;
                                                }
                                            }
                                            throw new IllegalArgumentException("灵解倍率配置无效");
                                        }
                                    }
                                    throw new IllegalArgumentException("灵解材料与训练类型不匹配");
                                } catch (ArithmeticException e3) {
                                    e = e3;
                                    str = str4;
                                    str3 = "upgradeLiberateReply";
                                    LocalResourceEngine.Result result222 = new LocalResourceEngine.Result(bArr);
                                    result222.add("showMessageStr", BsonLite.document(str2, e.getMessage()));
                                    result222.add(str3, BsonLite.document("h", Integer.valueOf(m29v2), str, BsonLite.document("errId", 609)));
                                    return result222;
                                } catch (IllegalArgumentException e4) {
                                    e = e4;
                                    str = str4;
                                    str3 = "upgradeLiberateReply";
                                    LocalResourceEngine.Result result2222 = new LocalResourceEngine.Result(bArr);
                                    result2222.add("showMessageStr", BsonLite.document(str2, e.getMessage()));
                                    result2222.add(str3, BsonLite.document("h", Integer.valueOf(m29v2), str, BsonLite.document("errId", 609)));
                                    return result2222;
                                }
                            }
                            String str14 = str6;
                            String str15 = str7;
                            String str16 = str8;
                            String str17 = stringValue;
                            byte[] withProfileInt = BsonLite.withProfileInt(profileHeroDocument, str9, Math.addExact(m29v(profileHeroDocument, str9), i2));
                            result.profile = BsonLite.withHeroDocument(result.profile, m29v2, withProfileInt);
                            result.add("upgradeLiberateReply", BsonLite.document("h", Integer.valueOf(m29v2), str4, BsonLite.document(str16, Integer.valueOf(m29v(withProfileInt, str16)), str14, Integer.valueOf(m29v(withProfileInt, str14)), str15, Integer.valueOf(m29v(withProfileInt, str15)), "ad", BsonLite.document(str17, Integer.valueOf(i2)), str5, BsonLite.document(str17, Integer.valueOf(i3)))));
                            LocalSharedLiberateEngine.reconcile(result, localFeatureCatalog, m29v2, true);
                            return result;
                        }
                    }
                    m29v = m29v(bArr3, "lv_max");
                    if (m29v > 0) {
                    }
                } catch (ArithmeticException e5) {
                    e = e5;
                    str = str4;
                    str2 = str5;
                    str3 = "upgradeLiberateReply";
                    LocalResourceEngine.Result result22222 = new LocalResourceEngine.Result(bArr);
                    result22222.add("showMessageStr", BsonLite.document(str2, e.getMessage()));
                    result22222.add(str3, BsonLite.document("h", Integer.valueOf(m29v2), str, BsonLite.document("errId", 609)));
                    return result22222;
                } catch (IllegalArgumentException e6) {
                    e = e6;
                    str = str4;
                    str2 = str5;
                    str3 = "upgradeLiberateReply";
                    LocalResourceEngine.Result result222222 = new LocalResourceEngine.Result(bArr);
                    result222222.add("showMessageStr", BsonLite.document(str2, e.getMessage()));
                    result222222.add(str3, BsonLite.document("h", Integer.valueOf(m29v2), str, BsonLite.document("errId", 609)));
                    return result222222;
                }
            } catch (ArithmeticException e7) {
                e = e7;
            } catch (IllegalArgumentException e8) {
                e = e8;
            }
        } catch (ArithmeticException | IllegalArgumentException e9) {
            e = e9;
            str = "r";
            str3 = "upgradeLiberateReply";
            str2 = "m";
        }
    }
}
