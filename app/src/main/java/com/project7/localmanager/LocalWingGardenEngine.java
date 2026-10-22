package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalWingGardenEngine {
    static final String KEY = "q7WingGarden";
    static final String METHOD = "openYumiYaocaoyuan";

    LocalWingGardenEngine() {
    }

    /* renamed from: d */
    private static byte[] m89d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        apply(result, localEventCatalog, progress);
    }

    static String apply(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5 = "std";
        byte[] snapshot = LocalWingStoryEngine.snapshot(m89d(result.profile, "std"));
        String str6 = "d";
        byte[] envelope = snapshot == null ? null : LocalWingStoryEngine.envelope(result.profile, BsonLite.document("d", snapshot));
        Integer intValue = BsonLite.intValue(m89d(result.profile, "weeknum"), "d");
        if (envelope == null || intValue == null || intValue.intValue() < 0 || intValue.intValue() > 7 || progress == null || !progress.weekCommit.equals(BsonLite.stringValue(envelope, "cycle"))) {
            return "missing-proven-cycle";
        }
        if (!BsonLite.keys(result.profile).contains(KEY) || BsonLite.documentValue(result.profile, KEY) != null) {
            if (BsonLite.keys(result.profile).contains("q7StoryPending") && BsonLite.documentValue(result.profile, "q7StoryPending") == null) {
                return "invalid-state";
            }
            byte[] documentValue = BsonLite.documentValue(result.profile, KEY);
            byte[] m89d = m89d(result.profile, "q7StoryPending");
            if (documentValue != null && !BsonLite.keys(documentValue).isEmpty()) {
                return receipt(result.profile) != null ? "unchanged" : "invalid-receipt";
            }
            List<String> keys = BsonLite.keys(m89d);
            String str7 = METHOD;
            if (keys.contains(METHOD)) {
                return "unproven-opening-outbox";
            }
            String str8 = "syncBaiyuInfos";
            byte[] documentValue2 = BsonLite.documentValue(m89d, "syncBaiyuInfos");
            if (BsonLite.keys(m89d).contains("syncBaiyuInfos") && LocalWingStoryEngine.payload(result.profile, documentValue2) == null) {
                return "invalid-meter-outbox";
            }
            HashSet hashSet = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
            Iterator<Map.Entry<Integer, int[]>> it = localEventCatalog.wingGardens.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Integer, int[]> next = it.next();
                Iterator<Map.Entry<Integer, int[]>> it2 = it;
                int intValue2 = next.getKey().intValue();
                String str9 = str7;
                int completedDay = LocalStoryItemRewardEngine.completedDay(result.profile, progress, intValue2);
                byte[] bArr = documentValue2;
                LocalEventCatalog.Event event = localEventCatalog.get(intValue2);
                String str10 = str6;
                LocalEventCatalog.Trigger trigger = localEventCatalog.trigger(intValue2);
                String str11 = str8;
                String str12 = str5;
                if (next.getValue()[0] != 2) {
                    str7 = str9;
                    str = str12;
                    str2 = str11;
                } else if (intValue2 != 3147 || next.getValue()[1] != 291 || event == null || !event.release || event.repeatable || trigger == null || completedDay < 0) {
                    str7 = str9;
                    str = str12;
                    str2 = str11;
                } else {
                    if (hashSet.contains(Integer.valueOf(intValue2))) {
                        str7 = str9;
                        str3 = str12;
                        str4 = str11;
                    } else if (progress.eventCompletions.getOrDefault(Integer.valueOf(intValue2), 0).intValue() != 1) {
                        str7 = str9;
                        str3 = str12;
                        str4 = str11;
                    } else if (!progress.completedEvents.containsAll(trigger.preAll)) {
                        str7 = str9;
                        str5 = str12;
                        str8 = str11;
                        it = it2;
                        documentValue2 = bArr;
                        str6 = str10;
                    } else if (!progress.eventConditions.getOrDefault("battle", Collections.emptySet()).containsAll(trigger.battles)) {
                        str7 = str9;
                        str5 = str12;
                        str8 = str11;
                        it = it2;
                        documentValue2 = bArr;
                        str6 = str10;
                    } else if (Collections.disjoint(progress.completedEvents, localEventCatalog.mutex(intValue2))) {
                        Iterator<Integer> it3 = trigger.preAll.iterator();
                        boolean z = true;
                        while (it3.hasNext()) {
                            int intValue3 = it3.next().intValue();
                            int completedDay2 = LocalStoryItemRewardEngine.completedDay(result.profile, progress, intValue3);
                            if (hashSet.contains(Integer.valueOf(intValue3)) || completedDay2 < 0 || completedDay2 > completedDay) {
                                z = false;
                            }
                        }
                        int completedDay3 = LocalStoryItemRewardEngine.completedDay(result.profile, progress, 3146);
                        if (z && !hashSet.contains(3146) && completedDay3 >= 0 && completedDay3 <= completedDay) {
                            if (progress.eventCompletions.getOrDefault(3146, 0).intValue() >= 1) {
                                byte[] document = BsonLite.document("version", 1, "cycle", progress.weekCommit, "week", Integer.valueOf(progress.weekIndex), "event", Integer.valueOf(intValue2), "day", Integer.valueOf(completedDay), "count", 1);
                                boolean equals = Boolean.TRUE.equals(BsonLite.boolValue(snapshot, "ycyo"));
                                result.profile = BsonLite.withProfileDocument(result.profile, KEY, document);
                                result.profile = BsonLite.withProfileDocument(result.profile, str12, BsonLite.withProfileBool(m89d(result.profile, str12), "ycyo", true));
                                byte[] snapshot2 = LocalWingStoryEngine.snapshot(m89d(result.profile, str12));
                                boolean z2 = false;
                                int i = 0;
                                while (i < result.replies.size()) {
                                    String str13 = str11;
                                    if (result.replies.get(i).method.equals(str13)) {
                                        result.replies.set(i, new LocalResourceEngine.Reply(str13, BsonLite.document(str10, snapshot2)));
                                        z2 = true;
                                    }
                                    i++;
                                    str11 = str13;
                                }
                                String str14 = str11;
                                if (bArr != null && !z2) {
                                    result.add(str14, BsonLite.document(str10, snapshot2));
                                }
                                if (!equals) {
                                    result.add(str9, BsonLite.document(str10, snapshot2));
                                }
                                return equals ? "already-open" : "opened";
                            }
                            str7 = str9;
                            it = it2;
                            documentValue2 = bArr;
                            str6 = str10;
                            str5 = str12;
                            str8 = str11;
                        } else {
                            str7 = str9;
                            str5 = str12;
                            str8 = str11;
                            it = it2;
                            documentValue2 = bArr;
                            str6 = str10;
                        }
                    } else {
                        str7 = str9;
                        it = it2;
                        documentValue2 = bArr;
                        str6 = str10;
                        str5 = str12;
                        str8 = str11;
                    }
                    str5 = str3;
                    str8 = str4;
                    it = it2;
                    documentValue2 = bArr;
                    str6 = str10;
                }
                str5 = str;
                str8 = str2;
                it = it2;
                documentValue2 = bArr;
                str6 = str10;
            }
            return "unmet-completion";
        }
        return "invalid-state";
    }

    static byte[] receipt(byte[] bArr) {
        byte[] snapshot;
        byte[] documentValue = BsonLite.documentValue(bArr, KEY);
        byte[] m89d = m89d(bArr, "weeknum");
        byte[] m89d2 = m89d(bArr, "q7Wing");
        if (documentValue != null) {
            Integer num = 1;
            if (num.equals(BsonLite.intValue(documentValue, "version"))) {
                Integer num2 = 3147;
                if (!num2.equals(BsonLite.intValue(documentValue, "event"))) {
                    return null;
                }
                Integer num3 = 1;
                if (!num3.equals(BsonLite.intValue(documentValue, "count")) || !Boolean.TRUE.equals(BsonLite.boolValue(m89d(bArr, "std"), "ycyo"))) {
                    return null;
                }
                Integer intValue = BsonLite.intValue(documentValue, "week");
                Integer intValue2 = BsonLite.intValue(documentValue, "day");
                Integer intValue3 = BsonLite.intValue(m89d, "d");
                String stringValue = BsonLite.stringValue(documentValue, "cycle");
                if (intValue == null || intValue2 == null || intValue3 == null || intValue3.intValue() < 0 || intValue3.intValue() > 7 || intValue2.intValue() < 0 || intValue2.intValue() > intValue3.intValue() || !intValue.equals(BsonLite.intValue(m89d, "w")) || stringValue == null || stringValue.isEmpty() || !stringValue.equals(BsonLite.stringValue(m89d2, "cycle")) || (snapshot = LocalWingStoryEngine.snapshot(m89d(bArr, "std"))) == null || LocalWingStoryEngine.envelope(bArr, BsonLite.document("d", snapshot)) == null) {
                    return null;
                }
                return BsonLite.document("version", 1, "cycle", stringValue, "week", intValue, "event", 3147, "day", intValue2, "count", 1);
            }
        }
        return null;
    }

    static byte[] envelope(byte[] bArr, byte[] bArr2) {
        byte[] receipt = receipt(bArr);
        byte[] snapshot = LocalWingStoryEngine.snapshot(m89d(bArr, "std"));
        if (receipt == null || !Arrays.equals(BsonLite.documentValue(bArr2, "d"), snapshot)) {
            return null;
        }
        return receipt;
    }

    static byte[] payload(byte[] bArr, byte[] bArr2) {
        byte[] receipt = receipt(bArr);
        if (receipt == null || !Arrays.equals(receipt, bArr2)) {
            return null;
        }
        return BsonLite.document("d", LocalWingStoryEngine.snapshot(m89d(bArr, "std")));
    }
}
