package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;

/* loaded from: classes.dex */
final class LocalWenziHeroEngine {
    LocalWenziHeroEngine() {
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        if (LocalWenziCityEngine.valid(result.profile, progress)) {
            apply(result, localEventCatalog, progress, 2070, 1, 22, "nightHero");
            apply(result, localEventCatalog, progress, 5084, 4, 24, "dayFourHero");
        }
    }

    private static void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, int i, int i2, int i3, String str) {
        if (LocalStoryItemRewardEngine.completedDay(result.profile, progress, i) != i2 || progress.eventCompletions.getOrDefault(Integer.valueOf(i), 0).intValue() != 1 || BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline").contains(Integer.valueOf(i)) || !Arrays.asList(Integer.valueOf(i3)).equals(BsonLite.intArrayValues(localEventCatalog.cityEffects.get(Integer.valueOf(i)), "cineLockHeroes"))) {
            return;
        }
        byte[] doc = LocalResourceEngine.doc(result.profile, "q7WenziCity");
        if (BsonLite.keys(doc).contains(str)) {
            return;
        }
        LocalChapterCityEngine.applyHeroes(result, BsonLite.document("cineLockHeroes", Arrays.asList(Integer.valueOf(i3))));
        result.profile = BsonLite.withProfileDocument(result.profile, "q7WenziCity", BsonLite.withProfileBool(doc, str, true));
    }
}
