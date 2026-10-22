package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalCgEngine {
    LocalCgEngine() {
    }

    static void reconcile(LocalResourceEngine.Result result, byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, LocalWeekCatalog localWeekCatalog, LocalTutorialStore.Progress progress) {
        Iterator it;
        LocalFeatureCatalog localFeatureCatalog2 = localFeatureCatalog;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(BsonLite.intArrayValues(result.profile, "cgs"));
        linkedHashSet2.removeAll(BsonLite.intArrayValues(bArr, "cgs"));
        linkedHashSet.addAll(linkedHashSet2);
        if (progress != null) {
            Iterator<Integer> it2 = progress.completedEvents.iterator();
            while (it2.hasNext()) {
                int intValue = it2.next().intValue();
                byte[] bArr2 = localFeatureCatalog2.get("EC", Integer.valueOf(intValue));
                if (bArr2 != null) {
                    linkedHashSet.addAll(BsonLite.intArrayValues(bArr2, "cgs"));
                }
                int[] iArr = localWeekCatalog.endings.get(Integer.valueOf(intValue));
                if (iArr != null && iArr[1] > 0) {
                    linkedHashSet.add(Integer.valueOf(iArr[1]));
                }
            }
        }
        LinkedHashSet linkedHashSet3 = new LinkedHashSet(BsonLite.intArrayValues(result.profile, "cgs"));
        LinkedHashSet linkedHashSet4 = new LinkedHashSet(BsonLite.intArrayValues(result.profile, "ncgs"));
        LinkedHashSet linkedHashSet5 = new LinkedHashSet(BsonLite.intArrayValues(result.profile, "ccgs"));
        byte[] m4d = m4d(result.profile, "q7CgClaims");
        String str = "q7CgNotices";
        byte[] m4d2 = m4d(result.profile, "q7CgNotices");
        if (BsonLite.documentValue(bArr, "q7CgClaims") == null) {
            LinkedHashSet linkedHashSet6 = new LinkedHashSet(BsonLite.intArrayValues(bArr, "ncgs"));
            Iterator<Integer> it3 = BsonLite.intArrayValues(bArr, "cgs").iterator();
            while (it3.hasNext()) {
                int intValue2 = it3.next().intValue();
                Iterator<Integer> it4 = it3;
                if (!linkedHashSet6.contains(Integer.valueOf(intValue2)) || !linkedHashSet.contains(Integer.valueOf(intValue2))) {
                    m4d = BsonLite.withProfileBool(m4d, Integer.toString(intValue2), true);
                }
                it3 = it4;
            }
        }
        Iterator it5 = linkedHashSet.iterator();
        while (it5.hasNext()) {
            int intValue3 = ((Integer) it5.next()).intValue();
            byte[] bArr3 = localFeatureCatalog2.get("CG", Integer.valueOf(intValue3));
            String num = Integer.toString(intValue3);
            if (bArr3 != null) {
                it = it5;
                if (Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "visible"))) {
                    if (!linkedHashSet3.contains(Integer.valueOf(intValue3))) {
                        linkedHashSet3.add(Integer.valueOf(intValue3));
                        linkedHashSet4.add(Integer.valueOf(intValue3));
                    }
                    if (!Boolean.TRUE.equals(BsonLite.boolValue(m4d, num))) {
                        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
                        LocalGiftEngine.reward(result2, localResourceCatalog, bArr3, 1);
                        result.profile = result2.profile;
                        result.replies.addAll(result2.replies);
                        m4d2 = BsonLite.withProfileDocument(m4d2, num, result2.reward());
                        m4d = BsonLite.withProfileBool(m4d, num, true);
                        linkedHashSet4.add(Integer.valueOf(intValue3));
                        linkedHashSet5.add(Integer.valueOf(intValue3));
                        it5 = it;
                        localFeatureCatalog2 = localFeatureCatalog;
                        str = str;
                    }
                }
            } else {
                it = it5;
            }
            it5 = it;
            localFeatureCatalog2 = localFeatureCatalog;
            str = str;
        }
        result.profile = BsonLite.withProfileIntArray(result.profile, "cgs", linkedHashSet3);
        result.profile = BsonLite.withProfileIntArray(result.profile, "ncgs", linkedHashSet4);
        result.profile = BsonLite.withProfileIntArray(result.profile, "ccgs", linkedHashSet5);
        result.profile = BsonLite.withProfileDocument(result.profile, "q7CgClaims", m4d);
        result.profile = BsonLite.withProfileDocument(result.profile, str, m4d2);
    }

    static void showPending(LocalResourceEngine.Result result) {
        showPending(result, false);
    }

    static void showPending(LocalResourceEngine.Result result, boolean z) {
        byte[] m4d = m4d(result.profile, "q7CgNotices");
        Set<Integer> emptySet = z ? Collections.emptySet() : LocalPuzzleEngine.heldCgs(result.profile);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (String str : BsonLite.keys(m4d)) {
            if (!emptySet.contains(Integer.valueOf(Integer.parseInt(str)))) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str)));
                Iterator<byte[]> it = LocalResourceEngine.array(m4d(m4d(m4d, str), "item")).iterator();
                while (it.hasNext()) {
                    arrayList2.add(new BsonLite.ArrayValue(it.next()));
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        LocalResourceEngine.syncCurrencies(result);
        result.add("addCg", BsonLite.document("c", arrayList));
        if (!arrayList2.isEmpty()) {
            result.add("cgRewards", BsonLite.document("r", BsonLite.document("item", arrayList2)));
        }
        result.add("procRewardSettlementCommon", BsonLite.document("r", BsonLite.document("cg", arrayList)));
    }

    static byte[] acknowledge(byte[] bArr, List<Integer> list) {
        byte[] m4d = m4d(bArr, "q7CgNotices");
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            m4d = BsonLite.withoutProfileKey(m4d, Integer.toString(it.next().intValue()));
        }
        return BsonLite.withProfileDocument(bArr, "q7CgNotices", m4d);
    }

    /* renamed from: d */
    private static byte[] m4d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }
}
