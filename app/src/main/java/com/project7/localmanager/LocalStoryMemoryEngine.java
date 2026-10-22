package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class LocalStoryMemoryEngine {
    LocalStoryMemoryEngine() {
    }

    static final class Piece {
        final int files;
        final int hero;
        final int index;
        final int item;
        final int rank;

        Piece(String[] strArr) {
            int parseInt = Integer.parseInt(strArr[1]);
            this.item = parseInt;
            int parseInt2 = Integer.parseInt(strArr[2]);
            this.hero = parseInt2;
            int parseInt3 = Integer.parseInt(strArr[3]);
            this.index = parseInt3;
            int parseInt4 = Integer.parseInt(strArr[4]);
            this.files = parseInt4;
            int parseInt5 = Integer.parseInt(strArr[5]);
            this.rank = parseInt5;
            if (parseInt <= 0 || parseInt2 <= 0 || parseInt3 < 1 || parseInt3 > parseInt4 || parseInt4 > 31 || parseInt5 < 1 || parseInt5 > 4) {
                throw new IllegalArgumentException("invalid original memory definition");
            }
        }
    }

    static int mask(byte[] bArr, int i) {
        byte[] documentValue = BsonLite.documentValue(bArr, "ldd");
        if (documentValue == null && BsonLite.keys(bArr).contains("ldd")) {
            throw new IllegalArgumentException("invalid draw state");
        }
        byte[] documentValue2 = BsonLite.documentValue(documentValue, "hfp");
        if (documentValue2 == null && BsonLite.keys(documentValue).contains("hfp")) {
            throw new IllegalArgumentException("invalid memory state");
        }
        Integer intValue = BsonLite.intValue(documentValue2, Integer.toString(i));
        if (intValue == null && BsonLite.keys(documentValue2).contains(Integer.toString(i))) {
            throw new IllegalArgumentException("invalid saved memory mask");
        }
        if (intValue != null && intValue.intValue() < 0) {
            throw new IllegalArgumentException("negative saved memory mask");
        }
        if (intValue == null) {
            return 0;
        }
        return intValue.intValue();
    }

    private static boolean currentCompletion(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        String str = progress.eventDays.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        String[] split = str.split(":", -1);
        if (split.length != 2) {
            return false;
        }
        try {
            byte[] doc = LocalResourceEngine.doc(bArr, "weeknum");
            int parseInt = Integer.parseInt(split[1]);
            Integer intValue = BsonLite.intValue(doc, "w");
            Integer intValue2 = BsonLite.intValue(doc, "d");
            if (intValue == null || intValue2 == null || Integer.parseInt(split[0]) != intValue.intValue() || parseInt < 0) {
                return false;
            }
            if (parseInt > intValue2.intValue()) {
                return false;
            }
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        HashSet hashSet;
        Iterator<Integer> it;
        LocalEventCatalog localEventCatalog2 = localEventCatalog;
        byte[] doc = LocalResourceEngine.doc(result.profile, "q7StoryMemory");
        HashSet hashSet2 = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
        Iterator<Integer> it2 = progress.completedEvents.iterator();
        byte[] bArr = doc;
        while (it2.hasNext()) {
            int intValue = it2.next().intValue();
            List<Integer> list = localEventCatalog2.memoryRewards.get(Integer.valueOf(intValue));
            if (list != null && !hashSet2.contains(Integer.valueOf(intValue))) {
                if (currentCompletion(result.profile, progress, intValue)) {
                    String num = Integer.toString(intValue);
                    if (BsonLite.keys(bArr).contains(num)) {
                        hashSet = hashSet2;
                        it = it2;
                    } else {
                        LocalEventCatalog.Event event = localEventCatalog2.get(intValue);
                        if (event == null || !event.release) {
                            hashSet = hashSet2;
                            it = it2;
                        } else if (event.repeatable) {
                            hashSet = hashSet2;
                            it = it2;
                        } else {
                            LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
                            try {
                                Iterator<Integer> it3 = list.iterator();
                                while (it3.hasNext()) {
                                    Piece piece = localEventCatalog2.memoryPieces.get(Integer.valueOf(it3.next().intValue()));
                                    if (piece == null) {
                                        throw new IllegalArgumentException("missing memory reward definition");
                                    }
                                    int mask = mask(result2.profile, piece.hero);
                                    int i = 1 << (piece.index - 1);
                                    Iterator<Integer> it4 = it3;
                                    hashSet = hashSet2;
                                    it = it2;
                                    int i2 = (int) ((1 << piece.files) - 1);
                                    if (((~i2) & mask) != 0) {
                                        throw new IllegalArgumentException("saved mask exceeds original piece count");
                                    }
                                    try {
                                        if (LocalResourceEngine.ownsHero(result2.profile, piece.hero)) {
                                            localEventCatalog2 = localEventCatalog;
                                        } else if ((mask & i) == 0) {
                                            byte[] doc2 = LocalResourceEngine.doc(result2.profile, "ldd");
                                            int i3 = mask | i;
                                            result2.profile = BsonLite.withProfileDocument(result2.profile, "ldd", BsonLite.withProfileDocument(doc2, "hfp", BsonLite.withProfileInt(LocalResourceEngine.doc(doc2, "hfp"), Integer.toString(piece.hero), i3)));
                                            result2.itemRewards.add(Arrays.asList(Integer.valueOf(piece.item), 1));
                                            if (i3 == i2) {
                                                LocalResourceEngine.addMissingHero(result2, piece.hero, piece.rank);
                                            }
                                            localEventCatalog2 = localEventCatalog;
                                            it3 = it4;
                                            hashSet2 = hashSet;
                                            it2 = it;
                                        }
                                        it3 = it4;
                                        hashSet2 = hashSet;
                                        it2 = it;
                                    } catch (IllegalArgumentException e) {
                                        result.add("showMessageStr", BsonLite.document("m", "记忆片段数据异常，未修改奖励：" + intValue));
                                        localEventCatalog2 = localEventCatalog;
                                        hashSet2 = hashSet;
                                        it2 = it;
                                    }
                                }
                                HashSet hashSet3 = hashSet2;
                                Iterator<Integer> it5 = it2;
                                bArr = BsonLite.withProfileInt(bArr, num, progress.eventCompletions.getOrDefault(Integer.valueOf(intValue), 1).intValue());
                                result2.profile = BsonLite.withProfileDocument(result2.profile, "q7StoryMemory", bArr);
                                if (!result2.itemRewards.isEmpty()) {
                                    result2.profile = BsonLite.withProfileDocument(result2.profile, "q7StoryPending", BsonLite.withProfileDocument(LocalResourceEngine.doc(result2.profile, "q7StoryPending"), "memoryReward:" + intValue, BsonLite.document("r", result2.reward())));
                                    result2.add("syncProgInfo", BsonLite.document("prog", LocalResourceEngine.doc(LocalResourceEngine.doc(result2.profile, "ldd"), "hfp")));
                                    if (!result2.heroRewards.isEmpty()) {
                                        result2.add("syncHeroMgrData", BsonLite.document("d", LocalResourceEngine.doc(result2.profile, "heromgr")));
                                    }
                                }
                                result.profile = result2.profile;
                                result.replies.addAll(result2.replies);
                                localEventCatalog2 = localEventCatalog;
                                hashSet2 = hashSet3;
                                it2 = it5;
                            } catch (IllegalArgumentException e2) {
                                hashSet = hashSet2;
                                it = it2;
                            }
                        }
                    }
                } else {
                    hashSet = hashSet2;
                    it = it2;
                }
            } else {
                hashSet = hashSet2;
                it = it2;
            }
            localEventCatalog2 = localEventCatalog;
            hashSet2 = hashSet;
            it2 = it;
        }
    }
}
