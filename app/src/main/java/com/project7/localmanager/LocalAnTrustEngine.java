package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalAnTrustEngine {
    LocalAnTrustEngine() {
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        HashSet hashSet = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
        int i = 0;
        for (Map.Entry<Integer, Integer> entry : localEventCatalog.confidenceEffects.entrySet()) {
            if (progress.completedEvents.contains(entry.getKey()) && !hashSet.contains(entry.getKey())) {
                i = Math.addExact(i, entry.getValue().intValue());
            }
        }
        byte[] doc = LocalResourceEngine.doc(result.profile, "city");
        int value = LocalResourceEngine.value(doc, "cc");
        if (i > value) {
            result.profile = BsonLite.withProfileDocument(result.profile, "city", BsonLite.withProfileInt(doc, "cc", i));
            result.add("addCenterConfidence", BsonLite.document("v", Integer.valueOf(i - value), "c", Integer.valueOf(i)));
        } else {
            i = value;
        }
        byte[] doc2 = LocalResourceEngine.doc(result.profile, "std");
        String stringValue = BsonLite.stringValue(doc2, "rt");
        if (stringValue != null) {
            if (!stringValue.equals("4") && !stringValue.startsWith("4-")) {
                return;
            }
            List<Integer> pendingTargets = LocalStoryRuleRegistry.pendingTargets(localEventCatalog, progress, hashSet, stringValue);
            if (stringValue.equals("4") && i >= 100) {
                pendingTargets.remove((Object) 1);
            }
            if (!pendingTargets.equals(BsonLite.intArrayValues(doc2, "srt")) || BsonLite.documentValue(doc2, "srt") == null) {
                result.profile = BsonLite.withProfileDocument(result.profile, "std", BsonLite.withProfileIntArray(doc2, "srt", pendingTargets));
                LocalServiceEngine.syncRoute(result);
            }
        }
    }
}
