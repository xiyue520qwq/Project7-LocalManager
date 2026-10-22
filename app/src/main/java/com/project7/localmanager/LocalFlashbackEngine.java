package com.project7.localmanager;

import com.project7.localmanager.LocalPatrolEngine;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

/* loaded from: classes.dex */
final class LocalFlashbackEngine {
    static final String KEY = "q7Flashback";
    static final String NEXT = "requestFlashbackIncDay";
    static final String SYNC = "syncFlashbackData";

    LocalFlashbackEngine() {
    }

    /* renamed from: d */
    static byte[] m20d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m21v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static int used(byte[] bArr, LocalTutorialStore.Progress progress) {
        Integer intValue = BsonLite.intValue(bArr, "patrolUsed");
        if (BsonLite.keys(bArr).contains("patrolUsed") && (intValue == null || intValue.intValue() < 0 || intValue.intValue() > 3)) {
            return -1;
        }
        long m21v = (progress.patrolCount - m21v(bArr, "patrolBase")) + (intValue == null ? 0 : intValue.intValue());
        if (m21v < 0 || m21v > 3) {
            return -1;
        }
        return (int) m21v;
    }

    static boolean route(byte[] bArr) {
        String stringValue = BsonLite.stringValue(m20d(bArr, "std"), "rt");
        return stringValue != null && (stringValue.equals("35") || stringValue.startsWith("35-"));
    }

    static boolean active(byte[] bArr, LocalTutorialStore.Progress progress) {
        if (progress == null || !route(bArr) || m21v(m20d(bArr, "weeknum"), "d") != 6) {
            return false;
        }
        if (BsonLite.keys(bArr).contains("q7StoryPending") && BsonLite.documentValue(bArr, "q7StoryPending") == null) {
            return false;
        }
        byte[] m20d = m20d(bArr, "std");
        byte[] m20d2 = m20d(bArr, KEY);
        int m21v = m21v(m20d, "fd");
        return Boolean.TRUE.equals(BsonLite.boolValue(m20d, "ff")) && m21v >= 1 && m21v <= 7 && m21v(m20d, "gr") == m21v && BsonLite.intValue(m20d, "fa") != null && m21v(m20d, "fa") >= 0 && m21v(m20d, "fa") <= 3 && BsonLite.intValue(m20d2, "patrolBase") != null && m21v(m20d2, "patrolBase") >= 0 && used(m20d2, progress) >= 0 && m21v(m20d2, "week") == progress.weekIndex && m21v(m20d(bArr, "weeknum"), "w") == progress.weekIndex && Objects.equals(BsonLite.stringValue(m20d2, "cycle"), progress.weekCommit) && m21v(m20d2, "version") == 1 && BsonLite.keys(m20d(bArr, "q7WeekResult")).isEmpty();
    }

    static byte[] snapshot(byte[] bArr) {
        byte[] m20d = m20d(bArr, "std");
        return BsonLite.document("ff", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(m20d, "ff"))), "fd", Integer.valueOf(m21v(m20d, "fd")), "fa", Integer.valueOf(m21v(m20d, "fa")));
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        int used;
        if (progress == null || !route(result.profile) || m21v(m20d(result.profile, "weeknum"), "d") != 6 || !BsonLite.keys(m20d(result.profile, "q7WeekResult")).isEmpty()) {
            return;
        }
        for (String str : Arrays.asList(KEY, "q7StoryPending")) {
            if (BsonLite.keys(result.profile).contains(str) && BsonLite.documentValue(result.profile, str) == null) {
                return;
            }
        }
        byte[] m20d = m20d(result.profile, KEY);
        byte[] m20d2 = m20d(result.profile, "std");
        if (BsonLite.keys(m20d).isEmpty()) {
            int i = localEventCatalog.flashbackEntry;
            if (i <= 0 || LocalStoryItemRewardEngine.completedDay(result.profile, progress, i) != 6 || progress.eventCompletions.getOrDefault(Integer.valueOf(i), 0).intValue() != 1 || BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline").contains(Integer.valueOf(i))) {
                return;
            }
            if (Boolean.TRUE.equals(BsonLite.boolValue(m20d2, "ff"))) {
                int m21v = m21v(m20d2, "fd");
                Integer intValue = BsonLite.intValue(m20d2, "fa");
                int[] iArr = localEventCatalog.flashbackRounds.get(Integer.valueOf(m21v));
                if (iArr != null && m21v >= 1 && m21v <= 7 && m21v(m20d2, "gr") == m21v && intValue != null && intValue.intValue() >= 0 && intValue.intValue() <= 3 && progress.patrolCount >= 0) {
                    if (progress.patrolDay.isEmpty() || progress.patrolDay.equals(LocalPatrolEngine.dayKey(result.profile))) {
                        if (m21v > 1 && LocalStoryItemRewardEngine.completedDay(result.profile, progress, iArr[1]) != 6) {
                            return;
                        }
                        LocalPatrolEngine.alignDay(result.profile, progress);
                        result.profile = BsonLite.withProfileDocument(result.profile, KEY, BsonLite.document("version", 1, "week", Integer.valueOf(progress.weekIndex), "cycle", progress.weekCommit, "patrolBase", Integer.valueOf(progress.patrolCount), "patrolUsed", intValue));
                        result.add(SYNC, BsonLite.document("d", snapshot(result.profile)));
                        return;
                    }
                    return;
                }
                return;
            }
            LocalPatrolEngine.alignDay(result.profile, progress);
            byte[] document = BsonLite.document("version", 1, "week", Integer.valueOf(progress.weekIndex), "cycle", progress.weekCommit, "patrolBase", Integer.valueOf(progress.patrolCount));
            byte[] withProfileBool = BsonLite.withProfileBool(m20d2, "ff", true);
            Iterator it = Arrays.asList("fd", "gr").iterator();
            while (it.hasNext()) {
                withProfileBool = BsonLite.withProfileInt(withProfileBool, (String) it.next(), 1);
            }
            result.profile = BsonLite.withProfileDocument(BsonLite.withProfileDocument(result.profile, KEY, document), "std", BsonLite.withProfileInt(withProfileBool, "fa", 0));
            result.add(SYNC, BsonLite.document("d", snapshot(result.profile)));
            result.add("syncStoryGeneralValue", BsonLite.document("v", 1));
            result.add("enterFlashback", BsonLite.EMPTY_DOCUMENT);
            return;
        }
        if (active(result.profile, progress) && (used = used(m20d, progress)) >= 0 && used <= localEventCatalog.flashbackLimit && used != m21v(m20d2, "fa")) {
            result.profile = BsonLite.withProfileDocument(result.profile, "std", BsonLite.withProfileInt(m20d2, "fa", used));
            result.add(SYNC, BsonLite.document("d", snapshot(result.profile)));
        }
    }

    static LocalResourceEngine.Result next(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        if (active(bArr, progress)) {
            int m21v = m21v(m20d(bArr, "std"), "fd") + 1;
            int[] iArr = localEventCatalog.flashbackRounds.get(Integer.valueOf(m21v));
            if (iArr != null && progress.completedEvents.contains(Integer.valueOf(iArr[1])) && LocalStoryItemRewardEngine.completedDay(bArr, progress, iArr[1]) == 6 && !progress.patrolRewardPending && progress.processingEvents.isEmpty()) {
                result.profile = BsonLite.withProfileDocument(bArr, "std", BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(m20d(bArr, "std"), "fd", m21v), "gr", m21v), "fa", 0));
                result.profile = BsonLite.withProfileDocument(result.profile, KEY, BsonLite.withProfileInt(BsonLite.withProfileInt(m20d(bArr, KEY), "patrolBase", progress.patrolCount), "patrolUsed", 0));
                result.add(SYNC, BsonLite.document("d", snapshot(result.profile)));
                result.add("syncStoryGeneralValue", BsonLite.document("v", Integer.valueOf(m21v)));
            }
        }
        result.add("replyFlashbackIncDay", BsonLite.document("d", Integer.valueOf(m21v(m20d(result.profile, "std"), "fd")), "v", Integer.valueOf(m21v(m20d(result.profile, "std"), "fa"))));
        result.profile = LocalStoryProgressDelivery.capture(result);
        return result;
    }

    static LocalPatrolEngine.Result patrol(final LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, LocalEventEngine localEventEngine, byte[] bArr, int i, List<Integer> list) {
        int used = used(m20d(bArr, KEY), progress);
        if (!list.isEmpty() || progress.patrolRewardPending || used < 0 || used >= localEventCatalog.flashbackLimit) {
            return new LocalPatrolEngine.Result(false, Collections.emptyList(), "flashback patrol unavailable");
        }
        localEventEngine.refreshProfile(bArr);
        List<Integer> patrolEvents = localEventEngine.patrolEvents(i, Collections.emptyList());
        patrolEvents.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalFlashbackEngine$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return LocalFlashbackEngine.lambda$patrol$0(LocalEventCatalog.this, (Integer) obj);
            }
        });
        if (patrolEvents.isEmpty()) {
            return new LocalPatrolEngine.Result(false, patrolEvents, "no flashback story available");
        }
        progress.availableEvents.removeAll(progress.patrolEvents);
        progress.patrolEvents.clear();
        progress.patrolEvents.addAll(patrolEvents);
        progress.availableEvents.addAll(patrolEvents);
        progress.patrolHeroes.clear();
        progress.patrolFavor = 0;
        progress.patrolArea = i;
        progress.patrolRewardPending = true;
        progress.patrolCount++;
        return new LocalPatrolEngine.Result(true, patrolEvents, "flashback");
    }

    static /* synthetic */ boolean lambda$patrol$0(LocalEventCatalog localEventCatalog, Integer num) {
        return localEventCatalog.trigger(num.intValue()) == null || !localEventCatalog.trigger(num.intValue()).predicates.containsKey(54);
    }
}
