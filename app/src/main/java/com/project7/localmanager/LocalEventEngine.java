package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalNewbeeCatalog;
import com.project7.localmanager.LocalPuzzleEngine;
import com.project7.localmanager.LocalStoryConditions;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Predicate;
import java.util.stream.Stream;

/* loaded from: classes.dex */
final class LocalEventEngine {
    private String areaClick;
    private final LocalEventCatalog catalog;
    private final Set<Integer> checkingMessages;
    private int clientOperation;
    private LocalStoryConditionPass conditionPass;
    private int date;
    private Set<Integer> eventBaseline;
    int lastConditionEvaluations;
    int lastConditionRequests;
    long lifecycleScans;
    private final boolean memoizeConditions;
    private final LocalNewbeeCatalog newbeeCatalog;
    private byte[] profile;
    private final LocalTutorialStore.Progress progress;
    private final int starterEvent;
    private int week;

    LocalEventEngine(LocalEventCatalog localEventCatalog, LocalNewbeeCatalog localNewbeeCatalog, LocalTutorialStore.Progress progress, int i) {
        this(localEventCatalog, localNewbeeCatalog, progress, i, null);
    }

    LocalEventEngine(LocalEventCatalog localEventCatalog, LocalNewbeeCatalog localNewbeeCatalog, LocalTutorialStore.Progress progress, int i, byte[] bArr) {
        this(localEventCatalog, localNewbeeCatalog, progress, i, bArr, true);
    }

    LocalEventEngine(LocalEventCatalog localEventCatalog, LocalNewbeeCatalog localNewbeeCatalog, LocalTutorialStore.Progress progress, int i, byte[] bArr, boolean z) {
        this.eventBaseline = Collections.emptySet();
        this.checkingMessages = new HashSet();
        this.areaClick = "0:0";
        this.catalog = localEventCatalog;
        this.newbeeCatalog = localNewbeeCatalog;
        this.progress = progress;
        this.starterEvent = i;
        this.profile = bArr;
        this.memoizeConditions = z;
        this.eventBaseline = new HashSet(BsonLite.intArrayValues(bArr, "q7WeekEventBaseline"));
        byte[] documentValue = BsonLite.documentValue(bArr, "weeknum");
        Integer intValue = BsonLite.intValue(documentValue, "w");
        Integer intValue2 = BsonLite.intValue(documentValue, "d");
        this.week = intValue == null ? 0 : intValue.intValue();
        this.date = intValue2 != null ? intValue2.intValue() : 0;
        repairConflictingFinale();
        restoreBattleConditions();
        restorePendingNewbees();
        Set<Integer> set = progress.eventConditions.get("battle");
        if (set != null && !set.isEmpty()) {
            trace("battle", new ArrayList(set));
        }
        restoreMissionOutcomes();
        restoreExternalGuideEvents();
        restorePrivateReplies();
        Iterator it = new ArrayList(progress.processingEvents).iterator();
        while (it.hasNext()) {
            if (LocalPuzzleEngine.exitOutcome(bArr, localEventCatalog, progress, ((Integer) it.next()).intValue()) != null) {
                trace("ui", Collections.singleton(1));
            }
        }
        reevaluateLifecycle();
    }

    Set<Integer> availableEvents() {
        return Collections.unmodifiableSet(this.progress.availableEvents);
    }

    Set<Integer> processingEvents() {
        return Collections.unmodifiableSet(this.progress.processingEvents);
    }

    Set<Integer> messagePublishers() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(this.progress.availableEvents);
        linkedHashSet2.addAll(this.progress.processingEvents);
        Iterator it = linkedHashSet2.iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            LocalEventCatalog.Event event = this.catalog.get(intValue);
            LocalEventCatalog.Effect effect = this.catalog.effects.get(Integer.valueOf(intValue));
            if (event != null && event.release && event.autoStart && event.dialog == 0 && event.completeConditions.isEmpty() && effect != null && (!effect.privateMessages.isEmpty() || !effect.socialMessages.isEmpty())) {
                linkedHashSet.add(Integer.valueOf(intValue));
            }
        }
        return linkedHashSet;
    }

    Set<Integer> processingNewbees() {
        return Collections.unmodifiableSet(this.progress.processingNewbees);
    }

    boolean startEvent(int i) {
        if (this.catalog.puzzleRooms.containsKey(Integer.valueOf(i)) && !LocalPuzzleEngine.canBegin(this.profile, this.catalog, this.progress, i)) {
            return false;
        }
        if (this.progress.processingEvents.contains(Integer.valueOf(i))) {
            return true;
        }
        reevaluateLifecycle();
        LocalEventCatalog.Trigger trigger = this.catalog.trigger(i);
        if (!privateReplySatisfied(i) || (trigger != null && privateReplyBlocker(trigger) != null)) {
            return false;
        }
        int[] iArr = this.catalog.consumptions.get(Integer.valueOf(i));
        if ((iArr != null && iArr[0] == 1 && LocalResourceEngine.value(this.profile, "money") < iArr[1]) || !this.progress.availableEvents.remove(Integer.valueOf(i)) || isMutex(i)) {
            return false;
        }
        this.progress.processingEvents.add(Integer.valueOf(i));
        if (this.progress.patrolEvents.contains(Integer.valueOf(i))) {
            this.progress.availableEvents.removeAll(this.progress.patrolEvents);
            this.progress.patrolEvents.clear();
            this.progress.patrolRewardPending = false;
            this.progress.patrolArea = 0;
        }
        reevaluateLifecycle();
        return true;
    }

    boolean completeImmediateEvent(int i) {
        LocalEventCatalog.Event event = this.catalog.get(i);
        if (event == null || event.dialog != 0 || !event.completeConditions.isEmpty() || !this.catalog.battles.getOrDefault(Integer.valueOf(i), Collections.emptySet()).isEmpty() || !this.progress.processingEvents.contains(Integer.valueOf(i))) {
            return false;
        }
        complete(i, true);
        return true;
    }

    boolean selectEventOption(int i, int i2) {
        if (this.catalog.puzzleRooms.containsKey(Integer.valueOf(i)) || !this.progress.processingEvents.contains(Integer.valueOf(i)) || i2 == 0) {
            return false;
        }
        Set<Integer> successors = this.catalog.successors(i);
        if (!successors.isEmpty() && !successors.contains(Integer.valueOf(i2))) {
            return false;
        }
        int[] iArr = this.catalog.consumptions.get(Integer.valueOf(i2));
        if (iArr != null && iArr[0] == 1 && LocalResourceEngine.value(this.profile, "money") < iArr[1]) {
            return false;
        }
        boolean contains = this.progress.patrolReplays.contains(Integer.valueOf(i));
        complete(i, false);
        if (!this.progress.completedEvents.contains(Integer.valueOf(i2)) || contains) {
            if (contains) {
                this.progress.patrolReplays.add(Integer.valueOf(i2));
            }
            this.progress.availableEvents.add(Integer.valueOf(i2));
        }
        reevaluateLifecycle();
        return true;
    }

    boolean triggerExternalEvent(int i) {
        LocalEventCatalog.Event event = this.catalog.get(i);
        if (event == null || !event.release || !this.catalog.externalEvents.contains(Integer.valueOf(i)) || isMutex(i)) {
            return false;
        }
        if (this.progress.completedEvents.contains(Integer.valueOf(i)) || this.progress.processingEvents.contains(Integer.valueOf(i))) {
            return true;
        }
        if (event.dialog == 0 && event.completeConditions.isEmpty()) {
            complete(i, true);
        } else {
            this.progress.availableEvents.add(Integer.valueOf(i));
        }
        return true;
    }

    boolean beginStoryBattle(int i) {
        Iterator<Integer> it = this.progress.processingEvents.iterator();
        boolean z = false;
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            Set<Integer> set = this.catalog.battles.get(Integer.valueOf(intValue));
            if (set != null && set.contains(Integer.valueOf(i))) {
                z = true;
                this.progress.recordCondition("missionPending", Collections.singleton(Integer.valueOf(intValue)));
                this.progress.recordCondition("missionPendingScene:" + intValue, Collections.singleton(Integer.valueOf(i)));
            }
        }
        return z;
    }

    boolean hasPendingStoryBattle(int i) {
        return !pendingStoryBattleOwners(i).isEmpty();
    }

    Set<Integer> pendingStoryBattleOwners(int i) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Integer> it = this.progress.processingEvents.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (pendingStoryScene(intValue, i)) {
                linkedHashSet.add(Integer.valueOf(intValue));
            }
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    private boolean pendingStoryScene(int i, int i2) {
        if (!this.progress.eventConditions.getOrDefault("missionPending", Collections.emptySet()).contains(Integer.valueOf(i))) {
            return false;
        }
        Set<Integer> orDefault = this.catalog.battles.getOrDefault(Integer.valueOf(i), Collections.emptySet());
        if (!orDefault.contains(Integer.valueOf(i2))) {
            return false;
        }
        Set<Integer> set = this.progress.eventConditions.get("missionPendingScene:" + i);
        return set == null ? orDefault.size() == 1 : set.contains(Integer.valueOf(i2));
    }

    private boolean consumeStoryScene(int i, int i2) {
        if (!pendingStoryScene(i, i2)) {
            return false;
        }
        Set<Integer> set = this.progress.eventConditions.get("missionPendingScene:" + i);
        if (set != null) {
            set.remove(Integer.valueOf(i2));
            if (!set.isEmpty()) {
                return true;
            }
        }
        this.progress.eventConditions.remove("missionPendingScene:" + i);
        this.progress.eventConditions.get("missionPending").remove(Integer.valueOf(i));
        return true;
    }

    List<Integer> abandonStoryBattle(int i) {
        ArrayList arrayList = new ArrayList();
        Iterator it = new ArrayList(this.progress.processingEvents).iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            LocalEventCatalog.Outcome outcome = this.catalog.outcomes.get(Integer.valueOf(intValue));
            if (outcome != null && outcome.scene == i && !outcome.failure.isEmpty() && consumeStoryScene(intValue, i)) {
                this.progress.recordCondition("missionLost", Collections.singleton(Integer.valueOf(intValue)));
                complete(intValue, false);
                arrayList.add(Integer.valueOf(intValue));
            }
        }
        restoreMissionOutcomes();
        return arrayList;
    }

    List<Integer> finishStoryBattle(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        Iterator it = new ArrayList(this.progress.processingEvents).iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            Set<Integer> set = this.catalog.battles.get(Integer.valueOf(intValue));
            if (set != null && set.contains(Integer.valueOf(i)) && consumeStoryScene(intValue, i)) {
                LocalEventCatalog.Outcome outcome = this.catalog.outcomes.get(Integer.valueOf(intValue));
                if (outcome != null && outcome.scene == i) {
                    this.progress.recordCondition(z ? "missionWon" : "missionLost", Collections.singleton(Integer.valueOf(intValue)));
                    if (!z && !outcome.failure.isEmpty()) {
                        complete(intValue, false);
                        arrayList.add(Integer.valueOf(intValue));
                    }
                }
                z2 = true;
            }
        }
        if (z2 && z) {
            arrayList.addAll(trace("battle", Collections.singleton(Integer.valueOf(i))));
        }
        restoreMissionOutcomes();
        return arrayList;
    }

    private void restoreMissionOutcomes() {
        Set<Integer> orDefault = this.progress.eventConditions.getOrDefault("missionWon", Collections.emptySet());
        Set<Integer> orDefault2 = this.progress.eventConditions.getOrDefault("missionLost", Collections.emptySet());
        Set<Integer> orDefault3 = this.progress.eventConditions.getOrDefault("battle", Collections.emptySet());
        if (LocalChapterCityEngine.active(this.profile)) {
            Iterator<Integer> it = orDefault3.iterator();
            while (it.hasNext()) {
                LocalEventCatalog.Outcome outcome = this.catalog.cityOutcomes.get(Integer.valueOf(it.next().intValue()));
                if (outcome != null) {
                    Iterator<Integer> it2 = outcome.success.iterator();
                    while (it2.hasNext()) {
                        int intValue = it2.next().intValue();
                        LocalEventCatalog.Event event = this.catalog.get(intValue);
                        if (event != null && event.release && !isMutex(intValue) && !this.progress.completedEvents.contains(Integer.valueOf(intValue)) && !this.progress.processingEvents.contains(Integer.valueOf(intValue))) {
                            this.progress.availableEvents.add(Integer.valueOf(intValue));
                        }
                    }
                }
            }
        }
        Iterator it3 = new ArrayList(this.progress.completedEvents).iterator();
        while (it3.hasNext()) {
            int intValue2 = ((Integer) it3.next()).intValue();
            LocalEventCatalog.Outcome outcome2 = this.catalog.outcomes.get(Integer.valueOf(intValue2));
            if (outcome2 != null) {
                boolean z = orDefault.contains(Integer.valueOf(intValue2)) || (!orDefault2.contains(Integer.valueOf(intValue2)) && orDefault3.contains(Integer.valueOf(outcome2.scene)));
                if (z || orDefault2.contains(Integer.valueOf(intValue2))) {
                    Iterator<Integer> it4 = (z ? outcome2.success : outcome2.failure).iterator();
                    while (it4.hasNext()) {
                        int intValue3 = it4.next().intValue();
                        LocalEventCatalog.Event event2 = this.catalog.get(intValue3);
                        if (event2 != null && event2.release && !isMutex(intValue3) && !this.progress.completedEvents.contains(Integer.valueOf(intValue3)) && !this.progress.processingEvents.contains(Integer.valueOf(intValue3))) {
                            this.progress.availableEvents.add(Integer.valueOf(intValue3));
                        }
                    }
                }
            }
        }
    }

    List<Integer> trace(String str, Collection<Integer> collection) {
        if (str == null || collection == null || collection.isEmpty()) {
            return Collections.emptyList();
        }
        this.progress.recordCondition(str, collection);
        if ("battle".equals(str)) {
            restoreMissionOutcomes();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = new ArrayList(this.progress.processingEvents).iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            LocalEventCatalog.Event event = this.catalog.get(num.intValue());
            if (event != null && conditionMatches(event, str, collection)) {
                complete(num.intValue(), true);
                arrayList.add(num);
            }
        }
        reevaluateLifecycle();
        return arrayList;
    }

    void updateStatus(String str) {
        if (str != null && !str.isEmpty()) {
            this.progress.status = str;
            if ("emergency".equals(str)) {
                this.progress.inEmergency = true;
            }
        }
    }

    boolean updateAreaClick(String str) {
        if (str == null || !str.matches("[0-9]+:[0-9]+")) {
            return false;
        }
        this.areaClick = str;
        reevaluateLifecycle();
        return true;
    }

    void updateClientOperation(int i) {
        this.clientOperation = i;
        reevaluateLifecycle();
    }

    void resetWeekContext(byte[] bArr) {
        this.areaClick = "0:0";
        this.clientOperation = 0;
        refreshProfile(bArr);
    }

    void refreshProfile(byte[] bArr) {
        this.profile = bArr;
        this.eventBaseline = new HashSet(BsonLite.intArrayValues(bArr, "q7WeekEventBaseline"));
        byte[] documentValue = BsonLite.documentValue(bArr, "weeknum");
        Integer intValue = BsonLite.intValue(documentValue, "w");
        Integer intValue2 = BsonLite.intValue(documentValue, "d");
        this.week = intValue == null ? 0 : intValue.intValue();
        this.date = intValue2 != null ? intValue2.intValue() : 0;
        restorePrivateReplies();
        reevaluateLifecycle();
    }

    private void restorePrivateReplies() {
        LocalEventCatalog.Event event;
        byte[] doc = LocalResourceEngine.doc(LocalResourceEngine.doc(this.profile, "sd"), "pm");
        for (Map.Entry<Integer, Map<Integer, Integer>> entry : this.catalog.privateReplies.entrySet()) {
            if (privateMessageReady(entry.getKey().intValue())) {
                Integer intValue = BsonLite.intValue(LocalResourceEngine.doc(doc, entry.getKey().toString()), "rp");
                Integer num = intValue == null ? null : entry.getValue().get(intValue);
                if (num != null && !this.progress.completedEvents.contains(num) && !this.progress.processingEvents.contains(num) && !isMutex(num.intValue()) && (event = this.catalog.get(num.intValue())) != null && event.release) {
                    if (event.dialog == 0 && event.completeConditions.isEmpty()) {
                        complete(num.intValue(), true);
                    } else {
                        this.progress.availableEvents.add(num);
                    }
                }
            }
        }
    }

    private boolean privateReplySatisfied(final int i) {
        Set<Integer> set = this.catalog.privateReplyMessages.get(Integer.valueOf(i));
        if (set == null) {
            return true;
        }
        byte[] doc = LocalResourceEngine.doc(LocalResourceEngine.doc(this.profile, "sd"), "pm");
        Iterator<Integer> it = set.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (privateMessageReady(intValue)) {
                byte[] doc2 = LocalResourceEngine.doc(doc, Integer.toString(intValue));
                Map<Integer, Integer> map = this.catalog.privateReplies.get(Integer.valueOf(intValue));
                Integer intValue2 = BsonLite.intValue(doc2, "rp");
                if (intValue2 != null && Integer.valueOf(i).equals(map.get(intValue2))) {
                    return true;
                }
                if (Boolean.TRUE.equals(BsonLite.boolValue(doc2, "rp")) && map.values().stream().allMatch(new Predicate() { // from class: com.project7.localmanager.LocalEventEngine$$ExternalSyntheticLambda0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return LocalEventEngine.lambda$privateReplySatisfied$0(i, (Integer) obj);
                    }
                })) {
                    return true;
                }
            }
        }
        return false;
    }

    static /* synthetic */ boolean lambda$privateReplySatisfied$0(int i, Integer num) {
        return num.intValue() == i;
    }

    private boolean privateMessageReady(int i) {
        Set<Integer> set = this.catalog.privateMessageEvents.get(Integer.valueOf(i));
        if (set == null) {
            return true;
        }
        if (!this.checkingMessages.add(Integer.valueOf(i))) {
            return false;
        }
        try {
            Iterator<Integer> it = set.iterator();
            while (it.hasNext()) {
                int intValue = it.next().intValue();
                if (!this.eventBaseline.contains(Integer.valueOf(intValue))) {
                    if (this.progress.completedEvents.contains(Integer.valueOf(intValue))) {
                        return true;
                    }
                    LocalEventCatalog.Event event = this.catalog.get(intValue);
                    LocalEventCatalog.Trigger trigger = this.catalog.trigger(intValue);
                    if (event != null && event.autoStart && event.dialog == 0 && event.completeConditions.isEmpty() && (this.progress.processingEvents.contains(Integer.valueOf(intValue)) || (trigger != null && triggerMatches(trigger)))) {
                        return true;
                    }
                }
            }
            return false;
        } finally {
            this.checkingMessages.remove(Integer.valueOf(i));
        }
    }

    private String privateReplyBlocker(LocalEventCatalog.Trigger trigger) {
        Iterator<Integer> it = trigger.preAll.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (!privateReplySatisfied(intValue)) {
                return "private-reply=" + intValue;
            }
        }
        if (!trigger.preAny.isEmpty()) {
            Stream<Integer> stream = trigger.preAny.stream();
            final Map<Integer, Set<Integer>> map = this.catalog.privateReplyMessages;
            Objects.requireNonNull(map);
            if (stream.anyMatch(new Predicate() { // from class: com.project7.localmanager.LocalEventEngine$$ExternalSyntheticLambda2
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return map.containsKey((Integer) obj);
                }
            }) && trigger.preAny.stream().noneMatch(new Predicate() { // from class: com.project7.localmanager.LocalEventEngine$$ExternalSyntheticLambda1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return LocalEventEngine.this.lambda$privateReplyBlocker$1$LocalEventEngine((Integer) obj);
                }
            })) {
                return "private-reply-any=" + trigger.preAny;
            }
            return null;
        }
        return null;
    }

    public /* synthetic */ boolean lambda$privateReplyBlocker$1$LocalEventEngine(Integer num) {
        return this.progress.completedEvents.contains(num) && privateReplySatisfied(num.intValue());
    }

    List<String> blockedStoryEvents() {
        ArrayList arrayList = new ArrayList();
        for (LocalEventCatalog.Trigger trigger : this.catalog.triggers()) {
            if (!this.progress.completedEvents.contains(Integer.valueOf(trigger.eventId)) && !this.progress.processingEvents.contains(Integer.valueOf(trigger.eventId)) && !triggerMatches(trigger) && trigger.patrolAreas.isEmpty()) {
                if ((!(trigger.battles.isEmpty() || Collections.disjoint(trigger.battles, this.progress.eventConditions.getOrDefault("battle", Collections.emptySet()))) || (!trigger.preAll.isEmpty() && this.progress.completedEvents.containsAll(trigger.preAll))) && arrayList.size() < 20) {
                    arrayList.add(trigger.eventId + ":" + triggerBlocker(trigger, 0, this.clientOperation));
                }
            }
        }
        return arrayList;
    }

    void enterPlace(String str) {
        if (str != null && !str.isEmpty()) {
            this.progress.scene = str;
        }
    }

    boolean beginNewbee(int i) {
        return beginNewbee(i, null);
    }

    boolean beginNewbeeForPanel(int i, String str) {
        return beginNewbee(i, str);
    }

    boolean requestNewbee(int i) {
        LocalNewbeeCatalog.Step step = this.newbeeCatalog.get(i);
        if (step == null) {
            return false;
        }
        if (this.progress.finishedNewbees.contains(Integer.valueOf(i)) && !step.multiTrigger) {
            return false;
        }
        if (this.progress.processingNewbees.contains(Integer.valueOf(i))) {
            return true;
        }
        return beginNewbee(i, step.uiPanel.startsWith("card_") ? step.uiPanel : null);
    }

    private boolean beginNewbee(int i, String str) {
        LocalNewbeeCatalog.Step step = this.newbeeCatalog.get(i);
        if (step != null) {
            if ((this.progress.finishedNewbees.contains(Integer.valueOf(i)) && !step.multiTrigger) || !requirementsMatch(step, str)) {
                return false;
            }
            return this.progress.processingNewbees.add(Integer.valueOf(i));
        }
        return false;
    }

    Set<Integer> finishNewbees(Collection<Integer> collection) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (collection == null) {
            return linkedHashSet;
        }
        for (Integer num : collection) {
            if (num != null && num.intValue() != 0) {
                this.progress.processingNewbees.remove(num);
                this.progress.finishedNewbees.add(num);
                for (Integer num2 : this.newbeeCatalog.eventsAfterCompletion(num.intValue())) {
                    if (!this.progress.completedEvents.contains(num2) && !this.progress.processingEvents.contains(num2) && this.progress.availableEvents.add(num2)) {
                        linkedHashSet.add(num2);
                    }
                }
            }
        }
        restoreExternalGuideEvents();
        reevaluateLifecycle();
        return linkedHashSet;
    }

    private void restoreExternalGuideEvents() {
        Iterator<Integer> it = this.progress.finishedNewbees.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            Set<Integer> set = this.newbeeCatalog.externalGuideEvents.get(Integer.valueOf(intValue));
            LocalNewbeeCatalog.Step step = this.newbeeCatalog.get(intValue);
            if (set != null && step != null && requirementsMatch(step, null)) {
                Iterator<Integer> it2 = set.iterator();
                while (it2.hasNext()) {
                    triggerExternalEvent(it2.next().intValue());
                }
            }
        }
    }

    private boolean conditionMatches(LocalEventCatalog.Event event, String str, Collection<Integer> collection) {
        if (!event.completeConditions.containsKey(str)) {
            return false;
        }
        if (this.catalog.puzzleRooms.containsKey(Integer.valueOf(event.f8id)) && LocalPuzzleEngine.exitOutcome(this.profile, this.catalog, this.progress, event.f8id) == null) {
            return false;
        }
        int[] iArr = this.catalog.consumptions.get(Integer.valueOf(event.f8id));
        if (iArr != null && iArr[0] == 1 && LocalResourceEngine.value(this.profile, "money") < iArr[1]) {
            return false;
        }
        for (Map.Entry<String, Set<Integer>> entry : event.completeConditions.entrySet()) {
            Set<Integer> set = this.progress.eventConditions.get(entry.getKey());
            if (set == null || !set.containsAll(entry.getValue())) {
                return false;
            }
        }
        return true;
    }

    private void complete(int i, boolean z) {
        Integer exitOutcome = this.catalog.puzzleRooms.containsKey(Integer.valueOf(i)) ? LocalPuzzleEngine.exitOutcome(this.profile, this.catalog, this.progress, i) : null;
        if (this.catalog.puzzleRooms.containsKey(Integer.valueOf(i)) && exitOutcome == null) {
            return;
        }
        boolean remove = this.progress.patrolReplays.remove(Integer.valueOf(i));
        this.progress.processingEvents.remove(Integer.valueOf(i));
        this.progress.availableEvents.remove(Integer.valueOf(i));
        if (!this.progress.completedEvents.contains(Integer.valueOf(i)) || remove) {
            this.progress.eventCompletions.put(Integer.valueOf(i), Integer.valueOf(Math.addExact(this.progress.eventCompletions.getOrDefault(Integer.valueOf(i), Integer.valueOf(this.progress.completedEvents.contains(Integer.valueOf(i)) ? 1 : 0)).intValue(), 1)));
        }
        this.progress.completedEvents.add(Integer.valueOf(i));
        this.progress.eventDays.putIfAbsent(Integer.valueOf(i), this.week + ":" + this.date);
        if (i == 1047) {
            this.progress.initPrologue = false;
        }
        if (z) {
            for (Integer num : exitOutcome == null ? this.catalog.successors(i) : Collections.singleton(exitOutcome)) {
                if (!this.progress.completedEvents.contains(num) || remove) {
                    if (!this.progress.processingEvents.contains(num)) {
                        if (remove) {
                            this.progress.patrolReplays.add(num);
                        }
                        this.progress.availableEvents.add(num);
                    }
                }
            }
        }
        LocalEventCatalog.Event event = this.catalog.get(i);
        if (event != null && event.newbeeEvent != 0) {
            beginNewbee(event.newbeeEvent);
        }
        restoreMissionOutcomes();
        reevaluateLifecycle();
    }

    private void restorePendingNewbees() {
        Iterator<Integer> it = this.progress.completedEvents.iterator();
        while (it.hasNext()) {
            LocalEventCatalog.Event event = this.catalog.get(it.next().intValue());
            if (event != null && event.newbeeEvent != 0 && !this.progress.finishedNewbees.contains(Integer.valueOf(event.newbeeEvent)) && !this.progress.processingNewbees.contains(Integer.valueOf(event.newbeeEvent))) {
                beginNewbee(event.newbeeEvent);
            }
        }
    }

    private boolean requirementsMatch(LocalNewbeeCatalog.Step step, String str) {
        boolean z;
        if ((step.uiPanel.startsWith("card_") && !step.uiPanel.equals(str)) || !this.progress.completedEvents.containsAll(step.requireEventAnd)) {
            return false;
        }
        if (!step.requireEventOr.isEmpty() && Collections.disjoint(this.progress.completedEvents, step.requireEventOr)) {
            return false;
        }
        for (Integer num : step.requireNotEventAnd) {
            if (this.progress.completedEvents.contains(num) && !this.progress.processingEvents.contains(num)) {
                return false;
            }
        }
        if (!step.requireNotEventOr.isEmpty()) {
            Iterator<Integer> it = step.requireNotEventOr.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (!this.progress.completedEvents.contains(it.next())) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return false;
            }
        }
        for (Integer num2 : step.requireNewbees) {
            if (!this.progress.finishedNewbees.contains(num2) && !this.progress.processingNewbees.contains(num2)) {
                return false;
            }
        }
        return true;
    }

    private void reevaluateLifecycle() {
        this.lifecycleScans++;
        repairFirstBattleEvents();
        Iterator it = new ArrayList(this.progress.availableEvents).iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if ((this.progress.completedEvents.contains(num) && !this.progress.patrolReplays.contains(num)) || isMutex(num.intValue())) {
                this.progress.availableEvents.remove(num);
            }
        }
        if (containsEmergency(this.progress.availableEvents) || containsEmergency(this.progress.processingEvents)) {
            this.progress.inEmergency = true;
            this.progress.status = "emergency";
        } else if (this.progress.inEmergency) {
            this.progress.inEmergency = false;
            this.progress.status = "city";
        }
        LocalStoryConditionPass localStoryConditionPass = this.conditionPass;
        LocalStoryConditionPass localStoryConditionPass2 = new LocalStoryConditionPass(this.profile, this.progress, this.memoizeConditions);
        this.conditionPass = localStoryConditionPass2;
        try {
            for (LocalEventCatalog.Trigger trigger : this.catalog.triggers()) {
                if (trigger.eventId == 1005 && !this.progress.completedEvents.contains(1005) && !this.progress.processingEvents.contains(1005) && !this.progress.completedEvents.containsAll(trigger.preAll)) {
                    this.progress.availableEvents.remove(1005);
                }
                if (dynamicTriggerBlocker(trigger, 0, this.clientOperation, Collections.emptyList()) != null && !this.progress.patrolEvents.contains(Integer.valueOf(trigger.eventId))) {
                    this.progress.availableEvents.remove(Integer.valueOf(trigger.eventId));
                }
                if (privateReplyBlocker(trigger) != null) {
                    this.progress.availableEvents.remove(Integer.valueOf(trigger.eventId));
                }
                LocalEventCatalog.Effect effect = this.catalog.effects.get(Integer.valueOf(trigger.eventId));
                LocalEventCatalog.Event event = this.catalog.get(trigger.eventId);
                if (effect != null && !effect.privateMessages.isEmpty() && event != null && event.autoStart && event.dialog == 0 && event.completeConditions.isEmpty() && !triggerMatches(trigger)) {
                    this.progress.availableEvents.remove(Integer.valueOf(trigger.eventId));
                }
                if (!this.progress.completedEvents.contains(Integer.valueOf(trigger.eventId)) && !this.progress.processingEvents.contains(Integer.valueOf(trigger.eventId)) && triggerMatches(trigger)) {
                    this.progress.availableEvents.add(Integer.valueOf(trigger.eventId));
                }
            }
        } finally {
            this.conditionPass = localStoryConditionPass;
            this.lastConditionRequests = localStoryConditionPass2.requests;
            this.lastConditionEvaluations = localStoryConditionPass2.evaluations;
        }
    }

    private void restoreBattleConditions() {
        Iterator<Integer> it = this.progress.completedEvents.iterator();
        while (it.hasNext()) {
            LocalEventCatalog.Event event = this.catalog.get(it.next().intValue());
            Set<Integer> set = event == null ? null : event.completeConditions.get("battle");
            if (event != null && event.completeConditions.size() == 1 && set != null && set.size() == 1) {
                this.progress.recordCondition("battle", set);
            }
        }
    }

    List<Integer> patrolEvents(int i) {
        return patrolEvents(i, this.progress.patrolHeroes);
    }

    List<Integer> patrolEvents(int i, Collection<Integer> collection) {
        ArrayList arrayList = new ArrayList();
        for (LocalEventCatalog.Trigger trigger : this.catalog.triggers()) {
            if (!trigger.patrolAreas.isEmpty() || trigger.clientOps.contains(2)) {
                if (!this.progress.completedEvents.contains(Integer.valueOf(trigger.eventId)) || repeatablePatrol(trigger.eventId)) {
                    if (!this.progress.processingEvents.contains(Integer.valueOf(trigger.eventId)) && triggerBlocker(trigger, i, 2, collection) == null) {
                        arrayList.add(Integer.valueOf(trigger.eventId));
                    }
                }
            }
        }
        return arrayList;
    }

    void queuePatrolReplays(Collection<Integer> collection) {
        this.progress.patrolReplays.removeAll(this.progress.patrolEvents);
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (repeatablePatrol(intValue)) {
                this.progress.patrolReplays.add(Integer.valueOf(intValue));
            }
        }
    }

    private boolean repeatablePatrol(int i) {
        LocalEventCatalog.Event event = this.catalog.get(i);
        return event != null && event.repeatable;
    }

    private boolean triggerMatches(LocalEventCatalog.Trigger trigger) {
        return triggerMatches(trigger, 0, this.clientOperation);
    }

    private boolean triggerMatches(LocalEventCatalog.Trigger trigger, int i, int i2) {
        return triggerBlocker(trigger, i, i2) == null;
    }

    private boolean isMutex(int i) {
        Set<Integer> mutex = this.catalog.mutex(i);
        LocalEventCatalog.Trigger trigger = this.catalog.trigger(i);
        Set<Integer> set = this.progress.completedEvents;
        LocalPuzzleEngine.Room selectedClear = LocalPuzzleEngine.selectedClear(this.profile, this.catalog, this.progress, i);
        if (selectedClear != null) {
            HashSet hashSet = new HashSet(set);
            Iterator<Integer> it = mutex.iterator();
            while (it.hasNext()) {
                int intValue = it.next().intValue();
                LocalEventCatalog.Event event = this.catalog.get(intValue);
                if (intValue == selectedClear.incomplete || (event != null && event.repeatable && this.catalog.successors(intValue).contains(Integer.valueOf(selectedClear.event)))) {
                    hashSet.remove(Integer.valueOf(intValue));
                }
            }
            set = hashSet;
        }
        return (Collections.disjoint(set, mutex) && Collections.disjoint(this.progress.processingEvents, mutex) && (trigger == null || (Collections.disjoint(set, trigger.mutex) && Collections.disjoint(this.progress.processingEvents, trigger.mutex)))) ? false : true;
    }

    private void repairConflictingFinale() {
        if (this.progress.completedEvents.contains(8037) || this.progress.completedEvents.contains(8038)) {
            if (this.progress.processingEvents.contains(8061) || this.progress.availableEvents.contains(8061) || this.progress.completedEvents.contains(8061)) {
                int[] iArr = {8026, 8027, 8041};
                for (int i = 0; i < 3; i++) {
                    int i2 = iArr[i];
                    this.progress.availableEvents.remove(Integer.valueOf(i2));
                    this.progress.processingEvents.remove(Integer.valueOf(i2));
                    Set<Integer> set = this.progress.eventConditions.get("missionPending");
                    if (set != null) {
                        set.remove(Integer.valueOf(i2));
                    }
                }
            }
        }
    }

    private String triggerBlocker(LocalEventCatalog.Trigger trigger, int i, int i2) {
        return triggerBlocker(trigger, i, i2, Collections.emptyList());
    }

    private String triggerBlocker(LocalEventCatalog.Trigger trigger, int i, int i2, Collection<Integer> collection) {
        String dynamicTriggerBlocker = dynamicTriggerBlocker(trigger, i, i2, collection);
        if (dynamicTriggerBlocker != null) {
            return dynamicTriggerBlocker;
        }
        String privateReplyBlocker = privateReplyBlocker(trigger);
        if (privateReplyBlocker != null) {
            return privateReplyBlocker;
        }
        if ((!trigger.patrolAreas.isEmpty() && !trigger.patrolAreas.contains(Integer.valueOf(i))) || (!trigger.clientOps.isEmpty() && !trigger.clientOps.contains(Integer.valueOf(i2)))) {
            return "patrol/client-op=" + i + "/" + i2;
        }
        LocalEventCatalog.Event event = this.catalog.get(trigger.eventId);
        if (event != null && event.release && event.autoTrigger && this.progress.completedEvents.containsAll(trigger.preAll)) {
            if ((trigger.preAny.isEmpty() || !Collections.disjoint(this.progress.completedEvents, trigger.preAny)) && Collections.disjoint(this.progress.completedEvents, trigger.mutex) && Collections.disjoint(this.progress.processingEvents, trigger.mutex) && !isMutex(trigger.eventId)) {
                if (trigger.emergency != null && trigger.emergency.intValue() != this.progress.inEmergency) {
                    return "prerequisite/mutex/calendar/emergency";
                }
                Set<Integer> set = this.progress.eventConditions.get("battle");
                if (!trigger.battles.isEmpty() && (set == null || !set.containsAll(trigger.battles))) {
                    return "battles=" + trigger.battles;
                }
                if (!trigger.areas.isEmpty()) {
                    boolean z = false;
                    for (Map.Entry<Integer, Set<Integer>> entry : trigger.areas.entrySet()) {
                        z |= entry.getValue().contains(Integer.valueOf(LocalCityProgress.status(this.progress, entry.getKey().intValue(), this.profile)));
                    }
                    if (!z) {
                        return "area-state";
                    }
                    return null;
                }
                return null;
            }
            return "prerequisite/mutex/calendar/emergency";
        }
        return "prerequisite/mutex/calendar/emergency";
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0099, code lost:
    
        return "patrol-heroes=" + r0.getValue();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String dynamicTriggerBlocker(LocalEventCatalog.Trigger trigger, int i, int i2, Collection<Integer> collection) {
        LocalStoryConditions.Evaluation evaluate;
        if (!trigger.areaClicks.isEmpty() && !trigger.areaClicks.contains(this.areaClick)) {
            return "area-focus=" + this.areaClick;
        }
        if (this.date < trigger.date[0] || this.date > trigger.date[1] || this.week < trigger.week[0] || this.week > trigger.week[1]) {
            return "calendar";
        }
        Iterator<Map.Entry<Integer, String>> it = trigger.predicates.entrySet().iterator();
        while (true) {
            LocalStoryConditions.Context context = null;
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry<Integer, String> next = it.next();
            if (next.getKey().intValue() == 10) {
                if (i2 != 2 || !collection.containsAll(LocalStoryConditions.integers(next.getValue()))) {
                    break;
                }
            } else {
                LocalStoryConditionPass localStoryConditionPass = this.conditionPass;
                if (localStoryConditionPass != null && i == 0) {
                    evaluate = localStoryConditionPass.evaluate(next.getKey().intValue(), next.getValue());
                } else {
                    int intValue = next.getKey().intValue();
                    String value = next.getValue();
                    byte[] bArr = this.profile;
                    LocalTutorialStore.Progress progress = this.progress;
                    if (next.getKey().intValue() == 29 && i != 0) {
                        context = new LocalStoryConditions.Context(i, i2);
                    }
                    evaluate = LocalStoryConditions.evaluate(intValue, value, bArr, progress, context);
                }
                if (!evaluate.satisfied) {
                    return evaluate.status + ":" + evaluate.reason;
                }
            }
        }
    }

    private void repairFirstBattleEvents() {
        if (this.progress.weekIndex > 0 || !this.progress.completedEvents.contains(1047)) {
            return;
        }
        if (this.progress.completedEvents.contains(1038) || this.progress.completedEvents.contains(1039) || this.progress.completedEvents.contains(1040)) {
            if (!this.progress.completedEvents.contains(1043) && !this.progress.processingEvents.contains(1043)) {
                this.progress.availableEvents.add(1043);
                return;
            }
            return;
        }
        if (!this.progress.processingEvents.contains(Integer.valueOf(this.starterEvent))) {
            this.progress.availableEvents.add(Integer.valueOf(this.starterEvent));
        }
        this.progress.availableEvents.remove(1043);
    }

    private boolean containsEmergency(Collection<Integer> collection) {
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            if (this.catalog.isEmergency(it.next().intValue())) {
                return true;
            }
        }
        return false;
    }
}
