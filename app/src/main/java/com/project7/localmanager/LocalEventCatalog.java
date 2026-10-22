package com.project7.localmanager;

import android.content.Context;
import com.project7.localmanager.LocalPuzzleEngine;
import com.project7.localmanager.LocalStoryItemRewardEngine;
import com.project7.localmanager.LocalStoryMemoryEngine;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes.dex */
final class LocalEventCatalog {
    static final int FIRST_EVENT = 1000;
    final Map<Integer, int[]> arkRaids;
    final Set<Integer> autoSocialMessages;
    final Map<Integer, Integer> baiyuEffects;
    final Map<Integer, Set<Integer>> battles;
    final Map<Integer, Set<Integer>> buildingUnlocks;
    final Map<Integer, byte[]> cityEffects;
    final Map<Integer, Outcome> cityOutcomes;
    final Map<Integer, Integer> clearNotes;
    final Map<Integer, List<Set<Integer>>> clueEffects;
    final Map<Integer, String> clueFamilies;
    final Map<Integer, String> clueRoutes;
    final Map<Integer, Integer> confidenceEffects;
    final Map<Integer, int[]> consumptions;
    final Map<Integer, Effect> effects;
    private final Map<Integer, Event> events;
    final Set<Integer> externalEvents;
    final Map<Integer, Set<Integer>> heroClears;
    final Map<Integer, int[]> heroRewards;
    final Map<Integer, LocalStoryItemRewardEngine.Reward> itemRewards;
    final Map<Integer, LocalStoryMemoryEngine.Piece> memoryPieces;
    final Map<Integer, List<Integer>> memoryRewards;
    private final Map<Integer, Set<Integer>> mutexEvents;
    final Map<Integer, int[]> notes;
    final Map<Integer, Outcome> outcomes;
    final Set<Integer> permanentSocialMessages;
    final Map<Integer, Set<Integer>> privateMessageEvents;
    final Map<Integer, Map<Integer, Integer>> privateReplies;
    final Map<Integer, Set<Integer>> privateReplyMessages;
    final Map<Integer, LocalPuzzleEngine.Clue> puzzleClues;
    final Map<Integer, LocalPuzzleEngine.Room> puzzleRooms;
    final Map<Integer, String> routes;
    final Map<Integer, int[]> sailafeimuEffects;
    private final Map<Integer, Set<Integer>> serverEdges;
    final Map<Integer, Integer> socialActions;
    final Map<Integer, Set<Integer>> socialConflicts;
    final Map<Integer, Set<Integer>> socialEvents;
    final Map<Integer, Set<Integer>> socialMutex;
    final Map<String, Integer> targetCounts;
    final Map<Integer, Map<String, Integer>> targetEffects;
    private final Map<Integer, Trigger> triggers;
    int[] wingDrugs;
    final Map<Integer, int[]> wingGardens;
    final Map<Integer, Integer> yisakeEffects;

    LocalEventCatalog(Context context) throws IOException {
        this(context.getApplicationContext().getAssets().open("event_graph.tsv"));
    }

    LocalEventCatalog(InputStream inputStream) throws IOException {
        this.events = new LinkedHashMap();
        this.serverEdges = new LinkedHashMap();
        this.triggers = new LinkedHashMap();
        this.mutexEvents = new LinkedHashMap();
        this.effects = new LinkedHashMap();
        this.notes = new LinkedHashMap();
        this.clearNotes = new LinkedHashMap();
        this.heroClears = new LinkedHashMap();
        this.privateReplies = new LinkedHashMap();
        this.privateReplyMessages = new LinkedHashMap();
        this.privateMessageEvents = new LinkedHashMap();
        this.externalEvents = new LinkedHashSet();
        this.routes = new LinkedHashMap();
        this.targetCounts = new LinkedHashMap();
        this.targetEffects = new LinkedHashMap();
        this.confidenceEffects = new LinkedHashMap();
        this.sailafeimuEffects = new LinkedHashMap();
        this.baiyuEffects = new LinkedHashMap();
        this.yisakeEffects = new LinkedHashMap();
        this.wingGardens = new LinkedHashMap();
        this.cityEffects = new LinkedHashMap();
        this.cityOutcomes = new LinkedHashMap();
        this.arkRaids = new LinkedHashMap();
        this.battles = new LinkedHashMap();
        this.outcomes = new LinkedHashMap();
        this.consumptions = new LinkedHashMap();
        this.buildingUnlocks = new LinkedHashMap();
        this.socialEvents = new LinkedHashMap();
        this.socialActions = new LinkedHashMap();
        this.socialMutex = new LinkedHashMap();
        this.autoSocialMessages = new LinkedHashSet();
        this.permanentSocialMessages = new LinkedHashSet();
        this.socialConflicts = new LinkedHashMap();
        this.clueFamilies = new LinkedHashMap();
        this.clueRoutes = new LinkedHashMap();
        this.clueEffects = new LinkedHashMap();
        this.memoryPieces = new LinkedHashMap();
        this.memoryRewards = new LinkedHashMap();
        this.heroRewards = new LinkedHashMap();
        this.itemRewards = new LinkedHashMap();
        this.puzzleRooms = new LinkedHashMap();
        this.puzzleClues = new LinkedHashMap();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    parseLine(readLine);
                } else {
                    bufferedReader.close();
                    return;
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    Event get(int i) {
        return this.events.get(Integer.valueOf(i));
    }

    Trigger trigger(int i) {
        return this.triggers.get(Integer.valueOf(i));
    }

    Iterable<Trigger> triggers() {
        return Collections.unmodifiableCollection(this.triggers.values());
    }

    Iterable<Event> events() {
        return Collections.unmodifiableCollection(this.events.values());
    }

    Set<Integer> mutex(int i) {
        Set<Integer> set = this.mutexEvents.get(Integer.valueOf(i));
        return set == null ? Collections.emptySet() : set;
    }

    Set<Integer> successors(int i) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Event event = get(i);
        if (event != null) {
            linkedHashSet.addAll(event.successors);
        }
        Set<Integer> set = this.serverEdges.get(Integer.valueOf(i));
        if (set != null) {
            linkedHashSet.addAll(set);
        }
        return linkedHashSet;
    }

    boolean isEmergency(int i) {
        Event event = get(i);
        return event != null && event.emergency;
    }

    private void parseLine(String str) {
        if (str.isEmpty() || str.startsWith("#")) {
            return;
        }
        String[] split = str.split("\t", -1);
        int i = 0;
        if ("@wingDrugs".equals(split[0]) && split.length == 6) {
            if (this.wingDrugs == null) {
                this.wingDrugs = new int[5];
                while (i < 5) {
                    int i2 = i + 1;
                    this.wingDrugs[i] = Integer.parseInt(split[i2]);
                    i = i2;
                }
                if (!Arrays.equals(this.wingDrugs, new int[]{10, 1, 2, 2, -2})) {
                    throw new IllegalArgumentException("unreviewed original medicine policy");
                }
                return;
            }
            throw new IllegalArgumentException("duplicate original medicine policy");
        }
        if ("@wingGarden".equals(split[0]) && split.length == 4) {
            int parseInt = Integer.parseInt(split[1]);
            int parseInt2 = Integer.parseInt(split[2]);
            int parseInt3 = Integer.parseInt(split[3]);
            if (parseInt <= 0 || parseInt2 != 2 || parseInt3 <= 0 || this.wingGardens.put(Integer.valueOf(parseInt), new int[]{parseInt2, parseInt3}) != null) {
                throw new IllegalArgumentException("invalid original garden agreement");
            }
            return;
        }
        if ("@itemReward".equals(split[0]) && split.length == 8) {
            LocalStoryItemRewardEngine.Reward reward = new LocalStoryItemRewardEngine.Reward(split);
            if (this.itemRewards.put(Integer.valueOf(reward.event), reward) != null) {
                throw new IllegalArgumentException("duplicate story item reward");
            }
            return;
        }
        if ("@heroReward".equals(split[0]) && split.length == 4) {
            int parseInt4 = Integer.parseInt(split[1]);
            int parseInt5 = Integer.parseInt(split[2]);
            int parseInt6 = Integer.parseInt(split[3]);
            if (parseInt4 <= 0 || parseInt5 <= 0 || parseInt6 < 1 || parseInt6 > 4 || this.heroRewards.put(Integer.valueOf(parseInt4), new int[]{parseInt5, parseInt6}) != null) {
                throw new IllegalArgumentException("invalid original hero reward definition");
            }
            return;
        }
        if ("@arkRaid".equals(split[0]) && split.length == 5) {
            this.arkRaids.put(Integer.valueOf(Integer.parseInt(split[1])), new int[]{Integer.parseInt(split[2]), Integer.parseInt(split[3]), Integer.parseInt(split[4])});
            return;
        }
        if ("@memoryPiece".equals(split[0]) && split.length == 6) {
            LocalStoryMemoryEngine.Piece piece = new LocalStoryMemoryEngine.Piece(split);
            if (this.memoryPieces.put(Integer.valueOf(piece.item), piece) != null) {
                throw new IllegalArgumentException("duplicate memory definition");
            }
            return;
        }
        if ("@puzzleRoom".equals(split[0]) && split.length == 7) {
            LocalPuzzleEngine.Room room = new LocalPuzzleEngine.Room(split);
            this.puzzleRooms.put(Integer.valueOf(room.event), room);
            return;
        }
        if ("@puzzleClue".equals(split[0]) && split.length == 4) {
            LocalPuzzleEngine.Clue clue = new LocalPuzzleEngine.Clue(split);
            this.puzzleClues.put(Integer.valueOf(clue.f11id), clue);
            return;
        }
        if ("@memoryReward".equals(split[0]) && split.length == 3) {
            this.memoryRewards.put(Integer.valueOf(Integer.parseInt(split[1])), new ArrayList(parseIntSet(split[2])));
            return;
        }
        if ("@sailafeimu".equals(split[0]) && split.length == 4) {
            this.sailafeimuEffects.put(Integer.valueOf(Integer.parseInt(split[1])), new int[]{Integer.parseInt(split[2]), Integer.parseInt(split[3])});
            return;
        }
        if ("@confidence".equals(split[0]) && split.length == 3) {
            this.confidenceEffects.put(Integer.valueOf(Integer.parseInt(split[1])), Integer.valueOf(Integer.parseInt(split[2])));
            return;
        }
        if ("@baiyu".equals(split[0]) && split.length == 3) {
            int parseInt7 = Integer.parseInt(split[1]);
            int parseInt8 = Integer.parseInt(split[2]);
            if (parseInt7 <= 0 || parseInt8 == 0 || this.baiyuEffects.put(Integer.valueOf(parseInt7), Integer.valueOf(parseInt8)) != null) {
                throw new IllegalArgumentException("invalid signed Wing effect");
            }
            return;
        }
        if ("@yisake".equals(split[0]) && split.length == 3) {
            int parseInt9 = Integer.parseInt(split[1]);
            int parseInt10 = Integer.parseInt(split[2]);
            if (parseInt9 <= 0 || parseInt10 <= 0 || parseInt10 > 100 || this.yisakeEffects.put(Integer.valueOf(parseInt9), Integer.valueOf(parseInt10)) != null) {
                throw new IllegalArgumentException("invalid original Yisake effect");
            }
            return;
        }
        if ("@targetCount".equals(split[0]) && split.length == 3) {
            this.targetCounts.put(split[1], Integer.valueOf(Integer.parseInt(split[2])));
            return;
        }
        if ("@targetEffect".equals(split[0]) && split.length == 3) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str2 : split[2].split("\\|")) {
                String[] split2 = str2.split(":");
                linkedHashMap.put(split2[0], Integer.valueOf(Integer.parseInt(split2[1])));
            }
            this.targetEffects.put(Integer.valueOf(Integer.parseInt(split[1])), linkedHashMap);
            return;
        }
        if ("@cityEffect".equals(split[0]) && split.length == 3) {
            this.cityEffects.put(Integer.valueOf(Integer.parseInt(split[1])), Base64.getDecoder().decode(split[2]));
            return;
        }
        if ("@cityOutcome".equals(split[0]) && split.length == 4) {
            int parseInt11 = Integer.parseInt(split[1]);
            this.cityOutcomes.put(Integer.valueOf(parseInt11), new Outcome(parseInt11, parseIntSet(split[2]), parseIntSet(split[3])));
            return;
        }
        if ("@clue".equals(split[0]) && split.length == 4) {
            int parseInt12 = Integer.parseInt(split[1]);
            this.clueFamilies.put(Integer.valueOf(parseInt12), split[2]);
            this.clueRoutes.put(Integer.valueOf(parseInt12), split[3]);
            return;
        }
        if ("@clueEffect".equals(split[0]) && split.length == 4) {
            this.clueEffects.put(Integer.valueOf(Integer.parseInt(split[1])), Arrays.asList(parseIntSet(split[2]), parseIntSet(split[3])));
            return;
        }
        if ("@socialPermanent".equals(split[0]) && split.length == 2) {
            this.permanentSocialMessages.add(Integer.valueOf(Integer.parseInt(split[1])));
            return;
        }
        if ("@socialConflict".equals(split[0]) && split.length == 3) {
            this.socialConflicts.put(Integer.valueOf(Integer.parseInt(split[1])), parseIntSet(split[2]));
            return;
        }
        if ("@build".equals(split[0]) && split.length == 3) {
            this.buildingUnlocks.put(Integer.valueOf(Integer.parseInt(split[1])), parseIntSet(split[2]));
            return;
        }
        if ("@social".equals(split[0]) && split.length >= 4) {
            int parseInt13 = Integer.parseInt(split[1]);
            this.socialEvents.put(Integer.valueOf(parseInt13), parseIntSet(split[2]));
            if ("1".equals(split[3])) {
                this.autoSocialMessages.add(Integer.valueOf(parseInt13));
            }
            if (split.length >= 5) {
                this.socialActions.put(Integer.valueOf(parseInt13), Integer.valueOf(Integer.parseInt(split[4])));
            }
            if (split.length >= 6) {
                this.socialMutex.put(Integer.valueOf(parseInt13), parseIntSet(split[5]));
                return;
            }
            return;
        }
        if ("@outcome".equals(split[0]) && split.length == 5) {
            this.outcomes.put(Integer.valueOf(Integer.parseInt(split[1])), new Outcome(Integer.parseInt(split[2]), parseIntSet(split[3]), parseIntSet(split[4])));
            return;
        }
        if ("@consume".equals(split[0]) && split.length == 6) {
            this.consumptions.put(Integer.valueOf(Integer.parseInt(split[1])), new int[]{Integer.parseInt(split[2]), Integer.parseInt(split[3]), Integer.parseInt(split[4]), Integer.parseInt(split[5])});
            return;
        }
        if ("@battle".equals(split[0]) && split.length == 3) {
            this.battles.put(Integer.valueOf(Integer.parseInt(split[1])), parseIntSet(split[2]));
            return;
        }
        if ("@external".equals(split[0]) && split.length == 2) {
            this.externalEvents.add(Integer.valueOf(Integer.parseInt(split[1])));
            return;
        }
        if ("@route".equals(split[0]) && split.length == 3) {
            this.routes.put(Integer.valueOf(Integer.parseInt(split[1])), split[2]);
            return;
        }
        if ("@effect".equals(split[0]) && split.length == 6) {
            this.effects.put(Integer.valueOf(Integer.parseInt(split[1])), new Effect(split));
            Iterator<Integer> it = this.effects.get(Integer.valueOf(Integer.parseInt(split[1]))).privateMessages.iterator();
            while (it.hasNext()) {
                this.privateMessageEvents.computeIfAbsent(Integer.valueOf(it.next().intValue()), new Function() { // from class: com.project7.localmanager.LocalEventCatalog$$ExternalSyntheticLambda0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return LocalEventCatalog.lambda$parseLine$0((Integer) obj);
                    }
                }).add(Integer.valueOf(Integer.parseInt(split[1])));
            }
            return;
        }
        if ("@note".equals(split[0]) && split.length == 4) {
            this.notes.put(Integer.valueOf(Integer.parseInt(split[1])), new int[]{Integer.parseInt(split[2]), Integer.parseInt(split[3])});
            return;
        }
        if ("@clearNote".equals(split[0]) && split.length == 3) {
            this.clearNotes.put(Integer.valueOf(Integer.parseInt(split[1])), Integer.valueOf(Integer.parseInt(split[2])));
            return;
        }
        if ("@heroClear".equals(split[0]) && split.length == 3) {
            this.heroClears.put(Integer.valueOf(Integer.parseInt(split[1])), parseIntSet(split[2]));
            return;
        }
        if ("@privateReply".equals(split[0]) && split.length == 4) {
            this.privateReplies.computeIfAbsent(Integer.valueOf(Integer.parseInt(split[1])), new Function() { // from class: com.project7.localmanager.LocalEventCatalog$$ExternalSyntheticLambda1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return LocalEventCatalog.lambda$parseLine$1((Integer) obj);
                }
            }).put(Integer.valueOf(Integer.parseInt(split[2])), Integer.valueOf(Integer.parseInt(split[3])));
            this.privateReplyMessages.computeIfAbsent(Integer.valueOf(Integer.parseInt(split[3])), new Function() { // from class: com.project7.localmanager.LocalEventCatalog$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return LocalEventCatalog.lambda$parseLine$0((Integer) obj);
                }
            }).add(Integer.valueOf(Integer.parseInt(split[1])));
            return;
        }
        if ("@mutex".equals(split[0]) && split.length == 3) {
            this.mutexEvents.put(Integer.valueOf(parseInt(split[1], 0)), parseIntSet(split[2]));
            return;
        }
        if ("@trigger".equals(split[0])) {
            if (split.length == 10 || split.length == 12 || split.length == 13 || split.length == 14) {
                int parseInt14 = parseInt(split[1], 0);
                this.triggers.put(Integer.valueOf(parseInt14), new Trigger(parseInt14, split));
                return;
            }
            return;
        }
        if ("@edge".equals(split[0])) {
            if (split.length >= 3) {
                int parseInt15 = parseInt(split[1], 0);
                int parseInt16 = parseInt(split[2], 0);
                if (parseInt15 != 0 && parseInt16 != 0) {
                    this.serverEdges.computeIfAbsent(Integer.valueOf(parseInt15), new Function() { // from class: com.project7.localmanager.LocalEventCatalog$$ExternalSyntheticLambda0
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return LocalEventCatalog.lambda$parseLine$0((Integer) obj);
                        }
                    }).add(Integer.valueOf(parseInt16));
                    return;
                }
                return;
            }
            return;
        }
        if (split.length >= 7) {
            int parseInt17 = parseInt(split[0], 0);
            int parseInt18 = parseInt(split[1], 0);
            if (parseInt17 == 0) {
                return;
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (String str3 : split[6].split(";")) {
                int indexOf = str3.indexOf(61);
                if (indexOf > 0) {
                    linkedHashMap2.put(str3.substring(0, indexOf), parseIntSet(str3.substring(indexOf + 1)));
                }
            }
            this.events.put(Integer.valueOf(parseInt17), new Event(parseInt17, (parseInt18 & 1) != 0, (parseInt18 & 2) != 0, (parseInt18 & 4) != 0, (parseInt18 & 8) != 0, (parseInt18 & 16) != 0, (parseInt18 & 32) != 0, (parseInt18 & 64) != 0, (parseInt18 & 128) != 0, parseInt(split[2], 0), parseInt(split[3], 0), parseInt(split[4], 10), parseIntList(split[5]), linkedHashMap2));
        }
    }

    static /* synthetic */ Set lambda$parseLine$0(Integer num) {
        return new LinkedHashSet();
    }

    static /* synthetic */ Map lambda$parseLine$1(Integer num) {
        return new LinkedHashMap();
    }

    private static List<Integer> parseIntList(String str) {
        return new ArrayList(parseIntSet(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Set<Integer> parseIntSet(String str) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (str == null || str.isEmpty()) {
            return linkedHashSet;
        }
        for (String str2 : str.split(",")) {
            int parseInt = parseInt(str2, 0);
            if (parseInt != 0) {
                linkedHashSet.add(Integer.valueOf(parseInt));
            }
        }
        return linkedHashSet;
    }

    private static int parseInt(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    static final class Outcome {
        final Set<Integer> failure;
        final int scene;
        final Set<Integer> success;

        Outcome(int i, Set<Integer> set, Set<Integer> set2) {
            this.scene = i;
            this.success = set;
            this.failure = set2;
        }
    }

    static final class Effect {
        final Map<Integer, Integer> cores = new LinkedHashMap();
        final Set<Integer> noteIds;
        final Set<Integer> privateMessages;
        final Set<Integer> socialMessages;

        Effect(String[] strArr) {
            for (String str : strArr[2].split("\\|")) {
                if (!str.isEmpty()) {
                    String[] split = str.split(":");
                    this.cores.put(Integer.valueOf(Integer.parseInt(split[0])), Integer.valueOf(Integer.parseInt(split[1])));
                }
            }
            this.privateMessages = LocalEventCatalog.parseIntSet(strArr[3]);
            this.socialMessages = LocalEventCatalog.parseIntSet(strArr[4]);
            this.noteIds = LocalEventCatalog.parseIntSet(strArr[5]);
        }
    }

    static final class Trigger {
        final Set<String> areaClicks;
        final Set<Integer> battles;
        final Set<Integer> clientOps;
        final int[] date;
        final Integer emergency;
        final int eventId;
        final Set<Integer> mutex;
        final Set<Integer> patrolAreas;
        final Set<Integer> preAll;
        final Set<Integer> preAny;
        final int[] week;
        final Map<Integer, Set<Integer>> areas = new LinkedHashMap();
        final Map<Integer, String> predicates = new LinkedHashMap();

        Trigger(int i, String[] strArr) {
            this.eventId = i;
            this.preAll = LocalEventCatalog.parseIntSet(strArr[2]);
            this.preAny = LocalEventCatalog.parseIntSet(strArr[3]);
            this.battles = LocalEventCatalog.parseIntSet(strArr[4]);
            this.mutex = LocalEventCatalog.parseIntSet(strArr[5]);
            for (String str : strArr[6].split("\\|")) {
                if (!str.isEmpty()) {
                    String[] split = str.split(":", -1);
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    for (String str2 : split[1].split(",")) {
                        linkedHashSet.add(Integer.valueOf(Integer.parseInt(str2)));
                    }
                    this.areas.put(Integer.valueOf(Integer.parseInt(split[0])), linkedHashSet);
                }
            }
            this.date = range(strArr[7]);
            this.week = range(strArr[8]);
            this.emergency = strArr[9].isEmpty() ? null : Integer.valueOf(strArr[9]);
            this.patrolAreas = strArr.length > 10 ? LocalEventCatalog.parseIntSet(strArr[10]) : Collections.emptySet();
            this.clientOps = strArr.length > 11 ? LocalEventCatalog.parseIntSet(strArr[11]) : Collections.emptySet();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            this.areaClicks = linkedHashSet2;
            if (strArr.length > 12 && !strArr[12].isEmpty()) {
                Collections.addAll(linkedHashSet2, strArr[12].split(","));
            }
            if (strArr.length > 13 && !strArr[13].isEmpty()) {
                for (String str3 : strArr[13].split(";")) {
                    String[] split2 = str3.split("=", 2);
                    this.predicates.put(Integer.valueOf(Integer.parseInt(split2[0])), split2[1]);
                }
            }
        }

        private static int[] range(String str) {
            if (str.isEmpty()) {
                return new int[]{Integer.MIN_VALUE, Integer.MAX_VALUE};
            }
            String[] split = str.split(",");
            return new int[]{Integer.parseInt(split[0]), Integer.parseInt(split[1])};
        }
    }

    static final class Event {
        final boolean autoStart;
        final boolean autoTrigger;
        final Map<String, Set<Integer>> completeConditions;
        final boolean completeEnterMainPanel;
        final int dialog;
        final boolean emergency;

        /* renamed from: id */
        final int f8id;
        final boolean leaveEmergency;
        final boolean newbee;
        final int newbeeEvent;
        final int priority;
        final boolean release;
        final boolean repeatable;
        final List<Integer> successors;

        Event(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i2, int i3, int i4, List<Integer> list, Map<String, Set<Integer>> map) {
            this.f8id = i;
            this.emergency = z;
            this.leaveEmergency = z2;
            this.completeEnterMainPanel = z3;
            this.autoTrigger = z4;
            this.autoStart = z5;
            this.release = z6;
            this.newbee = z7;
            this.repeatable = z8;
            this.dialog = i2;
            this.newbeeEvent = i3;
            this.priority = i4;
            this.successors = Collections.unmodifiableList(list);
            this.completeConditions = Collections.unmodifiableMap(map);
        }
    }
}
