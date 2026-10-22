package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalStoryTreasureRewardEngine {
    LocalStoryTreasureRewardEngine() {
    }

    static String unlinked(byte[] bArr, int i, int i2) {
        HashSet hashSet = new HashSet();
        Iterator it = Arrays.asList("hrs", "bhrs").iterator();
        while (it.hasNext()) {
            Iterator<byte[]> it2 = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "heromgr"), (String) it.next())).iterator();
            while (it2.hasNext()) {
                Iterator<byte[]> it3 = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(LocalResourceEngine.doc(it2.next(), "1"), "ti"), "items")).iterator();
                while (it3.hasNext()) {
                    hashSet.add(BsonLite.uuidValue(it3.next(), "u"));
                }
            }
        }
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "inv"), "items"))) {
            String uuidValue = BsonLite.uuidValue(bArr2, "u");
            if (uuidValue != null && !hashSet.contains(uuidValue) && LocalResourceEngine.value(bArr2, "i") == i && LocalResourceEngine.value(LocalResourceEngine.doc(bArr2, "tr"), "cl") == i2 && LocalResourceEngine.value(bArr2, "w") == 1) {
                return uuidValue;
            }
        }
        return null;
    }

    static boolean canComplete(byte[] bArr, LocalEventCatalog localEventCatalog, int i) {
        int[] iArr = localEventCatalog.storyTreasures.get(Integer.valueOf(i));
        return iArr == null || iArr[3] >= 0 || unlinked(bArr, iArr[1], iArr[2]) != null;
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalResourceCatalog localResourceCatalog, LocalTutorialStore.Progress progress) {
        int i;
        LocalEventCatalog localEventCatalog2 = localEventCatalog;
        if (progress == null) {
            return;
        }
        for (String str : Arrays.asList("q7StoryTreasures", "q7StoryPending")) {
            if (BsonLite.keys(result.profile).contains(str) && BsonLite.documentValue(result.profile, str) == null) {
                return;
            }
        }
        byte[] doc = LocalResourceEngine.doc(result.profile, "q7StoryTreasures");
        HashSet hashSet = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
        for (Map.Entry<Integer, int[]> entry : localEventCatalog2.storyTreasures.entrySet()) {
            int intValue = entry.getKey().intValue();
            String str2 = progress.weekIndex + ":" + intValue;
            int[] value = entry.getValue();
            if (!BsonLite.keys(doc).contains(str2) && !hashSet.contains(Integer.valueOf(intValue)) && LocalStoryItemRewardEngine.completedDay(result.profile, progress, intValue) >= 0 && Collections.disjoint(progress.completedEvents, localEventCatalog2.storyTreasureExclusions.getOrDefault(Integer.valueOf(intValue), Collections.emptySet()))) {
                LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
                if (value[3] == -1) {
                    String unlinked = unlinked(result2.profile, value[1], value[2]);
                    if (unlinked != null) {
                        result2.profile = LocalEquipmentEngine.removeOwned(result2.profile, unlinked);
                        result2.add("deleteItems", BsonLite.document("i", Collections.singletonList(new BsonLite.UuidValue(unlinked))));
                        i = 1;
                    }
                } else if (value[3] == 1) {
                    LocalResourceEngine.validate(localResourceCatalog, "treasure", value[1], 1, value[2]);
                    i = 1;
                    LocalResourceEngine.grant(result2, localResourceCatalog, "treasure", value[1], 1, value[2]);
                    byte[] doc2 = LocalResourceEngine.doc(result2.profile, "q7StoryPending");
                    result2.profile = BsonLite.withProfileDocument(result2.profile, "q7StoryPending", BsonLite.withProfileDocument(doc2, "itemReward:treasure-" + str2, BsonLite.document("r", result2.reward())));
                } else {
                    throw new IllegalArgumentException("unreviewed story treasure quantity");
                }
                doc = BsonLite.withProfileInt(doc, str2, progress.eventCompletions.getOrDefault(Integer.valueOf(intValue), Integer.valueOf(i)).intValue());
                result.profile = BsonLite.withProfileDocument(result2.profile, "q7StoryTreasures", doc);
                result.replies.addAll(result2.replies);
                localEventCatalog2 = localEventCatalog;
            }
            localEventCatalog2 = localEventCatalog;
        }
    }
}
