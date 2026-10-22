package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalStoryHeroRewardEngine {
    LocalStoryHeroRewardEngine() {
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        LocalEventCatalog.Trigger trigger;
        int parseInt;
        LocalEventCatalog localEventCatalog2 = localEventCatalog;
        if (progress == null) {
            return;
        }
        byte[] doc = LocalResourceEngine.doc(result.profile, "weeknum");
        if (BsonLite.intValue(doc, "w") != null && BsonLite.intValue(doc, "d") != null) {
            if (BsonLite.keys(result.profile).contains("q7StoryHeroes") && BsonLite.documentValue(result.profile, "q7StoryHeroes") == null) {
                return;
            }
            int value = LocalResourceEngine.value(doc, "w");
            int value2 = LocalResourceEngine.value(doc, "d");
            if (value != progress.weekIndex) {
                return;
            }
            HashSet hashSet = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
            byte[] doc2 = LocalResourceEngine.doc(result.profile, "q7StoryHeroes");
            Iterator<Map.Entry<Integer, int[]>> it = localEventCatalog2.heroRewards.entrySet().iterator();
            byte[] bArr = doc2;
            while (it.hasNext()) {
                Map.Entry<Integer, int[]> next = it.next();
                int intValue = next.getKey().intValue();
                String num = Integer.toString(intValue);
                String str = progress.eventDays.get(Integer.valueOf(intValue));
                LocalEventCatalog.Event event = localEventCatalog2.get(intValue);
                Iterator<Map.Entry<Integer, int[]>> it2 = it;
                if (progress.completedEvents.contains(Integer.valueOf(intValue)) && !hashSet.contains(Integer.valueOf(intValue)) && event != null && event.release && !event.repeatable && !BsonLite.keys(bArr).contains(num) && str != null) {
                    String[] split = str.split(":", -1);
                    try {
                        trigger = localEventCatalog2.trigger(intValue);
                        parseInt = split.length == 2 ? Integer.parseInt(split[1]) : -1;
                    } catch (NumberFormatException e) {
                    }
                    if (split.length == 2 && Integer.parseInt(split[0]) == value && parseInt >= 0 && parseInt <= value2 && trigger != null && progress.completedEvents.containsAll(trigger.preAll) && (trigger.date == null || (parseInt >= trigger.date[0] && parseInt <= trigger.date[1]))) {
                        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
                        LocalResourceEngine.addMissingHero(result2, next.getValue()[0], next.getValue()[1]);
                        bArr = BsonLite.withProfileInt(bArr, num, progress.eventCompletions.getOrDefault(Integer.valueOf(intValue), 1).intValue());
                        result2.profile = BsonLite.withProfileDocument(result2.profile, "q7StoryHeroes", bArr);
                        if (!result2.heroRewards.isEmpty()) {
                            result2.profile = BsonLite.withProfileDocument(result2.profile, "q7StoryPending", BsonLite.withProfileDocument(LocalResourceEngine.doc(result2.profile, "q7StoryPending"), "heroReward:" + intValue, BsonLite.document("r", result2.reward())));
                            result2.add("syncHeroMgrData", BsonLite.document("d", LocalResourceEngine.doc(result2.profile, "heromgr")));
                        }
                        result.profile = result2.profile;
                        result.replies.addAll(result2.replies);
                        localEventCatalog2 = localEventCatalog;
                        it = it2;
                    }
                }
                localEventCatalog2 = localEventCatalog;
                it = it2;
            }
        }
    }
}
