package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalEventCatalog;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalStoryRuleRegistry;
import com.project7.localmanager.LocalTutorialStore;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalServiceEngine {
    LocalServiceEngine() {
    }

    static Map<Integer, Integer> cores(byte[] bArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "reward"), "bc"))) {
            linkedHashMap.put(Integer.valueOf(LocalResourceEngine.value(bArr2, "0")), Integer.valueOf(LocalResourceEngine.value(bArr2, "1")));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:241:0x06ea, code lost:
    
        if (java.util.Arrays.equals(r6, com.project7.localmanager.LocalResourceEngine.doc(r1, r3)) == false) goto L191;
     */
    /* JADX WARN: Removed duplicated region for block: B:183:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0657 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x031a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result effects(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        String str;
        String str2;
        byte[] bArr2;
        String str3;
        byte[] bArr3;
        byte[] bArr4;
        String str4;
        LocalEventCatalog.Effect effect;
        byte[] bArr5;
        byte[] bArr6;
        byte[] bArr7;
        LocalEventCatalog localEventCatalog2;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        byte[] bArr8;
        int i;
        String str10;
        Iterator<Integer> it;
        String str11;
        boolean z;
        int value;
        LocalEventCatalog localEventCatalog3 = localEventCatalog;
        String str12 = "money";
        String str13 = "金币";
        String str14 = "showMessageStr";
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        if (progress == null) {
            return result;
        }
        LocalEconomyEngine.recover(bArr, progress);
        LocalDiaryEngine.prepare(result, localEventCatalog3, progress);
        LocalEventBattleEngine.sync(result, localEventCatalog3, progress);
        applyRoutes(result, localEventCatalog3, progress);
        LocalStoryRuleRegistry.apply(LocalStoryRuleRegistry.Phase.AFTER_ROUTE, result, localEventCatalog3, progress);
        String str15 = "q7effects";
        byte[] doc = LocalResourceEngine.doc(bArr, "q7effects");
        String str16 = "city";
        LinkedHashSet linkedHashSet = new LinkedHashSet(BsonLite.intArrayValues(LocalResourceEngine.doc(result.profile, "city"), "hb"));
        Iterator<Map.Entry<Integer, Set<Integer>>> it2 = localEventCatalog3.buildingUnlocks.entrySet().iterator();
        boolean z2 = false;
        while (true) {
            str = "b";
            str2 = str14;
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<Integer, Set<Integer>> next = it2.next();
            int intValue = next.getKey().intValue();
            Iterator<Map.Entry<Integer, Set<Integer>>> it3 = it2;
            String str17 = str13;
            if (progress.completedEvents.contains(Integer.valueOf(intValue))) {
                if (!Boolean.TRUE.equals(BsonLite.boolValue(doc, "b" + intValue))) {
                    z2 |= linkedHashSet.addAll(next.getValue());
                    doc = BsonLite.withProfileBool(doc, "b" + intValue, true);
                    str14 = str2;
                    it2 = it3;
                    str13 = str17;
                }
            }
            str14 = str2;
            it2 = it3;
            str13 = str17;
        }
        String str18 = str13;
        if (z2) {
            result.profile = BsonLite.withProfileDocument(result.profile, "city", BsonLite.withProfileIntArray(LocalResourceEngine.doc(result.profile, "city"), "hb", linkedHashSet));
            result.profile = BsonLite.withPatrolProgress(result.profile, progress);
            result.add("get_city_data_reply", BsonLite.document("cd", LocalResourceEngine.doc(result.profile, "city")));
        }
        boolean z3 = BsonLite.documentValue(bArr, "q7effects") == null;
        Map<Integer, Integer> cores = cores(bArr);
        String str19 = "np";
        byte[] doc2 = LocalResourceEngine.doc(result.profile, "np");
        String str20 = "n";
        byte[] doc3 = LocalResourceEngine.doc(doc2, "n");
        boolean z4 = false;
        for (Map.Entry<Integer, int[]> entry : localEventCatalog3.notes.entrySet()) {
            byte[] bArr9 = doc;
            int intValue2 = entry.getKey().intValue();
            String str21 = str19;
            int i2 = entry.getValue()[1];
            Map<Integer, Integer> map = cores;
            int i3 = entry.getValue()[0];
            String str22 = str;
            if (i3 != 2 || intValue2 != i2 || !LocalResourceEngine.ownsHero(bArr, i2)) {
                str = str22;
                cores = map;
                doc = bArr9;
                str19 = str21;
            } else {
                ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(doc3, Integer.toString(i2)));
                if (!arrayList.contains(Integer.valueOf(intValue2))) {
                    arrayList.add(Integer.valueOf(intValue2));
                    byte[] withProfileIntArray = BsonLite.withProfileIntArray(doc3, Integer.toString(i2), arrayList);
                    doc2 = BsonLite.withProfileDocument(doc2, "n", withProfileIntArray);
                    doc3 = withProfileIntArray;
                    z4 = true;
                }
                str = str22;
                cores = map;
                doc = bArr9;
                str19 = str21;
            }
        }
        byte[] bArr10 = doc;
        String str23 = str19;
        Map<Integer, Integer> map2 = cores;
        String str24 = str;
        String str25 = "sd";
        byte[] doc4 = LocalResourceEngine.doc(bArr, "sd");
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(progress.completedEvents);
        linkedHashSet2.addAll(progress.availableEvents);
        linkedHashSet2.addAll(progress.processingEvents);
        LinkedHashSet linkedHashSet3 = new LinkedHashSet(BsonLite.intArrayValues(bArr, "q7WeekEventBaseline"));
        Iterator it4 = linkedHashSet2.iterator();
        byte[] bArr11 = doc2;
        byte[] bArr12 = bArr10;
        boolean z5 = z4;
        boolean z6 = false;
        while (it4.hasNext()) {
            int intValue3 = ((Integer) it4.next()).intValue();
            String str26 = str20;
            LocalEventCatalog.Effect effect2 = localEventCatalog3.effects.get(Integer.valueOf(intValue3));
            if (effect2 == null) {
                bArr4 = bArr11;
            } else {
                bArr4 = bArr11;
                boolean contains = progress.completedEvents.contains(Integer.valueOf(intValue3));
                if (contains || progress.availableEvents.contains(Integer.valueOf(intValue3)) || progress.processingEvents.contains(Integer.valueOf(intValue3))) {
                    LocalEventCatalog.Event event = localEventCatalog3.get(intValue3);
                    boolean z7 = !linkedHashSet3.contains(Integer.valueOf(intValue3)) && (contains || (event != null && event.autoStart && event.dialog == 0 && event.completeConditions.isEmpty()));
                    if (z7) {
                        Iterator<Integer> it5 = effect2.privateMessages.iterator();
                        while (it5.hasNext()) {
                            bArr12 = bArr12;
                            doc4 = message(result, doc4, "pm", it5.next().intValue(), localEventCatalog, progress);
                            intValue3 = intValue3;
                            linkedHashSet3 = linkedHashSet3;
                            effect2 = effect2;
                            str24 = str24;
                            str15 = str15;
                            bArr4 = bArr4;
                            map2 = map2;
                            str26 = str26;
                            str25 = str25;
                        }
                    }
                    byte[] bArr13 = doc4;
                    byte[] bArr14 = bArr12;
                    String str27 = str15;
                    Map<Integer, Integer> map3 = map2;
                    byte[] bArr15 = bArr4;
                    int i4 = intValue3;
                    String str28 = str24;
                    LinkedHashSet linkedHashSet4 = linkedHashSet3;
                    LocalEventCatalog.Effect effect3 = effect2;
                    String str29 = str26;
                    String str30 = str25;
                    String str31 = str29;
                    if (z7) {
                        Iterator<Integer> it6 = effect3.socialMessages.iterator();
                        byte[] bArr16 = bArr13;
                        while (it6.hasNext()) {
                            bArr16 = message(result, bArr16, "sm", it6.next().intValue(), localEventCatalog, progress);
                            effect3 = effect3;
                            str31 = str31;
                        }
                        str4 = str31;
                        effect = effect3;
                        bArr13 = bArr16;
                    } else {
                        str4 = str31;
                        effect = effect3;
                    }
                    if (z7) {
                        if (!Boolean.TRUE.equals(BsonLite.boolValue(bArr14, "m" + i4))) {
                            bArr5 = BsonLite.withProfileBool(bArr14, "m" + i4, true);
                            if (contains) {
                                bArr6 = bArr13;
                                bArr7 = bArr5;
                                localEventCatalog2 = localEventCatalog3;
                                str5 = str12;
                                str6 = str2;
                                str7 = str18;
                                str8 = str4;
                                str9 = str16;
                            } else {
                                if (Boolean.TRUE.equals(BsonLite.boolValue(bArr5, "c" + i4))) {
                                    bArr6 = bArr13;
                                    bArr7 = bArr5;
                                    localEventCatalog2 = localEventCatalog3;
                                    str5 = str12;
                                    str6 = str2;
                                    str7 = str18;
                                    str8 = str4;
                                    str9 = str16;
                                } else {
                                    int[] iArr = localEventCatalog3.consumptions.get(Integer.valueOf(i4));
                                    if (iArr == null || z3) {
                                        bArr6 = bArr13;
                                        bArr8 = bArr5;
                                        str5 = str12;
                                        str6 = str2;
                                        str7 = str18;
                                        i = i4;
                                        str10 = str16;
                                    } else {
                                        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
                                        try {
                                            bArr6 = bArr13;
                                        } catch (IllegalArgumentException e) {
                                            bArr6 = bArr13;
                                        }
                                        if (iArr[0] == 1) {
                                            try {
                                                int value2 = LocalResourceEngine.value(result2.profile, str12);
                                                bArr8 = bArr5;
                                                try {
                                                    if (value2 < iArr[1]) {
                                                        str5 = str12;
                                                        str6 = str2;
                                                        str7 = str18;
                                                        throw new IllegalArgumentException("insufficient story money");
                                                    }
                                                    result2.profile = BsonLite.withProfileInt(result2.profile, str12, value2 - iArr[1]);
                                                    LocalResourceEngine.syncCurrencies(result2);
                                                    Object[] objArr = new Object[2];
                                                    objArr[0] = "m";
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append("已支付");
                                                    str5 = str12;
                                                    try {
                                                        sb.append(iArr[1]);
                                                        str7 = str18;
                                                        try {
                                                            sb.append(str7);
                                                            objArr[1] = sb.toString();
                                                            byte[] document = BsonLite.document(objArr);
                                                            str6 = str2;
                                                            try {
                                                                result2.add(str6, document);
                                                                i = i4;
                                                            } catch (IllegalArgumentException e2) {
                                                            }
                                                        } catch (IllegalArgumentException e3) {
                                                            str6 = str2;
                                                        }
                                                    } catch (IllegalArgumentException e4) {
                                                        str6 = str2;
                                                        str7 = str18;
                                                        str9 = str16;
                                                        Object[] objArr2 = new Object[2];
                                                        objArr2[0] = "m";
                                                        if (iArr[0] != 1) {
                                                        }
                                                        objArr2[1] = iArr[0] != 1 ? "黑核回收需要" + iArr[1] + str7 : "黑核回收需要蜂蜜蛋糕，请先在道具商店购买";
                                                        result.add(str6, BsonLite.document(objArr2));
                                                        localEventCatalog2 = localEventCatalog;
                                                        str8 = str4;
                                                        bArr7 = bArr8;
                                                        map2 = map3;
                                                        localEventCatalog3 = localEventCatalog2;
                                                        str2 = str6;
                                                        str20 = str8;
                                                        str16 = str9;
                                                        str25 = str30;
                                                        doc4 = bArr6;
                                                        str15 = str27;
                                                        bArr11 = bArr15;
                                                        str12 = str5;
                                                        bArr12 = bArr7;
                                                        str18 = str7;
                                                        linkedHashSet3 = linkedHashSet4;
                                                        str24 = str28;
                                                    }
                                                } catch (IllegalArgumentException e5) {
                                                    str5 = str12;
                                                    str6 = str2;
                                                    str7 = str18;
                                                    str9 = str16;
                                                    Object[] objArr22 = new Object[2];
                                                    objArr22[0] = "m";
                                                    if (iArr[0] != 1) {
                                                    }
                                                    objArr22[1] = iArr[0] != 1 ? "黑核回收需要" + iArr[1] + str7 : "黑核回收需要蜂蜜蛋糕，请先在道具商店购买";
                                                    result.add(str6, BsonLite.document(objArr22));
                                                    localEventCatalog2 = localEventCatalog;
                                                    str8 = str4;
                                                    bArr7 = bArr8;
                                                    map2 = map3;
                                                    localEventCatalog3 = localEventCatalog2;
                                                    str2 = str6;
                                                    str20 = str8;
                                                    str16 = str9;
                                                    str25 = str30;
                                                    doc4 = bArr6;
                                                    str15 = str27;
                                                    bArr11 = bArr15;
                                                    str12 = str5;
                                                    bArr12 = bArr7;
                                                    str18 = str7;
                                                    linkedHashSet3 = linkedHashSet4;
                                                    str24 = str28;
                                                }
                                            } catch (IllegalArgumentException e6) {
                                                bArr8 = bArr5;
                                                str5 = str12;
                                                str6 = str2;
                                                str7 = str18;
                                                str9 = str16;
                                                Object[] objArr222 = new Object[2];
                                                objArr222[0] = "m";
                                                if (iArr[0] != 1) {
                                                }
                                                objArr222[1] = iArr[0] != 1 ? "黑核回收需要" + iArr[1] + str7 : "黑核回收需要蜂蜜蛋糕，请先在道具商店购买";
                                                result.add(str6, BsonLite.document(objArr222));
                                                localEventCatalog2 = localEventCatalog;
                                                str8 = str4;
                                                bArr7 = bArr8;
                                                map2 = map3;
                                                localEventCatalog3 = localEventCatalog2;
                                                str2 = str6;
                                                str20 = str8;
                                                str16 = str9;
                                                str25 = str30;
                                                doc4 = bArr6;
                                                str15 = str27;
                                                bArr11 = bArr15;
                                                str12 = str5;
                                                bArr12 = bArr7;
                                                str18 = str7;
                                                linkedHashSet3 = linkedHashSet4;
                                                str24 = str28;
                                            }
                                            str9 = str16;
                                            Object[] objArr2222 = new Object[2];
                                            objArr2222[0] = "m";
                                            objArr2222[1] = iArr[0] != 1 ? "黑核回收需要" + iArr[1] + str7 : "黑核回收需要蜂蜜蛋糕，请先在道具商店购买";
                                            result.add(str6, BsonLite.document(objArr2222));
                                            localEventCatalog2 = localEventCatalog;
                                            str8 = str4;
                                            bArr7 = bArr8;
                                        } else {
                                            bArr8 = bArr5;
                                            str5 = str12;
                                            str6 = str2;
                                            str7 = str18;
                                            i = i4;
                                            LocalGiftEngine.consume(result2, iArr[0], iArr[1]);
                                        }
                                        int i5 = iArr[2];
                                        byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, i5);
                                        if (BsonLite.keys(profileHeroDocument).isEmpty()) {
                                            str10 = str16;
                                        } else {
                                            int current = LocalStoryFriendshipEngine.current(result2.profile, progress, i5);
                                            if (current < 100) {
                                                current = Math.min(100, Math.addExact(current, iArr[3]));
                                            }
                                            result2.profile = BsonLite.withHeroDocument(result2.profile, i5, BsonLite.withProfileInt(profileHeroDocument, "ef", current));
                                            result2.add("updateFriendlyValue", BsonLite.heroValueDocument(i5, current));
                                            byte[] bArr17 = result2.profile;
                                            Object[] objArr3 = new Object[10];
                                            objArr3[0] = "id";
                                            objArr3[1] = LocalResourceEngine.uuid();
                                            objArr3[2] = "av";
                                            if (progress.patrolActions >= 0) {
                                                value = progress.patrolActions;
                                                str10 = str16;
                                            } else {
                                                str10 = str16;
                                                value = LocalResourceEngine.value(LocalResourceEngine.doc(result.profile, str16), "av");
                                            }
                                            objArr3[3] = Integer.valueOf(value);
                                            objArr3[4] = "scene";
                                            objArr3[5] = 0;
                                            objArr3[6] = "cf";
                                            objArr3[7] = BsonLite.EMPTY_DOCUMENT;
                                            objArr3[8] = "ef";
                                            objArr3[9] = BsonLite.intDocument(Integer.toString(i5), current);
                                            result2.profile = BsonLite.withProfileDocument(bArr17, "q7EconomyCommit", BsonLite.document(objArr3));
                                        }
                                        result.profile = result2.profile;
                                        result.replies.addAll(result2.replies);
                                    }
                                    for (Map.Entry<Integer, Integer> entry2 : effect.cores.entrySet()) {
                                        int intValue4 = entry2.getKey().intValue();
                                        int intValue5 = entry2.getValue().intValue();
                                        if (!z3 || (!map3.containsKey(Integer.valueOf(intValue4)) && intValue5 != 0)) {
                                            Integer valueOf = Integer.valueOf(intValue4);
                                            if (intValue5 == 0) {
                                                map3.remove(valueOf);
                                            } else {
                                                map3.put(valueOf, Integer.valueOf(intValue5));
                                            }
                                            result.add("updateBlackCore", BsonLite.document("c", Integer.valueOf(intValue5), str28, Integer.valueOf(intValue4)));
                                            z6 = true;
                                        }
                                    }
                                    Iterator<Integer> it7 = effect.noteIds.iterator();
                                    byte[] bArr18 = bArr15;
                                    while (it7.hasNext()) {
                                        int intValue6 = it7.next().intValue();
                                        int[] iArr2 = localEventCatalog.notes.get(Integer.valueOf(intValue6));
                                        if (iArr2 != null) {
                                            if (iArr2[0] == 1) {
                                                ArrayList arrayList2 = new ArrayList(BsonLite.intArrayValues(bArr18, "pn"));
                                                if (arrayList2.contains(Integer.valueOf(intValue6))) {
                                                    z = z5;
                                                } else {
                                                    arrayList2.add(Integer.valueOf(intValue6));
                                                    bArr18 = BsonLite.withProfileBool(BsonLite.withProfileIntArray(bArr18, "pn", arrayList2), "ppn", true);
                                                    z = true;
                                                }
                                                it = it7;
                                                z5 = z;
                                                str11 = str4;
                                            } else if (iArr2[0] != 2 || iArr2[1] <= 0) {
                                                it = it7;
                                                str11 = str4;
                                            } else {
                                                String num = Integer.toString(iArr2[1]);
                                                str11 = str4;
                                                byte[] doc5 = LocalResourceEngine.doc(bArr18, str11);
                                                ArrayList arrayList3 = new ArrayList(BsonLite.intArrayValues(doc5, num));
                                                if (arrayList3.contains(Integer.valueOf(intValue6))) {
                                                    it = it7;
                                                } else {
                                                    arrayList3.add(Integer.valueOf(intValue6));
                                                    byte[] withProfileDocument = BsonLite.withProfileDocument(bArr18, str11, BsonLite.withProfileIntArray(doc5, num, arrayList3));
                                                    byte[] doc6 = LocalResourceEngine.doc(withProfileDocument, "p");
                                                    it = it7;
                                                    ArrayList arrayList4 = new ArrayList(BsonLite.intArrayValues(doc6, num));
                                                    arrayList4.add(Integer.valueOf(intValue6));
                                                    bArr18 = BsonLite.withProfileDocument(withProfileDocument, "p", BsonLite.withProfileIntArray(doc6, num, arrayList4));
                                                    z5 = true;
                                                }
                                            }
                                            str4 = str11;
                                            it7 = it;
                                        }
                                    }
                                    map2 = map3;
                                    bArr11 = bArr18;
                                    localEventCatalog3 = localEventCatalog;
                                    str2 = str6;
                                    str20 = str4;
                                    str16 = str10;
                                    str25 = str30;
                                    str15 = str27;
                                    str12 = str5;
                                    bArr12 = BsonLite.withProfileBool(bArr8, "c" + i, true);
                                    str18 = str7;
                                    linkedHashSet3 = linkedHashSet4;
                                    str24 = str28;
                                    doc4 = bArr6;
                                }
                            }
                            map2 = map3;
                            localEventCatalog3 = localEventCatalog2;
                            str2 = str6;
                            str20 = str8;
                            str16 = str9;
                            str25 = str30;
                            doc4 = bArr6;
                            str15 = str27;
                            bArr11 = bArr15;
                            str12 = str5;
                            bArr12 = bArr7;
                            str18 = str7;
                            linkedHashSet3 = linkedHashSet4;
                            str24 = str28;
                        }
                    }
                    bArr5 = bArr14;
                    if (contains) {
                    }
                    map2 = map3;
                    localEventCatalog3 = localEventCatalog2;
                    str2 = str6;
                    str20 = str8;
                    str16 = str9;
                    str25 = str30;
                    doc4 = bArr6;
                    str15 = str27;
                    bArr11 = bArr15;
                    str12 = str5;
                    bArr12 = bArr7;
                    str18 = str7;
                    linkedHashSet3 = linkedHashSet4;
                    str24 = str28;
                }
            }
            str20 = str26;
            bArr11 = bArr4;
        }
        byte[] bArr19 = doc4;
        byte[] bArr20 = bArr11;
        byte[] bArr21 = bArr12;
        LocalEventCatalog localEventCatalog4 = localEventCatalog3;
        String str32 = str25;
        String str33 = str15;
        Map<Integer, Integer> map4 = map2;
        if (z6) {
            ArrayList arrayList5 = new ArrayList();
            for (Map.Entry<Integer, Integer> entry3 : map4.entrySet()) {
                arrayList5.add(Arrays.asList(entry3.getKey(), entry3.getValue()));
            }
            result.profile = BsonLite.withProfileDocument(result.profile, "reward", BsonLite.withProfileArray(LocalResourceEngine.doc(result.profile, "reward"), "bc", arrayList5));
        }
        if (z5) {
            bArr2 = bArr;
            str3 = str23;
            bArr3 = bArr20;
        } else {
            bArr2 = bArr;
            str3 = str23;
            bArr3 = bArr20;
        }
        result.profile = BsonLite.withProfileDocument(result.profile, str3, bArr3);
        result.add("syncAllNote", BsonLite.document("nd", bArr3));
        if (!Arrays.equals(bArr19, LocalResourceEngine.doc(bArr2, str32))) {
            result.profile = BsonLite.withProfileDocument(result.profile, str32, bArr19);
        }
        LocalStoryRuleRegistry.apply(LocalStoryRuleRegistry.Phase.AFTER_CONTENT, result, localEventCatalog4, progress);
        publishCityCelebration(result, localEventCatalog4, progress);
        publishRequiredSocial(result, localEventCatalog4, progress);
        reconcileSocial(result, localEventCatalog4, progress);
        if (!Arrays.equals(bArr21, LocalResourceEngine.doc(bArr2, str33))) {
            result.profile = BsonLite.withProfileDocument(result.profile, str33, bArr21);
        }
        return result;
    }

    private static void publishRequiredSocial(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        Set<Integer> set;
        byte[] doc = LocalResourceEngine.doc(result.profile, "sd");
        byte[] bArr = doc;
        for (Map.Entry<Integer, Set<Integer>> entry : localEventCatalog.socialEvents.entrySet()) {
            if (!entry.getValue().isEmpty() && localEventCatalog.permanentSocialMessages.contains(entry.getKey()) && progress.completedEvents.containsAll(entry.getValue()) && ((set = localEventCatalog.socialConflicts.get(entry.getKey())) == null || Collections.disjoint(progress.completedEvents, set))) {
                Set<Integer> set2 = localEventCatalog.socialMutex.get(entry.getKey());
                if (set2 == null || (Collections.disjoint(progress.completedEvents, set2) && Collections.disjoint(progress.processingEvents, set2))) {
                    bArr = message(result, bArr, "sm", entry.getKey().intValue(), localEventCatalog, progress);
                }
            }
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "sd", bArr);
    }

    private static void publishCityCelebration(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        for (int i = 1; i <= 8; i++) {
            if (LocalCityProgress.status(progress, i, result.profile) != 0) {
                return;
            }
        }
        byte[] doc = LocalResourceEngine.doc(result.profile, "sd");
        byte[] doc2 = LocalResourceEngine.doc(doc, "sm");
        if (BsonLite.documentValue(doc2, "36") != null || BsonLite.documentValue(doc2, "37") != null) {
            return;
        }
        Iterator<Integer> it = progress.completedEvents.iterator();
        boolean z = false;
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (intValue == 5005 || intValue == 6046) {
                z = true;
            } else if (intValue == 6000 || intValue == 7051 || intValue == 7062) {
                z = false;
            }
        }
        int i2 = z ? 36 : 37;
        Set<Integer> set = localEventCatalog.socialMutex.get(Integer.valueOf(i2));
        if ((set == null || (Collections.disjoint(progress.completedEvents, set) && Collections.disjoint(progress.processingEvents, set))) && localEventCatalog.socialActions.containsKey(Integer.valueOf(i2))) {
            result.profile = BsonLite.withProfileDocument(result.profile, "sd", message(result, doc, "sm", i2, localEventCatalog, progress));
        }
    }

    private static void applyRoutes(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        byte[] doc = LocalResourceEngine.doc(result.profile, "std");
        Object stringValue = BsonLite.stringValue(doc, "rt");
        byte[] doc2 = LocalResourceEngine.doc(result.profile, "q7routeEvents");
        boolean z = BsonLite.documentValue(result.profile, "q7routeEvents") == null;
        Iterator<Integer> it = progress.completedEvents.iterator();
        String str = stringValue;
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            String str2 = localEventCatalog.routes.get(Integer.valueOf(intValue));
            if (str2 != null && !Boolean.TRUE.equals(BsonLite.boolValue(doc2, Integer.toString(intValue)))) {
                if (!z || stringValue == null) {
                    str = str2;
                }
                doc2 = BsonLite.withProfileBool(doc2, Integer.toString(intValue), true);
            }
        }
        if (z || !Arrays.equals(doc2, LocalResourceEngine.doc(result.profile, "q7routeEvents"))) {
            result.profile = BsonLite.withProfileDocument(result.profile, "q7routeEvents", doc2);
        }
        if (str == null || str.equals(stringValue)) {
            return;
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "std", LocalStoryTargetEngine.initialize(BsonLite.withProfileString(doc, "rt", str), localEventCatalog, str));
        syncRoute(result);
    }

    static void syncRoute(LocalResourceEngine.Result result) {
        byte[] doc = LocalResourceEngine.doc(result.profile, "std");
        String stringValue = BsonLite.stringValue(doc, "rt");
        if (stringValue == null) {
            stringValue = "1";
        }
        result.add("syncRoute", BsonLite.document("rt", stringValue, "srt", new BsonLite.ArrayValue(LocalResourceEngine.doc(doc, "srt")), "i", false, "hsd", BsonLite.document("hs", new BsonLite.ArrayValue(LocalResourceEngine.doc(doc, "hsu")), "hsf", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(doc, "hsf"))), "hst", Integer.valueOf(LocalResourceEngine.value(doc, "hst"))), "fbd", BsonLite.document("ff", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(doc, "ff"))), "fd", Integer.valueOf(LocalResourceEngine.value(doc, "fd")), "fv", Integer.valueOf(LocalResourceEngine.value(doc, "fa")))));
    }

    private static byte[] message(LocalResourceEngine.Result result, byte[] bArr, String str, int i, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        boolean z;
        byte[] doc = LocalResourceEngine.doc(bArr, str);
        if (BsonLite.documentValue(doc, Integer.toString(i)) != null) {
            return bArr;
        }
        Map<Integer, Integer> map = localEventCatalog.privateReplies.get(Integer.valueOf(i));
        if ("pm".equals(str) && map != null && !Collections.disjoint(progress.completedEvents, map.values())) {
            for (LocalEventCatalog.Trigger trigger : localEventCatalog.triggers()) {
                if (!progress.completedEvents.contains(Integer.valueOf(trigger.eventId)) && (!Collections.disjoint(trigger.preAll, map.values()) || !Collections.disjoint(trigger.preAny, map.values()))) {
                    z = true;
                    break;
                }
            }
            z = false;
            if (!z) {
                return bArr;
            }
        }
        Set<Integer> set = localEventCatalog.socialConflicts.get(Integer.valueOf(i));
        if ("sm".equals(str) && set != null && !Collections.disjoint(progress.completedEvents, set)) {
            return bArr;
        }
        int now = (int) (LocalStoryEnvironment.now() / 1000);
        byte[] document = "pm".equals(str) ? BsonLite.document("id", Integer.valueOf(i), "rd", false, "rp", false, "rt", Integer.valueOf(now)) : BsonLite.document("id", Integer.valueOf(i), "r", false, "rt", Integer.valueOf(now), "ct", 0, "e", 0, "a", false, "l", new ArrayList(), "to", Integer.valueOf(now + 86400));
        if ("sm".equals(str) && localEventCatalog.permanentSocialMessages.contains(Integer.valueOf(i))) {
            document = BsonLite.withoutProfileKey(document, "to");
        }
        result.add("pm".equals(str) ? "syncOnePrivateMsg" : "syncOneSocialMsg", BsonLite.document("id", Integer.valueOf(i), "c", document));
        return BsonLite.withProfileDocument(bArr, str, BsonLite.withProfileDocument(doc, Integer.toString(i), document));
    }

    static void reconcileSocial(LocalResourceEngine.Result result, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        int i;
        if (progress == null) {
            return;
        }
        byte[] doc = LocalResourceEngine.doc(result.profile, "sd");
        byte[] doc2 = LocalResourceEngine.doc(doc, "sm");
        for (String str : BsonLite.keys(doc2)) {
            try {
                int parseInt = Integer.parseInt(str);
                Set<Integer> set = localEventCatalog.socialEvents.get(Integer.valueOf(parseInt));
                if (set != null) {
                    byte[] doc3 = LocalResourceEngine.doc(doc2, str);
                    Integer num = localEventCatalog.socialActions.get(Integer.valueOf(parseInt));
                    if (num == null) {
                        Iterator<Integer> it = set.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                i = 0;
                                break;
                            }
                            int intValue = it.next().intValue();
                            LocalEventCatalog.Event event = localEventCatalog.get(intValue);
                            if (event != null && event.release && progress.availableEvents.contains(Integer.valueOf(intValue)) && !progress.completedEvents.contains(Integer.valueOf(intValue))) {
                                i = intValue;
                                break;
                            }
                        }
                    } else {
                        LocalEventCatalog.Event event2 = localEventCatalog.get(num.intValue());
                        i = (event2 == null || !event2.release || progress.completedEvents.contains(num) || progress.processingEvents.contains(num) || !Collections.disjoint(progress.completedEvents, localEventCatalog.mutex(num.intValue())) || !Collections.disjoint(progress.processingEvents, localEventCatalog.mutex(num.intValue()))) ? 0 : num.intValue();
                    }
                    Set<Integer> set2 = localEventCatalog.socialMutex.get(Integer.valueOf(parseInt));
                    if (set2 != null && (!Collections.disjoint(progress.completedEvents, set2) || !Collections.disjoint(progress.processingEvents, set2))) {
                        i = 0;
                    }
                    Set<Integer> set3 = localEventCatalog.socialConflicts.get(Integer.valueOf(parseInt));
                    if (set3 != null && !Collections.disjoint(progress.completedEvents, set3)) {
                        i = 0;
                    }
                    byte[] withProfileInt = BsonLite.withProfileInt(doc3, "e", i);
                    if (localEventCatalog.permanentSocialMessages.contains(Integer.valueOf(parseInt))) {
                        withProfileInt = BsonLite.withoutProfileKey(withProfileInt, "to");
                    }
                    byte[] withProfileBool = BsonLite.withProfileBool(withProfileInt, "a", localEventCatalog.autoSocialMessages.contains(Integer.valueOf(parseInt)));
                    if (!Arrays.equals(doc3, withProfileBool)) {
                        doc2 = BsonLite.withProfileDocument(doc2, str, withProfileBool);
                        result.add("syncOneSocialMsg", BsonLite.document("id", Integer.valueOf(parseInt), "c", withProfileBool));
                    }
                }
            } catch (NumberFormatException e) {
            }
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "sd", BsonLite.withProfileDocument(doc, "sm", doc2));
    }

    static LocalResourceEngine.Result confirmSocial(byte[] bArr, byte[] bArr2, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        reconcileSocial(result, localEventCatalog, progress);
        int value = LocalResourceEngine.value(bArr2, "id");
        byte[] doc = LocalResourceEngine.doc(result.profile, "sd");
        byte[] doc2 = LocalResourceEngine.doc(doc, "sm");
        byte[] documentValue = BsonLite.documentValue(doc2, Integer.toString(value));
        if (documentValue == null || !localEventCatalog.socialEvents.containsKey(Integer.valueOf(value))) {
            result.add("showMessageStr", BsonLite.document("m", "论坛帖子尚未开放"));
            return result;
        }
        int value2 = LocalResourceEngine.value(documentValue, "e");
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileBool(documentValue, "r", true), "e", 0);
        result.profile = BsonLite.withProfileDocument(result.profile, "sd", BsonLite.withProfileDocument(doc, "sm", BsonLite.withProfileDocument(doc2, Integer.toString(value), withProfileInt)));
        result.add("syncOneSocialMsg", BsonLite.document("id", Integer.valueOf(value), "c", withProfileInt));
        if (value2 > 0) {
            progress.availableEvents.add(Integer.valueOf(value2));
            result.add("q7StartSocialEvent", BsonLite.document("e", Integer.valueOf(value2)));
        }
        return result;
    }

    static byte[] recover(byte[] bArr, long j) {
        byte[] doc = LocalResourceEngine.doc(bArr, "city");
        int value = LocalResourceEngine.value(doc, "jpv");
        int i = (int) (j / 1000);
        int value2 = LocalResourceEngine.value(doc, "jpvt");
        if (LocalResourceEngine.value(doc, "mjpv") <= 0) {
            doc = BsonLite.withProfileInt(doc, "mjpv", 240);
            if (value <= 0) {
                value = 240;
            }
            value2 = i;
        }
        int max = Math.max(0, Math.min(100000, value));
        if (value2 > 0 && value2 <= i && max < 240) {
            int i2 = (i - value2) / 360;
            max = Math.min(240, max + i2);
            if (max < 240) {
                i = value2 + (i2 * 360);
            }
        }
        String format = new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT).format(new Date(j));
        if (!format.equals(BsonLite.stringValue(bArr, "q7powerDay"))) {
            doc = BsonLite.withProfileInt(doc, "cjsla", 0);
            bArr = BsonLite.withProfileString(bArr, "q7powerDay", format);
        }
        return BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileInt(BsonLite.withProfileInt(doc, "jpv", max), "jpvt", i));
    }

    static boolean handles(String str) {
        return "requestRecoverJingshenli".equals(str) || "readPendingNote".equals(str) || LocalStoryClueEngine.handles(str) || "readPlayerNote".equals(str) || "readPrivateMsg".equals(str) || "readSocialMsg".equals(str) || "replyPrivateMsg".equals(str) || "delDestroyBuilding".equals(str) || "triggerSocialMsgEvent".equals(str);
    }

    static LocalResourceEngine.Result apply(byte[] bArr, String str, byte[] bArr2) {
        return apply(bArr, str, bArr2, null);
    }

    static LocalResourceEngine.Result apply(byte[] bArr, String str, byte[] bArr2, LocalFeatureCatalog localFeatureCatalog) {
        String str2;
        char c;
        boolean z;
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        if ("delDestroyBuilding".equals(str)) {
            result.profile = LocalConstructionEngine.acknowledgeDestroyed(bArr, bArr2);
        } else if ("requestRecoverJingshenli".equals(str)) {
            result.profile = recover(bArr, LocalStoryEnvironment.now());
            byte[] doc = LocalResourceEngine.doc(result.profile, "city");
            int value = LocalResourceEngine.value(doc, "cjsla");
            int value2 = LocalResourceEngine.value(doc, "jpv");
            byte[] doc2 = LocalResourceEngine.doc(LocalResourceEngine.doc(result.profile, "sma"), "ltd");
            boolean z2 = LocalResourceEngine.value(doc2, "n") >= 776 && BsonLite.intArrayValues(doc2, "r").contains(777) && LocalResourceEngine.value(doc2, "pt") <= 0;
            int i = (z2 || value < 2) ? 0 : 50;
            boolean z3 = (z2 || value < 12) && value2 <= 99940 && LocalResourceEngine.value(result.profile, "yuanbao") >= i;
            if (!z3) {
                z = z3;
            } else {
                z = z3;
                doc = BsonLite.withProfileInt(doc, "jpv", value2 + 60);
                if (z2) {
                    result.profile = BsonLite.withProfileDocument(result.profile, "sma", BsonLite.withProfileDocument(LocalResourceEngine.doc(result.profile, "sma"), "ltd", BsonLite.withProfileInt(doc2, "pt", 1)));
                    result.add("sync777PowerTime", BsonLite.document("pt", 1));
                } else {
                    value++;
                    doc = BsonLite.withProfileInt(doc, "cjsla", value);
                }
                result.profile = BsonLite.withProfileDocument(result.profile, "city", doc);
                result.profile = BsonLite.withProfileInt(result.profile, "yuanbao", LocalResourceEngine.value(result.profile, "yuanbao") - i);
                LocalResourceEngine.syncCurrencies(result);
            }
            result.add("syncJingshenliPower", BsonLite.document("p", Integer.valueOf(LocalResourceEngine.value(doc, "jpv")), "t", Integer.valueOf(LocalResourceEngine.value(doc, "jpvt")), "cjsla", Integer.valueOf(value)));
            Object[] objArr = new Object[4];
            objArr[0] = "rs";
            objArr[1] = Boolean.valueOf(z);
            objArr[2] = "i";
            Object[] objArr2 = new Object[4];
            objArr2[0] = "cjsla";
            objArr2[1] = Integer.valueOf(value);
            objArr2[2] = "rsn";
            objArr2[3] = Integer.valueOf(value2 > 99940 ? 5 : 0);
            objArr[3] = BsonLite.document(objArr2);
            result.add("replyRecoverJingshenli", BsonLite.document(objArr));
        } else if ("readPlayerNote".equals(str) || "readPendingNote".equals(str)) {
            byte[] doc3 = LocalResourceEngine.doc(bArr, "np");
            if ("readPlayerNote".equals(str)) {
                doc3 = BsonLite.withProfileBool(doc3, "ppn", false);
            } else {
                Integer intValue = BsonLite.intValue(bArr2, "h");
                if (intValue != null) {
                    doc3 = BsonLite.withProfileDocument(doc3, "p", BsonLite.withProfileIntArray(LocalResourceEngine.doc(doc3, "p"), intValue.toString(), new ArrayList()));
                }
            }
            result.profile = BsonLite.withProfileDocument(bArr, "np", doc3);
            result.add("syncAllNote", BsonLite.document("nd", doc3));
        } else {
            Integer intValue2 = BsonLite.intValue(bArr2, "id");
            String str3 = ("readPrivateMsg".equals(str) || "replyPrivateMsg".equals(str)) ? "pm" : "sm";
            byte[] doc4 = LocalResourceEngine.doc(bArr, "sd");
            byte[] doc5 = LocalResourceEngine.doc(doc4, str3);
            byte[] documentValue = intValue2 == null ? null : BsonLite.documentValue(doc5, intValue2.toString());
            if (documentValue != null) {
                if (!"replyPrivateMsg".equals(str)) {
                    str2 = "r";
                } else {
                    int value3 = LocalResourceEngine.value(bArr2, "bid");
                    byte[] bArr3 = localFeatureCatalog == null ? null : localFeatureCatalog.get("P", intValue2);
                    str2 = "r";
                    if (Boolean.TRUE.equals(BsonLite.boolValue(documentValue, "rp"))) {
                        c = 1;
                    } else if (LocalResourceEngine.value(documentValue, "rp") > 0) {
                        c = 1;
                    } else {
                        if (bArr3 == null || !BsonLite.intArrayValues(bArr3, "branches").contains(Integer.valueOf(value3))) {
                            result.add("syncOnePrivateMsg", BsonLite.document("id", intValue2, "c", documentValue));
                            result.add("showMessageStr", BsonLite.document("m", "该回复选项无效，请重新选择"));
                            return result;
                        }
                        documentValue = BsonLite.withProfileInt(documentValue, "rp", value3);
                    }
                    Object[] objArr3 = new Object[4];
                    objArr3[0] = "id";
                    objArr3[c] = intValue2;
                    objArr3[2] = "c";
                    objArr3[3] = documentValue;
                    result.add("syncOnePrivateMsg", BsonLite.document(objArr3));
                    return result;
                }
                byte[] withProfileBool = BsonLite.withProfileBool(documentValue, "pm".equals(str3) ? "rd" : str2, true);
                result.profile = BsonLite.withProfileDocument(bArr, "sd", BsonLite.withProfileDocument(doc4, str3, BsonLite.withProfileDocument(doc5, intValue2.toString(), withProfileBool)));
                result.add("pm".equals(str3) ? "syncOnePrivateMsg" : "syncOneSocialMsg", BsonLite.document("id", intValue2, "c", withProfileBool));
            } else if ("replyPrivateMsg".equals(str)) {
                result.add("showMessageStr", BsonLite.document("m", "该私信尚未收到，请返回列表刷新"));
            }
        }
        return result;
    }
}
