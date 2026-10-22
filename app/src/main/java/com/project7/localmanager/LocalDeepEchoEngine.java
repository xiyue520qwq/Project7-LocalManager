package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalDeepEchoEngine {
    LocalDeepEchoEngine() {
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        byte[] doc;
        String stringValue;
        if (progress == null || (stringValue = BsonLite.stringValue((doc = LocalResourceEngine.doc(result.profile, "std")), "rt")) == null) {
            return;
        }
        if (!stringValue.equals("14") && !stringValue.startsWith("14-")) {
            return;
        }
        HashSet hashSet = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
        int i = 0;
        int i2 = 0;
        for (Map.Entry<Integer, int[]> entry : localEventCatalog.sailafeimuEffects.entrySet()) {
            if (progress.completedEvents.contains(entry.getKey()) && !hashSet.contains(entry.getKey())) {
                i = Math.addExact(i, entry.getValue()[0]);
                i2 = Math.addExact(i2, entry.getValue()[1]);
            }
        }
        int value = LocalResourceEngine.value(doc, "srv");
        int value2 = LocalResourceEngine.value(doc, "ssv");
        int max = Math.max(value, i);
        int max2 = Math.max(value2, i2);
        if (max != value || max2 != value2) {
            doc = BsonLite.withProfileInt(BsonLite.withProfileInt(doc, "srv", max), "ssv", max2);
            result.profile = BsonLite.withProfileDocument(result.profile, "std", doc);
            sync(result, true);
        }
        List<Integer> pendingTargets = LocalStoryRuleRegistry.pendingTargets(localEventCatalog, progress, hashSet, stringValue);
        if (!pendingTargets.equals(BsonLite.intArrayValues(doc, "srt")) || BsonLite.documentValue(doc, "srt") == null) {
            result.profile = BsonLite.withProfileDocument(result.profile, "std", BsonLite.withProfileIntArray(doc, "srt", pendingTargets));
            LocalServiceEngine.syncRoute(result);
        }
    }

    static void sync(LocalResourceEngine.Result result, boolean z) {
        byte[] doc = LocalResourceEngine.doc(result.profile, "std");
        result.add("syncSailafeimuLineData", BsonLite.document("srv", Integer.valueOf(LocalResourceEngine.value(doc, "srv")), "ssv", Integer.valueOf(LocalResourceEngine.value(doc, "ssv")), "u", Boolean.valueOf(z)));
    }
}
