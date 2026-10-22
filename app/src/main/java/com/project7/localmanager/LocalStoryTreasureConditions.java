package com.project7.localmanager;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalStoryTreasureConditions {
    LocalStoryTreasureConditions() {
    }

    static boolean matches(int i, String str, byte[] bArr) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str2 : str.split("\\|", -1)) {
            String[] split = str2.split(":", -1);
            if (split.length != 2) {
                throw new IllegalArgumentException("invalid treasure pair");
            }
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            if (parseInt <= 0 || parseInt2 < 1 || parseInt2 > 5) {
                throw new IllegalArgumentException("invalid treasure requirement");
            }
            linkedHashSet.add(parseInt + ":" + parseInt2);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashSet hashSet = new HashSet();
        Iterator it = Arrays.asList("hrs", "bhrs").iterator();
        while (it.hasNext()) {
            Iterator<byte[]> it2 = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "heromgr"), (String) it.next())).iterator();
            while (it2.hasNext()) {
                for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(LocalResourceEngine.doc(it2.next(), "1"), "ti"), "items"))) {
                    String uuidValue = BsonLite.uuidValue(bArr2, "u");
                    if (uuidValue != null) {
                        linkedHashMap.put(uuidValue, bArr2);
                        hashSet.add(uuidValue);
                    }
                }
            }
        }
        HashSet hashSet2 = new HashSet();
        for (byte[] bArr3 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "inv"), "items"))) {
            String uuidValue2 = BsonLite.uuidValue(bArr3, "u");
            if (uuidValue2 != null) {
                linkedHashMap.put(uuidValue2, bArr3);
                hashSet2.add(uuidValue2);
            }
        }
        HashSet hashSet3 = new HashSet();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (i != 35 || (hashSet2.contains(entry.getKey()) && !hashSet.contains(entry.getKey()))) {
                byte[] bArr4 = (byte[]) entry.getValue();
                Integer intValue = BsonLite.intValue(bArr4, "i");
                Integer intValue2 = BsonLite.intValue(bArr4, "w");
                if (intValue != null && intValue.intValue() > 0 && (intValue2 == null || intValue2.intValue() > 0)) {
                    byte[] doc = LocalResourceEngine.doc(bArr4, "tr");
                    Integer intValue3 = BsonLite.intValue(doc, "cl");
                    if (intValue3 == null) {
                        if (!BsonLite.keys(doc).contains("cl")) {
                            intValue3 = 1;
                        }
                    }
                    if (intValue3.intValue() >= 1 && intValue3.intValue() <= 5) {
                        hashSet3.add(intValue + ":" + intValue3);
                    }
                }
            }
        }
        return i == 41 ? !Collections.disjoint(hashSet3, linkedHashSet) : hashSet3.containsAll(linkedHashSet);
    }
}
