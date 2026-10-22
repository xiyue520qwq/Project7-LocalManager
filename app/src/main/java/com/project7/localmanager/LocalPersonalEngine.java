package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.time.Instant;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes.dex */
final class LocalPersonalEngine {
    static final String[] METHODS = {"dailyCheck", "requestMonDailyCheck", "requestMonDailyReCheck", "reqesutMonDailyTotalReward", "requestTaskList", "requesGetNewbieTaskReward", "requestNewbieTaskNodeReward"};

    LocalPersonalEngine() {
    }

    /* renamed from: v */
    static int m61v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m60d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static boolean handles(String str) {
        return Arrays.asList(METHODS).contains(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static byte[] refresh(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalTutorialStore.Progress progress, long j) {
        String str;
        String str2;
        String str3;
        byte[] bArr2;
        String str4;
        String str5;
        byte[] repairMonthlyRecords = repairMonthlyRecords(refreshLoginDays(bArr, j));
        byte[] m60d = m60d(repairMonthlyRecords, "oaed");
        if (BsonLite.documentValue(m60d, "ncb") == null) {
            repairMonthlyRecords = BsonLite.withProfileDocument(repairMonthlyRecords, "oaed", BsonLite.withProfileInt(BsonLite.withProfileIntArray(m60d, "ncb", Collections.singletonList(1)), "cnc", 1));
        }
        if (m61v(repairMonthlyRecords, "ash") == 0) {
            List<byte[]> array = LocalResourceEngine.array(m60d(m60d(repairMonthlyRecords, "heromgr"), "hrs"));
            if (!array.isEmpty()) {
                repairMonthlyRecords = BsonLite.withProfileInt(repairMonthlyRecords, "ash", m61v(array.get(0), "0"));
            }
        }
        int i = (int) (j / 1000);
        int day = LocalGiftEngine.day(i);
        Integer intValue = BsonLite.intValue(repairMonthlyRecords, "q7SignDay");
        if (intValue == null || intValue.intValue() != day) {
            repairMonthlyRecords = BsonLite.withProfileBool(repairMonthlyRecords, "tdc", false);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(BsonLite.intArrayValues(repairMonthlyRecords, "q7HiddenCgs"));
        Iterator<Integer> it = BsonLite.intArrayValues(repairMonthlyRecords, "cgs").iterator();
        while (true) {
            str = "CG";
            if (!it.hasNext()) {
                break;
            }
            int intValue2 = it.next().intValue();
            byte[] bArr3 = localFeatureCatalog.get("CG", Integer.valueOf(intValue2));
            if (bArr3 == null || !Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "visible"))) {
                linkedHashSet2.add(Integer.valueOf(intValue2));
            } else {
                linkedHashSet.add(Integer.valueOf(intValue2));
            }
        }
        LinkedHashSet linkedHashSet3 = new LinkedHashSet(BsonLite.intArrayValues(repairMonthlyRecords, "ncgs"));
        if (progress != null) {
            Iterator<Integer> it2 = progress.completedEvents.iterator();
            while (it2.hasNext()) {
                byte[] bArr4 = localFeatureCatalog.get("EC", Integer.valueOf(it2.next().intValue()));
                if (bArr4 != null) {
                    Iterator<Integer> it3 = BsonLite.intArrayValues(bArr4, "cgs").iterator();
                    while (it3.hasNext()) {
                        int intValue3 = it3.next().intValue();
                        Iterator<Integer> it4 = it3;
                        byte[] bArr5 = localFeatureCatalog.get(str, Integer.valueOf(intValue3));
                        if (bArr5 != null) {
                            str5 = str;
                            if (Boolean.TRUE.equals(BsonLite.boolValue(bArr5, "visible")) && linkedHashSet.add(Integer.valueOf(intValue3))) {
                                linkedHashSet3.add(Integer.valueOf(intValue3));
                            }
                        } else {
                            str5 = str;
                        }
                        it3 = it4;
                        str = str5;
                    }
                }
                str = str;
            }
        }
        linkedHashSet3.retainAll(linkedHashSet);
        byte[] withProfileIntArray = BsonLite.withProfileIntArray(BsonLite.withProfileIntArray(repairMonthlyRecords, "cgs", linkedHashSet), "ncgs", linkedHashSet3);
        if (!linkedHashSet2.isEmpty()) {
            withProfileIntArray = BsonLite.withProfileIntArray(withProfileIntArray, "q7HiddenCgs", linkedHashSet2);
        }
        String str6 = "tsd";
        byte[] m60d2 = m60d(withProfileIntArray, "tsd");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String str7 = "ctl";
        Iterator<String> it5 = BsonLite.keys(m60d(m60d2, "ctl")).iterator();
        while (it5.hasNext()) {
            String uuidValue = BsonLite.uuidValue(m60d(m60d2, "ctl"), it5.next());
            if (uuidValue != null) {
                arrayList2.add(new BsonLite.UuidValue(uuidValue));
            }
        }
        HashSet hashSet = new HashSet();
        String str8 = "td";
        Iterator<byte[]> it6 = LocalResourceEngine.array(m60d(m60d2, "td")).iterator();
        int i2 = 0;
        while (true) {
            str2 = str6;
            str3 = str7;
            bArr2 = m60d2;
            str4 = str8;
            if (!it6.hasNext()) {
                break;
            }
            byte[] next = it6.next();
            byte[] m60d3 = m60d(next, "1");
            int m61v = m61v(m60d3, "tid");
            Iterator<byte[]> it7 = it6;
            ArrayList arrayList3 = arrayList2;
            byte[] bArr6 = localFeatureCatalog.get("NT", Integer.valueOf(m61v));
            if (bArr6 != null) {
                hashSet.add(Integer.valueOf(m61v));
                if (m61v(m60d3, "rt") > 0) {
                    i2 += !Boolean.TRUE.equals(BsonLite.boolValue(bArr6, "skip")) ? 1 : 0;
                } else if (m61v(m60d3, "ft") == 0 && complete(withProfileIntArray, progress, bArr6)) {
                    m60d3 = BsonLite.withProfileInt(BsonLite.withProfileInt(m60d3, "ft", i), "ts", 3);
                }
                m60d3 = withTaskCounter(m60d3, bArr6, withProfileIntArray, progress);
            }
            String stringValue = BsonLite.stringValue(next, "0");
            if (stringValue == null) {
                stringValue = BsonLite.uuidValue(m60d3, "uuid");
            }
            if (stringValue != null) {
                arrayList.add(Arrays.asList(stringValue, m60d3));
            }
            str6 = str2;
            str7 = str3;
            m60d2 = bArr2;
            str8 = str4;
            it6 = it7;
            arrayList2 = arrayList3;
        }
        ArrayList arrayList4 = arrayList2;
        Iterator<Map.Entry<String, byte[]>> it8 = localFeatureCatalog.entries.entrySet().iterator();
        while (it8.hasNext()) {
            Map.Entry<String, byte[]> next2 = it8.next();
            if (next2.getKey().startsWith("NT:")) {
                int parseInt = Integer.parseInt(next2.getKey().substring(3));
                if (!hashSet.contains(Integer.valueOf(parseInt))) {
                    String uuid = LocalResourceEngine.uuid();
                    boolean complete = complete(withProfileIntArray, progress, next2.getValue());
                    Iterator<Map.Entry<String, byte[]>> it9 = it8;
                    Object[] objArr = new Object[18];
                    objArr[0] = "uuid";
                    HashSet hashSet2 = hashSet;
                    objArr[1] = new BsonLite.UuidValue(uuid);
                    objArr[2] = "tid";
                    objArr[3] = Integer.valueOf(parseInt);
                    objArr[4] = "ct";
                    objArr[5] = Integer.valueOf(i);
                    objArr[6] = "at";
                    objArr[7] = Integer.valueOf(i);
                    objArr[8] = "ft";
                    objArr[9] = Integer.valueOf(complete ? i : 0);
                    objArr[10] = "rt";
                    objArr[11] = 0;
                    objArr[12] = "ts";
                    objArr[13] = Integer.valueOf(complete ? 3 : 2);
                    objArr[14] = "ext";
                    objArr[15] = Collections.emptyList();
                    objArr[16] = "mi";
                    objArr[17] = Collections.emptyList();
                    arrayList.add(Arrays.asList(uuid, withTaskCounter(BsonLite.document(objArr), next2.getValue(), withProfileIntArray, progress)));
                    arrayList4.add(new BsonLite.UuidValue(uuid));
                    it8 = it9;
                    hashSet = hashSet2;
                }
            }
        }
        byte[] withProfileDocument = BsonLite.withProfileDocument(withProfileIntArray, str2, BsonLite.withProfileArray(BsonLite.withProfileArray(bArr2, str4, arrayList), str3, arrayList4));
        byte[] m60d4 = m60d(withProfileDocument, "ntd");
        Map<Integer, Integer> pairs = LocalAccountFeatures.pairs(m60d(m60d4, "pc"));
        for (Map.Entry<String, byte[]> entry : localFeatureCatalog.entries.entrySet()) {
            if (entry.getKey().startsWith("NN:")) {
                int m61v2 = m61v(entry.getValue(), "count");
                if (pairs.containsKey(Integer.valueOf(m61v2)) && pairs.get(Integer.valueOf(m61v2)).intValue() == 3) {
                }
                pairs.put(Integer.valueOf(m61v2), Integer.valueOf(i2 >= m61v2 ? 2 : 1));
            }
        }
        return BsonLite.withProfileDocument(withProfileDocument, "ntd", BsonLite.withProfileInt(BsonLite.withProfileArray(m60d4, "pc", LocalAccountFeatures.pairList(pairs)), "pn", i2));
    }

    static byte[] refreshLoginDays(byte[] bArr, long j) {
        int epochDay = (int) Instant.ofEpochMilli(j).atZone(ZoneId.systemDefault()).toLocalDate().toEpochDay();
        byte[] m60d = m60d(bArr, "sma");
        byte[] m60d2 = m60d(m60d, "ltd");
        Integer intValue = BsonLite.intValue(bArr, "q7LoginDay");
        int i = 1;
        int max = Math.max(1, Math.max(m61v(bArr, "q7LoginCount"), m61v(m60d2, "n") + 1));
        if (intValue == null) {
            Integer intValue2 = BsonLite.intValue(bArr, "q7SignDay");
            int m61v = m61v(bArr, "q7SignCount");
            if (m61v > 0) {
                if (intValue2 != null && intValue2.intValue() == LocalGiftEngine.day((int) (j / 1000))) {
                    i = 0;
                }
                max = Math.max(max, m61v + i);
            }
        } else if (epochDay > intValue.intValue()) {
            max++;
        }
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileDocument(bArr, "sma", BsonLite.withProfileDocument(m60d, "ltd", BsonLite.withProfileInt(m60d2, "n", max - 1))), "q7LoginCount", max);
        if (intValue != null) {
            epochDay = Math.max(intValue.intValue(), epochDay);
        }
        return BsonLite.withProfileInt(withProfileInt, "q7LoginDay", epochDay);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x008f, code lost:
    
        if (complete(r12, r13, r11) != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static byte[] withTaskCounter(byte[] bArr, byte[] bArr2, byte[] bArr3, LocalTutorialStore.Progress progress) {
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, "para");
        if (intArrayValues.isEmpty()) {
            return bArr;
        }
        int intValue = intArrayValues.get(intArrayValues.size() - 1).intValue();
        int i = 0;
        for (byte[] bArr4 : LocalResourceEngine.array(m60d(bArr, "mi"))) {
            if ("counter".equals(BsonLite.stringValue(bArr4, "0"))) {
                i = m61v(bArr4, "1");
            }
        }
        if (m61v(bArr, "ft") <= 0 && m61v(bArr, "rt") <= 0) {
            if (m61v(bArr2, "type") == 120) {
                i = m61v(m60d(bArr3, "ldd"), "ct");
            } else if (m61v(bArr2, "type") == 117) {
                i = m61v(m60d(bArr3, "weeknum"), "w");
            }
            ArrayList arrayList = new ArrayList();
            for (byte[] bArr5 : LocalResourceEngine.array(m60d(bArr, "mi"))) {
                if (!"counter".equals(BsonLite.stringValue(bArr5, "0"))) {
                    arrayList.add(new BsonLite.ArrayValue(bArr5));
                }
            }
            arrayList.add(Arrays.asList("counter", Integer.valueOf(Math.max(0, Math.min(intValue, i)))));
            return BsonLite.withProfileArray(bArr, "mi", arrayList);
        }
        i = intValue;
        ArrayList arrayList2 = new ArrayList();
        while (r12.hasNext()) {
        }
        arrayList2.add(Arrays.asList("counter", Integer.valueOf(Math.max(0, Math.min(intValue, i)))));
        return BsonLite.withProfileArray(bArr, "mi", arrayList2);
    }

    static Map<Integer, Integer> calendarDays(byte[] bArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : BsonLite.keys(bArr)) {
            Integer intValue = BsonLite.intValue(bArr, str);
            if (intValue != null) {
                try {
                    linkedHashMap.put(Integer.valueOf(Integer.parseInt(str)), intValue);
                } catch (NumberFormatException e) {
                }
            } else {
                byte[] m60d = m60d(bArr, str);
                if (BsonLite.intValue(m60d, "0") != null && BsonLite.intValue(m60d, "1") != null) {
                    linkedHashMap.put(Integer.valueOf(m61v(m60d, "0")), Integer.valueOf(m61v(m60d, "1")));
                }
            }
        }
        return linkedHashMap;
    }

    private static byte[] repairMonthlyRecords(byte[] bArr) {
        byte[] m60d = m60d(bArr, "sma");
        byte[] m60d2 = m60d(m60d, "mdcd");
        boolean z = false;
        for (String str : Arrays.asList("mdci", "mdrci")) {
            byte[] m60d3 = m60d(m60d2, str);
            for (String str2 : BsonLite.keys(m60d3)) {
                byte[] m60d4 = m60d(m60d3, str2);
                Iterator<String> it = BsonLite.keys(m60d4).iterator();
                boolean z2 = false;
                while (true) {
                    boolean z3 = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    if (BsonLite.intValue(m60d4, it.next()) == null) {
                        z3 = false;
                    }
                    z2 |= z3;
                }
                if (z2) {
                    m60d3 = BsonLite.withProfileArray(m60d3, str2, LocalAccountFeatures.pairList(calendarDays(m60d4)));
                    z = true;
                }
            }
            if (z) {
                m60d2 = BsonLite.withProfileDocument(m60d2, str, m60d3);
            }
        }
        return z ? BsonLite.withProfileDocument(bArr, "sma", BsonLite.withProfileDocument(m60d, "mdcd", m60d2)) : bArr;
    }

    private static boolean complete(byte[] bArr, LocalTutorialStore.Progress progress, byte[] bArr2) {
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, "para");
        if (intArrayValues.isEmpty()) {
            return false;
        }
        int m61v = m61v(bArr2, "type");
        byte[] m60d = m60d(bArr, "weeknum");
        List<byte[]> array = LocalResourceEngine.array(m60d(m60d(bArr, "heromgr"), "hrs"));
        if (m61v == 117) {
            return m61v(m60d, "w") >= intArrayValues.get(0).intValue();
        }
        if (m61v == 120) {
            return m61v(m60d(bArr, "ldd"), "ct") >= intArrayValues.get(0).intValue();
        }
        if (m61v == 49) {
            int intValue = intArrayValues.get(0).intValue() == 2 ? 1106 : ((intArrayValues.get(0).intValue() - 1) * 1000) + 106;
            if (progress != null && LocalCityProgress.hasBattle(progress, intValue)) {
                return true;
            }
            Iterator<String> it = BsonLite.keys(m60d(bArr, "q7BattleReceipts")).iterator();
            while (it.hasNext()) {
                if (m61v(m60d(m60d(bArr, "q7BattleReceipts"), it.next()), "s") == intValue) {
                    return true;
                }
            }
            return false;
        }
        if (m61v == 132 && intArrayValues.size() >= 3) {
            int i = 0;
            for (byte[] bArr3 : array) {
                byte[] m60d2 = m60d(bArr3, "1");
                if (intArrayValues.get(0).intValue() == -1 || intArrayValues.get(0).intValue() == m61v(bArr3, "0")) {
                    if (m61v(m60d(m60d2, "ar"), "o") >= intArrayValues.get(1).intValue()) {
                        i++;
                    }
                }
            }
            return i >= intArrayValues.get(2).intValue();
        }
        if (m61v == 61 && intArrayValues.size() >= 2) {
            Iterator<byte[]> it2 = array.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                if (Boolean.TRUE.equals(BsonLite.boolValue(m60d(it2.next(), "1"), "oa"))) {
                    i2++;
                }
            }
            return i2 >= intArrayValues.get(1).intValue();
        }
        if (m61v != 114 || intArrayValues.size() < 2) {
            return false;
        }
        Iterator<byte[]> it3 = array.iterator();
        int i3 = 0;
        while (it3.hasNext()) {
            if (m61v(m60d(m60d(it3.next(), "1"), "ti"), "mc") >= 25) {
                i3++;
            }
        }
        return i3 >= intArrayValues.get(0).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x019e  */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [int] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v11 */
    /* JADX WARN: Type inference failed for: r19v12 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2, long j) {
        String str2;
        ?? r19;
        boolean z;
        LocalResourceEngine.Result result;
        int i = "dailyCheck";
        byte[] refresh = refresh(bArr, localFeatureCatalog, null, j);
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(refresh);
        try {
            boolean equals = "dailyCheck".equals(str);
            try {
                if (equals) {
                    int m61v = m61v(refresh, "tdcc");
                    int day = LocalGiftEngine.day((int) (j / 1000));
                    try {
                        if (!Boolean.TRUE.equals(BsonLite.boolValue(refresh, "tdc")) && m61v < 15) {
                            StringBuilder sb = new StringBuilder();
                            str2 = "dailyCheck";
                            try {
                                sb.append("1:");
                                int i2 = m61v + 1;
                                sb.append(i2);
                                LocalGiftEngine.reward(result2, localResourceCatalog, localFeatureCatalog.get("DS", sb.toString()), 1);
                                result2.profile = BsonLite.withProfileInt(BsonLite.withProfileBool(result2.profile, "tdc", true), "tdcc", i2);
                                result2.profile = BsonLite.withProfileInt(BsonLite.withProfileInt(result2.profile, "q7SignDay", day), "q7SignCount", m61v(refresh, "q7SignCount") + 1);
                                LocalResourceEngine.syncCurrencies(result2);
                                i = 6;
                                Object[] objArr = new Object[6];
                                objArr[0] = "rs";
                                try {
                                    objArr[1] = true;
                                    objArr[2] = "ccc";
                                    objArr[3] = Integer.valueOf(i2);
                                    objArr[4] = "rw";
                                    objArr[5] = result2.reward();
                                    result2.add("replyDailyCheck", BsonLite.document(objArr));
                                    result = result2;
                                } catch (ArithmeticException e) {
                                    e = e;
                                    r19 = 1;
                                    LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(refresh);
                                    result3.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                                    if (!str2.equals(str)) {
                                        Object[] objArr2 = new Object[i];
                                        objArr2[0] = "rs";
                                        objArr2[r19] = false;
                                        objArr2[2] = "ccc";
                                        objArr2[3] = Integer.valueOf(m61v(refresh, "tdcc"));
                                        objArr2[4] = "rw";
                                        objArr2[5] = BsonLite.EMPTY_DOCUMENT;
                                        result3.add("replyDailyCheck", BsonLite.document(objArr2));
                                        return result3;
                                    }
                                    if (!"requesGetNewbieTaskReward".equals(str)) {
                                        if ("requestNewbieTaskNodeReward".equals(str)) {
                                            Object[] objArr3 = new Object[4];
                                            objArr3[0] = "r";
                                            objArr3[r19] = false;
                                            objArr3[2] = "i";
                                            Object[] objArr4 = new Object[2];
                                            objArr4[0] = "rwd";
                                            objArr4[r19] = BsonLite.EMPTY_DOCUMENT;
                                            objArr3[3] = BsonLite.document(objArr4);
                                            result3.add("replyNewbieTaskNodeReward", BsonLite.document(objArr3));
                                            return result3;
                                        }
                                        if (!"requestTaskList".equals(str)) {
                                            String monthReply = monthReply(str);
                                            Object[] objArr5 = new Object[4];
                                            objArr5[0] = "r";
                                            objArr5[r19] = false;
                                            objArr5[2] = "i";
                                            objArr5[3] = BsonLite.EMPTY_DOCUMENT;
                                            result3.add(monthReply, BsonLite.document(objArr5));
                                            return result3;
                                        }
                                        return result3;
                                    }
                                    Object[] objArr6 = new Object[2];
                                    objArr6[0] = "r";
                                    objArr6[r19] = false;
                                    result3.add("replyNewbieTaskReward", BsonLite.document(objArr6));
                                    return result3;
                                } catch (IllegalArgumentException e2) {
                                    e = e2;
                                    r19 = 1;
                                    LocalResourceEngine.Result result32 = new LocalResourceEngine.Result(refresh);
                                    result32.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                                    if (!str2.equals(str)) {
                                    }
                                }
                            } catch (ArithmeticException e3) {
                                e = e3;
                                i = 6;
                                r19 = 1;
                                LocalResourceEngine.Result result322 = new LocalResourceEngine.Result(refresh);
                                result322.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                                if (!str2.equals(str)) {
                                }
                            } catch (IllegalArgumentException e4) {
                                e = e4;
                                i = 6;
                                r19 = 1;
                                LocalResourceEngine.Result result3222 = new LocalResourceEngine.Result(refresh);
                                result3222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                                if (!str2.equals(str)) {
                                }
                            }
                        }
                        Object[] objArr7 = new Object[4];
                        objArr7[0] = "tdcc";
                        objArr7[1] = Integer.valueOf(m61v);
                        objArr7[2] = "tdc";
                        objArr7[3] = Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(refresh, "tdc")));
                        result2.add("updateDailyCheck", BsonLite.document(objArr7));
                        return result2;
                    } catch (ArithmeticException e5) {
                        e = e5;
                        i = "dailyCheck";
                        r19 = 1;
                        LocalResourceEngine.Result result32222 = new LocalResourceEngine.Result(refresh);
                        result32222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if (!str2.equals(str)) {
                        }
                    } catch (IllegalArgumentException e6) {
                        e = e6;
                        i = "dailyCheck";
                        r19 = 1;
                        LocalResourceEngine.Result result322222 = new LocalResourceEngine.Result(refresh);
                        result322222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if (!str2.equals(str)) {
                        }
                    }
                } else {
                    str2 = "dailyCheck";
                    i = 6;
                    i = 6;
                    i = 6;
                    try {
                        if (str.startsWith("requestMonDaily")) {
                            z = true;
                            result = result2;
                        } else if ("reqesutMonDailyTotalReward".equals(str)) {
                            z = true;
                            result = result2;
                        } else {
                            r19 = 1;
                            i = 6;
                            result = result2;
                            tasks(result2, localResourceCatalog, localFeatureCatalog, str, bArr2, j);
                        }
                        monthly(result, localResourceCatalog, localFeatureCatalog, str, bArr2, j);
                        r19 = z;
                    } catch (ArithmeticException e7) {
                        e = e7;
                        LocalResourceEngine.Result result3222222 = new LocalResourceEngine.Result(refresh);
                        result3222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if (!str2.equals(str)) {
                        }
                    } catch (IllegalArgumentException e8) {
                        e = e8;
                        LocalResourceEngine.Result result32222222 = new LocalResourceEngine.Result(refresh);
                        result32222222.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
                        if (!str2.equals(str)) {
                        }
                    }
                }
                return result;
            } catch (ArithmeticException | IllegalArgumentException e9) {
                e = e9;
                r19 = equals;
            }
        } catch (ArithmeticException | IllegalArgumentException e10) {
            e = e10;
            str2 = "dailyCheck";
        }
    }

    private static String monthReply(String str) {
        return "requestMonDailyCheck".equals(str) ? "replyMonDailyCheck" : "requestMonDailyReCheck".equals(str) ? "replyMonDailyReCheck" : "replyMonDailyTotalReward";
    }

    private static void monthly(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr, long j) {
        Map<Integer, Integer> map;
        Map<Integer, Integer> map2;
        String str2;
        byte[] withProfileDocument;
        int m61v = m61v(bArr, "gid");
        int m61v2 = m61v(bArr, "di");
        byte[] bArr2 = localFeatureCatalog.get("MC", Integer.valueOf(m61v));
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar.setTimeInMillis(j - 25200000);
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, "time");
        if (intArrayValues.size() != 12 || intArrayValues.get(0).intValue() != calendar.get(1) || intArrayValues.get(1).intValue() != calendar.get(2) + 1) {
            throw new IllegalArgumentException("签到月份已切换，请重新打开日记簿");
        }
        int i = calendar.get(5);
        byte[] m60d = m60d(result.profile, "sma");
        byte[] m60d2 = m60d(m60d, "mdcd");
        Map<Integer, Integer> calendarDays = calendarDays(m60d(m60d(m60d2, "mdci"), Integer.toString(m61v)));
        Map<Integer, Integer> calendarDays2 = calendarDays(m60d(m60d(m60d2, "mdrci"), Integer.toString(m61v)));
        if ("reqesutMonDailyTotalReward".equals(str)) {
            Map<Integer, Integer> pairs = LocalAccountFeatures.pairs(m60d(m60d2, "mdtr"));
            if (pairs.containsKey(Integer.valueOf(m61v)) || calendarDays.size() + calendarDays2.size() < m61v(bArr2, "count")) {
                throw new IllegalArgumentException("累计签到奖励未满足条件或已领取");
            }
            if (Boolean.TRUE.equals(BsonLite.boolValue(bArr2, "supported"))) {
                LocalGiftEngine.reward(result, localResourceCatalog, bArr2, 1);
                pairs.put(Integer.valueOf(m61v), 1);
                withProfileDocument = BsonLite.withProfileArray(m60d2, "mdtr", LocalAccountFeatures.pairList(pairs));
            } else {
                throw new IllegalArgumentException("本月特殊签到奖励尚未实现");
            }
        } else {
            boolean equals = "requestMonDailyReCheck".equals(str);
            int m61v3 = equals ? m61v(bArr, "cd") : i;
            byte[] bArr3 = localFeatureCatalog.get("DECO", Integer.valueOf(m61v2));
            if (m61v3 < 1 || m61v3 > i || ((equals && m61v3 == i) || bArr3 == null || !LocalResourceEngine.ownsHero(result.profile, m61v(bArr3, "hero")))) {
                throw new IllegalArgumentException("签到日期或角色装饰无效");
            }
            if (calendarDays.containsKey(Integer.valueOf(m61v3))) {
                map = calendarDays;
            } else if (calendarDays2.containsKey(Integer.valueOf(m61v3))) {
                map = calendarDays;
            } else {
                if (!equals) {
                    map2 = calendarDays;
                } else {
                    Iterator<byte[]> it = LocalResourceEngine.array(m60d(m60d(result.profile, "inv"), "items")).iterator();
                    boolean z = false;
                    while (true) {
                        map2 = calendarDays;
                        if (!it.hasNext()) {
                            break;
                        }
                        byte[] next = it.next();
                        Iterator<byte[]> it2 = it;
                        if (m61v(next, "i") == 3055 && m61v(next, "w") > 0) {
                            z = true;
                        }
                        calendarDays = map2;
                        it = it2;
                    }
                    if (z) {
                        LocalGiftEngine.consume(result, 3055, 1);
                    } else {
                        byte[] bArr4 = localFeatureCatalog.get("MR", Integer.valueOf(calendarDays2.size() + 1));
                        if (bArr4 != null && m61v(bArr4, "cost") > 0) {
                            LocalGiftEngine.spend(result, "yuanbao", m61v(bArr4, "cost"));
                        } else {
                            throw new IllegalArgumentException("补签次数已达到上限");
                        }
                    }
                }
                LocalGiftEngine.reward(result, localResourceCatalog, localFeatureCatalog.get("MD", m61v(bArr2, "content") + ":" + m61v3), 1);
                if (!equals) {
                    str2 = "mdci";
                } else {
                    str2 = "mdrci";
                }
                if (!equals) {
                    calendarDays2 = map2;
                }
                calendarDays2.put(Integer.valueOf(m61v3), Integer.valueOf(m61v2));
                withProfileDocument = BsonLite.withProfileDocument(m60d2, str2, BsonLite.withProfileArray(m60d(m60d2, str2), Integer.toString(m61v), LocalAccountFeatures.pairList(calendarDays2)));
            }
            Map<Integer, Integer> map3 = map;
            result.add(monthReply(str), BsonLite.document("r", true, "i", BsonLite.document("gid", Integer.valueOf(m61v), "deco_id", Integer.valueOf((map3.containsKey(Integer.valueOf(m61v3)) ? map3.get(Integer.valueOf(m61v3)) : calendarDays2.get(Integer.valueOf(m61v3))).intValue()), "day", Integer.valueOf(m61v3), "r", BsonLite.EMPTY_DOCUMENT)));
            return;
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "sma", BsonLite.withProfileDocument(m60d, "mdcd", withProfileDocument));
        LocalResourceEngine.syncCurrencies(result);
        result.add(monthReply(str), BsonLite.document("r", true, "i", BsonLite.document("gid", Integer.valueOf(m61v), "deco_id", Integer.valueOf(m61v2), "day", Integer.valueOf(m61v(bArr, "cd")), "r", result.reward())));
    }

    static void syncTasks(LocalResourceEngine.Result result) {
        result.add("syncLoginTotalData", BsonLite.document("d", m60d(m60d(result.profile, "sma"), "ltd")));
        byte[] m60d = m60d(result.profile, "tsd");
        ArrayList arrayList = new ArrayList();
        Iterator<byte[]> it = LocalResourceEngine.array(m60d(m60d, "td")).iterator();
        while (it.hasNext()) {
            byte[] m60d2 = m60d(it.next(), "1");
            String uuidValue = BsonLite.uuidValue(m60d2, "uuid");
            if (uuidValue != null) {
                arrayList.add(Arrays.asList(new BsonLite.UuidValue(uuidValue), m60d2));
            }
        }
        result.add("syncTaskList", BsonLite.document("ptl", new BsonLite.ArrayValue(m60d(m60d, "ptl")), "ctl", new BsonLite.ArrayValue(m60d(m60d, "ctl")), "tpd", arrayList));
        result.add("sync_newbie_task_data", BsonLite.document("i", m60d(result.profile, "ntd")));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void tasks(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr, long j) {
        String str2;
        String str3;
        String str4;
        if ("requestTaskList".equals(str)) {
            syncTasks(result);
            return;
        }
        String str5 = "i";
        String str6 = "r";
        if ("requestNewbieTaskNodeReward".equals(str)) {
            byte[] bArr2 = localFeatureCatalog.get("NN", Integer.valueOf(m61v(bArr, "id")));
            byte[] m60d = m60d(result.profile, "ntd");
            Map<Integer, Integer> pairs = LocalAccountFeatures.pairs(m60d(m60d, "pc"));
            int m61v = m61v(bArr2, "count");
            if (bArr2 != null) {
                Integer num = 2;
                if (num.equals(pairs.get(Integer.valueOf(m61v)))) {
                    LocalGiftEngine.reward(result, localResourceCatalog, bArr2, 1);
                    pairs.put(Integer.valueOf(m61v), 3);
                    result.profile = BsonLite.withProfileDocument(result.profile, "ntd", BsonLite.withProfileArray(m60d, "pc", LocalAccountFeatures.pairList(pairs)));
                    result.add("sync_newbie_task_data", BsonLite.document("i", m60d(result.profile, "ntd")));
                    result.add("replyNewbieTaskNodeReward", BsonLite.document("r", true, "i", BsonLite.document("rwd", result.reward())));
                }
            }
            throw new IllegalArgumentException("目标奖励尚未完成或已领取");
        }
        String uuidValue = BsonLite.uuidValue(bArr, "u");
        if (uuidValue == null) {
            uuidValue = BsonLite.stringValue(bArr, "u");
        }
        byte[] m60d2 = m60d(result.profile, "tsd");
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (byte[] bArr3 : LocalResourceEngine.array(m60d(m60d2, "td"))) {
            String stringValue = BsonLite.stringValue(bArr3, "0");
            byte[] m60d3 = m60d(bArr3, "1");
            if (stringValue == null || !stringValue.equals(uuidValue)) {
                str2 = uuidValue;
                str3 = str5;
                str4 = str6;
            } else {
                byte[] bArr4 = localFeatureCatalog.get("NT", Integer.valueOf(m61v(m60d3, "tid")));
                if (bArr4 == null || m61v(m60d3, "ft") == 0 || m61v(m60d3, "rt") != 0) {
                    throw new IllegalArgumentException("任务未完成或奖励已领取");
                }
                str2 = uuidValue;
                str3 = str5;
                str4 = str6;
                if (m61v(bArr4, "day") > m61v(m60d(m60d(result.profile, "sma"), "ltd"), "n") + 1) {
                    throw new IllegalArgumentException("该日新手任务尚未解锁");
                }
                LocalGiftEngine.reward(result, localResourceCatalog, bArr4, 1);
                m60d3 = BsonLite.withProfileInt(BsonLite.withProfileInt(m60d3, "rt", (int) (j / 1000)), "ts", 7);
                z = true;
            }
            arrayList.add(Arrays.asList(stringValue, m60d3));
            uuidValue = str2;
            str5 = str3;
            str6 = str4;
        }
        String str7 = uuidValue;
        String str8 = str5;
        String str9 = str6;
        if (z) {
            result.profile = BsonLite.withProfileDocument(result.profile, "tsd", BsonLite.withProfileArray(m60d2, "td", arrayList));
            result.profile = refresh(result.profile, localFeatureCatalog, null, j);
            syncTasks(result);
            result.add("replyNewbieTaskReward", BsonLite.document(str9, true));
            result.add("replyGetTaskReward", BsonLite.document(str9, true, str8, BsonLite.document("taskUuid", new BsonLite.UuidValue(str7), str9, result.reward(), "show", 1, "ad", false)));
        } else {
            throw new IllegalArgumentException("新手任务不存在");
        }
        LocalResourceEngine.syncCurrencies(result);
    }
}
