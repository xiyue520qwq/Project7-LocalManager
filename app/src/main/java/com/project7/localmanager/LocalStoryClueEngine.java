package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalStoryClueEngine {
    static final String[] METHODS = {"readClue", "readClueWithDetail", "readWuluClue", "readWuluClueWithDetail", "readJiaohuiClue", "readJiaohuiClueWithDetail", "readAlanClue", "readAlanClueWithDetail", "readDaerweilaClue", "readdaerweilaClueWithDetail"};
    static final String[][] FIELDS = {new String[]{"g", "cl", "cr", "dr", "fc"}, new String[]{"w", "wlc", "wlr", "wldr", ""}, new String[]{"j", "jhc", "jhcr", "jhdr", ""}, new String[]{"a", "alc", "alr", "aldr", ""}, new String[]{"d", "dwc", "dwcr", "dwdr", "dwfc"}};

    LocalStoryClueEngine() {
    }

    static boolean handles(String str) {
        return Arrays.asList(METHODS).contains(str);
    }

    static byte[] story(byte[] bArr) {
        return LocalResourceEngine.doc(bArr, "std");
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        byte[] story = story(result.profile);
        String[][] strArr = FIELDS;
        int length = strArr.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            String[] strArr2 = strArr[i2];
            LinkedHashSet linkedHashSet = new LinkedHashSet(BsonLite.intArrayValues(story, strArr2[1]));
            LinkedHashSet linkedHashSet2 = new LinkedHashSet(BsonLite.intArrayValues(story, strArr2[4]));
            Iterator<Integer> it = progress.completedEvents.iterator();
            int i3 = i;
            while (it.hasNext()) {
                List<Set<Integer>> list = localEventCatalog.clueEffects.get(Integer.valueOf(it.next().intValue()));
                if (list != null) {
                    Iterator<Integer> it2 = list.get(i).iterator();
                    while (it2.hasNext()) {
                        int intValue = it2.next().intValue();
                        String[][] strArr3 = strArr;
                        if (strArr2[i].equals(localEventCatalog.clueFamilies.get(Integer.valueOf(intValue)))) {
                            i3 = (linkedHashSet.add(Integer.valueOf(intValue)) ? 1 : 0) | i3;
                        }
                        strArr = strArr3;
                        i = 0;
                    }
                    String[][] strArr4 = strArr;
                    Iterator<Integer> it3 = list.get(1).iterator();
                    while (it3.hasNext()) {
                        int intValue2 = it3.next().intValue();
                        if (strArr2[0].equals(localEventCatalog.clueFamilies.get(Integer.valueOf(intValue2)))) {
                            i3 |= linkedHashSet2.add(Integer.valueOf(intValue2)) ? 1 : 0;
                        }
                    }
                    strArr = strArr4;
                    i = 0;
                }
            }
            String[][] strArr5 = strArr;
            if (i3 == 0) {
                i = 0;
            } else {
                byte[] withProfileIntArray = BsonLite.withProfileIntArray(story, strArr2[1], linkedHashSet);
                if (!strArr2[4].isEmpty()) {
                    withProfileIntArray = BsonLite.withProfileIntArray(withProfileIntArray, strArr2[4], linkedHashSet2);
                }
                i = 0;
                story = BsonLite.withProfileBool(withProfileIntArray, strArr2[2], false);
                result.profile = BsonLite.withProfileDocument(result.profile, "std", story);
                sync(result, strArr2[0]);
            }
            i2++;
            strArr = strArr5;
        }
    }

    static LocalResourceEngine.Result read(byte[] bArr, LocalEventCatalog localEventCatalog, String str, byte[] bArr2) {
        String str2;
        byte[] withProfileBool;
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        if (str.contains("Wulu")) {
            str2 = "w";
        } else if (str.contains("Jiaohui")) {
            str2 = "j";
        } else {
            str2 = str.contains("Alan") ? "a" : str.toLowerCase(Locale.ROOT).contains("daerweila") ? "d" : "g";
        }
        for (String[] strArr : FIELDS) {
            if (str2.equals(strArr[0])) {
                byte[] story = story(bArr);
                if (str.endsWith("WithDetail")) {
                    int value = LocalResourceEngine.value(bArr2, "c");
                    if (!str2.equals(localEventCatalog.clueFamilies.get(Integer.valueOf(value))) || (!BsonLite.intArrayValues(story, strArr[1]).contains(Integer.valueOf(value)) && (strArr[4].isEmpty() || !BsonLite.intArrayValues(story, strArr[4]).contains(Integer.valueOf(value))))) {
                        return result;
                    }
                    Map<Integer, Boolean> readFlags = readFlags(story, strArr[3]);
                    readFlags.put(Integer.valueOf(value), true);
                    withProfileBool = BsonLite.withProfileArray(story, strArr[3], pairs(readFlags));
                } else {
                    withProfileBool = BsonLite.withProfileBool(story, strArr[2], true);
                }
                result.profile = BsonLite.withProfileDocument(bArr, "std", withProfileBool);
                sync(result, str2);
            }
        }
        return result;
    }

    static void sync(LocalResourceEngine.Result result, String str) {
        byte[] story = story(result.profile);
        for (String[] strArr : FIELDS) {
            if (str.equals(strArr[0])) {
                List<List<Object>> pairs = pairs(readFlags(story, strArr[3]));
                List<Integer> intArrayValues = BsonLite.intArrayValues(story, strArr[1]);
                boolean equals = Boolean.TRUE.equals(BsonLite.boolValue(story, strArr[2]));
                if ("g".equals(str)) {
                    result.add("syncClueInfo", BsonLite.document("cl", intArrayValues, "cr", Boolean.valueOf(equals), "dr", pairs, "fc", BsonLite.intArrayValues(story, strArr[4]), "ie", false));
                } else if ("w".equals(str)) {
                    result.add("syncWuluLineData", BsonLite.document("wlc", intArrayValues, "wlr", Boolean.valueOf(equals), "wldr", pairs, "wsg", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(story, "wsg")))));
                } else if ("j".equals(str)) {
                    result.add("syncJiaohuiLineData", BsonLite.document("jhc", intArrayValues, "jhcr", Boolean.valueOf(equals), "jhdr", pairs));
                } else if ("a".equals(str)) {
                    result.add("syncAlanLineData", BsonLite.document("alc", intArrayValues, "alr", Boolean.valueOf(equals), "aldr", pairs, "alsg", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(story, "alsg"))), "alxl", Integer.valueOf(LocalResourceEngine.value(story, "alxl")), "u", true));
                } else {
                    result.add("syncDaerweilaClueData", BsonLite.document("dwc", intArrayValues, "dwcr", Boolean.valueOf(equals), "dwdr", pairs, "dwfc", BsonLite.intArrayValues(story, strArr[4])));
                }
            }
        }
    }

    private static Map<Integer, Boolean> readFlags(byte[] bArr, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        byte[] doc = LocalResourceEngine.doc(bArr, str);
        for (String str2 : BsonLite.keys(doc)) {
            byte[] documentValue = BsonLite.documentValue(doc, str2);
            if (documentValue != null && BsonLite.intValue(documentValue, "0") != null) {
                linkedHashMap.put(BsonLite.intValue(documentValue, "0"), Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(documentValue, "1"))));
            } else {
                try {
                    linkedHashMap.put(Integer.valueOf(Integer.parseInt(str2)), Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(doc, str2))));
                } catch (NumberFormatException e) {
                }
            }
        }
        return linkedHashMap;
    }

    private static List<List<Object>> pairs(Map<Integer, Boolean> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Integer, Boolean> entry : map.entrySet()) {
            arrayList.add(Arrays.asList(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    static byte[] reset(byte[] bArr) {
        byte[] story = story(bArr);
        for (String[] strArr : FIELDS) {
            story = BsonLite.withProfileArray(BsonLite.withProfileBool(BsonLite.withProfileIntArray(story, strArr[1], Collections.emptyList()), strArr[2], false), strArr[3], Collections.emptyList());
            if (!strArr[4].isEmpty()) {
                story = BsonLite.withProfileIntArray(story, strArr[4], Collections.emptyList());
            }
        }
        return BsonLite.withProfileDocument(bArr, "std", story);
    }
}
