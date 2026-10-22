package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalStoryRuleRegistry {
    static final List<Rule> RULES = Collections.unmodifiableList(Arrays.asList(new Rule("confidence", "getCenterConfidence", "current-week", Phase.AFTER_ROUTE, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda1
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalAnTrustEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("an-city-locks", "areaLock", "routes4,4-1;events7044,7045,7048,7049", Phase.AFTER_ROUTE, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda0
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalAnCityEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("chapter-city", "areaFree,areaFight,areaLock,areaUnlock,cineLockHeroes,banHeroes,recoverBanHeroes", "12", Phase.AFTER_ROUTE, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda3
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalChapterCityEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("shared-targets", "story_target.subTarget_count,completeRouteTarget", "known-native-targets;current-week;routes4,12,14-specialized", Phase.AFTER_ROUTE, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda10
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalStoryTargetEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("deep-echo-meters", "gainRelyVal,gainSupportVal,completeRouteTarget", "route14-family;current-week", Phase.AFTER_ROUTE, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda4
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalDeepEchoEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("wing-story", "gainBaiyuVal", "route7-family;committed-menu6-cycle;signed-event-only", Phase.AFTER_ROUTE, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda12
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalWingStoryEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("yisake-story", "gainYisakeVal", "route9-family;new-current-week-completions;published-only", Phase.AFTER_ROUTE, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda13
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalYisakeStoryEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("clues", "procClue,procFailClue", "all", Phase.AFTER_ROUTE, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda5
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalStoryClueEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("ark-raids", "areaStrike,refreshMission,areaFree", "reviewed-six;route3-1;current-week", Phase.AFTER_CONTENT, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda2
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalArkCityEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("wing-garden", "special_agreement", "original3147/agreement2;committed-menu6-cycle;completed-only", Phase.AFTER_CONTENT, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda11
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalWingGardenEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("story-heroes", "rewards.hero", "reviewed6030;current-week-completion", Phase.AFTER_CONTENT, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda7
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalStoryHeroRewardEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("story-items", "rewards.items", "reviewed1004724;current-week-completion", Phase.AFTER_CONTENT, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda8
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalStoryItemRewardEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("friendship", "rewards.friends", "ordinary;chapter12-separate", Phase.AFTER_CONTENT, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda6
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalStoryFriendshipEngine.refresh(result, localEventCatalog, progress);
        }
    }), new Rule("memory-pieces", "rewards.items.memoryFrag", "reviewed-nonrepeatable;current-week-completion", Phase.AFTER_CONTENT, new Handler() { // from class: com.project7.localmanager.LocalStoryRuleRegistry$$ExternalSyntheticLambda9
        @Override // com.project7.localmanager.LocalStoryRuleRegistry.Handler
        public final void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
            LocalStoryMemoryEngine.refresh(result, localEventCatalog, progress);
        }
    })));

    interface Handler {
        void apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress);
    }

    enum Phase {
        AFTER_ROUTE,
        AFTER_CONTENT
    }

    LocalStoryRuleRegistry() {
    }

    static final class Rule {
        final Handler handler;
        final String name;
        final Phase phase;
        final String scope;
        final String sourceField;

        Rule(String str, String str2, String str3, Phase phase, Handler handler) {
            this.name = str;
            this.sourceField = str2;
            this.scope = str3;
            this.phase = phase;
            this.handler = handler;
        }
    }

    static void apply(Phase phase, LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        for (Rule rule : RULES) {
            if (rule.phase == phase) {
                rule.handler.apply(result, localEventCatalog, progress);
            }
        }
    }

    static List<Integer> pendingTargets(LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, Set<Integer> set, String str) {
        Map<String, Integer> map;
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i <= localEventCatalog.targetCounts.getOrDefault(str, 0).intValue(); i++) {
            arrayList.add(Integer.valueOf(i));
        }
        Iterator<Integer> it = progress.completedEvents.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (!set.contains(Integer.valueOf(intValue)) && (map = localEventCatalog.targetEffects.get(Integer.valueOf(intValue))) != null && map.containsKey(str)) {
                arrayList.remove(map.get(str));
            }
        }
        return arrayList;
    }
}
