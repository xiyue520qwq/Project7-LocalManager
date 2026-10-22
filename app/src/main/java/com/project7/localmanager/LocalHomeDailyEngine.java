package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalHomeDailyEngine {
    LocalHomeDailyEngine() {
    }

    /* renamed from: d */
    static byte[] m32d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m33v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static void require(boolean z, String str) {
        LocalHomeEngine.require(z, str);
    }

    static String day(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        if (calendar.get(11) < 7) {
            calendar.add(5, -1);
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT).format(calendar.getTime());
    }

    static boolean validDay(String str) {
        if (str == null || !str.matches("[0-9]{4}-[0-9]{2}-[0-9]{2}")) {
            return false;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT);
        simpleDateFormat.setLenient(false);
        try {
            return str.equals(simpleDateFormat.format(simpleDateFormat.parse(str)));
        } catch (ParseException e) {
            return false;
        }
    }

    static int[] weights(LocalFeatureCatalog localFeatureCatalog, int i) {
        byte[] bArr = localFeatureCatalog.get("WM", Integer.valueOf(i));
        require(bArr != null && m33v(bArr, "hero") == i, "缺少原版心情权重");
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "weights");
        require(intArrayValues.size() == 4, "心情权重格式未知");
        int[] iArr = new int[4];
        int i2 = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            iArr[i3] = intArrayValues.get(i3).intValue();
            require(iArr[i3] >= 0, "心情权重无效");
            i2 = Math.addExact(i2, iArr[i3]);
        }
        require(i2 > 0, "心情权重无效");
        return iArr;
    }

    static int choose(int[] iArr, int i) {
        require(iArr.length == 4 && i >= 0, "心情随机值无效");
        for (int i2 = 0; i2 < 4; i2++) {
            require(iArr[i2] >= 0, "心情权重无效");
            if (i < iArr[i2]) {
                return i2 + 1;
            }
            i -= iArr[i2];
        }
        throw new IllegalArgumentException("心情随机值超出权重范围");
    }

    static List<Integer> income(byte[] bArr) {
        if (!BsonLite.keys(bArr).contains("dxqr")) {
            return new ArrayList(Arrays.asList(0, 0, 0));
        }
        require(BsonLite.arrayValue(bArr, "dxqr") != null, "每日心愿币记录格式未知");
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "dxqr");
        require(intArrayValues.size() == 3 && BsonLite.keys(m32d(bArr, "dxqr")).equals(Arrays.asList("0", "1", "2")) && (intArrayValues.get(0).intValue() == 0 || intArrayValues.get(0).intValue() == 1) && intArrayValues.get(2).intValue() >= 0, "每日心愿币记录格式未知");
        return new ArrayList(intArrayValues);
    }

    static int amount(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        byte[] m32d = m32d(bArr, "hhd");
        HashSet hashSet = new HashSet();
        int i = 0;
        for (Map.Entry<Integer, byte[]> entry : LocalHomeWishEngine.numericPairs(m32d, "hri").entrySet()) {
            int intValue = entry.getKey().intValue();
            byte[] value = entry.getValue();
            boolean z = true;
            require(LocalResourceEngine.ownsHero(bArr, intValue) && localFeatureCatalog.get("WM", Integer.valueOf(intValue)) != null, "入住角色缺少原版心情配置");
            require(BsonLite.arrayValue(value, "1") != null, "入住记录格式未知");
            List<Integer> intArrayValues = BsonLite.intArrayValues(value, "1");
            require(intArrayValues.size() == 2 && BsonLite.keys(m32d(value, "1")).equals(Arrays.asList("0", "1")), "入住记录格式未知");
            String str = intArrayValues.get(0) + ":" + intArrayValues.get(1);
            require(localFeatureCatalog.get("R", str) != null && m33v(localFeatureCatalog.get("R", str), "release") == 1 && LocalHomeEngine.roomOwned(bArr, intArrayValues.get(0).intValue(), intArrayValues.get(1).intValue()) && hashSet.add(str), "入住位置未知或重复");
            int pairInt = LocalHomeWishEngine.pairInt(m32d, "hxq", intValue, 0);
            byte[] bArr2 = localFeatureCatalog.get("WP", Integer.valueOf(pairInt));
            require(pairInt >= 1 && pairInt <= 4 && bArr2 != null && m33v(bArr2, "item") == 11404, "入住角色心情无效");
            Integer intValue2 = BsonLite.intValue(bArr2, "amount");
            if ((intValue2 == null || intValue2.intValue() < 0) && (pairInt != 1 || BsonLite.keys(bArr2).contains("amount"))) {
                z = false;
            }
            require(z, "缺少原版心愿币产量");
            i = Math.addExact(i, intValue2 == null ? 0 : intValue2.intValue());
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x004d A[Catch: ArithmeticException -> 0x01cc, ArithmeticException | IllegalArgumentException -> 0x01ce, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x01ce, blocks: (B:3:0x000a, B:6:0x0024, B:8:0x002a, B:10:0x0030, B:12:0x003a, B:16:0x0044, B:20:0x0053, B:28:0x0063, B:29:0x0083, B:31:0x0089, B:33:0x009d, B:35:0x00a5, B:38:0x00b5, B:43:0x00c9, B:45:0x00cf, B:49:0x00e6, B:53:0x00f1, B:58:0x00f7, B:60:0x0104, B:62:0x0111, B:66:0x00bf, B:78:0x0142, B:81:0x014b, B:83:0x0155, B:85:0x0163, B:89:0x017f, B:90:0x0188, B:93:0x019b, B:94:0x01a6, B:99:0x01b9, B:104:0x0173, B:106:0x004d), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0089 A[Catch: ArithmeticException -> 0x01cc, ArithmeticException | IllegalArgumentException -> 0x01ce, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x01ce, blocks: (B:3:0x000a, B:6:0x0024, B:8:0x002a, B:10:0x0030, B:12:0x003a, B:16:0x0044, B:20:0x0053, B:28:0x0063, B:29:0x0083, B:31:0x0089, B:33:0x009d, B:35:0x00a5, B:38:0x00b5, B:43:0x00c9, B:45:0x00cf, B:49:0x00e6, B:53:0x00f1, B:58:0x00f7, B:60:0x0104, B:62:0x0111, B:66:0x00bf, B:78:0x0142, B:81:0x014b, B:83:0x0155, B:85:0x0163, B:89:0x017f, B:90:0x0188, B:93:0x019b, B:94:0x01a6, B:99:0x01b9, B:104:0x0173, B:106:0x004d), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0104 A[Catch: ArithmeticException -> 0x01cc, ArithmeticException | IllegalArgumentException -> 0x01ce, LOOP:1: B:59:0x0102->B:60:0x0104, LOOP_END, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x01ce, blocks: (B:3:0x000a, B:6:0x0024, B:8:0x002a, B:10:0x0030, B:12:0x003a, B:16:0x0044, B:20:0x0053, B:28:0x0063, B:29:0x0083, B:31:0x0089, B:33:0x009d, B:35:0x00a5, B:38:0x00b5, B:43:0x00c9, B:45:0x00cf, B:49:0x00e6, B:53:0x00f1, B:58:0x00f7, B:60:0x0104, B:62:0x0111, B:66:0x00bf, B:78:0x0142, B:81:0x014b, B:83:0x0155, B:85:0x0163, B:89:0x017f, B:90:0x0188, B:93:0x019b, B:94:0x01a6, B:99:0x01b9, B:104:0x0173, B:106:0x004d), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0141 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0142 A[Catch: ArithmeticException -> 0x01cc, ArithmeticException | IllegalArgumentException -> 0x01ce, TRY_LEAVE, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x01ce, blocks: (B:3:0x000a, B:6:0x0024, B:8:0x002a, B:10:0x0030, B:12:0x003a, B:16:0x0044, B:20:0x0053, B:28:0x0063, B:29:0x0083, B:31:0x0089, B:33:0x009d, B:35:0x00a5, B:38:0x00b5, B:43:0x00c9, B:45:0x00cf, B:49:0x00e6, B:53:0x00f1, B:58:0x00f7, B:60:0x0104, B:62:0x0111, B:66:0x00bf, B:78:0x0142, B:81:0x014b, B:83:0x0155, B:85:0x0163, B:89:0x017f, B:90:0x0188, B:93:0x019b, B:94:0x01a6, B:99:0x01b9, B:104:0x0173, B:106:0x004d), top: B:2:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static byte[] refresh(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, long j, boolean z) {
        boolean z2;
        String stringValue;
        Iterator<byte[]> it;
        boolean z3;
        boolean equals;
        String str;
        String str2;
        Map<Integer, byte[]> map;
        String str3;
        Map<Integer, byte[]> map2;
        boolean z4;
        int length;
        int i;
        String str4 = "q7HomeDaily";
        try {
            String day = day(j);
            byte[] m32d = m32d(bArr, "q7HomeDaily");
            boolean z5 = !BsonLite.keys(bArr).contains("q7HomeDaily");
            if (!z5 && (BsonLite.documentValue(bArr, "q7HomeDaily") == null || m33v(m32d, "version") != 1 || !validDay(BsonLite.stringValue(m32d, "day")) || BsonLite.boolValue(m32d, "legacy") == null)) {
                z2 = false;
                require(z2, "每日家园记录格式未知");
                stringValue = !z5 ? null : BsonLite.stringValue(m32d, "day");
                boolean z6 = z5 && day.compareTo(stringValue) > 0;
                if (z5 && !z6 && !z) {
                    return bArr;
                }
                byte[] m32d2 = m32d(bArr, "hhd");
                Map<Integer, byte[]> numericPairs = LocalHomeWishEngine.numericPairs(m32d2, "hxq");
                it = LocalResourceEngine.array(m32d(m32d(bArr, "heromgr"), "hrs")).iterator();
                z3 = false;
                while (it.hasNext()) {
                    Iterator<byte[]> it2 = it;
                    String str5 = stringValue;
                    Integer intValue = BsonLite.intValue(it.next(), "0");
                    if (intValue != null && localFeatureCatalog.get("WN", intValue) != null) {
                        if (LocalResourceEngine.ownsHero(bArr, intValue.intValue())) {
                            byte[] bArr2 = numericPairs.get(intValue);
                            Integer intValue2 = bArr2 == null ? null : BsonLite.intValue(bArr2, "1");
                            if (bArr2 != null) {
                                if (intValue2 == null || intValue2.intValue() < 0) {
                                    str3 = str4;
                                    map2 = numericPairs;
                                } else {
                                    map2 = numericPairs;
                                    str3 = str4;
                                    if (intValue2.intValue() <= 4) {
                                    }
                                }
                                z4 = false;
                                require(z4, "已保存心情格式未知");
                                if (!z6 || bArr2 == null || (z5 && intValue2.intValue() == 0)) {
                                    int[] weights = weights(localFeatureCatalog, intValue.intValue());
                                    i = 0;
                                    int i2 = 0;
                                    for (length = weights.length; i < length; length = length) {
                                        i2 = Math.addExact(i2, weights[i]);
                                        i++;
                                    }
                                    m32d2 = LocalHomeWishEngine.setNumber(m32d2, "hxq", intValue.intValue(), choose(weights, LocalStoryEnvironment.nextInt(i2)));
                                }
                                it = it2;
                                stringValue = str5;
                                numericPairs = map2;
                                str4 = str3;
                                z3 = true;
                            } else {
                                str3 = str4;
                                map2 = numericPairs;
                            }
                            z4 = true;
                            require(z4, "已保存心情格式未知");
                            if (!z6) {
                            }
                            int[] weights2 = weights(localFeatureCatalog, intValue.intValue());
                            i = 0;
                            int i22 = 0;
                            while (i < length) {
                            }
                            m32d2 = LocalHomeWishEngine.setNumber(m32d2, "hxq", intValue.intValue(), choose(weights2, LocalStoryEnvironment.nextInt(i22)));
                            it = it2;
                            stringValue = str5;
                            numericPairs = map2;
                            str4 = str3;
                            z3 = true;
                        } else {
                            str2 = str4;
                            map = numericPairs;
                        }
                    } else {
                        str2 = str4;
                        map = numericPairs;
                    }
                    it = it2;
                    stringValue = str5;
                    numericPairs = map;
                    str4 = str2;
                }
                String str6 = str4;
                String str7 = stringValue;
                if (z3) {
                    return bArr;
                }
                List<Integer> income = income(m32d2);
                if (z5) {
                    equals = BsonLite.keys(m32d2).contains("dxqr") && (income.get(0).intValue() == 1 || income.get(2).intValue() > 0);
                } else {
                    equals = Boolean.TRUE.equals(BsonLite.boolValue(m32d, "legacy"));
                }
                if (z6) {
                    income.set(0, 0);
                    equals = false;
                }
                byte[] withProfileDocument = BsonLite.withProfileDocument(bArr, "hhd", m32d2);
                if (income.get(0).intValue() == 0 && !equals) {
                    income.set(2, Integer.valueOf(amount(withProfileDocument, localFeatureCatalog)));
                }
                byte[] withProfileArray = BsonLite.withProfileArray(m32d2, "dxqr", income);
                byte[] withProfileInt = BsonLite.withProfileInt(m32d, "version", 1);
                if (!z6 && !z5) {
                    str = str7;
                    return BsonLite.withProfileDocument(BsonLite.withProfileDocument(withProfileDocument, "hhd", withProfileArray), str6, BsonLite.withProfileBool(BsonLite.withProfileString(withProfileInt, "day", str), "legacy", equals));
                }
                str = day;
                return BsonLite.withProfileDocument(BsonLite.withProfileDocument(withProfileDocument, "hhd", withProfileArray), str6, BsonLite.withProfileBool(BsonLite.withProfileString(withProfileInt, "day", str), "legacy", equals));
            }
            z2 = true;
            require(z2, "每日家园记录格式未知");
            if (!z5) {
            }
            if (z5) {
            }
            if (z5) {
            }
            byte[] m32d22 = m32d(bArr, "hhd");
            Map<Integer, byte[]> numericPairs2 = LocalHomeWishEngine.numericPairs(m32d22, "hxq");
            it = LocalResourceEngine.array(m32d(m32d(bArr, "heromgr"), "hrs")).iterator();
            z3 = false;
            while (it.hasNext()) {
            }
            String str62 = str4;
            String str72 = stringValue;
            if (z3) {
            }
        } catch (ArithmeticException | IllegalArgumentException e) {
            LocalDiagnosticLog.m16i("Project7Gateway", "Home daily preserved reason=" + e.getMessage());
            return bArr;
        }
    }

    static byte[] payload(byte[] bArr) {
        if (m33v(m32d(bArr, "q7HomeDaily"), "version") != 1) {
            return null;
        }
        byte[] m32d = m32d(bArr, "hhd");
        try {
            LocalHomeWishEngine.numericPairs(m32d, "hxq");
            List<Integer> income = income(m32d);
            if (BsonLite.arrayValue(m32d, "hxq") != null && BsonLite.arrayValue(m32d, "dxqr") != null) {
                return BsonLite.document("hxq", new BsonLite.ArrayValue(m32d(m32d, "hxq")), "dxqr", income);
            }
            return null;
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    static void sync(LocalResourceEngine.Result result, byte[] bArr) {
        byte[] payload = payload(result.profile);
        if (payload != null && !Arrays.equals(payload, payload(bArr))) {
            result.replies.add(0, new LocalResourceEngine.Reply("syncHeroXinqing", payload));
        }
    }
}
