package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalMazeShopEngine {
    static final List<String> METHODS = Arrays.asList("queryMazeState", "exchangeWCoinItem", "firstEnterMaze", "updateDancengAIFlag");

    LocalMazeShopEngine() {
    }

    /* renamed from: v */
    static int m53v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m52d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static void eligible(byte[] bArr) {
        byte[] m52d = m52d(bArr, "weeknum");
        if (m53v(m52d, "w") < 1 || (m53v(m52d, "w") == 1 && m53v(m52d, "d") <= 3)) {
            throw new IllegalArgumentException("巡逻与无尽挑战尚未达到原版周目开放条件");
        }
    }

    static int date(Calendar calendar) {
        return (calendar.get(1) * 10000) + ((calendar.get(2) + 1) * 100) + calendar.get(5);
    }

    static byte[] refresh(byte[] bArr, long j) {
        for (String str : Arrays.asList("sd", "sw", "sf")) {
            if (BsonLite.documentValue(bArr, str) == null) {
                bArr = BsonLite.withProfileArray(bArr, str, Collections.emptyList());
            }
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        int date = date(calendar);
        int i = ((calendar.get(7) + 5) % 7) + 1;
        calendar.add(5, 1 - i);
        int date2 = date(calendar);
        if (m53v(bArr, "q7ShopDay") > 0 && date > m53v(bArr, "q7ShopDay")) {
            bArr = BsonLite.withProfileArray(bArr, "sd", Collections.emptyList());
        }
        if (m53v(bArr, "q7ShopWeek") > 0 && date2 > m53v(bArr, "q7ShopWeek")) {
            bArr = BsonLite.withProfileArray(bArr, "sw", Collections.emptyList());
        }
        byte[] withProfileInt = BsonLite.withProfileInt(bArr, "q7ShopDay", Math.max(date, m53v(bArr, "q7ShopDay")));
        return BsonLite.withProfileInt(BsonLite.withProfileInt(withProfileInt, "q7ShopWeek", Math.max(date2, m53v(withProfileInt, "q7ShopWeek"))), "wd", i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2, long j) {
        boolean z;
        LocalResourceEngine.Result result;
        int i;
        char c;
        ?? r3;
        boolean z2;
        char c2;
        Map<Integer, Integer> pairs;
        int intValue;
        String[][] strArr;
        ?? r32 = "wCoin";
        int i2 = "cost";
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
        boolean z3 = false;
        try {
            eligible(bArr);
            ?? r16 = result2;
            byte[] refresh = LocalMazeBattleEngine.refresh(m52d(bArr, "ifm"), j);
            try {
                if ("exchangeWCoinItem".equals(str)) {
                    int m53v = m53v(bArr2, "stype");
                    byte[] bArr3 = localFeatureCatalog.get("MS", Integer.valueOf(m53v));
                    if (bArr3 != null && Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "valid"))) {
                        if (m53v(bArr3, "cost") > 0 && !BsonLite.keys(m52d(bArr3, "grants")).isEmpty()) {
                            String[][] strArr2 = new String[3][];
                            strArr2[0] = new String[]{"daily", "sd"};
                            try {
                                strArr2[1] = new String[]{"weekly", "sw"};
                            } catch (ArithmeticException e) {
                                e = e;
                                r32 = 0;
                                r16 = 1;
                                i2 = 2;
                                LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(bArr);
                                Object[] objArr = new Object[i2];
                                objArr[r32] = "d";
                                objArr[r16] = m52d(bArr, "ifm");
                                result3.add("syncMazeData", BsonLite.document(objArr));
                                Object[] objArr2 = new Object[i2];
                                objArr2[r32] = "m";
                                objArr2[r16] = e.getMessage();
                                result3.add("showMessageStr", BsonLite.document(objArr2));
                                return result3;
                            } catch (IllegalArgumentException e2) {
                                e = e2;
                                r32 = 0;
                                r16 = 1;
                                i2 = 2;
                                LocalResourceEngine.Result result32 = new LocalResourceEngine.Result(bArr);
                                Object[] objArr3 = new Object[i2];
                                objArr3[r32] = "d";
                                objArr3[r16] = m52d(bArr, "ifm");
                                result32.add("syncMazeData", BsonLite.document(objArr3));
                                Object[] objArr22 = new Object[i2];
                                objArr22[r32] = "m";
                                objArr22[r16] = e.getMessage();
                                result32.add("showMessageStr", BsonLite.document(objArr22));
                                return result32;
                            }
                            try {
                                strArr2[2] = new String[]{"forever", "sf"};
                                byte[] bArr4 = refresh;
                                int i3 = 0;
                                while (i3 < 3) {
                                    String[] strArr3 = strArr2[i3];
                                    try {
                                        pairs = LocalAccountFeatures.pairs(m52d(bArr4, strArr3[1]));
                                        try {
                                            if (pairs.containsKey(Integer.valueOf(m53v))) {
                                                try {
                                                    intValue = pairs.get(Integer.valueOf(m53v)).intValue();
                                                } catch (ArithmeticException | IllegalArgumentException e3) {
                                                    e = e3;
                                                    z = false;
                                                    i2 = 2;
                                                    r32 = z;
                                                    r16 = 1;
                                                    LocalResourceEngine.Result result322 = new LocalResourceEngine.Result(bArr);
                                                    Object[] objArr32 = new Object[i2];
                                                    objArr32[r32] = "d";
                                                    objArr32[r16] = m52d(bArr, "ifm");
                                                    result322.add("syncMazeData", BsonLite.document(objArr32));
                                                    Object[] objArr222 = new Object[i2];
                                                    objArr222[r32] = "m";
                                                    objArr222[r16] = e.getMessage();
                                                    result322.add("showMessageStr", BsonLite.document(objArr222));
                                                    return result322;
                                                }
                                            } else {
                                                intValue = 0;
                                            }
                                            strArr = strArr2;
                                            z2 = false;
                                        } catch (ArithmeticException e4) {
                                            e = e4;
                                            z2 = false;
                                            z = z2;
                                            i2 = 2;
                                            r32 = z;
                                            r16 = 1;
                                            LocalResourceEngine.Result result3222 = new LocalResourceEngine.Result(bArr);
                                            Object[] objArr322 = new Object[i2];
                                            objArr322[r32] = "d";
                                            objArr322[r16] = m52d(bArr, "ifm");
                                            result3222.add("syncMazeData", BsonLite.document(objArr322));
                                            Object[] objArr2222 = new Object[i2];
                                            objArr2222[r32] = "m";
                                            objArr2222[r16] = e.getMessage();
                                            result3222.add("showMessageStr", BsonLite.document(objArr2222));
                                            return result3222;
                                        } catch (IllegalArgumentException e5) {
                                            e = e5;
                                            z2 = false;
                                            z = z2;
                                            i2 = 2;
                                            r32 = z;
                                            r16 = 1;
                                            LocalResourceEngine.Result result32222 = new LocalResourceEngine.Result(bArr);
                                            Object[] objArr3222 = new Object[i2];
                                            objArr3222[r32] = "d";
                                            objArr3222[r16] = m52d(bArr, "ifm");
                                            result32222.add("syncMazeData", BsonLite.document(objArr3222));
                                            Object[] objArr22222 = new Object[i2];
                                            objArr22222[r32] = "m";
                                            objArr22222[r16] = e.getMessage();
                                            result32222.add("showMessageStr", BsonLite.document(objArr22222));
                                            return result32222;
                                        }
                                    } catch (ArithmeticException e6) {
                                        e = e6;
                                        r32 = z3;
                                        r16 = 1;
                                        i2 = 2;
                                        LocalResourceEngine.Result result322222 = new LocalResourceEngine.Result(bArr);
                                        Object[] objArr32222 = new Object[i2];
                                        objArr32222[r32] = "d";
                                        objArr32222[r16] = m52d(bArr, "ifm");
                                        result322222.add("syncMazeData", BsonLite.document(objArr32222));
                                        Object[] objArr222222 = new Object[i2];
                                        objArr222222[r32] = "m";
                                        objArr222222[r16] = e.getMessage();
                                        result322222.add("showMessageStr", BsonLite.document(objArr222222));
                                        return result322222;
                                    } catch (IllegalArgumentException e7) {
                                        e = e7;
                                        r32 = z3;
                                        r16 = 1;
                                        i2 = 2;
                                        LocalResourceEngine.Result result3222222 = new LocalResourceEngine.Result(bArr);
                                        Object[] objArr322222 = new Object[i2];
                                        objArr322222[r32] = "d";
                                        objArr322222[r16] = m52d(bArr, "ifm");
                                        result3222222.add("syncMazeData", BsonLite.document(objArr322222));
                                        Object[] objArr2222222 = new Object[i2];
                                        objArr2222222[r32] = "m";
                                        objArr2222222[r16] = e.getMessage();
                                        result3222222.add("showMessageStr", BsonLite.document(objArr2222222));
                                        return result3222222;
                                    }
                                    try {
                                        if (m53v(bArr3, strArr3[0]) > 0 && intValue >= m53v(bArr3, strArr3[0])) {
                                            throw new IllegalArgumentException("该商品已达到兑换上限");
                                        }
                                        Integer valueOf = Integer.valueOf(m53v);
                                        int i4 = m53v;
                                        c2 = 1;
                                        try {
                                            pairs.put(valueOf, Integer.valueOf(Math.addExact(intValue, 1)));
                                            bArr4 = BsonLite.withProfileArray(bArr4, strArr3[1], LocalAccountFeatures.pairList(pairs));
                                            i3++;
                                            strArr2 = strArr;
                                            m53v = i4;
                                            z3 = false;
                                        } catch (ArithmeticException e8) {
                                            e = e8;
                                            r16 = c2;
                                            r32 = z2;
                                            i2 = 2;
                                            LocalResourceEngine.Result result32222222 = new LocalResourceEngine.Result(bArr);
                                            Object[] objArr3222222 = new Object[i2];
                                            objArr3222222[r32] = "d";
                                            objArr3222222[r16] = m52d(bArr, "ifm");
                                            result32222222.add("syncMazeData", BsonLite.document(objArr3222222));
                                            Object[] objArr22222222 = new Object[i2];
                                            objArr22222222[r32] = "m";
                                            objArr22222222[r16] = e.getMessage();
                                            result32222222.add("showMessageStr", BsonLite.document(objArr22222222));
                                            return result32222222;
                                        } catch (IllegalArgumentException e9) {
                                            e = e9;
                                            r16 = c2;
                                            r32 = z2;
                                            i2 = 2;
                                            LocalResourceEngine.Result result322222222 = new LocalResourceEngine.Result(bArr);
                                            Object[] objArr32222222 = new Object[i2];
                                            objArr32222222[r32] = "d";
                                            objArr32222222[r16] = m52d(bArr, "ifm");
                                            result322222222.add("syncMazeData", BsonLite.document(objArr32222222));
                                            Object[] objArr222222222 = new Object[i2];
                                            objArr222222222[r32] = "m";
                                            objArr222222222[r16] = e.getMessage();
                                            result322222222.add("showMessageStr", BsonLite.document(objArr222222222));
                                            return result322222222;
                                        }
                                    } catch (ArithmeticException e10) {
                                        e = e10;
                                        z = z2;
                                        i2 = 2;
                                        r32 = z;
                                        r16 = 1;
                                        LocalResourceEngine.Result result3222222222 = new LocalResourceEngine.Result(bArr);
                                        Object[] objArr322222222 = new Object[i2];
                                        objArr322222222[r32] = "d";
                                        objArr322222222[r16] = m52d(bArr, "ifm");
                                        result3222222222.add("syncMazeData", BsonLite.document(objArr322222222));
                                        Object[] objArr2222222222 = new Object[i2];
                                        objArr2222222222[r32] = "m";
                                        objArr2222222222[r16] = e.getMessage();
                                        result3222222222.add("showMessageStr", BsonLite.document(objArr2222222222));
                                        return result3222222222;
                                    } catch (IllegalArgumentException e11) {
                                        e = e11;
                                        z = z2;
                                        i2 = 2;
                                        r32 = z;
                                        r16 = 1;
                                        LocalResourceEngine.Result result32222222222 = new LocalResourceEngine.Result(bArr);
                                        Object[] objArr3222222222 = new Object[i2];
                                        objArr3222222222[r32] = "d";
                                        objArr3222222222[r16] = m52d(bArr, "ifm");
                                        result32222222222.add("syncMazeData", BsonLite.document(objArr3222222222));
                                        Object[] objArr22222222222 = new Object[i2];
                                        objArr22222222222[r32] = "m";
                                        objArr22222222222[r16] = e.getMessage();
                                        result32222222222.add("showMessageStr", BsonLite.document(objArr22222222222));
                                        return result32222222222;
                                    }
                                }
                                z2 = z3;
                                c2 = 1;
                                int m53v2 = m53v(bArr3, "cost");
                                int m53v3 = m53v(bArr, "wCoin");
                                if (m53v3 < m53v2) {
                                    throw new IllegalArgumentException("巡逻兑换币不足");
                                }
                                LocalResourceEngine.Result result4 = r16;
                                result4.profile = BsonLite.withProfileInt(result4.profile, "wCoin", m53v3 - m53v2);
                                Iterator<byte[]> it = LocalResourceEngine.array(m52d(bArr3, "grants")).iterator();
                                while (it.hasNext()) {
                                    byte[] next = it.next();
                                    Iterator<byte[]> it2 = it;
                                    boolean z4 = z2;
                                    char c3 = c2;
                                    byte[] bArr5 = bArr4;
                                    LocalResourceEngine.Result result5 = result4;
                                    LocalResourceEngine.grant(result4, localResourceCatalog, BsonLite.stringValue(next, "k"), m53v(next, "i"), m53v(next, "n"), m53v(next, "q"));
                                    result4 = result5;
                                    bArr4 = bArr5;
                                    z2 = z4;
                                    c2 = c3;
                                    it = it2;
                                }
                                c = c2;
                                result = result4;
                                r3 = z2;
                                i = 2;
                                LocalResourceEngine.syncCurrencies(result);
                                refresh = bArr4;
                            } catch (ArithmeticException e12) {
                                e = e12;
                                r32 = 0;
                                i2 = 2;
                                r16 = 1;
                                LocalResourceEngine.Result result322222222222 = new LocalResourceEngine.Result(bArr);
                                Object[] objArr32222222222 = new Object[i2];
                                objArr32222222222[r32] = "d";
                                objArr32222222222[r16] = m52d(bArr, "ifm");
                                result322222222222.add("syncMazeData", BsonLite.document(objArr32222222222));
                                Object[] objArr222222222222 = new Object[i2];
                                objArr222222222222[r32] = "m";
                                objArr222222222222[r16] = e.getMessage();
                                result322222222222.add("showMessageStr", BsonLite.document(objArr222222222222));
                                return result322222222222;
                            } catch (IllegalArgumentException e13) {
                                e = e13;
                                r32 = 0;
                                i2 = 2;
                                r16 = 1;
                                LocalResourceEngine.Result result3222222222222 = new LocalResourceEngine.Result(bArr);
                                Object[] objArr322222222222 = new Object[i2];
                                objArr322222222222[r32] = "d";
                                objArr322222222222[r16] = m52d(bArr, "ifm");
                                result3222222222222.add("syncMazeData", BsonLite.document(objArr322222222222));
                                Object[] objArr2222222222222 = new Object[i2];
                                objArr2222222222222[r32] = "m";
                                objArr2222222222222[r16] = e.getMessage();
                                result3222222222222.add("showMessageStr", BsonLite.document(objArr2222222222222));
                                return result3222222222222;
                            }
                        }
                    }
                    throw new IllegalArgumentException("巡逻兑换商品无效");
                }
                boolean z5 = false;
                result = r16;
                i = 2;
                c = 1;
                if ("firstEnterMaze".equals(str)) {
                    refresh = BsonLite.withProfileBool(refresh, "fe", false);
                    r3 = z5;
                } else if ("updateDancengAIFlag".equals(str)) {
                    Boolean boolValue = BsonLite.boolValue(bArr2, "f");
                    if (boolValue == null) {
                        throw new IllegalArgumentException("巡逻自动战斗设置无效");
                    }
                    refresh = BsonLite.withProfileBool(refresh, "laf", boolValue.booleanValue());
                    r3 = z5;
                } else {
                    r3 = z5;
                    if (!"queryMazeState".equals(str)) {
                        throw new IllegalArgumentException("该巡逻接口尚未接入");
                    }
                }
                LocalResourceEngine.Result result6 = result;
                result6.profile = BsonLite.withProfileDocument(result6.profile, "ifm", refresh);
                Object[] objArr4 = new Object[i];
                objArr4[r3] = "d";
                objArr4[c] = refresh;
                result6.add("syncMazeData", BsonLite.document(objArr4));
                if ("exchangeWCoinItem".equals(str)) {
                    Object[] objArr5 = new Object[i];
                    objArr5[r3] = "r";
                    objArr5[c] = result6.reward();
                    result6.add("buyWMallItemDone", BsonLite.document(objArr5));
                }
                return result6;
            } catch (ArithmeticException e14) {
                e = e14;
            } catch (IllegalArgumentException e15) {
                e = e15;
            }
        } catch (ArithmeticException | IllegalArgumentException e16) {
            e = e16;
            z = z3;
        }
    }
}
