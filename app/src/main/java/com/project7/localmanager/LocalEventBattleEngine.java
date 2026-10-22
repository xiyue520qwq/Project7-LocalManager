package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalEventBattleEngine {
    LocalEventBattleEngine() {
    }

    static void sync(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Integer> it = progress.processingEvents.iterator();
        while (it.hasNext()) {
            Set<Integer> set = localEventCatalog.battles.get(Integer.valueOf(it.next().intValue()));
            if (set != null) {
                linkedHashSet.addAll(set);
            }
        }
        byte[] doc = LocalResourceEngine.doc(result.profile, "bs");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (byte[] bArr : LocalResourceEngine.array(LocalResourceEngine.doc(doc, "ab"))) {
            linkedHashMap.put(Integer.valueOf(LocalResourceEngine.value(bArr, "0")), Integer.valueOf(LocalResourceEngine.value(bArr, "1")));
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(BsonLite.intArrayValues(result.profile, "q7eventBattles"));
        Iterator it2 = linkedHashSet2.iterator();
        while (it2.hasNext()) {
            int intValue = ((Integer) it2.next()).intValue();
            if (!linkedHashSet.contains(Integer.valueOf(intValue))) {
                linkedHashMap.remove(Integer.valueOf(intValue));
                result.add("clearEventBattleStage", BsonLite.document("s", Integer.valueOf(intValue)));
            }
        }
        Iterator it3 = linkedHashSet.iterator();
        while (it3.hasNext()) {
            int intValue2 = ((Integer) it3.next()).intValue();
            if (((Integer) linkedHashMap.getOrDefault(Integer.valueOf(intValue2), 0)).intValue() <= 0) {
                linkedHashMap.put(Integer.valueOf(intValue2), 1);
                result.add("setEventBattleStage", BsonLite.document("s", Integer.valueOf(intValue2), "n", 1));
            }
        }
        if (linkedHashSet2.equals(linkedHashSet) && result.replies.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(Arrays.asList((Integer) entry.getKey(), (Integer) entry.getValue()));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "bs", BsonLite.withProfileArray(doc, "ab", arrayList));
        result.profile = BsonLite.withProfileIntArray(result.profile, "q7eventBattles", linkedHashSet);
    }
}
