package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

/* loaded from: classes.dex */
final class LocalSharedLiberateEngine {
    static final String[] FIELDS = {"ls", "lh", "la", "ld"};

    LocalSharedLiberateEngine() {
    }

    static byte[] normalize(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        return normalize(bArr, localFeatureCatalog, 0);
    }

    static byte[] normalize(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, int i) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        reconcile(result, localFeatureCatalog, i, false);
        return result.profile;
    }

    static void acquired(LocalResourceEngine.Result result, byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        HashSet hashSet = new HashSet();
        Iterator<byte[]> it = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "heromgr"), "hrs")).iterator();
        while (it.hasNext()) {
            hashSet.add(Integer.valueOf(LocalResourceEngine.value(it.next(), "0")));
        }
        Iterator<byte[]> it2 = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(result.profile, "heromgr"), "hrs")).iterator();
        while (it2.hasNext()) {
            if (!hashSet.contains(Integer.valueOf(LocalResourceEngine.value(it2.next(), "0")))) {
                reconcile(result, localFeatureCatalog, 0, true);
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void reconcile(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        Iterator it = new TreeSet(localFeatureCatalog.entries.keySet()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str.startsWith("LS:") && (i == 0 || BsonLite.intArrayValues(localFeatureCatalog.entries.get(str), "liberate_share").contains(Integer.valueOf(i)))) {
                ArrayList arrayList2 = new ArrayList();
                int[] iArr = new int[4];
                Iterator<Integer> it2 = BsonLite.intArrayValues(localFeatureCatalog.entries.get(str), "liberate_share").iterator();
                boolean z2 = true;
                while (it2.hasNext()) {
                    int intValue = it2.next().intValue();
                    if (LocalResourceEngine.ownsHero(result.profile, intValue)) {
                        arrayList2.add(Integer.valueOf(intValue));
                        byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, intValue);
                        int i2 = 0;
                        while (true) {
                            String[] strArr = FIELDS;
                            if (i2 < strArr.length) {
                                Integer intValue2 = BsonLite.intValue(profileHeroDocument, strArr[i2]);
                                if (intValue2 == null && BsonLite.keys(profileHeroDocument).contains(strArr[i2])) {
                                    z2 = false;
                                }
                                int intValue3 = intValue2 == null ? 0 : intValue2.intValue();
                                if (intValue3 < 0 || (i2 == 0 && intValue3 > 4)) {
                                    z2 = false;
                                }
                                iArr[i2] = Math.max(iArr[i2], intValue3);
                                i2++;
                            }
                        }
                    }
                }
                if (z2 && arrayList2.size() >= 2) {
                    Iterator it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        int intValue4 = ((Integer) it3.next()).intValue();
                        byte[] profileHeroDocument2 = BsonLite.profileHeroDocument(result.profile, intValue4);
                        byte[] bArr = profileHeroDocument2;
                        int i3 = 0;
                        while (true) {
                            String[] strArr2 = FIELDS;
                            if (i3 >= strArr2.length) {
                                break;
                            }
                            if (LocalResourceEngine.value(bArr, strArr2[i3]) != iArr[i3]) {
                                bArr = BsonLite.withProfileInt(bArr, strArr2[i3], iArr[i3]);
                            }
                            i3++;
                        }
                        if (!Arrays.equals(profileHeroDocument2, bArr)) {
                            result.profile = BsonLite.withHeroDocument(result.profile, intValue4, bArr);
                            if (intValue4 != i) {
                                arrayList.add(Arrays.asList(Integer.valueOf(intValue4), bArr));
                            }
                        }
                    }
                }
            }
        }
        if (z && !arrayList.isEmpty()) {
            result.add("syncHeroesData", BsonLite.document("d", arrayList));
        }
    }
}
