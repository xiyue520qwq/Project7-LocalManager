package com.project7.localmanager;

import com.project7.localmanager.LocalPatrolCatalog;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalPatrolEngine {
    LocalPatrolEngine() {
    }

    static String dayKey(byte[] bArr) {
        byte[] doc = LocalResourceEngine.doc(bArr, "weeknum");
        return LocalResourceEngine.value(doc, "w") + ":" + LocalResourceEngine.value(doc, "d");
    }

    static void alignDay(byte[] bArr, LocalTutorialStore.Progress progress) {
        if (progress == null) {
            return;
        }
        String dayKey = dayKey(bArr);
        if (!progress.patrolDay.isEmpty() && !dayKey.equals(progress.patrolDay)) {
            progress.patrolCount = 0;
        }
        progress.patrolDay = dayKey;
    }

    static final class Result {
        final List<Integer> events;
        final String reason;
        final boolean success;

        Result(boolean z, List<Integer> list, String str) {
            this.success = z;
            this.events = Collections.unmodifiableList(new ArrayList(list));
            this.reason = str;
        }
    }

    static boolean canResume(LocalTutorialStore.Progress progress, byte[] bArr, int i, List<Integer> list) {
        return progress != null && progress.patrolRewardPending && i >= 1 && i <= 8 && (!list.isEmpty() || LocalFlashbackEngine.active(bArr, progress)) && progress.patrolArea == i && dayKey(bArr).equals(progress.patrolDay) && progress.patrolHeroes.equals(new LinkedHashSet(list)) && list.size() == progress.patrolHeroes.size();
    }

    static Result begin(LocalPatrolCatalog localPatrolCatalog, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine, byte[] bArr, int i, List<Integer> list) {
        alignDay(bArr, progress);
        LocalPatrolCatalog.Cost cost = localPatrolCatalog.cost(i, 1);
        if (cost == null || LocalCityProgress.status(progress, i, bArr) != 0 || LocalChapterCityEngine.locked(bArr, i) || progress.inEmergency) {
            return reject("area unavailable");
        }
        if (LocalFlashbackEngine.active(bArr, progress)) {
            return localEventEngine.flashbackPatrol(bArr, i, list);
        }
        if (list.isEmpty() || list.size() > 3 || new LinkedHashSet(list).size() != list.size()) {
            return reject("invalid team");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i2 = 0;
        for (Integer num : list) {
            byte[] profileHeroDocument = BsonLite.profileHeroDocument(bArr, num.intValue());
            Integer intValue = BsonLite.intValue(profileHeroDocument, "cf");
            if (intValue == null) {
                return reject("hero not owned");
            }
            Integer orDefault = progress.patrolFatigue.getOrDefault(num, intValue);
            if (orDefault.intValue() < cost.fatigue) {
                return reject("insufficient fatigue");
            }
            linkedHashMap.put(num, Integer.valueOf(orDefault.intValue() - cost.fatigue));
            i2 += localPatrolCatalog.insight(profileHeroDocument, num.intValue());
        }
        if (i2 < cost.requiredInsight(progress.patrolCount + 1) + LocalIntelligenceEffects.patrolExtra(bArr, i)) {
            return reject("insufficient insight");
        }
        if (LocalEconomyEngine.actions(bArr, progress) < cost.actions) {
            return reject("insufficient actions");
        }
        localEventEngine.refreshProfile(bArr);
        List<Integer> patrolEvents = localEventEngine.patrolEvents(i, list, localPatrolCatalog);
        localEventEngine.queuePatrolReplays(patrolEvents);
        progress.availableEvents.removeAll(progress.patrolEvents);
        progress.patrolEvents.clear();
        progress.patrolEvents.addAll(patrolEvents);
        progress.availableEvents.addAll(patrolEvents);
        progress.patrolHeroes.clear();
        progress.patrolHeroes.addAll(list);
        progress.patrolFavor = cost.favor;
        progress.patrolRewardPending = true;
        progress.patrolArea = i;
        progress.patrolCount++;
        int regularActions = LocalEconomyEngine.regularActions(bArr, progress);
        progress.patrolActions = Math.max(0, regularActions - cost.actions);
        progress.sandglassActions = LocalEconomyEngine.sandglass(bArr, progress) - Math.max(0, cost.actions - regularActions);
        progress.patrolFatigue.putAll(linkedHashMap);
        return new Result(true, patrolEvents, "ok");
    }

    static Map<Integer, Integer> claim(LocalTutorialStore.Progress progress, byte[] bArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!progress.patrolRewardPending) {
            return linkedHashMap;
        }
        Iterator<Integer> it = progress.patrolHeroes.iterator();
        while (true) {
            int i = 0;
            if (it.hasNext()) {
                Integer next = it.next();
                Integer intValue = BsonLite.intValue(BsonLite.profileHeroDocument(bArr, next.intValue()), "ef");
                Map<Integer, Integer> map = progress.patrolFriendly;
                if (intValue != null) {
                    i = intValue.intValue();
                }
                int intValue2 = map.getOrDefault(next, Integer.valueOf(i)).intValue();
                int min = Math.min(100, progress.patrolFavor + intValue2);
                progress.patrolFriendly.put(next, Integer.valueOf(min));
                linkedHashMap.put(next, Integer.valueOf(min - intValue2));
            } else {
                progress.patrolRewardPending = false;
                progress.patrolArea = 0;
                progress.patrolReplays.removeAll(progress.patrolEvents);
                progress.availableEvents.removeAll(progress.patrolEvents);
                progress.patrolEvents.clear();
                return linkedHashMap;
            }
        }
    }

    private static Result reject(String str) {
        return new Result(false, Collections.emptyList(), str);
    }
}
