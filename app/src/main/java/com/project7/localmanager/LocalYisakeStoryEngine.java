package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalYisakeStoryEngine {
    static final String KEY = "q7Yisake";
    static final int MAXIMUM = 100;
    static final String METHOD = "syncYisakeVal";

    LocalYisakeStoryEngine() {
    }

    /* renamed from: d */
    private static byte[] m90d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m91v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        apply(result, localEventCatalog, progress);
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x021e, code lost:
    
        r24 = r1;
        r26 = r3;
        r28 = r4;
        r27 = r6;
        r29 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x022e, code lost:
    
        if (r5 == r7.intValue()) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0230, code lost:
    
        return "receipt-value-mismatch";
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0233, code lost:
    
        r1 = r34.completedEvents.iterator();
        r3 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0240, code lost:
    
        if (r1.hasNext() == false) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0242, code lost:
    
        r4 = r1.next().intValue();
        r9 = r33.yisakeEffects.get(java.lang.Integer.valueOf(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0258, code lost:
    
        if (r9 == null) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0266, code lost:
    
        if (com.project7.localmanager.BsonLite.keys(r3).contains(java.lang.Integer.toString(r4)) != false) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x026e, code lost:
    
        if (eligible(r32.profile, r33, r34, r8, r4) != false) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0271, code lost:
    
        r11 = com.project7.localmanager.LocalStoryItemRewardEngine.completedDay(r32.profile, r34, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0277, code lost:
    
        if (r11 >= r10) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x027c, code lost:
    
        r10 = java.lang.Math.addExact(r5, r9.intValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0286, code lost:
    
        if (r10 <= com.project7.localmanager.LocalYisakeStoryEngine.MAXIMUM) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x028b, code lost:
    
        r3 = com.project7.localmanager.BsonLite.withProfileDocument(r3, java.lang.Integer.toString(r4), com.project7.localmanager.BsonLite.document("day", java.lang.Integer.valueOf(r11), "delta", r9, "before", java.lang.Integer.valueOf(r5), "after", java.lang.Integer.valueOf(r10)));
        r5 = r10;
        r10 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0288, code lost:
    
        return "unproven-boundary-policy";
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0279, code lost:
    
        return "nonchronological-completion";
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02d0, code lost:
    
        if (java.util.Arrays.equals(r3, r24) == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02d2, code lost:
    
        return "unchanged";
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02d5, code lost:
    
        r32.profile = com.project7.localmanager.BsonLite.withProfileDocument(r32.profile, com.project7.localmanager.LocalYisakeStoryEngine.KEY, com.project7.localmanager.BsonLite.withProfileDocument(com.project7.localmanager.BsonLite.withProfileInt(com.project7.localmanager.BsonLite.withProfileInt(r29, r28, r5), r27, com.project7.localmanager.BsonLite.keys(r3).size()), r26, r3));
        r32.profile = com.project7.localmanager.BsonLite.withProfileDocument(r32.profile, "std", com.project7.localmanager.BsonLite.withProfileInt(r3, "yiv", r5));
        r32.add(r25, com.project7.localmanager.BsonLite.document("iv", java.lang.Integer.valueOf(r5), "av", java.lang.Integer.valueOf(r5 - r7.intValue())));
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0338, code lost:
    
        return "applied";
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bd, code lost:
    
        if (com.project7.localmanager.BsonLite.stringValue(r9, "cycle") != null) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static String apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        String str;
        String str2;
        Object obj;
        String str3;
        String str4;
        String str5;
        String str6;
        LocalEventCatalog localEventCatalog2;
        byte[] bArr;
        String str7;
        byte[] documentValue = BsonLite.documentValue(result.profile, "std");
        String stringValue = BsonLite.stringValue(documentValue, "rt");
        if (stringValue == null) {
            return "wrong-route";
        }
        if (!stringValue.equals("9") && !stringValue.startsWith("9-")) {
            return "wrong-route";
        }
        Integer intValue = BsonLite.intValue(m90d(result.profile, "weeknum"), "w");
        if (progress == null || intValue == null || intValue.intValue() != progress.weekIndex) {
            return "wrong-cycle";
        }
        Integer intValue2 = BsonLite.intValue(documentValue, "yiv");
        if (intValue2 == null && !BsonLite.keys(documentValue).contains("yiv")) {
            intValue2 = 0;
        }
        if (intValue2 == null || intValue2.intValue() < 0 || intValue2.intValue() > MAXIMUM) {
            return "invalid-native-value";
        }
        if (BsonLite.keys(result.profile).contains("q7StoryPending") && BsonLite.documentValue(result.profile, "q7StoryPending") == null) {
            return "invalid-outbox";
        }
        byte[] documentValue2 = BsonLite.documentValue(result.profile, KEY);
        if (BsonLite.keys(result.profile).contains(KEY)) {
            if (documentValue2 != null) {
                str = "version";
                if (m91v(documentValue2, "version") == 1) {
                    if (BsonLite.intValue(documentValue2, "week") != null) {
                        if (m91v(documentValue2, "week") >= 0) {
                        }
                    }
                }
            }
            return "invalid-ledger";
        }
        str = "version";
        String str8 = "current";
        String str9 = "receipts";
        String str10 = "generation";
        String str11 = METHOD;
        if (documentValue2 == null) {
            str2 = "week";
            obj = METHOD;
            str3 = "std";
            str4 = "yiv";
            str5 = "receipts";
            str6 = KEY;
            localEventCatalog2 = localEventCatalog;
            bArr = documentValue2;
            str7 = "generation";
        } else if (!intValue.equals(BsonLite.intValue(documentValue2, "week"))) {
            bArr = documentValue2;
            str2 = "week";
            obj = METHOD;
            str3 = "std";
            str4 = "yiv";
            str5 = "receipts";
            str7 = "generation";
            str6 = KEY;
            localEventCatalog2 = localEventCatalog;
        } else {
            str2 = "week";
            if (!progress.weekCommit.equals(BsonLite.stringValue(documentValue2, "cycle"))) {
                str5 = "receipts";
                bArr = documentValue2;
                obj = METHOD;
                str3 = "std";
                str4 = "yiv";
                str6 = KEY;
                str7 = "generation";
                localEventCatalog2 = localEventCatalog;
            } else {
                byte[] documentValue3 = BsonLite.documentValue(documentValue2, "receipts");
                Integer intValue3 = BsonLite.intValue(documentValue2, "initial");
                if (intValue3 == null || intValue3.intValue() < 0 || intValue3.intValue() > MAXIMUM || documentValue3 == null || BsonLite.intValue(documentValue2, "generation") == null || BsonLite.documentValue(documentValue2, "baseline") == null || !intValue2.equals(BsonLite.intValue(documentValue2, "current")) || m91v(documentValue2, "generation") != BsonLite.keys(documentValue3).size()) {
                    return "invalid-ledger";
                }
                HashSet hashSet = new HashSet(BsonLite.intArrayValues(documentValue2, "baseline"));
                hashSet.addAll(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
                byte[] documentValue4 = BsonLite.documentValue(m90d(result.profile, "q7StoryPending"), METHOD);
                if (BsonLite.keys(m90d(result.profile, "q7StoryPending")).contains(METHOD) && payload(result.profile, documentValue4) == null) {
                    return "invalid-outbox";
                }
                try {
                    int intValue4 = intValue3.intValue();
                    int i = -1;
                    Iterator<String> it = BsonLite.keys(documentValue3).iterator();
                    while (true) {
                        String str12 = str11;
                        if (!it.hasNext()) {
                            break;
                        }
                        String next = it.next();
                        Iterator<String> it2 = it;
                        int parseInt = Integer.parseInt(next);
                        String str13 = str9;
                        int completedDay = LocalStoryItemRewardEngine.completedDay(result.profile, progress, parseInt);
                        byte[] documentValue5 = BsonLite.documentValue(documentValue3, next);
                        String str14 = str8;
                        String str15 = str10;
                        byte[] bArr2 = documentValue2;
                        Integer num = localEventCatalog.yisakeEffects.get(Integer.valueOf(parseInt));
                        if (documentValue5 != null && num != null) {
                            byte[] bArr3 = documentValue3;
                            if (!eligible(result.profile, localEventCatalog, progress, hashSet, parseInt) || m91v(documentValue5, "day") != completedDay || completedDay < i || m91v(documentValue5, "delta") != num.intValue() || !Integer.valueOf(intValue4).equals(BsonLite.intValue(documentValue5, "before")) || (intValue4 = Math.addExact(intValue4, num.intValue())) > MAXIMUM || !Integer.valueOf(intValue4).equals(BsonLite.intValue(documentValue5, "after"))) {
                                break;
                            }
                            i = completedDay;
                            it = it2;
                            documentValue3 = bArr3;
                            str11 = str12;
                            str9 = str13;
                            str10 = str15;
                            str8 = str14;
                            documentValue2 = bArr2;
                        } else {
                            break;
                        }
                    }
                    return "invalid-receipts";
                } catch (ArithmeticException | IllegalArgumentException e) {
                    return "invalid-ledger";
                }
            }
        }
        String str16 = str4;
        if (BsonLite.keys(m90d(result.profile, "q7StoryPending")).contains(obj)) {
            return "stale-cycle-outbox";
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it3 = progress.completedEvents.iterator();
        while (it3.hasNext()) {
            int intValue5 = it3.next().intValue();
            Iterator<Integer> it4 = it3;
            if (localEventCatalog2.yisakeEffects.containsKey(Integer.valueOf(intValue5))) {
                arrayList.add(Integer.valueOf(intValue5));
            }
            localEventCatalog2 = localEventCatalog;
            it3 = it4;
        }
        if (bArr == null) {
            bArr = BsonLite.EMPTY_DOCUMENT;
        }
        result.profile = BsonLite.withProfileDocument(result.profile, str6, BsonLite.withProfileDocument(BsonLite.withProfileIntArray(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileString(BsonLite.withProfileInt(BsonLite.withProfileInt(bArr, str, 1), str2, intValue.intValue()), "cycle", progress.weekCommit), "initial", intValue2.intValue()), "current", intValue2.intValue()), str7, 0), "baseline", arrayList), str5, BsonLite.EMPTY_DOCUMENT));
        result.profile = BsonLite.withProfileDocument(result.profile, str3, BsonLite.withProfileInt(documentValue, str16, intValue2.intValue()));
        return "baseline-established";
    }

    private static boolean eligible(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, Set<Integer> set, int i) {
        LocalEventCatalog.Event event = localEventCatalog.get(i);
        return event != null && event.release && !event.repeatable && !set.contains(Integer.valueOf(i)) && progress.completedEvents.contains(Integer.valueOf(i)) && progress.eventCompletions.getOrDefault(Integer.valueOf(i), 0).intValue() == 1 && LocalStoryItemRewardEngine.completedDay(bArr, progress, i) >= 0 && Collections.disjoint(progress.completedEvents, localEventCatalog.mutex(i));
    }

    static byte[] envelope(byte[] bArr, byte[] bArr2) {
        byte[] documentValue = BsonLite.documentValue(bArr, KEY);
        Integer intValue = BsonLite.intValue(bArr2, "iv");
        Integer intValue2 = BsonLite.intValue(bArr2, "av");
        String stringValue = BsonLite.stringValue(m90d(bArr, "std"), "rt");
        String stringValue2 = BsonLite.stringValue(m90d(bArr, "q7WeekTransition"), "id");
        if (documentValue != null && m91v(documentValue, "version") == 1 && intValue != null && intValue2 != null && stringValue != null) {
            if ((stringValue.equals("9") || stringValue.startsWith("9-")) && intValue.intValue() >= 0 && intValue.intValue() <= MAXIMUM && intValue2.intValue() > 0 && intValue2.intValue() <= intValue.intValue() && intValue.equals(BsonLite.intValue(m90d(bArr, "std"), "yiv")) && intValue.equals(BsonLite.intValue(documentValue, "current")) && BsonLite.stringValue(documentValue, "cycle") != null) {
                if ((stringValue2 != null && !stringValue2.equals(BsonLite.stringValue(documentValue, "cycle"))) || !Objects.equals(BsonLite.intValue(documentValue, "week"), BsonLite.intValue(m90d(bArr, "weeknum"), "w"))) {
                    return null;
                }
                byte[] documentValue2 = BsonLite.documentValue(documentValue, "receipts");
                Integer intValue3 = BsonLite.intValue(documentValue, "initial");
                Integer intValue4 = BsonLite.intValue(documentValue, "generation");
                Integer intValue5 = BsonLite.intValue(m90d(bArr, "weeknum"), "d");
                if (intValue3 == null || intValue3.intValue() < 0 || intValue3.intValue() > intValue.intValue() || documentValue2 == null || intValue4 == null || intValue4.intValue() != BsonLite.keys(documentValue2).size() || intValue5 == null || intValue2.intValue() > intValue.intValue() - intValue3.intValue()) {
                    return null;
                }
                try {
                    int intValue6 = intValue3.intValue();
                    int i = -1;
                    for (String str : BsonLite.keys(documentValue2)) {
                        byte[] documentValue3 = BsonLite.documentValue(documentValue2, str);
                        Integer intValue7 = BsonLite.intValue(documentValue3, "delta");
                        byte[] bArr3 = documentValue2;
                        Integer intValue8 = BsonLite.intValue(documentValue3, "day");
                        if (Integer.parseInt(str) > 0 && intValue7 != null && intValue7.intValue() > 0 && intValue8 != null && intValue8.intValue() >= 0 && intValue8.intValue() >= i && intValue8.intValue() <= intValue5.intValue() && Integer.valueOf(intValue6).equals(BsonLite.intValue(documentValue3, "before")) && (intValue6 = Math.addExact(intValue6, intValue7.intValue())) <= MAXIMUM && Integer.valueOf(intValue6).equals(BsonLite.intValue(documentValue3, "after"))) {
                            i = intValue8.intValue();
                            documentValue2 = bArr3;
                        }
                        return null;
                    }
                    if (intValue6 != intValue.intValue()) {
                        return null;
                    }
                    return BsonLite.document("week", Integer.valueOf(m91v(documentValue, "week")), "cycle", BsonLite.stringValue(documentValue, "cycle"), "generation", Integer.valueOf(m91v(documentValue, "generation")), "iv", intValue, "av", intValue2);
                } catch (ArithmeticException | IllegalArgumentException e) {
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    static byte[] payload(byte[] bArr, byte[] bArr2) {
        byte[] document;
        byte[] envelope;
        if (bArr2 == null || (envelope = envelope(bArr, (document = BsonLite.document("iv", Integer.valueOf(m91v(bArr2, "iv")), "av", Integer.valueOf(m91v(bArr2, "av")))))) == null || !Arrays.equals(envelope, bArr2)) {
            return null;
        }
        return document;
    }
}
