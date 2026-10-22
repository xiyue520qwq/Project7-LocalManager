package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
final class LocalWingOperationLedger {
    static final String[] FIELDS = {"byv", "ycn", "byn", "hyn"};
    static final String KEY = "q7WingOps";
    static final String MARKER = "operationsVersion";

    LocalWingOperationLedger() {
    }

    /* renamed from: d */
    static byte[] m90d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m91v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static boolean present(byte[] bArr) {
        return BsonLite.keys(bArr).contains(KEY) || BsonLite.keys(m90d(bArr, "q7Wing")).contains(MARKER);
    }

    static byte[] values(byte[] bArr) {
        byte[] snapshot = LocalWingStoryEngine.snapshot(m90d(bArr, "std"));
        if (snapshot == null) {
            return null;
        }
        byte[] bArr2 = BsonLite.EMPTY_DOCUMENT;
        for (String str : FIELDS) {
            bArr2 = BsonLite.withProfileInt(bArr2, str, BsonLite.intValue(snapshot, str).intValue());
        }
        return bArr2;
    }

    static byte[] add(byte[] bArr, byte[] bArr2) {
        Iterator<String> it = BsonLite.keys(bArr2).iterator();
        while (it.hasNext()) {
            if (!Arrays.asList(FIELDS).contains(it.next())) {
                throw new IllegalArgumentException("Unknown Wing quantity");
            }
        }
        byte[] bArr3 = BsonLite.EMPTY_DOCUMENT;
        for (String str : FIELDS) {
            Integer intValue = BsonLite.intValue(bArr, str);
            Integer intValue2 = BsonLite.keys(bArr2).contains(str) ? BsonLite.intValue(bArr2, str) : 0;
            if (intValue == null || intValue2 == null) {
                throw new IllegalArgumentException("Invalid Wing quantity");
            }
            int addExact = Math.addExact(intValue.intValue(), intValue2.intValue());
            if (addExact < 0 || (str.equals("byv") && addExact > 100)) {
                throw new IllegalArgumentException("Unproven Wing boundary policy");
            }
            bArr3 = BsonLite.withProfileInt(bArr3, str, addExact);
        }
        return bArr3;
    }

    static byte[] policy(LocalEventCatalog localEventCatalog) {
        if (localEventCatalog.wingDrugs == null || !Arrays.equals(localEventCatalog.wingDrugs, new int[]{10, 1, 2, 2, -2})) {
            return null;
        }
        return BsonLite.document("cost", Integer.valueOf(localEventCatalog.wingDrugs[0]), "white", Integer.valueOf(localEventCatalog.wingDrugs[2]), "black", Integer.valueOf(localEventCatalog.wingDrugs[4]));
    }

    static byte[] drugDelta(byte[] bArr, String str, int i) {
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException("Invalid original drug type");
        }
        String str2 = i == 1 ? "byn" : "hyn";
        if ("make".equals(str)) {
            return BsonLite.document("ycn", Integer.valueOf(-m91v(bArr, "cost")), str2, 1);
        }
        if ("consume".equals(str)) {
            Object[] objArr = new Object[4];
            objArr[0] = "byv";
            objArr[1] = Integer.valueOf(m91v(bArr, i == 1 ? "white" : "black"));
            objArr[2] = str2;
            objArr[3] = -1;
            return BsonLite.document(objArr);
        }
        throw new IllegalArgumentException("Unknown Wing operation");
    }

    static byte[] validate(byte[] bArr) {
        String str;
        byte[] drugDelta;
        byte[] documentValue = BsonLite.documentValue(bArr, KEY);
        byte[] m90d = m90d(bArr, "q7Wing");
        byte[] m90d2 = m90d(bArr, "weeknum");
        String stringValue = BsonLite.stringValue(m90d, "cycle");
        String stringValue2 = BsonLite.stringValue(m90d(bArr, "std"), "rt");
        Integer intValue = BsonLite.intValue(m90d2, "d");
        Integer intValue2 = BsonLite.intValue(m90d2, "w");
        Integer intValue3 = documentValue == null ? null : BsonLite.intValue(documentValue, "generation");
        byte[] documentValue2 = documentValue == null ? null : BsonLite.documentValue(documentValue, "records");
        byte[] documentValue3 = documentValue == null ? null : BsonLite.documentValue(documentValue, "policy");
        if (documentValue != null) {
            String str2 = "event";
            String str3 = "before";
            String str4 = "day";
            if (m91v(documentValue, "version") == 1 && m91v(m90d, "version") == 1 && m91v(m90d, MARKER) == 1 && BsonLite.intValue(m90d, "generation") != null && BsonLite.documentValue(m90d, "receipts") != null) {
                String str5 = "week";
                if (BsonLite.intValue(m90d, "week") != null && BsonLite.intValue(documentValue, "week") != null && stringValue != null && !stringValue.isEmpty() && stringValue.equals(BsonLite.stringValue(documentValue, "cycle"))) {
                    String str6 = "id";
                    if (stringValue.equals(BsonLite.stringValue(m90d(bArr, "q7WeekTransition"), "id")) && intValue2 != null && intValue2.intValue() == m91v(m90d, "week") && intValue2.intValue() == m91v(documentValue, "week") && intValue2.intValue() == m91v(m90d(bArr, "q7WeekTransition"), "week") && intValue != null && intValue.intValue() >= 0 && intValue.intValue() <= 7 && stringValue2 != null) {
                        if ((stringValue2.equals("7") || stringValue2.startsWith("7-")) && intValue3 != null && documentValue2 != null && intValue3.intValue() == BsonLite.keys(documentValue2).size() && documentValue3 != null && m91v(documentValue3, "cost") == 10 && m91v(documentValue3, "white") == 2 && m91v(documentValue3, "black") == -2) {
                            int i = 50;
                            Integer num = 50;
                            if (!num.equals(BsonLite.intValue(m90d, "initial"))) {
                                return null;
                            }
                            try {
                                byte[] documentValue4 = BsonLite.documentValue(documentValue, "initial");
                                byte[] m90d3 = m90d(m90d, "receipts");
                                if (documentValue4 != null) {
                                    Integer num2 = 50;
                                    if (num2.equals(BsonLite.intValue(documentValue4, "byv")) && Arrays.equals(documentValue4, add(documentValue4, BsonLite.EMPTY_DOCUMENT))) {
                                        HashSet hashSet = new HashSet();
                                        ArrayList arrayList = new ArrayList();
                                        int i2 = -1;
                                        int i3 = 0;
                                        for (String str7 : BsonLite.keys(documentValue2)) {
                                            byte[] bArr2 = documentValue;
                                            byte[] documentValue5 = BsonLite.documentValue(documentValue2, str7);
                                            i3++;
                                            byte[] bArr3 = documentValue2;
                                            if (str7.equals(Integer.toString(i3)) && documentValue5 != null) {
                                                String stringValue3 = BsonLite.stringValue(documentValue5, str6);
                                                String stringValue4 = BsonLite.stringValue(documentValue5, "kind");
                                                String str8 = str6;
                                                String str9 = str4;
                                                Integer intValue4 = BsonLite.intValue(documentValue5, str9);
                                                if (stringValue3 == null || stringValue3.isEmpty() || !hashSet.add(stringValue3) || intValue4 == null || intValue4.intValue() < 0) {
                                                    return null;
                                                }
                                                HashSet hashSet2 = hashSet;
                                                if (intValue4.intValue() < i2 || intValue4.intValue() > intValue.intValue()) {
                                                    return null;
                                                }
                                                String str10 = str3;
                                                if (!Arrays.equals(documentValue4, BsonLite.documentValue(documentValue5, str10))) {
                                                    return null;
                                                }
                                                String str11 = str2;
                                                Integer num3 = intValue;
                                                byte[] bArr4 = m90d;
                                                byte[] bArr5 = documentValue4;
                                                if (str11.equals(stringValue4)) {
                                                    Integer intValue5 = BsonLite.intValue(documentValue5, str11);
                                                    if (intValue5 == null || intValue5.intValue() <= 0) {
                                                        return null;
                                                    }
                                                    str2 = str11;
                                                    if (!stringValue3.equals("event:" + intValue5)) {
                                                        return null;
                                                    }
                                                    byte[] documentValue6 = BsonLite.documentValue(m90d3, intValue5.toString());
                                                    Integer intValue6 = documentValue6 == null ? null : BsonLite.intValue(documentValue6, "delta");
                                                    if (documentValue6 == null || intValue6 == null || intValue6.intValue() == 0) {
                                                        return null;
                                                    }
                                                    str = str5;
                                                    if (m91v(documentValue6, str5) == intValue2.intValue() && m91v(documentValue6, "count") == 1 && m91v(documentValue6, str9) == intValue4.intValue() && Integer.valueOf(i).equals(BsonLite.intValue(documentValue6, str10))) {
                                                        int addExact = Math.addExact(i, intValue6.intValue());
                                                        if (!Integer.valueOf(addExact).equals(BsonLite.intValue(documentValue6, "after"))) {
                                                            return null;
                                                        }
                                                        arrayList.add(intValue5.toString());
                                                        drugDelta = BsonLite.document("byv", intValue6);
                                                        i = addExact;
                                                    }
                                                    return null;
                                                }
                                                str = str5;
                                                str2 = str11;
                                                Integer intValue7 = BsonLite.intValue(documentValue5, "type");
                                                if (intValue7 != null && !stringValue3.startsWith("event:")) {
                                                    drugDelta = drugDelta(documentValue3, stringValue4, intValue7.intValue());
                                                }
                                                return null;
                                                if (!Arrays.equals(drugDelta, BsonLite.documentValue(documentValue5, "delta"))) {
                                                    return null;
                                                }
                                                documentValue4 = add(bArr5, drugDelta);
                                                if (!Arrays.equals(documentValue4, BsonLite.documentValue(documentValue5, "after"))) {
                                                    return null;
                                                }
                                                int intValue8 = intValue4.intValue();
                                                str4 = str9;
                                                intValue = num3;
                                                documentValue = bArr2;
                                                documentValue2 = bArr3;
                                                str6 = str8;
                                                hashSet = hashSet2;
                                                m90d = bArr4;
                                                str5 = str;
                                                str3 = str10;
                                                i2 = intValue8;
                                            }
                                            return null;
                                        }
                                        byte[] bArr6 = documentValue;
                                        byte[] bArr7 = m90d;
                                        if (arrayList.equals(BsonLite.keys(m90d3)) && m91v(bArr7, "generation") == arrayList.size() && Integer.valueOf(i).equals(BsonLite.intValue(bArr7, "current"))) {
                                            if (Arrays.equals(documentValue4, values(bArr))) {
                                                return bArr6;
                                            }
                                            return null;
                                        }
                                        return null;
                                    }
                                    return null;
                                }
                                return null;
                            } catch (ArithmeticException | IllegalArgumentException e) {
                                return null;
                            }
                        }
                        return null;
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    static byte[] migrate(byte[] bArr, LocalEventCatalog localEventCatalog) {
        if (!present(bArr)) {
            byte[] snapshot = LocalWingStoryEngine.snapshot(m90d(bArr, "std"));
            byte[] policy = policy(localEventCatalog);
            if (policy != null && snapshot != null) {
                int i = 2;
                char c = 0;
                if (LocalWingStoryEngine.envelope(bArr, BsonLite.document("d", snapshot)) != null) {
                    byte[] m90d = m90d(bArr, "q7Wing");
                    String str = "byv";
                    byte[] withProfileInt = BsonLite.withProfileInt(values(bArr), "byv", 50);
                    byte[] bArr2 = BsonLite.EMPTY_DOCUMENT;
                    String str2 = "receipts";
                    Iterator<String> it = BsonLite.keys(m90d(m90d, "receipts")).iterator();
                    int i2 = 0;
                    byte[] bArr3 = withProfileInt;
                    while (it.hasNext()) {
                        String next = it.next();
                        byte[] m90d2 = m90d(m90d(m90d, str2), next);
                        String str3 = str2;
                        Object[] objArr = new Object[i];
                        objArr[c] = str;
                        objArr[1] = Integer.valueOf(m91v(m90d2, "delta"));
                        byte[] document = BsonLite.document(objArr);
                        byte[] add = add(bArr3, document);
                        int i3 = i2 + 1;
                        bArr2 = BsonLite.withProfileDocument(bArr2, Integer.toString(i3), BsonLite.document("id", "event:" + next, "kind", "event", "event", Integer.valueOf(Integer.parseInt(next)), "day", Integer.valueOf(m91v(m90d2, "day")), "before", bArr3, "delta", document, "after", add));
                        i2 = i3;
                        str2 = str3;
                        bArr3 = add;
                        str = str;
                        it = it;
                        i = 2;
                        c = 0;
                    }
                    byte[] withProfileDocument = BsonLite.withProfileDocument(BsonLite.withProfileDocument(bArr, KEY, BsonLite.document("version", 1, "cycle", BsonLite.stringValue(m90d, "cycle"), "week", Integer.valueOf(m91v(m90d, "week")), "generation", Integer.valueOf(i2), "policy", policy, "initial", withProfileInt, "records", bArr2)), "q7Wing", BsonLite.withProfileInt(m90d, MARKER, 1));
                    if (validate(withProfileDocument) == null) {
                        throw new IllegalArgumentException("Unexplained original Wing quantities");
                    }
                    return withProfileDocument;
                }
            }
            throw new IllegalArgumentException("Missing proven original Wing ledger");
        }
        byte[] validate = validate(bArr);
        if (validate != null && Arrays.equals(m90d(validate, "policy"), policy(localEventCatalog))) {
            return bArr;
        }
        throw new IllegalArgumentException("Invalid Wing operations history");
    }

    static byte[] append(byte[] bArr, String str, int i, byte[] bArr2, int i2, Integer num) {
        byte[] validate = validate(bArr);
        if (validate == null) {
            throw new IllegalArgumentException("Invalid Wing operations ledger");
        }
        byte[] m90d = m90d(validate, "records");
        byte[] values = values(bArr);
        byte[] add = add(values, bArr2);
        int m91v = m91v(validate, "generation");
        if (i2 < 0 || i2 > m91v(m90d(bArr, "weeknum"), "d") || (m91v > 0 && i2 < m91v(m90d(m90d, Integer.toString(m91v)), "day"))) {
            throw new IllegalArgumentException("Nonchronological Wing operation");
        }
        Object[] objArr = new Object[12];
        objArr[0] = "id";
        objArr[1] = num == null ? LocalResourceEngine.uuid() : "event:" + num;
        objArr[2] = "kind";
        objArr[3] = str;
        objArr[4] = "day";
        objArr[5] = Integer.valueOf(i2);
        objArr[6] = "before";
        objArr[7] = values;
        objArr[8] = "delta";
        objArr[9] = bArr2;
        objArr[10] = "after";
        objArr[11] = add;
        byte[] document = BsonLite.document(objArr);
        int i3 = m91v + 1;
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileDocument(validate, "records", BsonLite.withProfileDocument(m90d, Integer.toString(i3), num == null ? BsonLite.withProfileInt(document, "type", i) : BsonLite.withProfileInt(document, "event", num.intValue()))), "generation", i3);
        byte[] m90d2 = m90d(bArr, "std");
        for (String str2 : FIELDS) {
            m90d2 = BsonLite.withProfileInt(m90d2, str2, BsonLite.intValue(add, str2).intValue());
        }
        return BsonLite.withProfileDocument(BsonLite.withProfileDocument(bArr, KEY, withProfileInt), "std", m90d2);
    }

    static byte[] envelope(byte[] bArr, byte[] bArr2) {
        byte[] validate = validate(bArr);
        byte[] snapshot = LocalWingStoryEngine.snapshot(m90d(bArr, "std"));
        if (validate == null || !Arrays.equals(snapshot, BsonLite.documentValue(bArr2, "d"))) {
            return null;
        }
        return BsonLite.document("schema", 2, "cycle", BsonLite.stringValue(validate, "cycle"), "generation", Integer.valueOf(m91v(validate, "generation")), "d", snapshot);
    }

    static String refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        byte[] bArr;
        byte[] bArr2;
        byte[] validate = validate(result.profile);
        if (validate == null || !Arrays.equals(m90d(validate, "policy"), policy(localEventCatalog))) {
            return "invalid-operations-ledger";
        }
        byte[] documentValue = BsonLite.documentValue(result.profile, "q7StoryPending");
        if (BsonLite.keys(result.profile).contains("q7StoryPending") && documentValue == null) {
            return "invalid-outbox";
        }
        if (documentValue != null && BsonLite.keys(documentValue).contains("syncBaiyuInfos") && LocalWingStoryEngine.payload(result.profile, BsonLite.documentValue(documentValue, "syncBaiyuInfos")) == null) {
            return "invalid-outbox";
        }
        byte[] m90d = m90d(result.profile, "q7Wing");
        byte[] withProfileDocument = BsonLite.withProfileDocument(BsonLite.withoutProfileKey(result.profile, KEY), "q7Wing", BsonLite.withoutProfileKey(m90d, MARKER));
        byte[] withProfileDocument2 = BsonLite.withProfileDocument(withProfileDocument, "std", BsonLite.withProfileInt(m90d(withProfileDocument, "std"), "byv", m91v(m90d, "current")));
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(BsonLite.withProfileDocument(withProfileDocument2, "q7StoryPending", BsonLite.withoutProfileKey(m90d(withProfileDocument2, "q7StoryPending"), "syncBaiyuInfos")));
        String apply = LocalWingStoryEngine.apply(result2, localEventCatalog, progress);
        if (!apply.equals("applied") && !apply.equals("unchanged")) {
            return apply;
        }
        if (apply.equals("unchanged")) {
            return "unchanged";
        }
        try {
            byte[] bArr3 = result.profile;
            byte[] m90d2 = m90d(result2.profile, "q7Wing");
            byte[] bArr4 = bArr3;
            for (String str : BsonLite.keys(m90d(m90d2, "receipts"))) {
                if (BsonLite.keys(m90d(m90d, "receipts")).contains(str)) {
                    bArr = m90d;
                    bArr2 = m90d2;
                } else {
                    byte[] m90d3 = m90d(m90d(m90d2, "receipts"), str);
                    bArr = m90d;
                    bArr2 = m90d2;
                    byte[] append = append(bArr4, "event", 0, BsonLite.document("byv", Integer.valueOf(m91v(m90d3, "delta"))), m91v(m90d3, "day"), Integer.valueOf(Integer.parseInt(str)));
                    byte[] m90d4 = m90d(append, "q7Wing");
                    byte[] withProfileDocument3 = BsonLite.withProfileDocument(m90d(m90d4, "receipts"), str, m90d3);
                    bArr4 = BsonLite.withProfileDocument(append, "q7Wing", BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileDocument(m90d4, "receipts", withProfileDocument3), "current", m91v(m90d3, "after")), "generation", BsonLite.keys(withProfileDocument3).size()));
                }
                m90d2 = bArr2;
                m90d = bArr;
            }
            if (validate(bArr4) == null) {
                return "invalid-mixed-event-chain";
            }
            result.profile = bArr4;
            result.add("syncBaiyuInfos", BsonLite.document("d", LocalWingStoryEngine.snapshot(m90d(bArr4, "std"))));
            return "applied";
        } catch (ArithmeticException | IllegalArgumentException e) {
            return "invalid-mixed-event-chain";
        }
    }
}
