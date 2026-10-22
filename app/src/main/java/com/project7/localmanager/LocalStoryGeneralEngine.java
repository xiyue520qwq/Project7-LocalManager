package com.project7.localmanager;

import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalStoryGeneralEngine {
    static final String KEY = "q7StoryGeneral";
    static final String METHOD = "syncStoryGeneralValue";

    LocalStoryGeneralEngine() {
    }

    static int value(byte[] bArr) {
        byte[] documentValue = BsonLite.documentValue(bArr, "std");
        if (documentValue == null) {
            throw new IllegalArgumentException("missing story state");
        }
        Integer intValue = BsonLite.intValue(documentValue, "gr");
        if (intValue == null && BsonLite.keys(documentValue).contains("gr")) {
            throw new IllegalArgumentException("invalid general value");
        }
        if (intValue == null) {
            return 0;
        }
        return intValue.intValue();
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        LocalEventCatalog localEventCatalog2 = localEventCatalog;
        if (progress == null || !"31-4".equals(BsonLite.stringValue(LocalResourceEngine.doc(result.profile, "std"), "rt"))) {
            return;
        }
        for (String str : Arrays.asList(KEY, "q7StoryPending")) {
            if (BsonLite.keys(result.profile).contains(str) && BsonLite.documentValue(result.profile, str) == null) {
                return;
            }
        }
        byte[] doc = LocalResourceEngine.doc(result.profile, KEY);
        HashSet hashSet = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
        try {
            int value = value(result.profile);
            if (BsonLite.keys(doc).isEmpty()) {
                ArrayList arrayList = new ArrayList();
                Iterator<Integer> it = progress.completedEvents.iterator();
                while (it.hasNext()) {
                    int intValue = it.next().intValue();
                    if (localEventCatalog2.generalRewards.containsKey(Integer.valueOf(intValue))) {
                        arrayList.add(Integer.valueOf(intValue));
                    }
                }
                result.profile = BsonLite.withProfileDocument(result.profile, KEY, BsonLite.document("version", 1, "baseline", arrayList));
                return;
            }
            Integer num = 1;
            if (num.equals(BsonLite.intValue(doc, "version")) && BsonLite.documentValue(doc, "baseline") != null) {
                hashSet.addAll(BsonLite.intArrayValues(doc, "baseline"));
                int i = value;
                for (Map.Entry<Integer, Integer> entry : localEventCatalog2.generalRewards.entrySet()) {
                    int intValue2 = entry.getKey().intValue();
                    String str2 = progress.weekIndex + ":" + intValue2;
                    LocalEventCatalog.Event event = localEventCatalog2.get(intValue2);
                    if (!BsonLite.keys(doc).contains(str2) && !hashSet.contains(Integer.valueOf(intValue2)) && event != null && event.release && !event.repeatable && progress.eventCompletions.getOrDefault(Integer.valueOf(intValue2), 0).intValue() == 1 && LocalStoryItemRewardEngine.completedDay(result.profile, progress, intValue2) >= 0) {
                        i = Math.addExact(i, entry.getValue().intValue());
                        doc = BsonLite.withProfileInt(doc, str2, entry.getValue().intValue());
                        localEventCatalog2 = localEventCatalog;
                    }
                    localEventCatalog2 = localEventCatalog;
                }
                if (i == value) {
                    return;
                }
                result.profile = BsonLite.withProfileDocument(result.profile, KEY, doc);
                result.profile = BsonLite.withProfileDocument(result.profile, "std", BsonLite.withProfileInt(LocalResourceEngine.doc(result.profile, "std"), "gr", i));
                result.add(METHOD, BsonLite.document("v", Integer.valueOf(i)));
            }
        } catch (ArithmeticException e) {
        } catch (IllegalArgumentException e2) {
        }
    }
}
