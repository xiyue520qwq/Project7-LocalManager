package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;

/* loaded from: classes.dex */
final class LocalDalviraHeroEngine {
    static final String RECEIPT = "dalviraDeparture";

    LocalDalviraHeroEngine() {
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        String stringValue = BsonLite.stringValue(LocalResourceEngine.doc(result.profile, "std"), "rt");
        if (stringValue != null) {
            if ((!stringValue.equals("13") && !stringValue.startsWith("13-")) || LocalWenziCityEngine.state(result.profile, progress, 3) == null || LocalStoryItemRewardEngine.completedDay(result.profile, progress, 6189) != 5 || progress.eventCompletions.getOrDefault(6189, 0).intValue() != 1 || BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline").contains(6189) || !Arrays.asList(36).equals(BsonLite.intArrayValues(localEventCatalog.cityEffects.get(6189), "cineLockHeroes"))) {
                return;
            }
            byte[] doc = LocalResourceEngine.doc(result.profile, "q7WenziCity");
            if (BsonLite.keys(doc).contains(RECEIPT)) {
                return;
            }
            LocalChapterCityEngine.applyHeroes(result, BsonLite.document("cineLockHeroes", Arrays.asList(36)));
            result.profile = BsonLite.withProfileDocument(result.profile, "q7WenziCity", BsonLite.withProfileBool(doc, RECEIPT, true));
        }
    }
}
