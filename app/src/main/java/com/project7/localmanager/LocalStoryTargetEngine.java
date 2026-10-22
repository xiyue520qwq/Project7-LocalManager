package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalStoryTargetEngine {
    LocalStoryTargetEngine() {
    }

    static byte[] initialize(byte[] bArr, LocalEventCatalog localEventCatalog, String str) {
        Integer num = localEventCatalog.targetCounts.get(str);
        if (num == null || num.intValue() < 0) {
            return bArr;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i <= num.intValue(); i++) {
            arrayList.add(Integer.valueOf(i));
        }
        return BsonLite.withProfileIntArray(bArr, "srt", arrayList);
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        List<Integer> list;
        if (progress == null) {
            return;
        }
        int value = LocalResourceEngine.value(result.profile, "q7ChapterMenu");
        byte[] doc = LocalResourceEngine.doc(result.profile, "std");
        String stringValue = BsonLite.stringValue(doc, "rt");
        if (stringValue == null) {
            return;
        }
        HashSet hashSet = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
        if ((value == 3 && (stringValue.equals("3") || stringValue.startsWith("3-"))) || (value == 6 && (stringValue.equals("7") || stringValue.startsWith("7-")))) {
            list = LocalStoryRuleRegistry.pendingTargets(localEventCatalog, progress, hashSet, stringValue);
        } else {
            if (stringValue.equals("4") || stringValue.startsWith("4-") || stringValue.equals("12") || stringValue.startsWith("12-") || stringValue.equals("14") || stringValue.startsWith("14-")) {
                return;
            }
            Integer num = localEventCatalog.targetCounts.get(stringValue);
            byte[] arrayValue = BsonLite.arrayValue(doc, "srt");
            if (num == null || num.intValue() < 0 || arrayValue == null) {
                return;
            }
            List<Integer> arrayList = new ArrayList<>();
            Iterator<String> it = BsonLite.keys(arrayValue).iterator();
            while (true) {
                int i = 1;
                if (it.hasNext()) {
                    String next = it.next();
                    Integer intValue = BsonLite.intValue(arrayValue, next);
                    if (!next.equals(Integer.toString(arrayList.size())) || intValue == null || intValue.intValue() < 1 || intValue.intValue() > num.intValue() || arrayList.contains(intValue)) {
                        return;
                    } else {
                        arrayList.add(intValue);
                    }
                } else {
                    Iterator<Integer> it2 = progress.completedEvents.iterator();
                    while (it2.hasNext()) {
                        int intValue2 = it2.next().intValue();
                        LocalEventCatalog.Event event = localEventCatalog.get(intValue2);
                        Map<String, Integer> map = localEventCatalog.targetEffects.get(Integer.valueOf(intValue2));
                        Integer num2 = map == null ? null : map.get(stringValue);
                        if (event != null && event.release && num2 != null && num2.intValue() >= i && num2.intValue() <= num.intValue() && !hashSet.contains(Integer.valueOf(intValue2))) {
                            i = 1;
                            if (progress.eventCompletions.getOrDefault(Integer.valueOf(intValue2), 0).intValue() >= 1 && LocalStoryItemRewardEngine.completedDay(result.profile, progress, intValue2) >= 0) {
                                arrayList.remove(num2);
                            }
                        }
                    }
                    list = arrayList;
                }
            }
        }
        if (!list.equals(BsonLite.intArrayValues(doc, "srt")) || BsonLite.documentValue(doc, "srt") == null) {
            result.profile = BsonLite.withProfileDocument(result.profile, "std", BsonLite.withProfileIntArray(doc, "srt", list));
            LocalServiceEngine.syncRoute(result);
        }
    }
}
