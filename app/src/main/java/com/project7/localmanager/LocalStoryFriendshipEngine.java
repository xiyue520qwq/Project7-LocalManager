package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalStoryFriendshipEngine {
    LocalStoryFriendshipEngine() {
    }

    static int current(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        byte[] doc = LocalResourceEngine.doc(bArr, "q7EconomyCommit");
        String stringValue = BsonLite.stringValue(doc, "id");
        Integer intValue = BsonLite.intValue(LocalResourceEngine.doc(doc, "ef"), Integer.toString(i));
        return (stringValue == null || stringValue.equals(progress.economyCommit) || intValue == null) ? progress.patrolFriendly.getOrDefault(Integer.valueOf(i), Integer.valueOf(LocalResourceEngine.value(BsonLite.profileHeroDocument(bArr, i), "ef"))).intValue() : intValue.intValue();
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        String num;
        int value;
        HashSet hashSet;
        LocalEventCatalog localEventCatalog2 = localEventCatalog;
        byte[] documentValue = BsonLite.documentValue(result.profile, "q7StoryFriendship");
        if (documentValue == null) {
            byte[] bArr = BsonLite.EMPTY_DOCUMENT;
            Iterator<Integer> it = progress.completedEvents.iterator();
            while (it.hasNext()) {
                int intValue = it.next().intValue();
                bArr = BsonLite.withProfileInt(bArr, Integer.toString(intValue), progress.eventCompletions.getOrDefault(Integer.valueOf(intValue), 1).intValue());
            }
            result.profile = BsonLite.withProfileDocument(result.profile, "q7StoryFriendship", bArr);
            return;
        }
        HashSet hashSet2 = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<Integer, Integer>> it2 = progress.eventCompletions.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Integer, Integer> next = it2.next();
            int intValue2 = next.getKey().intValue();
            int intValue3 = next.getValue().intValue();
            if (progress.completedEvents.contains(Integer.valueOf(intValue2)) && localEventCatalog2.get(intValue2) != null && intValue3 > (value = LocalResourceEngine.value(documentValue, (num = Integer.toString(intValue2))))) {
                byte[] bArr2 = localEventCatalog2.cityEffects.get(Integer.valueOf(intValue2));
                if (!hashSet2.contains(Integer.valueOf(intValue2)) && !LocalChapterCityEngine.active(result.profile) && bArr2 != null) {
                    byte[] doc = LocalResourceEngine.doc(bArr2, "friendly");
                    int[] iArr = localEventCatalog2.consumptions.get(Integer.valueOf(intValue2));
                    for (String str : BsonLite.keys(doc)) {
                        int parseInt = Integer.parseInt(str);
                        if (LocalResourceEngine.ownsHero(result.profile, parseInt)) {
                            if (iArr != null) {
                                hashSet = hashSet2;
                                if (iArr[2] == parseInt) {
                                    hashSet2 = hashSet;
                                }
                            } else {
                                hashSet = hashSet2;
                            }
                            int intValue4 = ((Integer) linkedHashMap.getOrDefault(Integer.valueOf(parseInt), Integer.valueOf(current(result.profile, progress, parseInt)))).intValue();
                            int multiplyExact = Math.multiplyExact(LocalResourceEngine.value(doc, str), intValue3 - value);
                            if (intValue4 < 100) {
                                intValue4 = Math.min(100, Math.addExact(intValue4, multiplyExact));
                            }
                            result.profile = BsonLite.withHeroDocument(result.profile, parseInt, BsonLite.withProfileInt(BsonLite.profileHeroDocument(result.profile, parseInt), "ef", intValue4));
                            linkedHashMap.put(Integer.valueOf(parseInt), Integer.valueOf(intValue4));
                            hashSet2 = hashSet;
                            it2 = it2;
                        }
                    }
                }
                documentValue = BsonLite.withProfileInt(documentValue, num, intValue3);
                localEventCatalog2 = localEventCatalog;
                hashSet2 = hashSet2;
                it2 = it2;
            }
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "q7StoryFriendship", documentValue);
        if (linkedHashMap.isEmpty()) {
            return;
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            result.add("updateFriendlyValue", BsonLite.heroValueDocument(((Integer) entry.getKey()).intValue(), ((Integer) entry.getValue()).intValue()));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "q7EconomyCommit", commit(result.profile, progress, linkedHashMap));
        result.add("syncHeroMgrData", BsonLite.document("d", LocalResourceEngine.doc(result.profile, "heromgr")));
    }

    static byte[] commit(byte[] bArr, LocalTutorialStore.Progress progress, Map<Integer, Integer> map) {
        byte[] doc = LocalResourceEngine.doc(bArr, "q7EconomyCommit");
        String stringValue = BsonLite.stringValue(doc, "id");
        if (stringValue == null || stringValue.equals(progress.economyCommit)) {
            doc = BsonLite.document("av", Integer.valueOf(LocalEconomyEngine.regularActions(bArr, progress)), "sgw", Integer.valueOf(LocalEconomyEngine.sandglass(bArr, progress)), "scene", 0, "cf", BsonLite.EMPTY_DOCUMENT, "ef", BsonLite.EMPTY_DOCUMENT);
        }
        byte[] doc2 = LocalResourceEngine.doc(doc, "ef");
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            doc2 = BsonLite.withProfileInt(doc2, entry.getKey().toString(), entry.getValue().intValue());
        }
        return BsonLite.withProfileDocument(BsonLite.withProfileString(doc, "id", LocalResourceEngine.uuid()), "ef", doc2);
    }
}
