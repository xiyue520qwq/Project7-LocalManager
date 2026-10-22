package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalAccountFeatures {
    LocalAccountFeatures() {
    }

    static boolean handles(String str, byte[] bArr) {
        return "rookieGainRewards".equals(str) || "summoncoinExchange".equals(str) || ("buyCardMallItem".equals(str) && LocalResourceEngine.value(bArr, "store_id") == 1934);
    }

    static byte[] refreshRecharge(byte[] bArr) {
        byte[] doc = LocalResourceEngine.doc(bArr, "sma");
        byte[] doc2 = LocalResourceEngine.doc(doc, "rcd");
        boolean hasRecharge = hasRecharge(bArr);
        Object[] objArr = new Object[6];
        objArr[0] = "n";
        objArr[1] = Double.valueOf(hasRecharge ? 1.0d : 0.0d);
        objArr[2] = "t";
        objArr[3] = Double.valueOf(0.001d);
        objArr[4] = "gr";
        objArr[5] = Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(doc2, "gr")));
        return BsonLite.withProfileDocument(bArr, "sma", BsonLite.withProfileDocument(doc, "rcd", BsonLite.document(objArr)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x04de  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    /* JADX WARN: Unreachable blocks removed: 3, instructions: 5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2) {
        Object obj;
        Object obj2;
        String str2;
        boolean z;
        Object obj3;
        char c;
        ?? r4;
        String str3;
        LocalResourceEngine.Result result;
        char c2;
        Object obj4;
        boolean z2;
        int value;
        int[][] iArr;
        char c3;
        int intValue;
        Object[] objArr;
        Object obj5;
        boolean z3;
        Object obj6;
        char c4;
        char c5;
        ?? r11 = "e";
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
        try {
        } catch (ArithmeticException | IllegalArgumentException e) {
            e = e;
            obj = "replyBuyCardMallItem";
            obj2 = "e";
            str2 = "rookieGainRewardsReply";
        }
        if ("rookieGainRewards".equals(str)) {
            byte[] doc = LocalResourceEngine.doc(LocalResourceEngine.doc(refreshRecharge(bArr), "sma"), "rcd");
            if (Boolean.TRUE.equals(BsonLite.boolValue(doc, "gr"))) {
                Object[] objArr2 = new Object[4];
                try {
                    objArr2[0] = "r";
                    objArr2[1] = BsonLite.EMPTY_DOCUMENT;
                    objArr2[2] = "e";
                    try {
                        objArr2[3] = 1692;
                        result2.add("rookieGainRewardsReply", BsonLite.document(objArr2));
                        return result2;
                    } catch (ArithmeticException e2) {
                        e = e2;
                        obj6 = "replyBuyCardMallItem";
                        obj2 = "e";
                        str2 = "rookieGainRewardsReply";
                        c4 = 3;
                        r4 = 0;
                        str3 = obj6;
                        c = c4;
                        LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(bArr);
                        result3.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if ("rookieGainRewards".equals(str)) {
                        }
                        if ("buyCardMallItem".equals(str)) {
                        }
                    } catch (IllegalArgumentException e3) {
                        e = e3;
                        obj6 = "replyBuyCardMallItem";
                        obj2 = "e";
                        str2 = "rookieGainRewardsReply";
                        c4 = 3;
                        r4 = 0;
                        str3 = obj6;
                        c = c4;
                        LocalResourceEngine.Result result32 = new LocalResourceEngine.Result(bArr);
                        result32.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if ("rookieGainRewards".equals(str)) {
                        }
                        if ("buyCardMallItem".equals(str)) {
                        }
                    }
                } catch (ArithmeticException e4) {
                    e = e4;
                    z3 = false;
                    obj5 = "replyBuyCardMallItem";
                    obj2 = "e";
                    str2 = "rookieGainRewardsReply";
                    obj3 = obj5;
                    z = z3;
                    c = 3;
                    str3 = obj3;
                    r4 = z;
                    LocalResourceEngine.Result result322 = new LocalResourceEngine.Result(bArr);
                    result322.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                    if ("rookieGainRewards".equals(str)) {
                    }
                    if ("buyCardMallItem".equals(str)) {
                    }
                } catch (IllegalArgumentException e5) {
                    e = e5;
                    z3 = false;
                    obj5 = "replyBuyCardMallItem";
                    obj2 = "e";
                    str2 = "rookieGainRewardsReply";
                    obj3 = obj5;
                    z = z3;
                    c = 3;
                    str3 = obj3;
                    r4 = z;
                    LocalResourceEngine.Result result3222 = new LocalResourceEngine.Result(bArr);
                    result3222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                    if ("rookieGainRewards".equals(str)) {
                    }
                    if ("buyCardMallItem".equals(str)) {
                    }
                }
            } else if (hasRecharge(bArr)) {
                LocalResourceEngine.grant(result2, localResourceCatalog, "hero", 81, 1, 1);
                LocalResourceEngine.grant(result2, localResourceCatalog, "treasure", 1305, 1, 3);
                LocalResourceEngine.grant(result2, localResourceCatalog, "item", 3000, 5, 1);
                byte[] withProfileBool = BsonLite.withProfileBool(doc, "gr", true);
                result = result2;
                result.profile = BsonLite.withProfileDocument(result.profile, "sma", BsonLite.withProfileDocument(LocalResourceEngine.doc(result.profile, "sma"), "rcd", withProfileBool));
                Object[] objArr3 = new Object[2];
                try {
                    objArr3[0] = "d";
                    objArr3[1] = withProfileBool;
                    result.add("rookieRechargeSyncData", BsonLite.document(objArr3));
                    objArr = new Object[4];
                    boolean z4 = false;
                    try {
                        objArr[0] = "r";
                        objArr[1] = result.reward();
                        objArr[2] = "e";
                        z4 = false;
                        c2 = 3;
                    } catch (ArithmeticException | IllegalArgumentException e6) {
                        e = e6;
                        obj5 = "replyBuyCardMallItem";
                        z3 = z4;
                        obj2 = "e";
                        str2 = "rookieGainRewardsReply";
                        obj3 = obj5;
                        z = z3;
                        c = 3;
                        str3 = obj3;
                        r4 = z;
                        LocalResourceEngine.Result result32222 = new LocalResourceEngine.Result(bArr);
                        result32222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if ("rookieGainRewards".equals(str)) {
                        }
                        if ("buyCardMallItem".equals(str)) {
                        }
                    }
                } catch (ArithmeticException | IllegalArgumentException e7) {
                    e = e7;
                    obj3 = "replyBuyCardMallItem";
                    obj2 = "e";
                    str2 = "rookieGainRewardsReply";
                    z = false;
                    c = 3;
                    str3 = obj3;
                    r4 = z;
                    LocalResourceEngine.Result result322222 = new LocalResourceEngine.Result(bArr);
                    result322222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                    if ("rookieGainRewards".equals(str)) {
                    }
                    if ("buyCardMallItem".equals(str)) {
                    }
                }
                try {
                    objArr[3] = 0;
                    result.add("rookieGainRewardsReply", BsonLite.document(objArr));
                } catch (ArithmeticException | IllegalArgumentException e8) {
                    e = e8;
                    obj4 = "replyBuyCardMallItem";
                    z2 = false;
                    obj2 = "e";
                    str2 = "rookieGainRewardsReply";
                    c = c2;
                    str3 = obj4;
                    r4 = z2;
                    LocalResourceEngine.Result result3222222 = new LocalResourceEngine.Result(bArr);
                    result3222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                    if ("rookieGainRewards".equals(str)) {
                    }
                    if ("buyCardMallItem".equals(str)) {
                    }
                }
            } else {
                try {
                    Object[] objArr4 = new Object[4];
                    try {
                        objArr4[0] = "r";
                        objArr4[1] = BsonLite.EMPTY_DOCUMENT;
                    } catch (ArithmeticException e9) {
                        e = e9;
                        c5 = 3;
                        str3 = "replyBuyCardMallItem";
                        obj2 = "e";
                        str2 = "rookieGainRewardsReply";
                        r4 = 0;
                        c = c5;
                        LocalResourceEngine.Result result32222222 = new LocalResourceEngine.Result(bArr);
                        result32222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if ("rookieGainRewards".equals(str)) {
                        }
                        if ("buyCardMallItem".equals(str)) {
                        }
                    } catch (IllegalArgumentException e10) {
                        e = e10;
                        c5 = 3;
                        str3 = "replyBuyCardMallItem";
                        obj2 = "e";
                        str2 = "rookieGainRewardsReply";
                        r4 = 0;
                        c = c5;
                        LocalResourceEngine.Result result322222222 = new LocalResourceEngine.Result(bArr);
                        result322222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if ("rookieGainRewards".equals(str)) {
                        }
                        if ("buyCardMallItem".equals(str)) {
                        }
                    }
                    try {
                        objArr4[2] = "e";
                        c5 = 3;
                        try {
                            objArr4[3] = 1151;
                            result2.add("rookieGainRewardsReply", BsonLite.document(objArr4));
                            return result2;
                        } catch (ArithmeticException e11) {
                            e = e11;
                            str3 = "replyBuyCardMallItem";
                            obj2 = "e";
                            str2 = "rookieGainRewardsReply";
                            r4 = 0;
                            c = c5;
                            LocalResourceEngine.Result result3222222222 = new LocalResourceEngine.Result(bArr);
                            result3222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                            if ("rookieGainRewards".equals(str)) {
                            }
                            if ("buyCardMallItem".equals(str)) {
                            }
                        } catch (IllegalArgumentException e12) {
                            e = e12;
                            str3 = "replyBuyCardMallItem";
                            obj2 = "e";
                            str2 = "rookieGainRewardsReply";
                            r4 = 0;
                            c = c5;
                            LocalResourceEngine.Result result32222222222 = new LocalResourceEngine.Result(bArr);
                            result32222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                            if ("rookieGainRewards".equals(str)) {
                            }
                            if ("buyCardMallItem".equals(str)) {
                            }
                        }
                    } catch (ArithmeticException e13) {
                        e = e13;
                        c5 = 3;
                        str3 = "replyBuyCardMallItem";
                        obj2 = "e";
                        str2 = "rookieGainRewardsReply";
                        r4 = 0;
                        c = c5;
                        LocalResourceEngine.Result result322222222222 = new LocalResourceEngine.Result(bArr);
                        result322222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if ("rookieGainRewards".equals(str)) {
                        }
                        if ("buyCardMallItem".equals(str)) {
                        }
                    } catch (IllegalArgumentException e14) {
                        e = e14;
                        c5 = 3;
                        str3 = "replyBuyCardMallItem";
                        obj2 = "e";
                        str2 = "rookieGainRewardsReply";
                        r4 = 0;
                        c = c5;
                        LocalResourceEngine.Result result3222222222222 = new LocalResourceEngine.Result(bArr);
                        result3222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if ("rookieGainRewards".equals(str)) {
                        }
                        if ("buyCardMallItem".equals(str)) {
                        }
                    }
                } catch (ArithmeticException e15) {
                    e = e15;
                    obj6 = "replyBuyCardMallItem";
                    obj2 = "e";
                    str2 = "rookieGainRewardsReply";
                    c4 = 3;
                    r4 = 0;
                    str3 = obj6;
                    c = c4;
                    LocalResourceEngine.Result result32222222222222 = new LocalResourceEngine.Result(bArr);
                    result32222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                    if ("rookieGainRewards".equals(str)) {
                    }
                    if ("buyCardMallItem".equals(str)) {
                    }
                } catch (IllegalArgumentException e16) {
                    e = e16;
                    obj6 = "replyBuyCardMallItem";
                    obj2 = "e";
                    str2 = "rookieGainRewardsReply";
                    c4 = 3;
                    r4 = 0;
                    str3 = obj6;
                    c = c4;
                    LocalResourceEngine.Result result322222222222222 = new LocalResourceEngine.Result(bArr);
                    result322222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                    if ("rookieGainRewards".equals(str)) {
                    }
                    if ("buyCardMallItem".equals(str)) {
                    }
                }
            }
            r4 = 0;
            str3 = obj6;
            c = c4;
            LocalResourceEngine.Result result3222222222222222 = new LocalResourceEngine.Result(bArr);
            result3222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
            if ("rookieGainRewards".equals(str)) {
                Object[] objArr5 = new Object[4];
                objArr5[r4] = "r";
                objArr5[1] = BsonLite.EMPTY_DOCUMENT;
                objArr5[2] = obj2;
                objArr5[c] = 1151;
                result3222222222222222.add(str2, BsonLite.document(objArr5));
            }
            if ("buyCardMallItem".equals(str)) {
                return result3222222222222222;
            }
            Object[] objArr6 = new Object[4];
            objArr6[r4] = "r";
            objArr6[1] = Boolean.valueOf((boolean) r4);
            objArr6[2] = "i";
            objArr6[c] = BsonLite.EMPTY_DOCUMENT;
            result3222222222222222.add(str3, BsonLite.document(objArr6));
            return result3222222222222222;
        }
        result = result2;
        c2 = 3;
        try {
            boolean equals = "summoncoinExchange".equals(str);
            try {
                if (equals) {
                    try {
                        value = LocalResourceEngine.value(bArr2, "i");
                        iArr = new int[6][];
                        iArr[0] = new int[0];
                        c3 = 3;
                    } catch (ArithmeticException e17) {
                        e = e17;
                        obj2 = "e";
                        str2 = "rookieGainRewardsReply";
                        equals = false;
                        r11 = 3;
                        str3 = "replyBuyCardMallItem";
                        r4 = equals;
                        c = r11;
                        LocalResourceEngine.Result result32222222222222222 = new LocalResourceEngine.Result(bArr);
                        result32222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if ("rookieGainRewards".equals(str)) {
                        }
                        if ("buyCardMallItem".equals(str)) {
                        }
                    } catch (IllegalArgumentException e18) {
                        e = e18;
                        obj2 = "e";
                        str2 = "rookieGainRewardsReply";
                        equals = false;
                        r11 = 3;
                        str3 = "replyBuyCardMallItem";
                        r4 = equals;
                        c = r11;
                        LocalResourceEngine.Result result322222222222222222 = new LocalResourceEngine.Result(bArr);
                        result322222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if ("rookieGainRewards".equals(str)) {
                        }
                        if ("buyCardMallItem".equals(str)) {
                        }
                    }
                    try {
                        int[] iArr2 = new int[3];
                        iArr2[0] = 6400;
                        iArr2[1] = 168;
                        iArr2[2] = 0;
                        iArr[1] = iArr2;
                        int[] iArr3 = new int[3];
                        iArr3[0] = 1920;
                        iArr3[1] = 48;
                        iArr3[2] = 0;
                        iArr[2] = iArr3;
                        int[] iArr4 = new int[3];
                        iArr4[0] = 280;
                        iArr4[1] = 7;
                        iArr4[2] = 0;
                        iArr[3] = iArr4;
                        int[] iArr5 = new int[3];
                        iArr5[0] = 2800;
                        iArr5[1] = 7;
                        iArr5[2] = 5;
                        iArr[4] = iArr5;
                        c3 = 3;
                        int[] iArr6 = new int[3];
                        iArr6[0] = 400;
                        iArr6[1] = 1;
                        iArr6[2] = 7;
                        try {
                            iArr[5] = iArr6;
                            if (value < 1 || value > 5) {
                                throw new IllegalArgumentException("兑换档位无效");
                            }
                            obj2 = "e";
                            str2 = "rookieGainRewardsReply";
                            try {
                                byte[] refreshStoreLimits = LocalCommerceEngine.refreshStoreLimits(bArr, System.currentTimeMillis());
                                byte[] doc2 = LocalResourceEngine.doc(refreshStoreLimits, "ldd");
                                Map<Integer, Integer> pairs = pairs(LocalResourceEngine.doc(doc2, "swl"));
                                String str4 = value <= 3 ? "yuanbao" : "crystal";
                                if (pairs.containsKey(Integer.valueOf(value))) {
                                    try {
                                        intValue = pairs.get(Integer.valueOf(value)).intValue();
                                    } catch (ArithmeticException | IllegalArgumentException e19) {
                                        e = e19;
                                        obj = "replyBuyCardMallItem";
                                        z = false;
                                        obj3 = obj;
                                        c = 3;
                                        str3 = obj3;
                                        r4 = z;
                                        LocalResourceEngine.Result result3222222222222222222 = new LocalResourceEngine.Result(bArr);
                                        result3222222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                                        if ("rookieGainRewards".equals(str)) {
                                        }
                                        if ("buyCardMallItem".equals(str)) {
                                        }
                                    }
                                } else {
                                    intValue = 0;
                                }
                                if (iArr[value][2] > 0 && intValue >= iArr[value][2]) {
                                    throw new IllegalArgumentException("本周兑换次数已用完");
                                }
                                try {
                                    result.profile = spend(refreshStoreLimits, str4, iArr[value][0]);
                                    pairs.put(Integer.valueOf(value), Integer.valueOf(Math.addExact(intValue, 1)));
                                    result.profile = BsonLite.withProfileDocument(result.profile, "ldd", BsonLite.withProfileArray(doc2, "swl", pairList(pairs)));
                                    LocalResourceEngine.grant(result, localResourceCatalog, "summonCoin", 0, iArr[value][1], 1);
                                    LocalResourceEngine.syncCurrencies(result);
                                    result.add("summoncoinExchangeReply", BsonLite.document("r", true, "i", Integer.valueOf(value)));
                                } catch (ArithmeticException e20) {
                                    e = e20;
                                    equals = false;
                                    r11 = 3;
                                    str3 = "replyBuyCardMallItem";
                                    r4 = equals;
                                    c = r11;
                                    LocalResourceEngine.Result result32222222222222222222 = new LocalResourceEngine.Result(bArr);
                                    result32222222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                                    if ("rookieGainRewards".equals(str)) {
                                    }
                                    if ("buyCardMallItem".equals(str)) {
                                    }
                                } catch (IllegalArgumentException e21) {
                                    e = e21;
                                    equals = false;
                                    r11 = 3;
                                    str3 = "replyBuyCardMallItem";
                                    r4 = equals;
                                    c = r11;
                                    LocalResourceEngine.Result result322222222222222222222 = new LocalResourceEngine.Result(bArr);
                                    result322222222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                                    if ("rookieGainRewards".equals(str)) {
                                    }
                                    if ("buyCardMallItem".equals(str)) {
                                    }
                                }
                            } catch (ArithmeticException e22) {
                                e = e22;
                                equals = false;
                                r11 = 3;
                                str3 = "replyBuyCardMallItem";
                                r4 = equals;
                                c = r11;
                                LocalResourceEngine.Result result3222222222222222222222 = new LocalResourceEngine.Result(bArr);
                                result3222222222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                                if ("rookieGainRewards".equals(str)) {
                                }
                                if ("buyCardMallItem".equals(str)) {
                                }
                            } catch (IllegalArgumentException e23) {
                                e = e23;
                                equals = false;
                                r11 = 3;
                                str3 = "replyBuyCardMallItem";
                                r4 = equals;
                                c = r11;
                                LocalResourceEngine.Result result32222222222222222222222 = new LocalResourceEngine.Result(bArr);
                                result32222222222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                                if ("rookieGainRewards".equals(str)) {
                                }
                                if ("buyCardMallItem".equals(str)) {
                                }
                            }
                        } catch (ArithmeticException e24) {
                            e = e24;
                            obj2 = "e";
                            str2 = "rookieGainRewardsReply";
                            equals = false;
                            r11 = 3;
                            str3 = "replyBuyCardMallItem";
                            r4 = equals;
                            c = r11;
                            LocalResourceEngine.Result result322222222222222222222222 = new LocalResourceEngine.Result(bArr);
                            result322222222222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                            if ("rookieGainRewards".equals(str)) {
                            }
                            if ("buyCardMallItem".equals(str)) {
                            }
                        } catch (IllegalArgumentException e25) {
                            e = e25;
                            obj2 = "e";
                            str2 = "rookieGainRewardsReply";
                            equals = false;
                            r11 = 3;
                            str3 = "replyBuyCardMallItem";
                            r4 = equals;
                            c = r11;
                            LocalResourceEngine.Result result3222222222222222222222222 = new LocalResourceEngine.Result(bArr);
                            result3222222222222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                            if ("rookieGainRewards".equals(str)) {
                            }
                            if ("buyCardMallItem".equals(str)) {
                            }
                        }
                    } catch (ArithmeticException e26) {
                        e = e26;
                        obj2 = "e";
                        str2 = "rookieGainRewardsReply";
                        equals = false;
                        r11 = c3;
                        str3 = "replyBuyCardMallItem";
                        r4 = equals;
                        c = r11;
                        LocalResourceEngine.Result result32222222222222222222222222 = new LocalResourceEngine.Result(bArr);
                        result32222222222222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if ("rookieGainRewards".equals(str)) {
                        }
                        if ("buyCardMallItem".equals(str)) {
                        }
                    } catch (IllegalArgumentException e27) {
                        e = e27;
                        obj2 = "e";
                        str2 = "rookieGainRewardsReply";
                        equals = false;
                        r11 = c3;
                        str3 = "replyBuyCardMallItem";
                        r4 = equals;
                        c = r11;
                        LocalResourceEngine.Result result322222222222222222222222222 = new LocalResourceEngine.Result(bArr);
                        result322222222222222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if ("rookieGainRewards".equals(str)) {
                        }
                        if ("buyCardMallItem".equals(str)) {
                        }
                    }
                } else {
                    obj2 = "e";
                    str2 = "rookieGainRewardsReply";
                    c = 3;
                    c = 3;
                    str3 = 1;
                    str3 = 1;
                    try {
                        if (LocalResourceEngine.value(bArr2, "num") != 1) {
                            throw new IllegalArgumentException("免费补给每次仅可领取一份");
                        }
                        result.profile = LocalCommerceEngine.refreshStoreLimits(bArr, System.currentTimeMillis());
                        byte[] doc3 = LocalResourceEngine.doc(result.profile, "ldd");
                        Map<Integer, Integer> pairs2 = pairs(LocalResourceEngine.doc(doc3, "din"));
                        if (pairs2.containsKey(1934) && pairs2.get(1934).intValue() >= 1) {
                            throw new IllegalArgumentException("今日免费补给已领取");
                        }
                        LocalResourceEngine.grant(result, localResourceCatalog, "item", new SecureRandom().nextInt(3) + 494, 1, 1);
                        int[] iArr7 = {488, 489, 490};
                        for (int i = 0; i < 3; i++) {
                            LocalResourceEngine.grant(result, localResourceCatalog, "item", iArr7[i], 3, 1);
                        }
                        LocalResourceEngine.grant(result, localResourceCatalog, "money", 0, 10000, 1);
                        pairs2.put(1934, 1);
                        byte[] withProfileArray = BsonLite.withProfileArray(doc3, "din", pairList(pairs2));
                        result.profile = BsonLite.withProfileDocument(result.profile, "ldd", withProfileArray);
                        LocalResourceEngine.syncCurrencies(result);
                        result.add("replyBuyCardMallItem", BsonLite.document("r", true, "i", BsonLite.EMPTY_DOCUMENT));
                        result.add("buyCardMallItemDone", BsonLite.document("d", pairList(pairs2), "w", pairList(pairs(LocalResourceEngine.doc(withProfileArray, "win"))), "t", pairList(pairs(LocalResourceEngine.doc(withProfileArray, "ton"))), "m", pairList(pairs(LocalResourceEngine.doc(withProfileArray, "mon"))), "z", Collections.emptyList(), "itemid", 11413, "num", 1, "result", result.reward(), "sd", 1934, "silence", false));
                    } catch (ArithmeticException e28) {
                        e = e28;
                        r4 = false;
                    } catch (IllegalArgumentException e29) {
                        e = e29;
                        r4 = false;
                    }
                }
            } catch (ArithmeticException e30) {
                e = e30;
            } catch (IllegalArgumentException e31) {
                e = e31;
            }
        } catch (ArithmeticException | IllegalArgumentException e32) {
            e = e32;
            obj4 = "replyBuyCardMallItem";
            obj2 = "e";
            str2 = "rookieGainRewardsReply";
            z2 = false;
            c = c2;
            str3 = obj4;
            r4 = z2;
            LocalResourceEngine.Result result3222222222222222222222222222 = new LocalResourceEngine.Result(bArr);
            result3222222222222222222222222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
            if ("rookieGainRewards".equals(str)) {
            }
            if ("buyCardMallItem".equals(str)) {
            }
        }
        return result;
    }

    private static byte[] spend(byte[] bArr, String str, int i) {
        String str2 = "yuanbao".equals(str) ? "fyuanbao" : "bind_crystal";
        int value = LocalResourceEngine.value(bArr, str);
        int value2 = LocalResourceEngine.value(bArr, str2);
        if ((value + value2) - ("yuanbao".equals(str) ? LocalResourceEngine.value(bArr, "dyuanbao") : 0) < i) {
            throw new IllegalArgumentException("兑换所需货币不足");
        }
        int min = Math.min(value2, i);
        return BsonLite.withProfileInt(BsonLite.withProfileInt(bArr, str2, value2 - min), str, value - (i - min));
    }

    private static boolean hasRecharge(byte[] bArr) {
        byte[] doc = LocalResourceEngine.doc(bArr, "eby");
        for (String str : BsonLite.keys(doc)) {
            if (LocalResourceEngine.value(doc, str) > 0 || Boolean.TRUE.equals(BsonLite.boolValue(doc, str))) {
                return true;
            }
        }
        return false;
    }

    static Map<Integer, Integer> pairs(byte[] bArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> it = BsonLite.keys(bArr).iterator();
        while (it.hasNext()) {
            byte[] doc = LocalResourceEngine.doc(bArr, it.next());
            linkedHashMap.put(Integer.valueOf(LocalResourceEngine.value(doc, "0")), Integer.valueOf(LocalResourceEngine.value(doc, "1")));
        }
        return linkedHashMap;
    }

    static List<List<Integer>> pairList(Map<Integer, Integer> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            arrayList.add(Arrays.asList(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }
}
