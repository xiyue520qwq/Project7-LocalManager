package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalWingStoryEngine {
    static final int INITIAL = 50;
    private static final String KEY = "q7Wing";
    static final int MAXIMUM = 100;

    LocalWingStoryEngine() {
    }

    /* renamed from: d */
    private static byte[] m88d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m89v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static byte[] reset(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        if (i != 6) {
            return bArr;
        }
        byte[] documentValue = BsonLite.documentValue(bArr, KEY);
        if (BsonLite.keys(bArr).contains(KEY) && (documentValue == null || m89v(documentValue, "version") != 1)) {
            throw new IllegalArgumentException("Unsupported Wing save; cycle reset was not committed");
        }
        if (BsonLite.keys(m88d(bArr, KEY)).contains("operationsVersion") && m89v(m88d(bArr, KEY), "operationsVersion") != 1) {
            throw new IllegalArgumentException("Unsupported Wing operations version");
        }
        if (progress.weekCommit.isEmpty() || progress.weekIndex != m89v(m88d(bArr, "weeknum"), "w")) {
            throw new IllegalArgumentException("Missing new-cycle identity");
        }
        byte[] withProfileInt = BsonLite.withProfileInt(m88d(bArr, "std"), "byv", INITIAL);
        String[] strArr = {"ysg", "slm", "ycyo"};
        for (int i2 = 0; i2 < 3; i2++) {
            withProfileInt = BsonLite.withProfileBool(withProfileInt, strArr[i2], false);
        }
        String[] strArr2 = {"ycn", "byn", "hyn"};
        for (int i3 = 0; i3 < 3; i3++) {
            withProfileInt = BsonLite.withProfileInt(withProfileInt, strArr2[i3], 0);
        }
        return BsonLite.withProfileDocument(BsonLite.withProfileDocument(bArr, "std", withProfileInt), KEY, BsonLite.withProfileDocument(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileString(BsonLite.withProfileInt(documentValue == null ? BsonLite.EMPTY_DOCUMENT : BsonLite.withoutProfileKey(documentValue, "operationsVersion"), "version", 1), "cycle", progress.weekCommit), "week", progress.weekIndex), "initial", INITIAL), "current", INITIAL), "generation", 0), "receipts", BsonLite.EMPTY_DOCUMENT));
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        apply(result, localEventCatalog, progress);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01d6, code lost:
    
        return "receipt-value-mismatch";
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01d9, code lost:
    
        r4 = r28.intValue();
        r5 = r34.completedEvents.iterator();
        r10 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01ea, code lost:
    
        if (r5.hasNext() == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01ec, code lost:
    
        r11 = r5.next().intValue();
        r30 = r5;
        r5 = r1.baiyuEffects.get(java.lang.Integer.valueOf(r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0204, code lost:
    
        if (r5 == null) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0206, code lost:
    
        r31 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0214, code lost:
    
        if (com.project7.localmanager.BsonLite.keys(r10).contains(java.lang.Integer.toString(r11)) == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0220, code lost:
    
        if (eligible(r32.profile, r1, r34, r15, r11) != false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0226, code lost:
    
        r10 = com.project7.localmanager.LocalStoryItemRewardEngine.completedDay(r32.profile, r34, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x022c, code lost:
    
        if (r10 >= r6) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0231, code lost:
    
        r6 = java.lang.Math.addExact(r4, r5.intValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0239, code lost:
    
        if (r6 < 0) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x023d, code lost:
    
        if (r6 <= com.project7.localmanager.LocalWingStoryEngine.MAXIMUM) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0240, code lost:
    
        r11 = java.lang.Integer.toString(r11);
        r12 = new java.lang.Object[]{"week", java.lang.Integer.valueOf(r34.weekIndex), "day", java.lang.Integer.valueOf(r10), "count", 1, "delta", r5, "before", java.lang.Integer.valueOf(r4), "after", java.lang.Integer.valueOf(r6)};
        r4 = r6;
        r6 = r10;
        r5 = r30;
        r10 = com.project7.localmanager.BsonLite.withProfileDocument(r31, r11, com.project7.localmanager.BsonLite.document(r12));
        r1 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x029e, code lost:
    
        return "unproven-boundary-policy";
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:?, code lost:
    
        return "unproven-boundary-policy";
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x022e, code lost:
    
        return "nonchronological-completion";
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0222, code lost:
    
        r5 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02a2, code lost:
    
        r1 = r33;
        r10 = r5;
        r5 = r30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0216, code lost:
    
        r5 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02a1, code lost:
    
        r5 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x02a9, code lost:
    
        r5 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02b0, code lost:
    
        if (java.util.Arrays.equals(r5, r29) == false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02b2, code lost:
    
        return "unchanged";
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x02b5, code lost:
    
        r1 = com.project7.localmanager.BsonLite.withProfileDocument(com.project7.localmanager.BsonLite.withProfileDocument(r32.profile, "std", com.project7.localmanager.BsonLite.withProfileInt(r22, r23, r4)), com.project7.localmanager.LocalWingStoryEngine.KEY, com.project7.localmanager.BsonLite.withProfileDocument(com.project7.localmanager.BsonLite.withProfileInt(com.project7.localmanager.BsonLite.withProfileInt(r26, r21, r4), r25, com.project7.localmanager.BsonLite.keys(r5).size()), r24, r5));
        r2 = snapshot(m88d(r1, "std"));
        r32.profile = r1;
        r32.add("syncBaiyuInfos", com.project7.localmanager.BsonLite.document("d", r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0307, code lost:
    
        return "applied";
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01c8, code lost:
    
        return "invalid-receipt-chain";
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01c9, code lost:
    
        r29 = r9;
        r21 = r11;
        r28 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01d4, code lost:
    
        if (r10 == r28.intValue()) goto L84;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static String apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        LocalEventCatalog localEventCatalog2 = localEventCatalog;
        if (LocalWingOperationLedger.present(result.profile)) {
            return LocalWingOperationLedger.refresh(result, localEventCatalog, progress);
        }
        byte[] documentValue = BsonLite.documentValue(result.profile, KEY);
        byte[] documentValue2 = BsonLite.documentValue(result.profile, "std");
        if (documentValue == null || documentValue2 == null) {
            return "missing-proven-baseline";
        }
        if (!wing(documentValue2)) {
            return "wrong-route";
        }
        if (progress == null || !identity(result.profile, documentValue) || progress.weekIndex != m89v(documentValue, "week") || !progress.weekCommit.equals(BsonLite.stringValue(documentValue, "cycle"))) {
            return "wrong-cycle";
        }
        String str = "receipts";
        byte[] documentValue3 = BsonLite.documentValue(documentValue, "receipts");
        Integer intValue = BsonLite.intValue(documentValue, "initial");
        String str2 = "current";
        Integer intValue2 = BsonLite.intValue(documentValue, "current");
        if (m89v(documentValue, "version") != 1 || intValue == null || intValue.intValue() != INITIAL || intValue2 == null || documentValue3 == null) {
            return "invalid-ledger";
        }
        String str3 = "generation";
        if (m89v(documentValue, "generation") != BsonLite.keys(documentValue3).size()) {
            return "invalid-ledger";
        }
        String str4 = "byv";
        if (!intValue2.equals(BsonLite.intValue(documentValue2, "byv")) || snapshot(documentValue2) == null) {
            return "invalid-ledger";
        }
        if (BsonLite.keys(result.profile).contains("q7StoryPending") && BsonLite.documentValue(result.profile, "q7StoryPending") == null) {
            return "invalid-outbox";
        }
        byte[] m88d = m88d(result.profile, "q7StoryPending");
        if (BsonLite.keys(m88d).contains("syncBaiyuInfos") && payload(result.profile, m88d(m88d, "syncBaiyuInfos")) == null) {
            return "invalid-outbox";
        }
        try {
            int intValue3 = intValue.intValue();
            HashSet hashSet = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
            Iterator<String> it = BsonLite.keys(documentValue3).iterator();
            int i = intValue3;
            int i2 = -1;
            while (true) {
                byte[] bArr = documentValue2;
                String str5 = str4;
                String str6 = str;
                String str7 = str3;
                byte[] bArr2 = documentValue;
                if (!it.hasNext()) {
                    break;
                }
                Iterator<String> it2 = it;
                String next = it.next();
                String str8 = str2;
                int parseInt = Integer.parseInt(next);
                Integer num = intValue2;
                int completedDay = LocalStoryItemRewardEngine.completedDay(result.profile, progress, parseInt);
                byte[] documentValue4 = BsonLite.documentValue(documentValue3, next);
                byte[] bArr3 = documentValue3;
                Integer num2 = localEventCatalog2.baiyuEffects.get(Integer.valueOf(parseInt));
                if (documentValue4 != null && num2 != null) {
                    if (!eligible(result.profile, localEventCatalog2, progress, hashSet, parseInt) || m89v(documentValue4, "count") != 1 || m89v(documentValue4, "delta") != num2.intValue() || m89v(documentValue4, "week") != progress.weekIndex || completedDay != m89v(documentValue4, "day") || completedDay < i2 || !Integer.valueOf(i).equals(BsonLite.intValue(documentValue4, "before")) || !Integer.valueOf(Math.addExact(i, num2.intValue())).equals(BsonLite.intValue(documentValue4, "after")) || (i = Math.addExact(i, num2.intValue())) < 0 || i > MAXIMUM) {
                        break;
                    }
                    i2 = completedDay;
                    str2 = str8;
                    documentValue2 = bArr;
                    str4 = str5;
                    str = str6;
                    str3 = str7;
                    documentValue = bArr2;
                    it = it2;
                    intValue2 = num;
                    documentValue3 = bArr3;
                } else {
                    break;
                }
            }
        } catch (ArithmeticException | IllegalArgumentException e) {
            return "invalid-ledger";
        }
    }

    private static boolean eligible(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, Set<Integer> set, int i) {
        LocalEventCatalog.Event event = localEventCatalog.get(i);
        return event != null && event.release && !event.repeatable && !set.contains(Integer.valueOf(i)) && progress.completedEvents.contains(Integer.valueOf(i)) && progress.eventCompletions.getOrDefault(Integer.valueOf(i), 0).intValue() == 1 && LocalStoryItemRewardEngine.completedDay(bArr, progress, i) >= 0 && Collections.disjoint(progress.completedEvents, localEventCatalog.mutex(i));
    }

    private static boolean wing(byte[] bArr) {
        String stringValue = BsonLite.stringValue(bArr, "rt");
        return stringValue != null && (stringValue.equals("7") || stringValue.startsWith("7-"));
    }

    private static boolean identity(byte[] bArr, byte[] bArr2) {
        String stringValue = BsonLite.stringValue(bArr2, "cycle");
        return stringValue != null && !stringValue.isEmpty() && stringValue.equals(BsonLite.stringValue(m88d(bArr, "q7WeekTransition"), "id")) && Integer.valueOf(m89v(bArr2, "week")).equals(BsonLite.intValue(m88d(bArr, "weeknum"), "w")) && m89v(m88d(bArr, "q7WeekTransition"), "week") == m89v(bArr2, "week");
    }

    static byte[] snapshot(byte[] bArr) {
        Integer intValue = BsonLite.intValue(bArr, "byv");
        if (intValue == null || intValue.intValue() < 0 || intValue.intValue() > MAXIMUM) {
            return null;
        }
        byte[] document = BsonLite.document("byv", intValue);
        String[] strArr = {"ysg", "slm", "ycyo"};
        for (int i = 0; i < 3; i++) {
            String str = strArr[i];
            Boolean boolValue = BsonLite.boolValue(bArr, str);
            if (boolValue == null) {
                return null;
            }
            document = BsonLite.withProfileBool(document, str, boolValue.booleanValue());
        }
        String[] strArr2 = {"ycn", "byn", "hyn"};
        for (int i2 = 0; i2 < 3; i2++) {
            String str2 = strArr2[i2];
            Integer intValue2 = BsonLite.intValue(bArr, str2);
            if (intValue2 == null || intValue2.intValue() < 0) {
                return null;
            }
            document = BsonLite.withProfileInt(document, str2, intValue2.intValue());
        }
        return document;
    }

    static byte[] envelope(byte[] bArr, byte[] bArr2) {
        if (LocalWingOperationLedger.present(bArr)) {
            return LocalWingOperationLedger.envelope(bArr, bArr2);
        }
        byte[] documentValue = BsonLite.documentValue(bArr, KEY);
        byte[] snapshot = snapshot(m88d(bArr, "std"));
        if (documentValue == null || m89v(documentValue, "version") != 1 || !identity(bArr, documentValue) || !wing(m88d(bArr, "std")) || snapshot == null || !Arrays.equals(snapshot, BsonLite.documentValue(bArr2, "d"))) {
            return null;
        }
        Integer intValue = BsonLite.intValue(documentValue, "generation");
        byte[] documentValue2 = BsonLite.documentValue(documentValue, "receipts");
        if (intValue != null && intValue.intValue() >= 0 && documentValue2 != null && intValue.intValue() == BsonLite.keys(documentValue2).size()) {
            int i = INITIAL;
            if (!Integer.valueOf(INITIAL).equals(BsonLite.intValue(documentValue, "initial")) || !BsonLite.intValue(snapshot, "byv").equals(BsonLite.intValue(documentValue, "current"))) {
                return null;
            }
            int i2 = -1;
            try {
                for (String str : BsonLite.keys(documentValue2)) {
                    byte[] documentValue3 = BsonLite.documentValue(documentValue2, str);
                    Integer intValue2 = documentValue3 == null ? null : BsonLite.intValue(documentValue3, "delta");
                    Integer intValue3 = documentValue3 == null ? null : BsonLite.intValue(documentValue3, "day");
                    if (Integer.parseInt(str) > 0 && intValue2 != null && intValue2.intValue() != 0 && intValue3 != null && intValue3.intValue() >= i2 && intValue3.intValue() <= m89v(m88d(bArr, "weeknum"), "d") && m89v(documentValue3, "week") == m89v(documentValue, "week") && m89v(documentValue3, "count") == 1 && Integer.valueOf(i).equals(BsonLite.intValue(documentValue3, "before"))) {
                        i = Math.addExact(i, intValue2.intValue());
                        i2 = intValue3.intValue();
                        if (i >= 0 && i <= MAXIMUM && Integer.valueOf(i).equals(BsonLite.intValue(documentValue3, "after"))) {
                        }
                        return null;
                    }
                    return null;
                }
                if (i != m89v(documentValue, "current")) {
                    return null;
                }
                return BsonLite.document("cycle", BsonLite.stringValue(documentValue, "cycle"), "generation", intValue, "d", snapshot);
            } catch (ArithmeticException | IllegalArgumentException e) {
                return null;
            }
        }
        return null;
    }

    static byte[] payload(byte[] bArr, byte[] bArr2) {
        byte[] document;
        byte[] envelope;
        if (bArr2 == null || (envelope = envelope(bArr, (document = BsonLite.document("d", m88d(bArr2, "d"))))) == null || !Arrays.equals(envelope, bArr2)) {
            return null;
        }
        return document;
    }
}
