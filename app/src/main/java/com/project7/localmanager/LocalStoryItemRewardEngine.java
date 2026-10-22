package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalResourceCatalog;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class LocalStoryItemRewardEngine {
    LocalStoryItemRewardEngine() {
    }

    static final class Reward {
        final int event;
        final LocalResourceCatalog.Item item;
        final int parent;
        final int quantity;
        final int reward;

        Reward(String[] strArr) {
            int parseInt = Integer.parseInt(strArr[1]);
            this.event = parseInt;
            int parseInt2 = Integer.parseInt(strArr[2]);
            this.reward = parseInt2;
            int parseInt3 = Integer.parseInt(strArr[4]);
            this.quantity = parseInt3;
            int parseInt4 = Integer.parseInt(strArr[5]);
            this.parent = parseInt4;
            LocalResourceCatalog.Item item = new LocalResourceCatalog.Item(new String[]{"I", strArr[3], "", strArr[6], strArr[7], "0"});
            this.item = item;
            if (parseInt <= 0 || parseInt2 <= 0 || parseInt4 <= 0 || item.f15id <= 0 || parseInt3 < 1 || item.wrap < 1 || item.type != 2) {
                throw new IllegalArgumentException("invalid physical story reward definition");
            }
        }
    }

    static int completedDay(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        String str = progress.eventDays.get(Integer.valueOf(i));
        if (str == null || !progress.completedEvents.contains(Integer.valueOf(i))) {
            return -1;
        }
        String[] split = str.split(":", -1);
        byte[] doc = LocalResourceEngine.doc(bArr, "weeknum");
        Integer intValue = BsonLite.intValue(doc, "w");
        Integer intValue2 = BsonLite.intValue(doc, "d");
        try {
            int parseInt = split.length == 2 ? Integer.parseInt(split[1]) : -1;
            if (intValue == null || intValue2 == null || intValue.intValue() != progress.weekIndex || split.length != 2 || Integer.parseInt(split[0]) != intValue.intValue() || parseInt < 0) {
                return -1;
            }
            if (parseInt > intValue2.intValue()) {
                return -1;
            }
            return parseInt;
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        String str;
        String str2;
        byte[] bArr;
        byte[] documentValue;
        String str3;
        LocalEventCatalog localEventCatalog2 = localEventCatalog;
        String str4 = "items";
        if (progress != null) {
            if (!BsonLite.keys(result.profile).contains("q7StoryItems") || BsonLite.documentValue(result.profile, "q7StoryItems") != null) {
                String str5 = "q7StoryPending";
                if (BsonLite.keys(result.profile).contains("q7StoryPending") && BsonLite.documentValue(result.profile, "q7StoryPending") == null) {
                    return;
                }
                byte[] doc = LocalResourceEngine.doc(result.profile, "q7StoryItems");
                byte[] doc2 = LocalResourceEngine.doc(result.profile, "q7StoryPending");
                if (BsonLite.keys(doc2).contains("updateItems") && BsonLite.documentValue(LocalResourceEngine.doc(doc2, "updateItems"), "i") == null) {
                    return;
                }
                HashSet hashSet = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
                Iterator<Reward> it = localEventCatalog2.itemRewards.values().iterator();
                byte[] bArr2 = doc;
                while (it.hasNext()) {
                    Reward next = it.next();
                    String num = Integer.toString(next.event);
                    LocalEventCatalog.Event event = localEventCatalog2.get(next.event);
                    int completedDay = completedDay(result.profile, progress, next.event);
                    Iterator<Reward> it2 = it;
                    int completedDay2 = completedDay(result.profile, progress, next.parent);
                    if (BsonLite.keys(bArr2).contains(num)) {
                        str = str4;
                        str2 = str5;
                        bArr = doc2;
                    } else {
                        List<String> keys = BsonLite.keys(doc2);
                        bArr = doc2;
                        StringBuilder sb = new StringBuilder();
                        String str6 = str5;
                        sb.append("itemReward:");
                        sb.append(num);
                        if (keys.contains(sb.toString()) || event == null || !event.release || event.repeatable) {
                            str = str4;
                            str2 = str6;
                        } else if (hashSet.contains(Integer.valueOf(next.event)) || hashSet.contains(Integer.valueOf(next.parent))) {
                            str = str4;
                            str2 = str6;
                        } else if (!Collections.disjoint(progress.completedEvents, localEventCatalog2.mutex(next.event)) || completedDay < 0 || completedDay2 < 0) {
                            str = str4;
                            str2 = str6;
                        } else if (completedDay2 > completedDay) {
                            str = str4;
                            str2 = str6;
                        } else {
                            LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
                            try {
                                documentValue = BsonLite.documentValue(result2.profile, "inv");
                            } catch (ArithmeticException | IllegalArgumentException e) {
                                str = str4;
                            }
                            if (documentValue == null || BsonLite.documentValue(documentValue, str4) == null) {
                                str = str4;
                                str2 = str6;
                                try {
                                    throw new IllegalArgumentException("invalid saved inventory");
                                } catch (ArithmeticException e2) {
                                } catch (IllegalArgumentException e3) {
                                }
                            } else {
                                int i = 0;
                                for (byte[] bArr3 : LocalResourceEngine.array(LocalResourceEngine.doc(documentValue, str4))) {
                                    if (LocalResourceEngine.value(bArr3, "i") == next.item.f15id) {
                                        Integer intValue = BsonLite.intValue(bArr3, "w");
                                        if (intValue != null) {
                                            str = str4;
                                            if (intValue.intValue() >= 1) {
                                                try {
                                                    if (intValue.intValue() <= next.item.wrap && BsonLite.uuidValue(bArr3, "u") != null) {
                                                        i = Math.addExact(i, intValue.intValue());
                                                        str4 = str;
                                                    }
                                                } catch (ArithmeticException e4) {
                                                    str2 = str6;
                                                    localEventCatalog2 = localEventCatalog;
                                                    str5 = str2;
                                                    it = it2;
                                                    doc2 = bArr;
                                                    str4 = str;
                                                } catch (IllegalArgumentException e5) {
                                                    str2 = str6;
                                                    localEventCatalog2 = localEventCatalog;
                                                    str5 = str2;
                                                    it = it2;
                                                    doc2 = bArr;
                                                    str4 = str;
                                                }
                                            }
                                        } else {
                                            str = str4;
                                        }
                                        throw new IllegalArgumentException("invalid saved story item");
                                    }
                                }
                                String str7 = str4;
                                if (i < next.quantity) {
                                    LocalResourceEngine.grantItem(result2, next.item, next.quantity - i);
                                }
                                bArr2 = BsonLite.withProfileInt(bArr2, num, progress.eventCompletions.getOrDefault(Integer.valueOf(next.event), 1).intValue());
                                result2.profile = BsonLite.withProfileDocument(result2.profile, "q7StoryItems", bArr2);
                                if (result2.itemRewards.isEmpty()) {
                                    str3 = str6;
                                } else {
                                    str3 = str6;
                                    byte[] doc3 = LocalResourceEngine.doc(result2.profile, str3);
                                    result2.profile = BsonLite.withProfileDocument(result2.profile, str3, BsonLite.withProfileDocument(doc3, "itemReward:" + next.event, BsonLite.document("r", result2.reward())));
                                }
                                result.profile = result2.profile;
                                result.replies.addAll(result2.replies);
                                localEventCatalog2 = localEventCatalog;
                                str5 = str3;
                                it = it2;
                                doc2 = bArr;
                                str4 = str7;
                            }
                        }
                    }
                    localEventCatalog2 = localEventCatalog;
                    str5 = str2;
                    it = it2;
                    doc2 = bArr;
                    str4 = str;
                }
            }
        }
    }
}
