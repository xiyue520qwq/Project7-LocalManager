package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalPuzzleEngine {
    LocalPuzzleEngine() {
    }

    static final class Room {
        final int clear;
        final Set<Integer> clues = new LinkedHashSet();
        final int event;

        /* renamed from: id */
        final int f5id;
        final int incomplete;
        final Set<String> routes;

        Room(String[] strArr) {
            int i;
            int i2;
            int i3;
            this.event = Integer.parseInt(strArr[1]);
            this.f5id = Integer.parseInt(strArr[2]);
            this.clear = Integer.parseInt(strArr[3]);
            this.incomplete = Integer.parseInt(strArr[4]);
            this.routes = new LinkedHashSet(Arrays.asList(strArr[5].split(",")));
            for (String str : strArr[6].split(",")) {
                this.clues.add(Integer.valueOf(Integer.parseInt(str)));
            }
            if (this.event <= 0 || (i = this.f5id) < 1 || i > 3 || (i2 = this.clear) <= 0 || (i3 = this.incomplete) <= 0 || i2 == i3 || this.clues.isEmpty()) {
                throw new IllegalArgumentException("invalid reviewed room");
            }
        }
    }

    static final class Clue {

        /* renamed from: cg */
        final int f3cg;

        /* renamed from: id */
        final int f4id;
        final int room;

        Clue(String[] strArr) {
            int parseInt = Integer.parseInt(strArr[1]);
            this.f4id = parseInt;
            int parseInt2 = Integer.parseInt(strArr[2]);
            this.room = parseInt2;
            int parseInt3 = Integer.parseInt(strArr[3]);
            this.f3cg = parseInt3;
            if (parseInt <= 0 || parseInt2 < 1 || parseInt2 > 3 || parseInt3 < 0) {
                throw new IllegalArgumentException("invalid reviewed clue");
            }
        }
    }

    static boolean handles(String str) {
        return "q7PuzzleBegin".equals(str) || "q7PuzzleExit".equals(str) || "puzzleRoomGetClue".equals(str);
    }

    /* renamed from: d */
    static byte[] m64d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m65v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static List<Integer> clues(byte[] bArr, Room room) {
        byte[] documentValue = BsonLite.documentValue(bArr, "clues");
        if (documentValue == null) {
            throw new IllegalArgumentException("missing room clue state");
        }
        ArrayList arrayList = new ArrayList();
        for (String str : BsonLite.keys(documentValue)) {
            Integer intValue = BsonLite.intValue(documentValue, str);
            if (!str.equals(Integer.toString(arrayList.size())) || intValue == null || !room.clues.contains(intValue) || arrayList.contains(intValue)) {
                throw new IllegalArgumentException("invalid saved room clue");
            }
            arrayList.add(intValue);
        }
        return arrayList;
    }

    static boolean clock(byte[] bArr, LocalTutorialStore.Progress progress, byte[] bArr2) {
        byte[] m64d = m64d(bArr, "weeknum");
        Integer intValue = BsonLite.intValue(m64d, "w");
        Integer intValue2 = BsonLite.intValue(m64d, "d");
        return progress != null && intValue != null && intValue2 != null && intValue.intValue() >= 0 && intValue2.intValue() >= 0 && intValue2.intValue() <= 7 && progress.weekIndex == intValue.intValue() && intValue.equals(BsonLite.intValue(bArr2, "w")) && intValue2.equals(BsonLite.intValue(bArr2, "d"));
    }

    static boolean known(byte[] bArr, LocalEventCatalog localEventCatalog) {
        Room room;
        if (m65v(bArr, "format") != 1 || BsonLite.intValue(bArr, "n") == null || m65v(bArr, "n") < 1 || BsonLite.boolValue(bArr, "open") == null || BsonLite.intValue(bArr, "generation") == null || m65v(bArr, "generation") < 0 || BsonLite.intValue(bArr, "w") == null || m65v(bArr, "w") < 0 || BsonLite.intValue(bArr, "d") == null || m65v(bArr, "d") < 0 || m65v(bArr, "d") > 7 || (room = localEventCatalog.puzzleRooms.get(BsonLite.intValue(bArr, "e"))) == null || m65v(bArr, "r") != room.f5id) {
            return false;
        }
        try {
            List<Integer> clues = clues(bArr, room);
            if (Boolean.TRUE.equals(BsonLite.boolValue(bArr, "open"))) {
                return !BsonLite.keys(bArr).contains("outcome");
            }
            return Integer.valueOf(clues.containsAll(room.clues) ? room.clear : room.incomplete).equals(BsonLite.intValue(bArr, "outcome"));
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    static int generation(LocalTutorialStore.Progress progress, int i) {
        return progress.eventCompletions.getOrDefault(Integer.valueOf(i), Integer.valueOf(progress.completedEvents.contains(Integer.valueOf(i)) ? 1 : 0)).intValue();
    }

    static boolean canBegin(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, int i) {
        LocalEventCatalog.Event event;
        Room room = localEventCatalog.puzzleRooms.get(Integer.valueOf(i));
        if (room == null || progress == null || !room.routes.contains(BsonLite.stringValue(m64d(bArr, "std"), "rt")) || (event = localEventCatalog.get(i)) == null || !event.release || generation(progress, i) < 0 || generation(progress, i) == Integer.MAX_VALUE) {
            return false;
        }
        byte[] m64d = m64d(bArr, "weeknum");
        Integer intValue = BsonLite.intValue(m64d, "w");
        Integer intValue2 = BsonLite.intValue(m64d, "d");
        if (intValue == null || intValue2 == null || intValue.intValue() != progress.weekIndex || intValue2.intValue() < 0 || intValue2.intValue() > 7) {
            return false;
        }
        Iterator<Integer> it = progress.processingEvents.iterator();
        while (it.hasNext()) {
            int intValue3 = it.next().intValue();
            if (intValue3 != i && localEventCatalog.puzzleRooms.containsKey(Integer.valueOf(intValue3))) {
                return false;
            }
        }
        if (!BsonLite.keys(bArr).contains("q7Puzzle")) {
            return true;
        }
        byte[] m64d2 = m64d(bArr, "q7Puzzle");
        if (!known(m64d2, localEventCatalog)) {
            return false;
        }
        if (Boolean.TRUE.equals(BsonLite.boolValue(m64d2, "open"))) {
            return m65v(m64d2, "e") == i && clock(bArr, progress, m64d2) && generation(progress, i) == m65v(m64d2, "generation");
        }
        int m65v = m65v(m64d2, "e");
        if (intValue.intValue() < m65v(m64d2, "w")) {
            return false;
        }
        if (intValue.intValue() > m65v(m64d2, "w")) {
            return !progress.processingEvents.contains(Integer.valueOf(m65v)) || m65v == i;
        }
        if (intValue2.intValue() >= m65v(m64d2, "d") && generation(progress, m65v) > m65v(m64d2, "generation")) {
            return m65v == i || !progress.processingEvents.contains(Integer.valueOf(m65v));
        }
        return false;
    }

    static boolean active(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, int i) {
        byte[] m64d = m64d(bArr, "q7Puzzle");
        return known(m64d, localEventCatalog) && m65v(m64d, "e") == i && clock(bArr, progress, m64d) && generation(progress, i) == m65v(m64d, "generation") && progress.processingEvents.contains(Integer.valueOf(i)) && Boolean.TRUE.equals(BsonLite.boolValue(m64d, "open"));
    }

    static Integer exitOutcome(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, int i) {
        byte[] m64d = m64d(bArr, "q7Puzzle");
        if (!known(m64d, localEventCatalog) || m65v(m64d, "e") != i || !clock(bArr, progress, m64d) || generation(progress, i) != m65v(m64d, "generation") || !Boolean.FALSE.equals(BsonLite.boolValue(m64d, "open"))) {
            return null;
        }
        Room room = localEventCatalog.puzzleRooms.get(Integer.valueOf(i));
        int i2 = clues(m64d, room).containsAll(room.clues) ? room.clear : room.incomplete;
        if (Integer.valueOf(i2).equals(BsonLite.intValue(m64d, "outcome"))) {
            return Integer.valueOf(i2);
        }
        return null;
    }

    static Room selectedClear(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, int i) {
        boolean z;
        Iterator<Room> it = localEventCatalog.puzzleRooms.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (it.next().clear == i) {
                z = true;
                break;
            }
        }
        if (!z || progress == null) {
            return null;
        }
        byte[] documentValue = BsonLite.documentValue(m64d(bArr, "q7PuzzleExits"), Integer.toString(i));
        byte[] m64d = m64d(bArr, "weeknum");
        if (!known(documentValue, localEventCatalog) || !Boolean.FALSE.equals(BsonLite.boolValue(documentValue, "open"))) {
            return null;
        }
        Room room = localEventCatalog.puzzleRooms.get(Integer.valueOf(m65v(documentValue, "e")));
        if (room.clear != i || m65v(documentValue, "outcome") != i || !progress.completedEvents.contains(Integer.valueOf(room.event)) || progress.processingEvents.contains(Integer.valueOf(room.event)) || progress.weekIndex != m65v(documentValue, "w") || !Objects.equals(BsonLite.intValue(documentValue, "w"), BsonLite.intValue(m64d, "w")) || BsonLite.intValue(m64d, "d") == null || m65v(m64d, "d") < m65v(documentValue, "d") || m65v(m64d, "d") > 7 || generation(progress, room.event) != m65v(documentValue, "generation") + 1) {
            return null;
        }
        return room;
    }

    static Set<Integer> heldCgs(byte[] bArr) {
        byte[] m64d = m64d(bArr, "q7Puzzle");
        if (m65v(m64d, "format") != 1 || m65v(m64d, "e") != 4229 || m65v(m64d, "r") != 1 || m65v(m64d, "n") < 1 || BsonLite.intValue(m64d, "generation") == null || m65v(m64d, "generation") < 0 || BsonLite.intValue(m64d, "w") == null || BsonLite.intValue(m64d, "d") == null || m65v(m64d, "w") < 0 || m65v(m64d, "d") < 0 || m65v(m64d, "d") > 7 || !Objects.equals(BsonLite.intValue(m64d, "w"), BsonLite.intValue(m64d(bArr, "weeknum"), "w")) || !Objects.equals(BsonLite.intValue(m64d, "d"), BsonLite.intValue(m64d(bArr, "weeknum"), "d")) || BsonLite.keys(m64d).contains("outcome") || !Boolean.TRUE.equals(BsonLite.boolValue(m64d, "open"))) {
            return Collections.emptySet();
        }
        byte[] documentValue = BsonLite.documentValue(m64d, "clues");
        if (documentValue == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (String str : BsonLite.keys(documentValue)) {
            Integer intValue = BsonLite.intValue(documentValue, str);
            if (!str.equals(Integer.toString(hashSet.size())) || intValue == null || intValue.intValue() < 1 || intValue.intValue() > 6 || !hashSet.add(intValue)) {
                return Collections.emptySet();
            }
        }
        return BsonLite.intArrayValues(m64d, "clues").contains(2) ? Collections.singleton(209) : Collections.emptySet();
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, String str, byte[] bArr2) {
        Iterator<Integer> it;
        String str2;
        LocalResourceEngine.Result result;
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
        if ("q7PuzzleBegin".equals(str)) {
            Integer intValue = BsonLite.intValue(bArr2, "e");
            if (intValue != null && progress != null && progress.processingEvents.contains(intValue)) {
                if (!canBegin(bArr, localEventCatalog, progress, intValue.intValue())) {
                    return result2;
                }
                Room room = localEventCatalog.puzzleRooms.get(intValue);
                byte[] m64d = m64d(bArr, "q7Puzzle");
                if (active(bArr, localEventCatalog, progress, intValue.intValue())) {
                    result = result2;
                    str2 = "q7Puzzle";
                } else {
                    try {
                        str2 = "q7Puzzle";
                        result = result2;
                        m64d = BsonLite.withoutProfileKey(BsonLite.withProfileIntArray(BsonLite.withProfileInt(BsonLite.withProfileBool(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(m64d, "format", 1), "e", intValue.intValue()), "r", room.f5id), "w", m65v(m64d(bArr, "weeknum"), "w")), "d", m65v(m64d(bArr, "weeknum"), "d")), "n", Math.addExact(m65v(m64d, "n"), 1)), "open", true), "generation", generation(progress, intValue.intValue())), "clues", Collections.emptyList()), "outcome");
                    } catch (ArithmeticException e) {
                        return result2;
                    }
                }
                LocalResourceEngine.Result result3 = result;
                result3.profile = BsonLite.withProfileDocument(bArr, str2, m64d);
                result3.profile = BsonLite.withProfileDocument(result3.profile, "std", BsonLite.withProfileIntArray(m64d(bArr, "std"), "prc", clues(m64d, room)));
                result3.add("evalCode", BsonLite.document("s", LocalClientCompatibility.encode("gg.avatar._q7_puzzle_snapshot = (" + m65v(m64d, "w") + "," + intValue + "," + m65v(m64d, "n") + "," + room.f5id + ")\n")));
                result3.add("syncPuzzleRoomClue", BsonLite.document("d", clues(m64d, room)));
                return result3;
            }
            return result2;
        }
        if ("q7PuzzleExit".equals(str)) {
            Integer intValue2 = BsonLite.intValue(bArr2, "e");
            if (intValue2 == null || !active(bArr, localEventCatalog, progress, intValue2.intValue())) {
                return result2;
            }
            byte[] m64d2 = m64d(bArr, "q7Puzzle");
            Room room2 = localEventCatalog.puzzleRooms.get(intValue2);
            int i = clues(m64d2, room2).containsAll(room2.clues) ? room2.clear : room2.incomplete;
            byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileBool(m64d2, "open", false), "outcome", i);
            result2.profile = BsonLite.withProfileDocument(bArr, "q7Puzzle", withProfileInt);
            result2.profile = BsonLite.withProfileDocument(result2.profile, "q7PuzzleExits", BsonLite.withProfileDocument(m64d(bArr, "q7PuzzleExits"), Integer.toString(i), withProfileInt));
            result2.profile = LocalCgEngine.acknowledge(result2.profile, new ArrayList(heldCgs(bArr)));
            return result2;
        }
        if (!"puzzleRoomGetClue".equals(str)) {
            return result2;
        }
        Integer intValue3 = BsonLite.intValue(bArr2, "c");
        Clue clue = localEventCatalog.puzzleClues.get(intValue3);
        byte[] m64d3 = m64d(bArr, "q7Puzzle");
        int m65v = m65v(m64d3, "e");
        boolean z = clue != null && active(bArr, localEventCatalog, progress, m65v) && clue.room == m65v(m64d3, "r");
        if (progress != null) {
            Iterator<Integer> it2 = progress.processingEvents.iterator();
            while (it2.hasNext()) {
                int intValue4 = it2.next().intValue();
                if (intValue4 != m65v) {
                    it = it2;
                    if (localEventCatalog.puzzleRooms.containsKey(Integer.valueOf(intValue4))) {
                        z = false;
                    }
                } else {
                    it = it2;
                }
                it2 = it;
            }
        }
        if (!z) {
            Object[] objArr = new Object[6];
            objArr[0] = "r";
            objArr[1] = false;
            objArr[2] = "c";
            objArr[3] = Integer.valueOf(intValue3 == null ? 0 : intValue3.intValue());
            objArr[4] = "g";
            objArr[5] = false;
            result2.add("puzzleRoomGetClueReturn", BsonLite.document(objArr));
            return result2;
        }
        List<Integer> clues = clues(m64d3, localEventCatalog.puzzleRooms.get(Integer.valueOf(m65v)));
        if (!clues.contains(intValue3)) {
            clues.add(intValue3);
        }
        result2.profile = BsonLite.withProfileDocument(bArr, "q7Puzzle", BsonLite.withProfileIntArray(m64d3, "clues", clues));
        result2.profile = BsonLite.withProfileDocument(result2.profile, "std", BsonLite.withProfileIntArray(m64d(bArr, "std"), "prc", clues));
        if (clue.f3cg > 0 && !BsonLite.intArrayValues(bArr, "cgs").contains(Integer.valueOf(clue.f3cg))) {
            String[] strArr = {"cgs", "ncgs", "ccgs"};
            for (int i2 = 0; i2 < 3; i2++) {
                String str3 = strArr[i2];
                ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(result2.profile, str3));
                if (!arrayList.contains(Integer.valueOf(clue.f3cg))) {
                    arrayList.add(Integer.valueOf(clue.f3cg));
                }
                result2.profile = BsonLite.withProfileIntArray(result2.profile, str3, arrayList);
            }
        }
        result2.add("puzzleRoomGetClueReturn", BsonLite.document("r", true, "c", intValue3, "g", false));
        return result2;
    }

    static void reconcileClue(LocalResourceEngine.Result result, byte[] bArr, LocalEventCatalog localEventCatalog, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, LocalWeekCatalog localWeekCatalog, LocalTutorialStore.Progress progress) {
        if (result.replies.isEmpty()) {
            return;
        }
        LocalResourceEngine.Reply reply = result.replies.get(0);
        if (!"puzzleRoomGetClueReturn".equals(reply.method) || !Boolean.TRUE.equals(BsonLite.boolValue(reply.parameters, "r"))) {
            return;
        }
        result.replies.remove(0);
        if (!BsonLite.intArrayValues(bArr, "cgs").equals(BsonLite.intArrayValues(result.profile, "cgs"))) {
            LocalCgEngine.reconcile(result, bArr, localFeatureCatalog, localResourceCatalog, localWeekCatalog, progress);
        }
        int m65v = m65v(reply.parameters, "c");
        Clue clue = localEventCatalog.puzzleClues.get(Integer.valueOf(m65v));
        byte[] documentValue = clue.f3cg == 0 ? null : BsonLite.documentValue(m64d(result.profile, "q7CgNotices"), Integer.toString(clue.f3cg));
        if (documentValue != null) {
            byte[] m64d = m64d(result.profile, "q7Puzzle");
            result.add("evalCode", BsonLite.document("s", LocalClientCompatibility.encode("gg.avatar._q7_puzzle_reward_context = (" + m65v(m64d, "w") + "," + m65v(m64d, "e") + "," + m65v(m64d, "n") + "," + m65v + ")\n")));
            result.add("addCg", BsonLite.document("c", Collections.singletonList(Integer.valueOf(clue.f3cg))));
            result.add("cgRewards", BsonLite.document("r", documentValue));
        }
        Object[] objArr = new Object[6];
        objArr[0] = "r";
        objArr[1] = true;
        objArr[2] = "c";
        objArr[3] = Integer.valueOf(m65v);
        objArr[4] = "g";
        objArr[5] = Boolean.valueOf(documentValue != null);
        result.add("puzzleRoomGetClueReturn", BsonLite.document(objArr));
    }
}
