package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceCatalog;
import com.project7.localmanager.LocalResourceEngine;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;

/* loaded from: classes.dex */
final class LocalDrawEngine {
    private static final Random RANDOM = new SecureRandom();

    LocalDrawEngine() {
    }

    static boolean handles(String str) {
        return Arrays.asList("requestLuckyDrawFile", "requestLuckyDrawCard", "requestFile", "requestQuitFile", "requestLuckyDrawFileAndOpenAll", "requestLuckyDrawAllLeftCard", "setChooseHeroes").contains(str);
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2) {
        return apply(bArr, localResourceCatalog, str, bArr2, RANDOM);
    }

    /* JADX WARN: Code restructure failed: missing block: B:210:0x0163, code lost:
    
        if (r4 != 1) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x016f, code lost:
    
        if (com.project7.localmanager.LocalResourceEngine.value(state(r6.profile, 1), "ct") != 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0171, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x0174, code lost:
    
        if (r1 == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0176, code lost:
    
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x017a, code lost:
    
        spend(r6, r14, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x017d, code lost:
    
        if (r10 != null) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x017f, code lost:
    
        r1 = makeFile(r8, r42, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0188, code lost:
    
        r3 = com.project7.localmanager.BsonLite.withProfileDocument(r13, "q7File", r1);
        r13 = 1;
        saveState(r6, com.project7.localmanager.BsonLite.withProfileBool(r3, "iof", true), r4);
        r14 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0184, code lost:
    
        r1 = makeActivityFile(r8, r10, r13, r42);
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x0178, code lost:
    
        r14 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0173, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x05a9  */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v4, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2, Random random) {
        String str2;
        String str3;
        String str4;
        Object obj;
        Object obj2;
        Object obj3;
        RuntimeException runtimeException;
        LocalResourceCatalog.Pool pool;
        String str5;
        ?? r13;
        ArrayList arrayList;
        boolean z;
        int value;
        int i;
        byte[] bArr3;
        int i2;
        int i3;
        int i4;
        LocalResourceEngine.Result result;
        byte[] bArr4;
        LocalResourceCatalog.Pool pool2;
        String str6;
        LocalResourceCatalog localResourceCatalog2 = localResourceCatalog;
        String str7 = "replyFile";
        String str8 = "requestFile";
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
        String str9 = "t";
        int value2 = LocalResourceEngine.value(bArr2, "t");
        if (value2 == 0) {
            value2 = 1;
        }
        if ("setChooseHeroes".equals(str)) {
            return choose(bArr, localResourceCatalog2, bArr2, value2);
        }
        try {
            obj = "trwd";
            try {
                pool = localResourceCatalog2.pools.get(Integer.valueOf(value2));
            } catch (ArithmeticException | IllegalArgumentException e) {
                e = e;
                str2 = "t";
                str3 = "replyFile";
                str4 = "requestFile";
                obj2 = "prog";
                obj3 = "info";
                runtimeException = e;
                LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(bArr);
                result3.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                result3.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                return result3;
            }
        } catch (ArithmeticException | IllegalArgumentException e2) {
            e = e2;
            str2 = "t";
            str3 = "replyFile";
            str4 = "requestFile";
            obj = "trwd";
        }
        if (value2 == 1 || pool != null) {
            byte[] state = state(bArr, value2);
            byte[] doc = LocalResourceEngine.doc(state, "q7File");
            obj2 = "prog";
            byte[] bArr5 = doc;
            for (String str10 : BsonLite.keys(doc)) {
                try {
                    try {
                        str5 = str7;
                        try {
                            bArr5 = BsonLite.withProfileDocument(bArr5, str10, normalizeCard(LocalResourceEngine.doc(bArr5, str10), localResourceCatalog2));
                            str7 = str5;
                        } catch (ArithmeticException | IllegalArgumentException e3) {
                            runtimeException = e3;
                            str2 = "t";
                            str4 = "requestFile";
                            obj3 = "info";
                            str3 = str5;
                            LocalResourceEngine.Result result32 = new LocalResourceEngine.Result(bArr);
                            result32.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                            result32.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                            return result32;
                        }
                    } catch (ArithmeticException | IllegalArgumentException e4) {
                        runtimeException = e4;
                        str2 = "t";
                        str3 = str7;
                        str4 = "requestFile";
                    }
                } catch (ArithmeticException | IllegalArgumentException e5) {
                    e = e5;
                    str2 = "t";
                    str3 = str7;
                    str4 = "requestFile";
                    obj3 = "info";
                    runtimeException = e;
                    LocalResourceEngine.Result result322 = new LocalResourceEngine.Result(bArr);
                    result322.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                    result322.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                    return result322;
                }
            }
            str5 = str7;
            try {
                r13 = state;
                if (!Arrays.equals(doc, bArr5)) {
                    byte[] withProfileDocument = BsonLite.withProfileDocument(state, "q7File", bArr5);
                    saveState(result2, withProfileDocument, value2);
                    r13 = withProfileDocument;
                }
            } catch (ArithmeticException | IllegalArgumentException e6) {
                e = e6;
                str2 = "t";
                str4 = "requestFile";
                obj3 = "info";
            }
            if ("requestQuitFile".equals(str)) {
                saveState(result2, BsonLite.withProfileDocument(BsonLite.withProfileBool(r13, "iof", false), "q7File", BsonLite.EMPTY_DOCUMENT), value2);
                result2.add("replyQuitFile", BsonLite.document("rt", true, "t", Integer.valueOf(value2)));
                syncActivity(result2, value2);
                return result2;
            }
            if (pool != null && selected(r13, 1) == 0) {
                throw new IllegalArgumentException("请先选择特别推荐的S级和A级神器使");
            }
            boolean equals = Boolean.TRUE.equals(BsonLite.boolValue(r13, "iof"));
            boolean equals2 = "requestLuckyDrawFileAndOpenAll".equals(str);
            obj3 = "info";
            try {
            } catch (ArithmeticException | IllegalArgumentException e7) {
                e = e7;
                str2 = "t";
                str4 = "requestFile";
                str3 = str5;
                runtimeException = e;
                LocalResourceEngine.Result result3222 = new LocalResourceEngine.Result(bArr);
                result3222.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                result3222.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                return result3222;
            }
            try {
                if ("requestLuckyDrawFile".equals(str) || equals2) {
                    if (equals2 && equals) {
                        throw new IllegalArgumentException("请先领取或关闭当前碎片，再开启新的碎片");
                    }
                    if (!equals2) {
                        LocalResourceEngine.syncCurrencies(result2);
                        result2.add("replyLuckyDrawFile", BsonLite.document("rt", true, "t", Integer.valueOf(value2)));
                        syncActivity(result2, value2);
                        return result2;
                    }
                } else if (!equals || BsonLite.keys(bArr5).isEmpty()) {
                    throw new IllegalArgumentException("请先开启碎片");
                }
                try {
                } catch (ArithmeticException | IllegalArgumentException e8) {
                    runtimeException = e8;
                    str2 = "t";
                    str4 = "requestFile";
                    str3 = r13;
                }
            } catch (ArithmeticException e9) {
                e = e9;
                runtimeException = e;
                str2 = "t";
                str4 = "requestFile";
                str3 = str5;
                LocalResourceEngine.Result result32222 = new LocalResourceEngine.Result(bArr);
                result32222.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                result32222.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                return result32222;
            } catch (IllegalArgumentException e10) {
                e = e10;
                runtimeException = e;
                str2 = "t";
                str4 = "requestFile";
                str3 = str5;
                LocalResourceEngine.Result result322222 = new LocalResourceEngine.Result(bArr);
                result322222.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                result322222.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                return result322222;
            }
            if ("requestFile".equals(str)) {
                result2.add(str5, BsonLite.document("rt", true, obj3, bArr5, "t", Integer.valueOf(value2)));
                return result2;
            }
            String str11 = str5;
            try {
                arrayList = new ArrayList();
                z = equals2 || "requestLuckyDrawAllLeftCard".equals(str);
                value = LocalResourceEngine.value(bArr2, "idx");
            } catch (ArithmeticException | IllegalArgumentException e11) {
                e = e11;
                str2 = "t";
                str4 = "requestFile";
                str3 = str11;
            }
            if (!z && (value < 0 || value >= 6)) {
                throw new IllegalArgumentException("碎片序号无效");
            }
            String str12 = "q7File";
            byte[] bArr6 = bArr5;
            int i5 = 0;
            while (true) {
                str3 = str11;
                str4 = str8;
                if (i5 >= 6) {
                    break;
                }
                if (z || i5 == value) {
                    try {
                        byte[] doc2 = LocalResourceEngine.doc(bArr6, Integer.toString(i5));
                        i = value;
                        bArr3 = bArr5;
                        if (!Boolean.TRUE.equals(BsonLite.boolValue(doc2, "is_open"))) {
                            Iterator<String> it = BsonLite.keys(bArr6).iterator();
                            int i6 = 0;
                            while (it.hasNext()) {
                                Iterator<String> it2 = it;
                                str2 = str9;
                                try {
                                    if (Boolean.TRUE.equals(BsonLite.boolValue(LocalResourceEngine.doc(bArr6, it.next()), "is_open"))) {
                                        i6++;
                                    }
                                    it = it2;
                                    str9 = str2;
                                } catch (ArithmeticException e12) {
                                    e = e12;
                                    runtimeException = e;
                                    LocalResourceEngine.Result result3222222 = new LocalResourceEngine.Result(bArr);
                                    result3222222.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                                    result3222222.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                                    return result3222222;
                                } catch (IllegalArgumentException e13) {
                                    e = e13;
                                    runtimeException = e;
                                    LocalResourceEngine.Result result32222222 = new LocalResourceEngine.Result(bArr);
                                    result32222222.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                                    result32222222.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                                    return result32222222;
                                }
                            }
                            str2 = str9;
                            if (value2 == 1 && LocalResourceEngine.value(state(result2.profile, 1), "ct") == 0) {
                                doc2 = normalizeCard(tutorialCard(i5), localResourceCatalog2);
                            }
                            spend(result2, i6 == 0 ? 0 : 7, pool);
                            byte[] reveal = reveal(result2, localResourceCatalog2, doc2);
                            LocalResourceCatalog.DrawGift drawGift = localResourceCatalog2.drawGifts.get(Integer.valueOf(value2));
                            int value3 = LocalResourceEngine.value(state(result2.profile, value2), "ct");
                            if (value2 == 1) {
                                value3 = Math.addExact(value3, LocalResourceEngine.value(state(result2.profile, 2), "ct"));
                            }
                            if (drawGift == null || Math.addExact(value3, 1) % drawGift.interval != 0) {
                                i2 = i;
                                i3 = i5;
                                i4 = value2;
                                result = result2;
                                bArr4 = bArr6;
                                String str13 = str12;
                                pool2 = pool;
                                str6 = str13;
                            } else {
                                i3 = i5;
                                i2 = i;
                                i4 = value2;
                                result = result2;
                                bArr4 = bArr6;
                                String str14 = str12;
                                pool2 = pool;
                                str6 = str14;
                                try {
                                    LocalResourceEngine.grant(result2, localResourceCatalog, "giftCoin", drawGift.coin, drawGift.count, 1);
                                    reveal = BsonLite.withProfileInt(reveal, "gift", drawGift.count);
                                } catch (ArithmeticException | IllegalArgumentException e14) {
                                    runtimeException = e14;
                                    value2 = i4;
                                }
                            }
                            try {
                                byte[] withProfileDocument2 = BsonLite.withProfileDocument(bArr4, Integer.toString(i3), reveal);
                                value2 = i4;
                                byte[] withProfileDocument3 = BsonLite.withProfileDocument(state(result.profile, value2), str6, withProfileDocument2);
                                byte[] withProfileInt = BsonLite.withProfileInt(withProfileDocument3, "ct", Math.addExact(LocalResourceEngine.value(withProfileDocument3, "ct"), 1));
                                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT);
                                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
                                String format = simpleDateFormat.format(new Date(System.currentTimeMillis() - 25200000));
                                saveState(result, BsonLite.withProfileInt(BsonLite.withProfileString(withProfileInt, "q7DrawDay", format), "cctd", Math.addExact(format.equals(BsonLite.stringValue(withProfileInt, "q7DrawDay")) ? LocalResourceEngine.value(withProfileInt, "cctd") : 0, 1)), value2);
                                arrayList.add(reveal);
                                bArr6 = withProfileDocument2;
                                i5 = i3 + 1;
                                localResourceCatalog2 = localResourceCatalog;
                                str11 = str3;
                                result2 = result;
                                str8 = str4;
                                bArr5 = bArr3;
                                str9 = str2;
                                value = i2;
                                LocalResourceCatalog.Pool pool3 = pool2;
                                str12 = str6;
                                pool = pool3;
                            } catch (ArithmeticException e15) {
                                e = e15;
                                value2 = i4;
                                runtimeException = e;
                                LocalResourceEngine.Result result322222222 = new LocalResourceEngine.Result(bArr);
                                result322222222.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                                result322222222.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                                return result322222222;
                            } catch (IllegalArgumentException e16) {
                                e = e16;
                                value2 = i4;
                                runtimeException = e;
                                LocalResourceEngine.Result result3222222222 = new LocalResourceEngine.Result(bArr);
                                result3222222222.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                                result3222222222.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                                return result3222222222;
                            }
                        } else if (!z) {
                            try {
                                result2.add("replyLuckyDrawCard", BsonLite.document("rt", true, obj3, doc2, obj2, LocalResourceEngine.doc(LocalResourceEngine.doc(result2.profile, "ldd"), "hfp"), str9, Integer.valueOf(value2)));
                            } catch (ArithmeticException | IllegalArgumentException e17) {
                                runtimeException = e17;
                                str2 = str9;
                            }
                        }
                    } catch (ArithmeticException e18) {
                        e = e18;
                        str2 = str9;
                        runtimeException = e;
                        LocalResourceEngine.Result result32222222222 = new LocalResourceEngine.Result(bArr);
                        result32222222222.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                        result32222222222.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                        return result32222222222;
                    } catch (IllegalArgumentException e19) {
                        e = e19;
                        str2 = str9;
                        runtimeException = e;
                        LocalResourceEngine.Result result322222222222 = new LocalResourceEngine.Result(bArr);
                        result322222222222.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                        result322222222222.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                        return result322222222222;
                    }
                    LocalResourceEngine.Result result3222222222222 = new LocalResourceEngine.Result(bArr);
                    result3222222222222.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                    result3222222222222.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
                    return result3222222222222;
                }
                i = value;
                bArr3 = bArr5;
                i2 = i;
                i3 = i5;
                str2 = str9;
                result = result2;
                String str15 = str12;
                pool2 = pool;
                str6 = str15;
                i5 = i3 + 1;
                localResourceCatalog2 = localResourceCatalog;
                str11 = str3;
                result2 = result;
                str8 = str4;
                bArr5 = bArr3;
                str9 = str2;
                value = i2;
                LocalResourceCatalog.Pool pool32 = pool2;
                str12 = str6;
                pool = pool32;
            }
            str2 = str9;
            byte[] bArr7 = bArr5;
            LocalResourceEngine.Result result4 = result2;
            LocalResourceEngine.syncCurrencies(result4);
            byte[] doc3 = LocalResourceEngine.doc(result4.profile, "ldd");
            result4.add("syncProgInfo", BsonLite.document(obj2, LocalResourceEngine.doc(doc3, "hfp")));
            ArrayList arrayList2 = new ArrayList();
            for (byte[] bArr8 : LocalResourceEngine.array(LocalResourceEngine.doc(doc3, "ad"))) {
                arrayList2.add(Arrays.asList(Integer.valueOf(LocalResourceEngine.value(bArr8, "0")), Integer.valueOf(LocalResourceEngine.value(LocalResourceEngine.doc(bArr8, "1"), "cctd"))));
            }
            result4.add("updateCurTimesDay", BsonLite.document("cctd", Integer.valueOf(LocalResourceEngine.value(doc3, "cctd")), "fdc", Integer.valueOf(LocalResourceEngine.value(doc3, "fdc")), "nfdc", Integer.valueOf(LocalResourceEngine.value(doc3, "nfdc")), "acctd", arrayList2));
            if (equals2) {
                result4.add("replyLuckyDrawFileAndOpenAll", BsonLite.document("rt", true, obj, arrayList, "ffs", bArr7, str2, Integer.valueOf(value2)));
            } else if (z) {
                result4.add("replyLuckyDrawAllLeftCard", BsonLite.document("rt", true, obj, arrayList, str2, Integer.valueOf(value2)));
            } else if (!arrayList.isEmpty()) {
                result4.add("replyLuckyDrawCard", BsonLite.document("rt", true, obj3, arrayList.get(0), obj2, LocalResourceEngine.doc(doc3, "hfp"), str2, Integer.valueOf(value2)));
            }
            syncActivity(result4, value2);
            compactItemUpdates(result4);
            return result4;
        }
        try {
            throw new IllegalArgumentException("该活动卡池暂未实现，请选择常驻白夜馆或特别推荐");
        } catch (ArithmeticException | IllegalArgumentException e20) {
            runtimeException = e20;
            str2 = "t";
            str3 = "replyFile";
            str4 = "requestFile";
            obj2 = "prog";
        }
        obj3 = "info";
        LocalResourceEngine.Result result32222222222222 = new LocalResourceEngine.Result(bArr);
        result32222222222222.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
        result32222222222222.add(!str4.equals(str) ? str3 : str.replace("request", "reply"), BsonLite.document("rt", false, str2, Integer.valueOf(value2), obj3, BsonLite.EMPTY_DOCUMENT, obj2, BsonLite.EMPTY_DOCUMENT, obj, Collections.emptyList(), "ffs", BsonLite.EMPTY_DOCUMENT));
        return result32222222222222;
    }

    static void compactItemUpdates(LocalResourceEngine.Result result) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < result.replies.size()) {
            LocalResourceEngine.Reply reply = result.replies.get(i);
            if (!"updateItems".equals(reply.method)) {
                arrayList.add(reply);
                i++;
            } else {
                ArrayList arrayList2 = new ArrayList();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int i2 = i;
                while (i2 < result.replies.size() && "updateItems".equals(result.replies.get(i2).method)) {
                    for (byte[] bArr : LocalResourceEngine.array(LocalResourceEngine.doc(result.replies.get(i2).parameters, "i"))) {
                        String uuidValue = BsonLite.uuidValue(bArr, "u");
                        Integer num = uuidValue == null ? null : (Integer) linkedHashMap.get(uuidValue);
                        if (num == null) {
                            if (uuidValue != null) {
                                linkedHashMap.put(uuidValue, Integer.valueOf(arrayList2.size()));
                            }
                            arrayList2.add(bArr);
                        } else {
                            arrayList2.set(num.intValue(), bArr);
                        }
                    }
                    i2++;
                }
                if (i2 != i + 1) {
                    reply = new LocalResourceEngine.Reply("updateItems", BsonLite.document("i", arrayList2));
                }
                arrayList.add(reply);
                i = i2;
            }
        }
        result.replies.clear();
        result.replies.addAll(arrayList);
    }

    static byte[] state(byte[] bArr, int i) {
        byte[] doc = LocalResourceEngine.doc(bArr, "ldd");
        if (i == 1) {
            return doc;
        }
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(doc, "ad"))) {
            if (LocalResourceEngine.value(bArr2, "0") == i) {
                return LocalResourceEngine.doc(bArr2, "1");
            }
        }
        return BsonLite.EMPTY_DOCUMENT;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void saveState(LocalResourceEngine.Result result, byte[] bArr, int i) {
        if (i == 1) {
            result.profile = BsonLite.withProfileDocument(result.profile, "ldd", bArr);
            return;
        }
        byte[] doc = LocalResourceEngine.doc(result.profile, "ldd");
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(doc, "ad"))) {
            if (LocalResourceEngine.value(bArr2, "0") != i) {
                arrayList.add(Arrays.asList(Integer.valueOf(LocalResourceEngine.value(bArr2, "0")), LocalResourceEngine.doc(bArr2, "1")));
            }
        }
        arrayList.add(Arrays.asList(Integer.valueOf(i), bArr));
        result.profile = BsonLite.withProfileDocument(result.profile, "ldd", BsonLite.withProfileArray(doc, "ad", arrayList));
    }

    private static void syncActivity(LocalResourceEngine.Result result, int i) {
        if (i != 1) {
            result.add("syncLuckyDrawActivityData", BsonLite.document("t", Integer.valueOf(i), "d", state(result.profile, i)));
        }
    }

    private static int selected(byte[] bArr, int i) {
        return LocalResourceEngine.value(LocalResourceEngine.doc(bArr, "ch"), Integer.toString(i));
    }

    private static LocalResourceEngine.Result choose(byte[] bArr, LocalResourceCatalog localResourceCatalog, byte[] bArr2, int i) {
        int i2;
        int i3;
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        LocalResourceCatalog.Pool pool = localResourceCatalog.pools.get(Integer.valueOf(i));
        byte[] doc = LocalResourceEngine.doc(bArr2, "h");
        byte[] state = state(bArr, i);
        int i4 = pool == null ? 1809 : 0;
        if (i4 == 0 && BsonLite.keys(doc).size() != 2) {
            i4 = 1811;
        }
        if (i4 == 0) {
            Iterator<String> it = BsonLite.keys(doc).iterator();
            i2 = 0;
            i3 = 0;
            while (it.hasNext()) {
                int value = LocalResourceEngine.value(doc, it.next());
                if (pool.f11s.contains(Integer.valueOf(value))) {
                    i2 = value;
                } else if (pool.f9a.contains(Integer.valueOf(value))) {
                    i3 = value;
                } else {
                    i4 = 1812;
                }
            }
        } else {
            i2 = 0;
            i3 = 0;
        }
        if (i4 == 0 && (i2 == 0 || i3 == 0)) {
            i4 = 1813;
        }
        if (i4 == 0 && selected(state, 1) != 0 && (selected(state, 1) != i2 || selected(state, 2) != i3)) {
            i4 = 1814;
        }
        List asList = i4 == 0 ? Arrays.asList(Integer.valueOf(pool.stamp), Integer.valueOf(i2), Integer.valueOf(i3)) : Arrays.asList(0, 0, 0);
        if (i4 == 0) {
            saveState(result, BsonLite.withProfileArray(state, "ch", asList), i);
            syncActivity(result, i);
        } else {
            result.add("showMessageStr", BsonLite.stringDocument("m", "推荐角色选择无效或已经确定，请重新进入卡池查看"));
        }
        result.add("replySetChooseHeroes", BsonLite.document("r", Integer.valueOf(i4), "t", Integer.valueOf(i), "h", asList));
        return result;
    }

    private static void spend(LocalResourceEngine.Result result, int i, LocalResourceCatalog.Pool pool) {
        if (i > 0 && pool != null) {
            byte[] doc = LocalResourceEngine.doc(result.profile, "inv");
            List<byte[]> array = LocalResourceEngine.array(LocalResourceEngine.doc(doc, "items"));
            for (int i2 = 0; i2 < array.size(); i2++) {
                byte[] bArr = array.get(i2);
                if (LocalResourceEngine.value(bArr, "i") == pool.ticket && LocalResourceEngine.value(bArr, "w") >= 1) {
                    int value = LocalResourceEngine.value(bArr, "w") - 1;
                    byte[] withProfileInt = BsonLite.withProfileInt(bArr, "w", value);
                    if (value == 0) {
                        array.remove(i2);
                        result.add("deleteItems", BsonLite.document("i", Collections.singletonList(new BsonLite.UuidValue(BsonLite.uuidValue(bArr, "u")))));
                    } else {
                        array.set(i2, withProfileInt);
                        result.add("updateItems", BsonLite.document("i", Collections.singletonList(withProfileInt)));
                    }
                    result.profile = BsonLite.withProfileDocument(result.profile, "inv", BsonLite.withProfileArray(doc, "items", array));
                    return;
                }
            }
        }
        int value2 = LocalResourceEngine.value(result.profile, "summonCoin");
        if (value2 < i) {
            throw new IllegalArgumentException("欧泊不足");
        }
        result.profile = BsonLite.withProfileInt(result.profile, "summonCoin", value2 - i);
    }

    static byte[] makeActivityFile(LocalResourceCatalog localResourceCatalog, LocalResourceCatalog.Pool pool, byte[] bArr, Random random) {
        byte[] bArr2 = BsonLite.EMPTY_DOCUMENT;
        Iterator<LocalResourceCatalog.Drop> it = pool.drops.iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            d += it.next().weight;
        }
        for (int i = 0; i < 6; i++) {
            double nextDouble = random.nextDouble() * d;
            LocalResourceCatalog.Drop drop = pool.drops.get(pool.drops.size() - 1);
            Iterator<LocalResourceCatalog.Drop> it2 = pool.drops.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                LocalResourceCatalog.Drop next = it2.next();
                nextDouble -= next.weight;
                if (nextDouble < 0.0d) {
                    drop = next;
                    break;
                }
            }
            String str = drop.kind;
            int i2 = drop.f6id;
            int i3 = "memory".equals(str) ? drop.quality : 0;
            if (i2 >= 16639 && i2 <= 16645 && "item".equals(str)) {
                int selected = selected(bArr, (i2 == 16639 || (i2 >= 16641 && i2 <= 16643)) ? 1 : 2);
                if (i2 == 16639 || i2 == 16640) {
                    i2 = selected;
                    str = "hero";
                } else {
                    i3 = i2 <= 16643 ? i2 - 16640 : i2 - 16643;
                    i2 = selected;
                    str = "memory";
                }
            }
            Object[] objArr = new Object[18];
            objArr[0] = "index";
            objArr[1] = Integer.valueOf(i);
            objArr[2] = "is_open";
            objArr[3] = false;
            objArr[4] = "get_hero";
            objArr[5] = false;
            objArr[6] = "hero";
            objArr[7] = ("hero".equals(str) || "memory".equals(str)) ? Collections.singletonList(Integer.valueOf(i2)) : Collections.emptyList();
            objArr[8] = "hero_file";
            objArr[9] = Integer.valueOf(i3);
            objArr[10] = "q7Kind";
            objArr[11] = str;
            objArr[12] = "q7Id";
            objArr[13] = Integer.valueOf(i2);
            objArr[14] = "q7Count";
            objArr[15] = Integer.valueOf(drop.count);
            objArr[16] = "q7Quality";
            objArr[17] = Integer.valueOf(drop.quality);
            byte[] document = BsonLite.document(objArr);
            if (drop.design != null) {
                document = BsonLite.withProfileDocument(document, "q7Design", drop.design);
            }
            if ("item".equals(str)) {
                document = BsonLite.withProfileArray(document, "item", Collections.singletonList(Arrays.asList(Integer.valueOf(i2), Integer.valueOf(drop.count))));
            }
            if ("treasure".equals(str)) {
                document = BsonLite.withProfileArray(document, "treasure", Collections.singletonList(Arrays.asList(Integer.valueOf(i2), Integer.valueOf(drop.quality), Integer.valueOf(drop.count), new BsonLite.UuidValue(LocalResourceEngine.uuid()))));
            }
            bArr2 = BsonLite.withProfileDocument(bArr2, Integer.toString(i), document);
        }
        return bArr2;
    }

    static byte[] makeFile(LocalResourceCatalog localResourceCatalog, Random random, boolean z) {
        int i;
        byte[] bArr;
        byte[] bArr2 = BsonLite.EMPTY_DOCUMENT;
        ArrayList arrayList = new ArrayList(localResourceCatalog.heroes.values());
        ArrayList arrayList2 = new ArrayList(localResourceCatalog.treasures.values());
        int i2 = 0;
        int i3 = 0;
        while (i3 < 6) {
            int nextInt = (z && i3 == 0) ? i2 : random.nextInt(4);
            Object[] objArr = new Object[10];
            objArr[i2] = "index";
            objArr[1] = Integer.valueOf(i3);
            objArr[2] = "is_open";
            objArr[3] = false;
            objArr[4] = "get_hero";
            objArr[5] = false;
            objArr[6] = "hero";
            objArr[7] = Collections.emptyList();
            objArr[8] = "hero_file";
            objArr[9] = Integer.valueOf(i2);
            byte[] document = BsonLite.document(objArr);
            if (nextInt == 0 || nextInt == 1) {
                i = 0;
            } else if (nextInt == 2) {
                i = 0;
            } else {
                LocalResourceCatalog.Treasure treasure = (LocalResourceCatalog.Treasure) arrayList2.get(random.nextInt(arrayList2.size()));
                i = 0;
                bArr = BsonLite.withProfileArray(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileString(document, "q7Kind", "treasure"), "q7Id", treasure.item), "q7Quality", treasure.quality), "treasure", Collections.singletonList(Arrays.asList(Integer.valueOf(treasure.item), Integer.valueOf(treasure.quality), 1, new BsonLite.UuidValue(LocalResourceEngine.uuid()))));
                bArr2 = BsonLite.withProfileDocument(bArr2, Integer.toString(i3), bArr);
                i3++;
                i2 = i;
            }
            LocalResourceCatalog.Hero hero = (LocalResourceCatalog.Hero) ((z && i3 == 0) ? localResourceCatalog.heroes.get(7) : arrayList.get(random.nextInt(arrayList.size())));
            bArr = BsonLite.withProfileInt(BsonLite.withProfileArray(BsonLite.withProfileInt(BsonLite.withProfileString(document, "q7Kind", nextInt == 0 ? "hero" : "memory"), "q7Id", hero.f7id), "hero", Collections.singletonList(Integer.valueOf(hero.f7id))), "hero_file", nextInt == 0 ? i : random.nextInt(hero.files) + 1);
            bArr2 = BsonLite.withProfileDocument(bArr2, Integer.toString(i3), bArr);
            i3++;
            i2 = i;
        }
        return bArr2;
    }

    private static byte[] tutorialCard(int i) {
        return BsonLite.document("index", Integer.valueOf(i), "is_open", false, "get_hero", false, "hero", Collections.singletonList(7), "hero_file", 0, "q7Kind", "hero", "q7Id", 7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [int] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v12 */
    private static byte[] reveal(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, byte[] bArr) {
        ?? r15;
        boolean z;
        String str;
        ?? r12;
        boolean z2;
        boolean z3;
        String str2;
        boolean z4;
        int value = LocalResourceEngine.value(bArr, "q7Id");
        String stringValue = BsonLite.stringValue(bArr, "q7Kind");
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
        if ("memory".equals(stringValue)) {
            LocalResourceCatalog.Hero hero = localResourceCatalog.heroes.get(Integer.valueOf(value));
            byte[] doc = LocalResourceEngine.doc(result2.profile, "ldd");
            byte[] doc2 = LocalResourceEngine.doc(doc, "hfp");
            int value2 = LocalResourceEngine.value(doc2, Integer.toString(value));
            int value3 = 1 << (LocalResourceEngine.value(bArr, "hero_file") - 1);
            int i = value2 | value3;
            if (LocalResourceEngine.ownsHero(result2.profile, value) || (value2 & value3) != 0) {
                z2 = true;
                z3 = false;
                str2 = "hero";
                LocalResourceEngine.grant(result2, localResourceCatalog, "item", Math.max(1, Math.min(4, hero.rank)) + 4252, 1, 1);
            } else {
                result2.profile = BsonLite.withProfileDocument(result2.profile, "ldd", BsonLite.withProfileDocument(doc, "hfp", BsonLite.withProfileInt(doc2, Integer.toString(value), i)));
                if (i != (1 << hero.files) - 1) {
                    str2 = "hero";
                    z3 = false;
                    z2 = true;
                } else {
                    LocalResourceEngine.grant(result2, localResourceCatalog, "hero", value, 1, 1);
                    str2 = "hero";
                    z3 = false;
                    z = true;
                    z4 = true;
                    str = str2;
                    r12 = z3;
                    r15 = z4;
                }
            }
            z = z3;
            z4 = z2;
            str = str2;
            r12 = z3;
            r15 = z4;
        } else {
            r15 = 1;
            z = "hero".equals(stringValue) && !LocalResourceEngine.ownsHero(result2.profile, value);
            int value4 = LocalResourceEngine.value(bArr, "q7Count");
            str = "hero";
            r12 = 0;
            LocalResourceEngine.grant(result2, localResourceCatalog, stringValue, value, value4 == 0 ? 1 : value4, LocalResourceEngine.value(bArr, "q7Quality"), BsonLite.documentValue(bArr, "q7Design"));
        }
        result.profile = result2.profile;
        result.replies.addAll(result2.replies);
        byte[] withProfileBool = BsonLite.withProfileBool(BsonLite.withProfileBool(bArr, "is_open", r15), "get_hero", z);
        if (!result2.treasureRewards.isEmpty()) {
            withProfileBool = BsonLite.withProfileArray(withProfileBool, "treasure", result2.treasureRewards);
        }
        if ("item".equals(stringValue)) {
            withProfileBool = BsonLite.withProfileArray(withProfileBool, "item", result2.itemRewards);
        }
        if ((str.equals(stringValue) || "memory".equals(stringValue)) && !result2.itemRewards.isEmpty()) {
            byte[] bArr2 = BsonLite.EMPTY_DOCUMENT;
            for (List<Integer> list : result2.itemRewards) {
                bArr2 = BsonLite.withProfileInt(bArr2, Integer.toString(list.get(r12).intValue()), list.get(r15).intValue());
            }
            withProfileBool = BsonLite.withProfileDocument(withProfileBool, "hero_frag", bArr2);
        }
        Object[] objArr = new Object[10];
        objArr[r12] = str;
        objArr[r15] = Collections.emptyList();
        objArr[2] = "item";
        objArr[3] = Collections.emptyList();
        objArr[4] = "treasure";
        objArr[5] = Collections.emptyList();
        objArr[6] = "fragment";
        objArr[7] = Collections.emptyList();
        objArr[8] = "treasure_trans";
        objArr[9] = Collections.emptyList();
        byte[] document = BsonLite.document(objArr);
        Object[] objArr2 = new Object[2];
        objArr2[r12] = "activityReward";
        objArr2[r15] = document;
        return BsonLite.withProfileDocument(withProfileBool, "other_reward", BsonLite.document(objArr2));
    }

    private static byte[] normalizeCard(byte[] bArr, LocalResourceCatalog localResourceCatalog) {
        byte[] bArr2 = bArr;
        String stringValue = BsonLite.stringValue(bArr2, "q7Kind");
        if (stringValue == null || LocalResourceEngine.value(bArr2, "q7Wire") == 2) {
            return bArr2;
        }
        byte[] doc = LocalResourceEngine.doc(bArr2, "other_reward");
        byte[] doc2 = LocalResourceEngine.doc(doc, "activityReward");
        if (("hero".equals(stringValue) || "memory".equals(stringValue)) && BsonLite.keys(LocalResourceEngine.doc(bArr2, "hero_frag")).isEmpty()) {
            byte[] bArr3 = BsonLite.EMPTY_DOCUMENT;
            for (Iterator<byte[]> it = LocalResourceEngine.array(LocalResourceEngine.doc(doc2, "item")).iterator(); it.hasNext(); it = it) {
                byte[] next = it.next();
                bArr3 = BsonLite.withProfileInt(bArr3, Integer.toString(LocalResourceEngine.value(next, "0")), LocalResourceEngine.value(next, "1"));
            }
            if (!BsonLite.keys(bArr3).isEmpty()) {
                bArr2 = BsonLite.withProfileDocument(bArr2, "hero_frag", bArr3);
            }
        }
        LocalResourceCatalog.Item item = localResourceCatalog.items.get(Integer.valueOf(LocalResourceEngine.value(bArr2, "q7Id")));
        if ("item".equals(stringValue) && !Boolean.TRUE.equals(BsonLite.boolValue(bArr2, "is_open")) && item != null && item.type == 3 && localResourceCatalog.heroes.containsKey(Integer.valueOf(item.hero))) {
            bArr2 = BsonLite.withProfileArray(BsonLite.withProfileArray(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileString(bArr2, "q7Kind", "memory"), "q7Id", item.hero), "hero_file", 1), "hero", Collections.singletonList(Integer.valueOf(item.hero))), "item", Collections.emptyList());
        }
        return BsonLite.withProfileInt(BsonLite.withProfileDocument(bArr2, "other_reward", BsonLite.withProfileDocument(doc, "activityReward", BsonLite.document("hero", Collections.emptyList(), "item", Collections.emptyList(), "treasure", Collections.emptyList(), "fragment", Collections.emptyList(), "treasure_trans", Collections.emptyList()))), "q7Wire", 2);
    }
}
