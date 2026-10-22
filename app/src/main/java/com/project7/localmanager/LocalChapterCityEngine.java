package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalChapterCityEngine {
    LocalChapterCityEngine() {
    }

    static boolean active(byte[] bArr) {
        String stringValue = BsonLite.stringValue(LocalResourceEngine.doc(bArr, "std"), "rt");
        return LocalResourceEngine.value(bArr, "q7ChapterMenu") == 11 || (stringValue != null && (stringValue.equals("12") || stringValue.startsWith("12-")));
    }

    static boolean locked(byte[] bArr, int i) {
        return LocalAlanCityEngine.locked(bArr, i) || LocalAnCityEngine.locked(bArr, i) || (active(bArr) && Boolean.TRUE.equals(BsonLite.boolValue(LocalResourceEngine.doc(bArr, "q7ChapterLocks"), Integer.toString(i))));
    }

    static Integer state(byte[] bArr, int i) {
        if (active(bArr)) {
            return BsonLite.intValue(LocalResourceEngine.doc(bArr, "q7ChapterStates"), Integer.toString(i));
        }
        return null;
    }

    static void refresh(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        String str;
        String str2;
        byte[] bArr;
        String str3;
        HashSet hashSet;
        Iterator<Integer> it;
        boolean z;
        String str4;
        if (active(result.profile)) {
            String str5 = "q7ChapterEffects";
            byte[] doc = LocalResourceEngine.doc(result.profile, "q7ChapterEffects");
            String str6 = "q7ChapterLocks";
            byte[] doc2 = LocalResourceEngine.doc(result.profile, "q7ChapterLocks");
            String str7 = "q7ChapterStates";
            byte[] doc3 = LocalResourceEngine.doc(result.profile, "q7ChapterStates");
            HashSet hashSet2 = new HashSet(BsonLite.intArrayValues(result.profile, "q7WeekEventBaseline"));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<Integer> it2 = progress.completedEvents.iterator();
            boolean z2 = false;
            while (it2.hasNext()) {
                int intValue = it2.next().intValue();
                byte[] bArr2 = localEventCatalog.cityEffects.get(Integer.valueOf(intValue));
                String num = Integer.toString(intValue);
                if (bArr2 != null) {
                    it = it2;
                    if (hashSet2.contains(Integer.valueOf(intValue))) {
                        str = str5;
                        str2 = str6;
                        bArr = doc3;
                        str3 = str7;
                        hashSet = hashSet2;
                    } else {
                        z = z2;
                        if (Boolean.TRUE.equals(BsonLite.boolValue(doc, num))) {
                            str = str5;
                            str2 = str6;
                            bArr = doc3;
                            str3 = str7;
                            hashSet = hashSet2;
                            it2 = it;
                            z2 = z;
                            hashSet2 = hashSet;
                            doc3 = bArr;
                            str7 = str3;
                            str6 = str2;
                            str5 = str;
                        } else {
                            HashSet hashSet3 = hashSet2;
                            byte[] bArr3 = doc3;
                            String[] strArr = {"areaFree", "areaFight", "areaLock", "areaUnlock"};
                            byte[] bArr4 = doc2;
                            int i = 0;
                            while (true) {
                                str4 = str7;
                                if (i >= 4) {
                                    break;
                                }
                                String str8 = strArr[i];
                                Iterator<Integer> it3 = BsonLite.intArrayValues(bArr2, str8).iterator();
                                String str9 = str6;
                                String[] strArr2 = strArr;
                                byte[] bArr5 = bArr3;
                                byte[] bArr6 = bArr4;
                                while (it3.hasNext()) {
                                    String str10 = str5;
                                    int intValue2 = it3.next().intValue();
                                    byte[] bArr7 = doc;
                                    if (intValue2 < 1 || intValue2 > 8) {
                                        str5 = str10;
                                        doc = bArr7;
                                    } else {
                                        if (str8.equals("areaLock") || str8.equals("areaUnlock")) {
                                            bArr6 = BsonLite.withProfileBool(bArr6, Integer.toString(intValue2), str8.equals("areaLock"));
                                        } else {
                                            bArr5 = BsonLite.withProfileInt(bArr5, Integer.toString(intValue2), !str8.equals("areaFree") ? 1 : 0);
                                        }
                                        str5 = str10;
                                        doc = bArr7;
                                        z = true;
                                    }
                                }
                                i++;
                                bArr4 = bArr6;
                                bArr3 = bArr5;
                                str7 = str4;
                                strArr = strArr2;
                                str6 = str9;
                            }
                            applyHeroes(result, bArr2);
                            applyFriendly(result, bArr2, progress, linkedHashMap, localEventCatalog.consumptions.get(Integer.valueOf(intValue)));
                            doc = BsonLite.withProfileBool(doc, num, true);
                            it2 = it;
                            z2 = z;
                            hashSet2 = hashSet3;
                            doc3 = bArr3;
                            doc2 = bArr4;
                            str7 = str4;
                            str5 = str5;
                        }
                    }
                } else {
                    str = str5;
                    str2 = str6;
                    bArr = doc3;
                    str3 = str7;
                    hashSet = hashSet2;
                    it = it2;
                }
                z = z2;
                it2 = it;
                z2 = z;
                hashSet2 = hashSet;
                doc3 = bArr;
                str7 = str3;
                str6 = str2;
                str5 = str;
            }
            HashSet hashSet4 = hashSet2;
            boolean z3 = z2;
            result.profile = BsonLite.withProfileDocument(result.profile, str5, doc);
            result.profile = BsonLite.withProfileDocument(result.profile, str6, doc2);
            result.profile = BsonLite.withProfileDocument(result.profile, str7, doc3);
            if (!linkedHashMap.isEmpty()) {
                result.profile = BsonLite.withProfileDocument(result.profile, "q7EconomyCommit", LocalStoryFriendshipEngine.commit(result.profile, progress, linkedHashMap));
                result.add("syncHeroMgrData", BsonLite.document("d", LocalResourceEngine.doc(result.profile, "heromgr")));
            }
            refreshTargets(result, localEventCatalog, progress, hashSet4);
            if (z3) {
                result.profile = BsonLite.withLocalCityState(result.profile, progress);
                result.add("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, result.profile));
            }
        }
    }

    private static void applyFriendly(LocalResourceEngine.Result result, byte[] bArr, LocalTutorialStore.Progress progress, Map<Integer, Integer> map, int[] iArr) {
        byte[] doc = LocalResourceEngine.doc(bArr, "friendly");
        for (String str : BsonLite.keys(doc)) {
            int parseInt = Integer.parseInt(str);
            if (iArr == null || iArr[2] != parseInt) {
                if (LocalResourceEngine.ownsHero(result.profile, parseInt)) {
                    byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, parseInt);
                    int intValue = map.getOrDefault(Integer.valueOf(parseInt), Integer.valueOf(LocalStoryFriendshipEngine.current(result.profile, progress, parseInt))).intValue();
                    if (intValue < 100) {
                        intValue = Math.min(100, Math.addExact(intValue, LocalResourceEngine.value(doc, str)));
                    }
                    result.profile = BsonLite.withHeroDocument(result.profile, parseInt, BsonLite.withProfileInt(profileHeroDocument, "ef", intValue));
                    map.put(Integer.valueOf(parseInt), Integer.valueOf(intValue));
                    result.add("updateFriendlyValue", BsonLite.heroValueDocument(parseInt, intValue));
                }
            }
        }
    }

    static void applyHeroes(LocalResourceEngine.Result result, byte[] bArr) {
        byte[] bArr2 = bArr;
        byte[] doc = LocalResourceEngine.doc(result.profile, "heromgr");
        LinkedHashSet linkedHashSet = new LinkedHashSet(BsonLite.intArrayValues(doc, "c"));
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = BsonLite.intArrayValues(bArr2, "cineLockHeroes").iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (LocalResourceEngine.ownsHero(result.profile, intValue) && linkedHashSet.add(Integer.valueOf(intValue))) {
                arrayList.add(Integer.valueOf(intValue));
            }
        }
        if (!arrayList.isEmpty()) {
            doc = BsonLite.withProfileIntArray(doc, "c", linkedHashSet);
            result.add("cineLockHeroes", BsonLite.document("h", arrayList));
        }
        String[] strArr = {"banHeroes", "recoverBanHeroes"};
        int i = 0;
        for (int i2 = 2; i < i2; i2 = 2) {
            String str = strArr[i];
            String str2 = str.equals("banHeroes") ? "hrs" : "bhrs";
            String str3 = str.equals("banHeroes") ? "bhrs" : "hrs";
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            Iterator<byte[]> it2 = LocalResourceEngine.array(LocalResourceEngine.doc(doc, str3)).iterator();
            while (it2.hasNext()) {
                arrayList3.add(new BsonLite.ArrayValue(it2.next()));
            }
            ArrayList arrayList4 = new ArrayList();
            List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, str);
            for (byte[] bArr3 : LocalResourceEngine.array(LocalResourceEngine.doc(doc, str2))) {
                int value = LocalResourceEngine.value(bArr3, "0");
                String[] strArr2 = strArr;
                if (intArrayValues.contains(Integer.valueOf(value))) {
                    arrayList3.add(new BsonLite.ArrayValue(bArr3));
                    arrayList4.add(Integer.valueOf(value));
                } else {
                    arrayList2.add(new BsonLite.ArrayValue(bArr3));
                }
                strArr = strArr2;
            }
            String[] strArr3 = strArr;
            if (!arrayList4.isEmpty()) {
                byte[] withProfileArray = BsonLite.withProfileArray(BsonLite.withProfileArray(doc, str2, arrayList2), str3, arrayList3);
                Object[] objArr = new Object[2];
                objArr[0] = str.equals("banHeroes") ? "bhs" : "rhs";
                objArr[1] = arrayList4;
                result.add(str, BsonLite.document(objArr));
                doc = withProfileArray;
            }
            i++;
            bArr2 = bArr;
            strArr = strArr3;
        }
        if (!Arrays.equals(doc, LocalResourceEngine.doc(result.profile, "heromgr"))) {
            result.add("syncHeroMgrData", BsonLite.document("d", doc));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", doc);
    }

    static byte[] resetHeroes(byte[] bArr) {
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "heromgr"), "bhrs"))) {
            bArr = BsonLite.withHeroDocument(bArr, LocalResourceEngine.value(bArr2, "0"), LocalResourceEngine.doc(bArr2, "1"));
        }
        return BsonLite.withProfileDocument(bArr, "heromgr", BsonLite.withProfileIntArray(BsonLite.withProfileArray(LocalResourceEngine.doc(bArr, "heromgr"), "bhrs", Collections.emptyList()), "c", Collections.emptyList()));
    }

    private static void refreshTargets(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, Set<Integer> set) {
        byte[] doc = LocalResourceEngine.doc(result.profile, "std");
        String stringValue = BsonLite.stringValue(doc, "rt");
        if (stringValue != null) {
            if (!stringValue.equals("12") && !stringValue.startsWith("12-")) {
                return;
            }
            List<Integer> pendingTargets = LocalStoryRuleRegistry.pendingTargets(localEventCatalog, progress, set, stringValue);
            if (!pendingTargets.equals(BsonLite.intArrayValues(doc, "srt")) || BsonLite.documentValue(doc, "srt") == null) {
                result.profile = BsonLite.withProfileDocument(result.profile, "std", BsonLite.withProfileIntArray(doc, "srt", pendingTargets));
                LocalServiceEngine.syncRoute(result);
            }
        }
    }
}
