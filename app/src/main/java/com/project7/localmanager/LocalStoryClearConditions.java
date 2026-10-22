package com.project7.localmanager;

import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
final class LocalStoryClearConditions {
    LocalStoryClearConditions() {
    }

    static int count(byte[] bArr) {
        byte[] documentValue = BsonLite.documentValue(bArr, "heromgr");
        if (documentValue == null || BsonLite.documentValue(documentValue, "hrs") == null) {
            throw new IllegalArgumentException("missing hero population");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : Arrays.asList("hrs", "bhrs")) {
            byte[] documentValue2 = BsonLite.documentValue(documentValue, str);
            if (documentValue2 == null) {
                if (BsonLite.keys(documentValue).contains(str)) {
                    throw new IllegalArgumentException("invalid hero population");
                }
            } else {
                for (byte[] bArr2 : LocalResourceEngine.array(documentValue2)) {
                    Integer intValue = BsonLite.intValue(bArr2, "0");
                    byte[] documentValue3 = BsonLite.documentValue(bArr2, "1");
                    if (intValue == null || intValue.intValue() <= 0 || documentValue3 == null) {
                        throw new IllegalArgumentException("invalid hero entry");
                    }
                    Boolean boolValue = BsonLite.boolValue(documentValue3, "cfd");
                    if (boolValue == null && BsonLite.keys(documentValue3).contains("cfd")) {
                        throw new IllegalArgumentException("invalid current-cycle clear");
                    }
                    linkedHashMap.put(intValue, Boolean.valueOf(Boolean.TRUE.equals(boolValue)));
                }
            }
        }
        int i = 0;
        Iterator it = linkedHashMap.values().iterator();
        while (it.hasNext()) {
            if (((Boolean) it.next()).booleanValue()) {
                i++;
            }
        }
        return i;
    }
}
