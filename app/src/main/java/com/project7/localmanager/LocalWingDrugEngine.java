package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.function.Predicate;

/* loaded from: classes.dex */
final class LocalWingDrugEngine {
    static final String[] METHODS = {"makeYumiDrug", "consumeYumiDrag"};

    LocalWingDrugEngine() {
    }

    static boolean handles(String str) {
        return Arrays.asList(METHODS).contains(str);
    }

    /* renamed from: d */
    static byte[] m84d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static LocalResourceEngine.Result failure(byte[] bArr, String str, Integer num, int i) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        String str2 = str + "Reply";
        Object[] objArr = new Object[4];
        objArr[0] = "rs";
        objArr[1] = false;
        objArr[2] = "i";
        Object[] objArr2 = new Object[4];
        objArr2[0] = "rsn";
        objArr2[1] = Integer.valueOf(i);
        objArr2[2] = "_type";
        objArr2[3] = Integer.valueOf(num != null ? num.intValue() : 0);
        objArr[3] = BsonLite.document(objArr2);
        result.add(str2, BsonLite.document(objArr));
        return result;
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, String str, byte[] bArr2) {
        Integer intValue = BsonLite.intValue(bArr2, "t");
        if (handles(str) && intValue != null && ((intValue.intValue() == 1 || intValue.intValue() == 2) && localEventCatalog.wingDrugs != null)) {
            try {
                LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
                String apply = LocalWingStoryEngine.apply(result, localEventCatalog, progress);
                if ((!apply.equals("unchanged") && !apply.equals("applied")) || LocalWingGardenEngine.receipt(result.profile) == null) {
                    return failure(bArr, str, intValue, 1);
                }
                byte[] policy = LocalWingOperationLedger.policy(localEventCatalog);
                byte[] m84d = m84d(result.profile, "std");
                boolean equals = str.equals(METHODS[0]);
                Integer intValue2 = BsonLite.intValue(m84d, equals ? "ycn" : intValue.intValue() == 1 ? "byn" : "hyn");
                if (intValue2 != null) {
                    if (intValue2.intValue() >= (equals ? localEventCatalog.wingDrugs[0] : 1)) {
                        int intValue3 = BsonLite.intValue(m84d, "byv").intValue();
                        result.profile = LocalWingOperationLedger.migrate(result.profile, localEventCatalog);
                        byte[] bArr3 = result.profile;
                        String str2 = "make";
                        String str3 = equals ? "make" : "consume";
                        int intValue4 = intValue.intValue();
                        if (!equals) {
                            str2 = "consume";
                        }
                        result.profile = LocalWingOperationLedger.append(bArr3, str3, intValue4, LocalWingOperationLedger.drugDelta(policy, str2, intValue.intValue()), BsonLite.intValue(m84d(result.profile, "weeknum"), "d").intValue(), null);
                        if (LocalWingOperationLedger.validate(result.profile) == null) {
                            return failure(bArr, str, intValue, 1);
                        }
                        byte[] snapshot = LocalWingStoryEngine.snapshot(m84d(result.profile, "std"));
                        result.replies.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalWingDrugEngine$$ExternalSyntheticLambda0
                            @Override // java.util.function.Predicate
                            public final boolean test(Object obj) {
                                boolean equals2;
                                equals2 = ((LocalResourceEngine.Reply) obj).method.equals("syncBaiyuInfos");
                                return equals2;
                            }
                        });
                        String str4 = str + "Reply";
                        Object[] objArr = new Object[4];
                        objArr[0] = "rs";
                        objArr[1] = true;
                        objArr[2] = "i";
                        objArr[3] = equals ? BsonLite.document("d", snapshot) : BsonLite.document("b", Integer.valueOf(intValue3), "d", snapshot);
                        result.add(str4, BsonLite.document(objArr));
                        result.add("syncBaiyuInfos", BsonLite.document("d", snapshot));
                        result.profile = LocalStoryProgressDelivery.capture(result);
                        return result;
                    }
                }
                return failure(bArr, str, intValue, 2);
            } catch (ArithmeticException | IllegalArgumentException e) {
                return failure(bArr, str, intValue, 1);
            }
        }
        return failure(bArr, str, intValue, 1);
    }
}
