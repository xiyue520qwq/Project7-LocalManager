package com.project7.localmanager;

import com.project7.localmanager.LocalTutorialStore;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* loaded from: classes.dex */
final class BsonLite {
    static final byte[] EMPTY_DOCUMENT = {5, 0, 0, 0, 0};

    private BsonLite() {
    }

    static String stringValue(byte[] bArr, String str) {
        ByteBuffer order;
        int i;
        Element findElement = findElement(bArr, str);
        if (findElement == null || findElement.type != 2 || findElement.value.length < 5 || (i = (order = ByteBuffer.wrap(findElement.value).order(ByteOrder.LITTLE_ENDIAN)).getInt()) < 1 || i > order.remaining()) {
            return null;
        }
        byte[] bArr2 = new byte[i - 1];
        order.get(bArr2);
        return new String(bArr2, StandardCharsets.UTF_8);
    }

    static Integer intValue(byte[] bArr, String str) {
        Element findElement = findElement(bArr, str);
        if (findElement == null) {
            return null;
        }
        ByteBuffer order = ByteBuffer.wrap(findElement.value).order(ByteOrder.LITTLE_ENDIAN);
        if (findElement.type == 16 && order.remaining() == 4) {
            return Integer.valueOf(order.getInt());
        }
        if (findElement.type != 18 || order.remaining() != 8) {
            return null;
        }
        long j = order.getLong();
        if (j < -2147483648L || j > 2147483647L) {
            return null;
        }
        return Integer.valueOf((int) j);
    }

    static Boolean boolValue(byte[] bArr, String str) {
        Element findElement = findElement(bArr, str);
        if (findElement == null || findElement.type != 8) {
            return null;
        }
        if (findElement.value.length != 1) {
            return null;
        }
        return Boolean.valueOf(findElement.value[0] != 0);
    }

    static Number numericValue(byte[] bArr, String str) {
        Element findElement = findElement(bArr, str);
        if (findElement == null) {
            return null;
        }
        ByteBuffer order = ByteBuffer.wrap(findElement.value).order(ByteOrder.LITTLE_ENDIAN);
        if (findElement.type == 1 && order.remaining() == 8) {
            return Double.valueOf(order.getDouble());
        }
        if (findElement.type == 16 && order.remaining() == 4) {
            return Integer.valueOf(order.getInt());
        }
        if (findElement.type == 18 && order.remaining() == 8) {
            return Long.valueOf(order.getLong());
        }
        return null;
    }

    static int combatWinValue(byte[] bArr) {
        Boolean boolValue = boolValue(bArr, "w");
        if (boolValue != null) {
            return boolValue.booleanValue() ? 1 : 0;
        }
        Integer intValue = intValue(bArr, "w");
        return (intValue == null || intValue.intValue() == 0) ? 0 : 1;
    }

    static byte[] binaryValue(byte[] bArr, String str) {
        Element findElement = findElement(bArr, str);
        if (findElement == null || findElement.type != 5 || findElement.value.length < 5) {
            return null;
        }
        ByteBuffer order = ByteBuffer.wrap(findElement.value).order(ByteOrder.LITTLE_ENDIAN);
        int i = order.getInt();
        if ((order.get() & 255) != 0 || i < 0 || i != order.remaining()) {
            return null;
        }
        byte[] bArr2 = new byte[i];
        order.get(bArr2);
        return bArr2;
    }

    static byte[] documentValue(byte[] bArr, String str) {
        Element findElement = findElement(bArr, str);
        if (findElement == null) {
            return null;
        }
        if (findElement.type != 3 && findElement.type != 4) {
            return null;
        }
        return findElement.value;
    }

    static byte[] arrayValue(byte[] bArr, String str) {
        Element findElement = findElement(bArr, str);
        if (findElement == null || findElement.type != 4) {
            return null;
        }
        return findElement.value;
    }

    static List<Integer> intArrayValues(byte[] bArr, String str) {
        byte[] documentValue = documentValue(bArr, str);
        ArrayList arrayList = new ArrayList();
        if (documentValue == null || documentValue.length < 5) {
            return arrayList;
        }
        ByteBuffer order = ByteBuffer.wrap(documentValue).order(ByteOrder.LITTLE_ENDIAN);
        int i = order.getInt();
        if (i < 5 || i > documentValue.length) {
            return arrayList;
        }
        while (order.position() < i - 1) {
            int i2 = order.get() & 255;
            if (readCString(order, i) == null) {
                break;
            }
            if (i2 == 16 && order.remaining() >= 4) {
                arrayList.add(Integer.valueOf(order.getInt()));
            } else if (i2 == 18 && order.remaining() >= 8) {
                long j = order.getLong();
                if (j >= -2147483648L && j <= 2147483647L) {
                    arrayList.add(Integer.valueOf((int) j));
                }
            } else if (!skipValue(order, i2, i)) {
                break;
            }
        }
        return arrayList;
    }

    static byte[] intDocument(String str, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(16);
        writeCString(byteArrayOutputStream, str);
        writeLeInt(byteArrayOutputStream, i);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] statusSwitchReplyDocument(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeStringElement(byteArrayOutputStream, "r", "ok");
        writeStringElement(byteArrayOutputStream, "s", str);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] combatOfflineReplyDocument(int i, int i2, String str, Iterable<Integer> iterable, byte[] bArr, String str2, byte[] bArr2, LocalCombatCatalog localCombatCatalog) {
        return combatOfflineReplyDocument(i, i2, str, iterable, bArr, str2, bArr2, localCombatCatalog, Math.max(1, LocalResourceEngine.value(bArr2, "level")));
    }

    static byte[] combatOfflineReplyDocument(int i, int i2, String str, Iterable<Integer> iterable, byte[] bArr, String str2, byte[] bArr2, LocalCombatCatalog localCombatCatalog, int i3) {
        int max;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "t", i);
        writeIntElement(byteArrayOutputStream, "s", i2);
        if (str == null) {
            str = "local";
        }
        writeStringElement(byteArrayOutputStream, "f", str);
        writeIntArrayElement(byteArrayOutputStream, "h", iterable);
        if (bArr == null) {
            bArr = EMPTY_DOCUMENT;
        }
        writeDocumentElement(byteArrayOutputStream, "d", bArr);
        if (i == 1 || i == 2) {
            Integer intValue = intValue(bArr2, "level");
            i3 = intValue == null ? 1 : Math.max(1, intValue.intValue());
        }
        byte[] combatDataDocument = combatDataDocument(iterable, str2, bArr2, localCombatCatalog, i3);
        if (i == 1 || i == 2) {
            Integer intValue2 = intValue(documentValue(bArr2, "weeknum"), "wl");
            Integer intValue3 = intValue(bArr2, "level");
            Integer intValue4 = intValue(documentValue(bArr2, "weeknum"), "w");
            if (i == 2 && localCombatCatalog != null) {
                max = localCombatCatalog.storyMonsterLevel(i2, intValue4 == null ? 0 : intValue4.intValue());
            } else {
                max = intValue2 == null ? 1 : Math.max(1, intValue2.intValue());
            }
            combatDataDocument = withProfileInt(withProfileInt(combatDataDocument, "monster_lv", max), "hero_lv", intValue3 != null ? Math.max(1, intValue3.intValue()) : 1);
            if (i == 2 && localCombatCatalog != null) {
                byte[] wingEnhancement = localCombatCatalog.wingEnhancement(i2, bArr2);
                Number numericValue = numericValue(wingEnhancement, "battle_enhance");
                Integer intValue5 = intValue(wingEnhancement, "reduce_fatigue");
                if (numericValue != null) {
                    combatDataDocument = withProfileDouble(combatDataDocument, "battle_enhance", numericValue.doubleValue());
                }
                if (intValue5 != null) {
                    combatDataDocument = withProfileInt(combatDataDocument, "reduce_fatigue", intValue5.intValue());
                }
            }
        }
        writeDocumentElement(byteArrayOutputStream, "c", combatDataDocument);
        return finishDocument(byteArrayOutputStream);
    }

    private static byte[] combatDataDocument(Iterable<Integer> iterable, String str, byte[] bArr, LocalCombatCatalog localCombatCatalog, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ArrayList arrayList = new ArrayList();
        for (Integer num : iterable) {
            if (num != null && num.intValue() != 0) {
                byte[] profileHeroDocument = profileHeroDocument(bArr, num.intValue());
                arrayList.add(combatSkinDocument(num.intValue(), profileHeroDocument));
                Integer intValue = intValue(profileHeroDocument, "sl");
                Integer intValue2 = intValue(profileHeroDocument, "so");
                int intValue3 = intValue == null ? 1 : intValue.intValue();
                int intValue4 = intValue2 == null ? 1 : intValue2.intValue();
                byte[] withProfileInt = withProfileInt(heroCombatDataDocument(num.intValue(), localCombatCatalog.skillsFor(num.intValue(), intValue3, intValue4, profileHeroDocument), localCombatCatalog.artifactSkillsFor(num.intValue(), profileHeroDocument), localCombatCatalog.attributesFor(num.intValue(), intValue3, intValue4, profileHeroDocument, i, bArr)), "as", localCombatCatalog.awakeStage(num.intValue(), profileHeroDocument));
                String[] strArr = {str, "", "robot_id"};
                int i2 = 0;
                for (int i3 = 3; i2 < i3; i3 = 3) {
                    writeDocumentElement(byteArrayOutputStream, "('" + strArr[i2] + "', " + num + ")", withProfileInt);
                    i2++;
                }
            }
        }
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        writeDocumentElement(byteArrayOutputStream2, "heroes", finishDocument(byteArrayOutputStream));
        writeArrayElement(byteArrayOutputStream2, "skins", documentValue(document("skins", arrayList), "skins"));
        writeIntElement(byteArrayOutputStream2, "hero_lv", Math.max(1, i));
        writeIntElement(byteArrayOutputStream2, "monster_lv", 1);
        double monsterRate = LocalIntelligenceEffects.monsterRate(bArr);
        if (monsterRate > 0.0d) {
            writeDocumentElement(byteArrayOutputStream2, "monster", document("hurt_addition_rate", Double.valueOf(monsterRate), "max_hp_addition_rate", Double.valueOf(monsterRate)));
        }
        return finishDocument(byteArrayOutputStream2);
    }

    private static byte[] combatSkinDocument(int i, byte[] bArr) {
        String uuidValue = uuidValue(bArr, "cs");
        byte[] documentValue = uuidValue == null ? null : documentValue(documentValue(bArr, "sk"), uuidValue);
        Integer intValue = intValue(documentValue, "i");
        if (intValue != null && intValue.intValue() > 0 && !Boolean.TRUE.equals(boolValue(documentValue, "fb"))) {
            return withProfileString(documentValue, "u", uuidValue);
        }
        Locale locale = Locale.ROOT;
        Object[] objArr = {Integer.valueOf(i), Integer.valueOf(i)};
        byte[] bArr2 = EMPTY_DOCUMENT;
        return document("i", Integer.valueOf(i), "u", String.format(locale, "%08x%016x", objArr), "cd", bArr2, "pd", bArr2, "dn", 0);
    }

    static byte[] profileHeroDocument(byte[] bArr, int i) {
        for (byte[] bArr2 : documentEntries(documentValue(documentValue(bArr, "heromgr"), "hrs")).values()) {
            if (Integer.valueOf(i).equals(intValue(bArr2, "0"))) {
                return documentValue(bArr2, "1");
            }
        }
        return EMPTY_DOCUMENT;
    }

    private static byte[] heroCombatDataDocument(int i, int[][] iArr, int[][] iArr2, Map<String, Double> map) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeSkillPairsElement(byteArrayOutputStream, "0", iArr);
        writeSkillPairsElement(byteArrayOutputStream, "1", iArr2);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        writeBoolElement(byteArrayOutputStream2, "0", false);
        writeIntElement(byteArrayOutputStream2, "1", 0);
        ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream3, "id", i);
        ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
        for (Map.Entry<String, Double> entry : map.entrySet()) {
            byteArrayOutputStream4.write(1);
            writeCString(byteArrayOutputStream4, entry.getKey());
            byte[] array = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(entry.getValue().doubleValue()).array();
            byteArrayOutputStream4.write(array, 0, array.length);
        }
        writeDocumentElement(byteArrayOutputStream3, "d", finishDocument(byteArrayOutputStream4));
        byte[] bArr = EMPTY_DOCUMENT;
        writeDocumentElement(byteArrayOutputStream3, "a", bArr);
        writeArrayElement(byteArrayOutputStream3, "s", finishDocument(byteArrayOutputStream));
        writeArrayElement(byteArrayOutputStream3, "t", bArr);
        writeArrayElement(byteArrayOutputStream3, "ai", finishDocument(byteArrayOutputStream2));
        writeIntElement(byteArrayOutputStream3, "as", 0);
        return finishDocument(byteArrayOutputStream3);
    }

    private static void writeSkillPairsElement(ByteArrayOutputStream byteArrayOutputStream, String str, int[][] iArr) {
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        for (int i = 0; i < iArr.length; i++) {
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            writeIntElement(byteArrayOutputStream3, "0", iArr[i][0]);
            writeIntElement(byteArrayOutputStream3, "1", iArr[i][1]);
            writeArrayElement(byteArrayOutputStream2, Integer.toString(i), finishDocument(byteArrayOutputStream3));
        }
        writeArrayElement(byteArrayOutputStream, str, finishDocument(byteArrayOutputStream2));
    }

    static byte[] combatOfflineRewardDocument(int i, int i2, Iterable<Integer> iterable, Iterable<Integer> iterable2, int i3) {
        return combatOfflineRewardDocument(i, i2, iterable, iterable2, i3, EMPTY_DOCUMENT);
    }

    static byte[] combatOfflineRewardDocument(int i, int i2, Iterable<Integer> iterable, Iterable<Integer> iterable2, int i3, byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "t", i);
        writeIntElement(byteArrayOutputStream, "s", i2);
        writeIntArrayElement(byteArrayOutputStream, "h", iterable);
        writeIntArrayElement(byteArrayOutputStream, "x", iterable2);
        writeDocumentElement(byteArrayOutputStream, "r", bArr);
        writeIntElement(byteArrayOutputStream, "w", i3);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] areaStagesReplyDocument(int i) {
        return areaStagesReplyDocument(i, null);
    }

    static byte[] areaStagesReplyDocument(int i, LocalTutorialStore.Progress progress) {
        return areaStagesReplyDocument(i, progress, null);
    }

    static byte[] areaStagesReplyDocument(int i, LocalTutorialStore.Progress progress, byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "ai", i);
        writeDocumentElement(byteArrayOutputStream, "st", LocalCityProgress.stages(progress, i, bArr));
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] allAreaInfoReplyDocument(boolean z) {
        return allAreaInfoReplyDocument(z, null);
    }

    static byte[] allAreaInfoReplyDocument(boolean z, LocalTutorialStore.Progress progress) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeDocumentElement(byteArrayOutputStream, "ais", areasDocument(z, progress));
        writeDocumentElement(byteArrayOutputStream, "cd", cityValuesDocument(progress));
        writeBoolElement(byteArrayOutputStream, "sm", false);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] areaInfoReplyDocument(int i, boolean z) {
        return areaInfoReplyDocument(i, z, null);
    }

    static byte[] allAreaInfoReplyDocument(boolean z, LocalTutorialStore.Progress progress, byte[] bArr) {
        return withProfileDocument(withProfileDocument(allAreaInfoReplyDocument(z, progress), "cd", persistedCityValues(bArr, progress)), "ais", persistedAreas(z, progress, bArr));
    }

    static byte[] areaInfoReplyDocument(int i, boolean z, LocalTutorialStore.Progress progress, byte[] bArr) {
        byte[] bArr2;
        Object[] objArr = new Object[2];
        objArr[0] = "ai";
        if (z) {
            bArr2 = documentValue(persistedAreas(true, progress, bArr), "area_" + i);
        } else {
            bArr2 = EMPTY_DOCUMENT;
        }
        objArr[1] = bArr2;
        return document(objArr);
    }

    static byte[] areaInfoReplyDocument(int i, boolean z, LocalTutorialStore.Progress progress) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeDocumentElement(byteArrayOutputStream, "ai", z ? areaDocument(i, true, progress) : EMPTY_DOCUMENT);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] withLocalCityState(byte[] bArr, LocalTutorialStore.Progress progress) {
        if (progress == null || !progress.completedEvents.contains(1004)) {
            return bArr;
        }
        byte[] documentValue = documentValue(bArr, "city");
        if (documentValue == null) {
            documentValue = EMPTY_DOCUMENT;
        }
        byte[] replaceElement = replaceElement(documentValue, "areas", 3, persistedAreas(true, progress, bArr));
        byte[] cityValuesDocument = cityValuesDocument(progress);
        String[] strArr = {"av", "pn"};
        for (int i = 0; i < 2; i++) {
            String str = strArr[i];
            Integer intValue = intValue(cityValuesDocument, str);
            if (intValue != null) {
                replaceElement = replaceElement(replaceElement, str, 16, intBytes(intValue.intValue()));
            }
        }
        return replaceElement(bArr, "city", 3, replaceElement);
    }

    private static byte[] persistedAreas(boolean z, LocalTutorialStore.Progress progress, byte[] bArr) {
        byte[] areasDocument = areasDocument(z, progress, bArr);
        Map<Integer, Integer> cores = LocalServiceEngine.cores(bArr);
        byte[] documentValue = documentValue(documentValue(bArr, "city"), "areas");
        for (String str : keys(areasDocument)) {
            byte[] documentValue2 = documentValue(documentValue, str);
            byte[] documentValue3 = documentValue(areasDocument, str);
            Integer num = 2;
            byte[] replaceElement = replaceElement(documentValue3, "st", 4, withProfileBool(withProfileBool(documentValue(documentValue3, "st"), "1", num.equals(cores.get(intValue(documentValue3, "id")))), "2", LocalChapterCityEngine.locked(bArr, intValue(documentValue3, "id").intValue())));
            areasDocument = withProfileDocument(areasDocument, str, replaceElement);
            if (documentValue2 != null) {
                String[] strArr = {"id", "st", "stage"};
                int i = 0;
                while (true) {
                    int i2 = 3;
                    if (i >= 3) {
                        break;
                    }
                    String str2 = strArr[i];
                    if (str2.equals("st")) {
                        i2 = 4;
                    } else if (str2.equals("id")) {
                        i2 = 16;
                    }
                    documentValue2 = replaceElement(documentValue2, str2, i2, str2.equals("id") ? intBytes(intValue(replaceElement, str2).intValue()) : documentValue(replaceElement, str2));
                    i++;
                }
                areasDocument = withProfileDocument(areasDocument, str, documentValue2);
            }
        }
        return areasDocument;
    }

    private static byte[] areasDocument(boolean z, LocalTutorialStore.Progress progress) {
        return areasDocument(z, progress, null);
    }

    private static byte[] areasDocument(boolean z, LocalTutorialStore.Progress progress, byte[] bArr) {
        if (!z) {
            return EMPTY_DOCUMENT;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 1; i <= 8; i++) {
            writeDocumentElement(byteArrayOutputStream, "area_" + i, areaDocument(i, z, progress, bArr));
        }
        return finishDocument(byteArrayOutputStream);
    }

    static int cityAreaStatus(LocalTutorialStore.Progress progress, int i) {
        return LocalCityProgress.status(progress, i);
    }

    private static byte[] areaDocument(int i, boolean z, LocalTutorialStore.Progress progress) {
        return areaDocument(i, z, progress, null);
    }

    private static byte[] areaDocument(int i, boolean z, LocalTutorialStore.Progress progress, byte[] bArr) {
        int i2 = 2;
        if (i < 1 || i > 8) {
            i = 2;
        }
        if (z) {
            if (progress != null) {
                i2 = LocalCityProgress.status(progress, i, bArr);
            } else if (i == 1) {
                i2 = 1;
            }
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "0", i2);
        writeBoolElement(byteArrayOutputStream, "1", false);
        writeBoolElement(byteArrayOutputStream, "2", false);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream2, "id", i);
        writeArrayElement(byteArrayOutputStream2, "st", finishDocument(byteArrayOutputStream));
        writeIntElement(byteArrayOutputStream2, "lv", 1);
        byte[] bArr2 = EMPTY_DOCUMENT;
        writeDocumentElement(byteArrayOutputStream2, "bd", bArr2);
        writeDocumentElement(byteArrayOutputStream2, "dbd", bArr2);
        writeIntElement(byteArrayOutputStream2, "mbn", 4);
        writeDocumentElement(byteArrayOutputStream2, "stage", LocalCityProgress.mapStages(progress, i, bArr));
        return finishDocument(byteArrayOutputStream2);
    }

    private static byte[] cityValuesDocument(LocalTutorialStore.Progress progress) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "av", (progress == null || progress.patrolActions < 0) ? 24 : progress.patrolActions);
        writeIntElement(byteArrayOutputStream, "pn", progress != null ? 1 + progress.patrolCount : 1);
        writeIntElement(byteArrayOutputStream, "bf", 0);
        writeIntElement(byteArrayOutputStream, "dv", 0);
        writeIntElement(byteArrayOutputStream, "ev", 0);
        writeIntElement(byteArrayOutputStream, "fv", 0);
        writeIntElement(byteArrayOutputStream, "rv", 0);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] cityDataReplyDocument(LocalTutorialStore.Progress progress) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeDocumentElement(byteArrayOutputStream, "cd", cityValuesDocument(progress));
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] patrolReplyDocument(boolean z, Iterable<Integer> iterable) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeBoolElement(byteArrayOutputStream, "s", z);
        writeBoolElement(byteArrayOutputStream, "rs", z);
        writeDocumentElement(byteArrayOutputStream, "ext", EMPTY_DOCUMENT);
        writeIntArrayElement(byteArrayOutputStream, "ev", iterable);
        return finishDocument(byteArrayOutputStream);
    }

    private static byte[] persistedCityValues(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] documentValue = documentValue(withPatrolProgress(bArr, progress), "city");
        if (documentValue == null) {
            documentValue = EMPTY_DOCUMENT;
        }
        byte[] cityValuesDocument = cityValuesDocument(progress);
        for (String str : keys(cityValuesDocument)) {
            if (intValue(documentValue, str) == null) {
                documentValue = withProfileInt(documentValue, str, intValue(cityValuesDocument, str).intValue());
            }
        }
        return documentValue;
    }

    static byte[] cityDataReplyDocument(LocalTutorialStore.Progress progress, byte[] bArr) {
        return document("cd", persistedCityValues(bArr, progress));
    }

    static byte[] heroValueDocument(int i, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "h", i);
        writeIntElement(byteArrayOutputStream, "v", i2);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] friendlyRewardDocument(Map<Integer, Integer> map) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            writeIntElement(byteArrayOutputStream, entry.getKey().toString(), entry.getValue().intValue());
        }
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        writeDocumentElement(byteArrayOutputStream2, "fr", finishDocument(byteArrayOutputStream));
        writeDocumentElement(byteArrayOutputStream2, "n", EMPTY_DOCUMENT);
        return finishDocument(byteArrayOutputStream2);
    }

    static byte[] withPatrolProgress(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] bArr2 = bArr;
        if (progress == null) {
            return bArr2;
        }
        if (progress.sandglassActions >= 0) {
            bArr2 = withProfileDocument(bArr2, "weeknum", withProfileInt(LocalResourceEngine.doc(bArr2, "weeknum"), "sgw", progress.sandglassActions));
        }
        byte[] documentValue = documentValue(bArr2, "heromgr");
        byte[] documentValue2 = documentValue(documentValue, "hrs");
        if (documentValue2 != null) {
            int i = 0;
            while (true) {
                String num = Integer.toString(i);
                byte[] documentValue3 = documentValue(documentValue2, num);
                if (documentValue3 == null) {
                    break;
                }
                Integer intValue = intValue(documentValue3, "0");
                byte[] documentValue4 = documentValue(documentValue3, "1");
                if (documentValue4 != null) {
                    if (progress.patrolFatigue.containsKey(intValue)) {
                        documentValue4 = replaceElement(documentValue4, "cf", 16, intBytes(progress.patrolFatigue.get(intValue).intValue()));
                    }
                    if (progress.patrolFriendly.containsKey(intValue)) {
                        documentValue4 = replaceElement(documentValue4, "ef", 16, intBytes(progress.patrolFriendly.get(intValue).intValue()));
                    }
                    documentValue2 = replaceElement(documentValue2, num, 4, replaceElement(documentValue3, "1", 3, documentValue4));
                }
                i++;
            }
            bArr2 = replaceElement(bArr2, "heromgr", 3, replaceElement(documentValue, "hrs", 4, documentValue2));
        }
        if (progress.patrolActions >= 0) {
            byte[] documentValue5 = documentValue(bArr2, "city");
            if (documentValue5 == null) {
                documentValue5 = EMPTY_DOCUMENT;
            }
            return replaceElement(bArr2, "city", 3, replaceElement(replaceElement(documentValue5, "av", 16, intBytes(progress.patrolActions)), "pn", 16, intBytes(progress.patrolCount + 1)));
        }
        return bArr2;
    }

    private static byte[] areaStagesDocument(int i, LocalTutorialStore.Progress progress) {
        return LocalCityProgress.stages(progress, i);
    }

    private static boolean hasBattle(LocalTutorialStore.Progress progress, int i) {
        Set<Integer> set = progress == null ? null : progress.eventConditions.get("battle");
        return set != null && set.contains(Integer.valueOf(i));
    }

    static byte[] luckyDrawFileReplyDocument(boolean z, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeBoolElement(byteArrayOutputStream, "rt", z);
        writeIntElement(byteArrayOutputStream, "t", i);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] luckyDrawQuitReplyDocument(boolean z, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeBoolElement(byteArrayOutputStream, "rt", z);
        writeIntElement(byteArrayOutputStream, "t", i);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] luckyDrawFileContentsReplyDocument(boolean z, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i2 = 0; i2 < 6; i2++) {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            writeIntElement(byteArrayOutputStream2, "index", i2);
            writeBoolElement(byteArrayOutputStream2, "is_open", false);
            writeIntArrayElement(byteArrayOutputStream2, "hero", Collections.singletonList(24));
            writeIntElement(byteArrayOutputStream2, "hero_file", 1);
            writeBoolElement(byteArrayOutputStream2, "get_hero", false);
            writeDocumentElement(byteArrayOutputStream, Integer.toString(i2), finishDocument(byteArrayOutputStream2));
        }
        ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
        writeBoolElement(byteArrayOutputStream3, "rt", z);
        writeDocumentElement(byteArrayOutputStream3, "info", finishDocument(byteArrayOutputStream));
        writeIntElement(byteArrayOutputStream3, "t", i);
        return finishDocument(byteArrayOutputStream3);
    }

    static byte[] luckyDrawCardReplyDocument(boolean z, int i, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "index", i);
        writeBoolElement(byteArrayOutputStream, "is_open", z);
        writeIntArrayElement(byteArrayOutputStream, "hero", Collections.singletonList(24));
        writeIntElement(byteArrayOutputStream, "hero_file", 1);
        writeBoolElement(byteArrayOutputStream, "get_hero", false);
        byte[] bArr = EMPTY_DOCUMENT;
        writeDocumentElement(byteArrayOutputStream, "other_reward", bArr);
        writeDocumentElement(byteArrayOutputStream, "jiaozhi", bArr);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        writeBoolElement(byteArrayOutputStream2, "rt", z);
        writeDocumentElement(byteArrayOutputStream2, "info", finishDocument(byteArrayOutputStream));
        writeDocumentElement(byteArrayOutputStream2, "prog", bArr);
        writeIntElement(byteArrayOutputStream2, "t", i2);
        return finishDocument(byteArrayOutputStream2);
    }

    static byte[] stringDocument(String str, String str2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (str2 == null) {
            str2 = "";
        }
        writeStringElement(byteArrayOutputStream, str, str2);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] loginFailureDocument(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "e", 5);
        if (str == null) {
            str = "";
        }
        writeStringElement(byteArrayOutputStream, "m", str);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] gamePlaySwitchReplyDocument(String str, int i, String str2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (str == null) {
            str = "";
        }
        writeStringElement(byteArrayOutputStream, "g", str);
        writeIntElement(byteArrayOutputStream, "s", i);
        if (str2 == null) {
            str2 = "";
        }
        writeStringElement(byteArrayOutputStream, "m", str2);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] emptyEventListsDocument() {
        return eventListsDocument(0, 0);
    }

    static byte[] eventListsDocument(int i, int i2) {
        return eventListsDocument(i == 0 ? Collections.emptyList() : Collections.singletonList(Integer.valueOf(i)), i2 == 0 ? Collections.emptyList() : Collections.singletonList(Integer.valueOf(i2)));
    }

    static byte[] eventListsDocument(Iterable<Integer> iterable, Iterable<Integer> iterable2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeEventAvailabilityArray(byteArrayOutputStream, "a", iterable);
        writeIntArrayElement(byteArrayOutputStream, "p", iterable2);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] eventReplyDocument(int i, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "e", i);
        writeIntElement(byteArrayOutputStream, "r", i2);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] eventRewardDocument(int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "e", i);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        if (i == 1001) {
            writeIntArrayElement(byteArrayOutputStream2, "hero", Collections.singletonList(24));
        } else if (i == 1024) {
            writeIntArrayElement(byteArrayOutputStream2, "cg", Collections.singletonList(1));
        }
        writeDocumentElement(byteArrayOutputStream, "r", finishDocument(byteArrayOutputStream2));
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] addHeroDocument(int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "h", i);
        writeDocumentElement(byteArrayOutputStream, "d", heroDataDocument(i));
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] eventDocument(int i) {
        return intDocument("e", i);
    }

    static byte[] intListDocument(String str, Iterable<Integer> iterable) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        Iterator<Integer> it = iterable.iterator();
        int i = 0;
        while (it.hasNext()) {
            writeIntElement(byteArrayOutputStream2, Integer.toString(i), it.next().intValue());
            i++;
        }
        writeArrayElement(byteArrayOutputStream, str, finishDocument(byteArrayOutputStream2));
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] withAccountIdentity(byte[] bArr, String str, int i) {
        return withAccountCredentials(replaceElement(bArr, "name", 2, stringBytes(str)), str, i);
    }

    static byte[] withAccountCredentials(byte[] bArr, String str, int i) {
        return replaceElement(replaceElement(replaceElement(bArr, "an", 2, stringBytes(str)), "account", 2, stringBytes(str)), "st", 16, intBytes(i));
    }

    static byte[] withProfileInt(byte[] bArr, String str, int i) {
        return replaceElement(bArr, str, 16, intBytes(i));
    }

    static byte[] withProfileDouble(byte[] bArr, String str, double d) {
        if (!Double.isFinite(d)) {
            throw new IllegalArgumentException("finite BSON number required");
        }
        return replaceElement(bArr, str, 1, ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(d).array());
    }

    static byte[] withProfileBool(byte[] bArr, String str, boolean z) {
        return replaceElement(bArr, str, 8, boolBytes(z));
    }

    static byte[] withProfileDocument(byte[] bArr, String str, byte[] bArr2) {
        return replaceElement(bArr, str, 3, bArr2);
    }

    static byte[] withProfileArray(byte[] bArr, String str, List<?> list) {
        return replaceElement(bArr, str, 4, listBytes(list));
    }

    static byte[] withCopiedValue(byte[] bArr, String str, byte[] bArr2, String str2) {
        Element findElement = findElement(bArr2, str2);
        if (findElement == null) {
            throw new IllegalArgumentException("missing BSON source value");
        }
        return replaceElement(bArr, str, findElement.type, findElement.value);
    }

    static byte[] withoutProfileKey(byte[] bArr, String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        int i = order.getInt();
        while (order.position() < i - 1) {
            int position = order.position();
            int i2 = order.get() & 255;
            String readCString = readCString(order, i);
            if (readCString == null || !skipValue(order, i2, i)) {
                throw new IllegalArgumentException("invalid BSON");
            }
            if (!str.equals(readCString)) {
                byteArrayOutputStream.write(bArr, position, order.position() - position);
            }
        }
        return finishDocument(byteArrayOutputStream);
    }

    static final class ArrayValue {
        final byte[] bytes;

        ArrayValue(byte[] bArr) {
            this.bytes = bArr;
        }
    }

    static final class BinaryValue {
        final byte[] bytes;

        BinaryValue(byte[] bArr) {
            this.bytes = bArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.util.LinkedHashMap, java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v17, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.util.LinkedHashMap, java.util.Map] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Double] */
    /* JADX WARN: Type inference failed for: r3v21, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r3v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v24, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
    static Object messagePackValue(byte[] bArr, boolean z) {
        ?? valueOf;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : keys(bArr)) {
            Element findElement = findElement(bArr, str);
            ByteBuffer order = ByteBuffer.wrap(findElement.value).order(ByteOrder.LITTLE_ENDIAN);
            switch (findElement.type) {
                case 1:
                    valueOf = Double.valueOf(order.getDouble());
                    break;
                case 2:
                    valueOf = stringValue(bArr, str);
                    break;
                case 3:
                    valueOf = messagePackValue(findElement.value, false);
                    break;
                case 4:
                    valueOf = messagePackValue(findElement.value, true);
                    break;
                case 5:
                    int i = order.getInt();
                    int i2 = order.get() & 255;
                    byte[] bArr2 = new byte[i];
                    order.get(bArr2);
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put("$binary", Base64.getEncoder().encodeToString(bArr2));
                    linkedHashMap2.put("$type", String.format(Locale.ROOT, "%02x", Integer.valueOf(i2)));
                    valueOf = linkedHashMap2;
                    break;
                case 6:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 17:
                default:
                    throw new IllegalArgumentException("unsupported avatar BSON type " + findElement.type);
                case 7:
                    valueOf = new LinkedHashMap();
                    valueOf.put("$oid", uuidValue(bArr, str));
                    break;
                case 8:
                    valueOf = Boolean.valueOf(findElement.value[0] != 0);
                    break;
                case 9:
                    valueOf = new LinkedHashMap();
                    valueOf.put("$date", Long.valueOf(order.getLong()));
                    break;
                case 10:
                    valueOf = 0;
                    break;
                case 16:
                    valueOf = Integer.valueOf(order.getInt());
                    break;
                case 18:
                    valueOf = Long.valueOf(order.getLong());
                    break;
            }
            linkedHashMap.put(str, valueOf);
        }
        return z ? new ArrayList(linkedHashMap.values()) : linkedHashMap;
    }

    static byte[] withProfileUuid(byte[] bArr, String str, String str2) {
        return replaceElement(bArr, str, 7, new UuidValue(str2).bytes);
    }

    static String uuidValue(byte[] bArr, String str) {
        Element findElement = findElement(bArr, str);
        if (findElement != null && findElement.type == 7 && findElement.value.length == 12) {
            StringBuilder sb = new StringBuilder();
            for (byte b : findElement.value) {
                sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & 255)));
            }
            return sb.toString();
        }
        String stringValue = stringValue(bArr, str);
        if (stringValue == null || !stringValue.matches("[0-9a-fA-F]{24}")) {
            return null;
        }
        return stringValue.toLowerCase(Locale.ROOT);
    }

    static List<String> keys(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        if (bArr == null || bArr.length < 5) {
            return arrayList;
        }
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        int i = order.getInt();
        if (i < 5 || i > bArr.length) {
            return arrayList;
        }
        while (order.position() < i - 1) {
            int i2 = order.get() & 255;
            String readCString = readCString(order, i);
            if (readCString == null || !skipValue(order, i2, i)) {
                break;
            }
            arrayList.add(readCString);
        }
        return arrayList;
    }

    static Map<String, byte[]> documentEntries(byte[] bArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (bArr == null || bArr.length < 5) {
            return linkedHashMap;
        }
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        int i = order.getInt();
        if (i < 5 || i > bArr.length) {
            return linkedHashMap;
        }
        while (order.position() < i - 1) {
            int i2 = order.get() & 255;
            String readCString = readCString(order, i);
            int position = order.position();
            if (readCString == null || !skipValue(order, i2, i)) {
                break;
            }
            if (i2 == 3 || i2 == 4) {
                linkedHashMap.put(readCString, Arrays.copyOfRange(bArr, position, order.position()));
            }
        }
        return linkedHashMap;
    }

    static byte[] withHeroDocument(byte[] bArr, int i, byte[] bArr2) {
        byte[] documentValue = documentValue(bArr, "heromgr");
        byte[] documentValue2 = documentValue(documentValue, "hrs");
        for (Map.Entry<String, byte[]> entry : documentEntries(documentValue2).entrySet()) {
            String key = entry.getKey();
            byte[] value = entry.getValue();
            if (Integer.valueOf(i).equals(intValue(value, "0"))) {
                return withProfileDocument(bArr, "heromgr", replaceElement(documentValue, "hrs", 4, replaceElement(documentValue2, key, 4, replaceElement(value, "1", 3, bArr2))));
            }
        }
        throw new IllegalArgumentException("hero is not owned");
    }

    static byte[] document(Object... objArr) {
        if (objArr.length % 2 != 0) {
            throw new IllegalArgumentException("BSON key/value pairs required");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i < objArr.length; i += 2) {
            writeValue(byteArrayOutputStream, (String) objArr[i], objArr[i + 1]);
        }
        return finishDocument(byteArrayOutputStream);
    }

    private static byte[] listBytes(List<?> list) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i < list.size(); i++) {
            writeValue(byteArrayOutputStream, Integer.toString(i), list.get(i));
        }
        return finishDocument(byteArrayOutputStream);
    }

    private static void writeValue(ByteArrayOutputStream byteArrayOutputStream, String str, Object obj) {
        if (!(obj instanceof Integer)) {
            if (obj instanceof Double) {
                byteArrayOutputStream.write(1);
                writeCString(byteArrayOutputStream, str);
                byte[] array = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(((Double) obj).doubleValue()).array();
                byteArrayOutputStream.write(array, 0, array.length);
                return;
            }
            if (!(obj instanceof Boolean)) {
                if (!(obj instanceof String)) {
                    if (!(obj instanceof byte[])) {
                        if (obj instanceof BinaryValue) {
                            byteArrayOutputStream.write(5);
                            writeCString(byteArrayOutputStream, str);
                            byte[] bArr = ((BinaryValue) obj).bytes;
                            writeLeInt(byteArrayOutputStream, bArr.length);
                            byteArrayOutputStream.write(0);
                            byteArrayOutputStream.write(bArr, 0, bArr.length);
                            return;
                        }
                        if (!(obj instanceof ArrayValue)) {
                            if (!(obj instanceof UuidValue)) {
                                if (!(obj instanceof List)) {
                                    if (obj != null) {
                                        throw new IllegalArgumentException("unsupported BSON value");
                                    }
                                    writeNullElement(byteArrayOutputStream, str);
                                    return;
                                }
                                writeArrayElement(byteArrayOutputStream, str, listBytes((List) obj));
                                return;
                            }
                            writeObjectIdElement(byteArrayOutputStream, str, ((UuidValue) obj).bytes);
                            return;
                        }
                        writeArrayElement(byteArrayOutputStream, str, ((ArrayValue) obj).bytes);
                        return;
                    }
                    writeDocumentElement(byteArrayOutputStream, str, (byte[]) obj);
                    return;
                }
                writeStringElement(byteArrayOutputStream, str, (String) obj);
                return;
            }
            writeBoolElement(byteArrayOutputStream, str, ((Boolean) obj).booleanValue());
            return;
        }
        writeIntElement(byteArrayOutputStream, str, ((Integer) obj).intValue());
    }

    static final class UuidValue {
        final byte[] bytes = new byte[12];

        UuidValue(String str) {
            if (str == null || !str.matches("[0-9a-fA-F]{24}")) {
                throw new IllegalArgumentException("invalid UUID");
            }
            for (int i = 0; i < 12; i++) {
                int i2 = i * 2;
                this.bytes[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
            }
        }
    }

    static byte[] withProfileString(byte[] bArr, String str, String str2) {
        return replaceElement(bArr, str, 2, stringBytes(str2));
    }

    static byte[] withProfileIntArray(byte[] bArr, String str, Iterable<Integer> iterable) {
        return replaceElement(bArr, str, 4, profileIntArrayBytes(iterable));
    }

    private static byte[] profileIntArrayBytes(Iterable<Integer> iterable) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        for (Integer num : iterable) {
            if (num != null) {
                writeIntElement(byteArrayOutputStream, Integer.toString(i), num.intValue());
                i++;
            }
        }
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] bbsSkinReplyDocument(Iterable<Integer> iterable, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeArrayElement(byteArrayOutputStream, "tbk", profileIntArrayBytes(iterable));
        writeIntElement(byteArrayOutputStream, "bk", i);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] withPlayerName(byte[] bArr, String str, int i) {
        return replaceElement(replaceElement(bArr, "name", 2, stringBytes(str)), "st", 16, intBytes(i));
    }

    static byte[] withRequiredClientDefaults(byte[] bArr) {
        byte[] documentValue = documentValue(bArr, "city");
        if (intValue(documentValue, "dvc") == null) {
            if (documentValue == null) {
                documentValue = EMPTY_DOCUMENT;
            }
            bArr = withProfileDocument(bArr, "city", withProfileInt(documentValue, "dvc", 0));
        }
        byte[] documentValue2 = documentValue(bArr, "fnd");
        if (documentValue2 == null) {
            documentValue2 = EMPTY_DOCUMENT;
        }
        byte[] documentValue3 = documentValue(documentValue2, "s");
        if (documentValue3 == null) {
            documentValue3 = EMPTY_DOCUMENT;
        }
        if (documentValue(documentValue3, "player_home") == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            writeStringElement(byteArrayOutputStream, "cur", "local_default");
            bArr = replaceElement(bArr, "fnd", 3, replaceElement(documentValue2, "s", 3, replaceElement(documentValue3, "player_home", 3, finishDocument(byteArrayOutputStream))));
        }
        byte[] documentValue4 = documentValue(documentValue(bArr, "heromgr"), "hrs");
        int i = 0;
        while (documentValue4 != null) {
            byte[] documentValue5 = documentValue(documentValue4, Integer.toString(i));
            if (documentValue5 == null) {
                break;
            }
            byte[] documentValue6 = documentValue(documentValue5, "1");
            byte[] documentValue7 = documentValue(documentValue6, "clm");
            if (documentValue7 != null) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < 19; i2++) {
                    String num = Integer.toString(i2);
                    Integer intValue = intValue(documentValue7, num);
                    arrayList.add(Boolean.valueOf(Boolean.TRUE.equals(boolValue(documentValue7, num)) || !(intValue == null || intValue.intValue() == 0)));
                }
                byte[] withProfileArray = withProfileArray(documentValue6, "clm", arrayList);
                if (!Arrays.equals(documentValue6, withProfileArray)) {
                    bArr = withHeroDocument(bArr, intValue(documentValue5, "0").intValue(), withProfileArray);
                }
            }
            i++;
        }
        return bArr;
    }

    static byte[] withTutorialHeroes(byte[] bArr, LocalTutorialStore.Progress progress, String str) {
        if (progress == null) {
            return bArr;
        }
        if (progress.completedEvents.contains(1001)) {
            return withHero(bArr, 24);
        }
        return bArr;
    }

    static byte[] withHero(byte[] bArr, int i) {
        byte[] documentValue = documentValue(bArr, "heromgr");
        if (documentValue == null) {
            documentValue = EMPTY_DOCUMENT;
        }
        byte[] documentValue2 = documentValue(documentValue, "hrs");
        if (documentValue2 == null) {
            documentValue2 = EMPTY_DOCUMENT;
        }
        int i2 = 0;
        while (true) {
            byte[] documentValue3 = documentValue(documentValue2, Integer.toString(i2));
            if (documentValue3 != null) {
                if (Integer.valueOf(i).equals(intValue(documentValue3, "0"))) {
                    return bArr;
                }
                i2++;
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                writeIntElement(byteArrayOutputStream, "0", i);
                byte[] heroDataDocument = heroDataDocument(i);
                byte[] documentValue4 = documentValue(documentValue, "ps");
                List<Integer> intArrayValues = intArrayValues(documentValue4, Integer.toString(i));
                if (!intArrayValues.isEmpty()) {
                    String str = "sk";
                    byte[] documentValue5 = documentValue(heroDataDocument, "sk");
                    for (Iterator<Integer> it = intArrayValues.iterator(); it.hasNext(); it = it) {
                        int intValue = it.next().intValue();
                        String substring = UUID.randomUUID().toString().replace("-", "").substring(0, 24);
                        documentValue5 = withProfileDocument(documentValue5, substring, LocalCommerceEngine.purchasedSkin(intValue, substring, System.currentTimeMillis() / 1000));
                        str = str;
                    }
                    heroDataDocument = withProfileDocument(heroDataDocument, str, documentValue5);
                    documentValue = withProfileDocument(documentValue, "ps", withProfileArray(documentValue4, Integer.toString(i), Collections.emptyList()));
                }
                writeDocumentElement(byteArrayOutputStream, "1", heroDataDocument);
                byte[] replaceElement = replaceElement(documentValue, "hrs", 4, replaceElement(documentValue2, Integer.toString(i2), 4, finishDocument(byteArrayOutputStream)));
                if (documentValue(replaceElement, "cfs") == null) {
                    replaceElement = replaceElement(replaceElement, "cfs", 3, EMPTY_DOCUMENT);
                }
                return replaceElement(bArr, "heromgr", 3, replaceElement);
            }
        }
    }

    private static byte[] heroDataDocument(int i) {
        int i2 = i == 24 ? 2 : 1;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream, "o", 1);
        writeIntElement(byteArrayOutputStream, "ss", 3);
        byte[] bArr = EMPTY_DOCUMENT;
        writeDocumentElement(byteArrayOutputStream, "oa", bArr);
        writeDocumentElement(byteArrayOutputStream, "ot", bArr);
        writeDocumentElement(byteArrayOutputStream, "rotc", bArr);
        writeEmptyArrayElement(byteArrayOutputStream, "sl");
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        writeEmptyArrayElement(byteArrayOutputStream2, "items");
        writeIntElement(byteArrayOutputStream2, "mc", 25);
        String format = String.format(Locale.ROOT, "%08x%016x", Integer.valueOf(i), Integer.valueOf(i));
        ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream3, "i", i);
        writeStringElement(byteArrayOutputStream3, "u", format);
        writeBoolElement(byteArrayOutputStream3, "fb", false);
        ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
        writeDocumentElement(byteArrayOutputStream4, format, finishDocument(byteArrayOutputStream3));
        ByteArrayOutputStream byteArrayOutputStream5 = new ByteArrayOutputStream();
        writeIntElement(byteArrayOutputStream5, "sl", i2);
        writeIntElement(byteArrayOutputStream5, "so", 1);
        writeIntElement(byteArrayOutputStream5, "cf", 100);
        writeDocumentElement(byteArrayOutputStream5, "ar", finishDocument(byteArrayOutputStream));
        writeIntElement(byteArrayOutputStream5, "ef", 0);
        writeDocumentElement(byteArrayOutputStream5, "ti", finishDocument(byteArrayOutputStream2));
        writeNullElement(byteArrayOutputStream5, "cat");
        writeObjectIdElement(byteArrayOutputStream5, "cs", objectIdBytes(i));
        writeDocumentElement(byteArrayOutputStream5, "sk", finishDocument(byteArrayOutputStream4));
        return finishDocument(byteArrayOutputStream5);
    }

    private static byte[] objectIdBytes(int i) {
        byte[] bArr = new byte[12];
        byte b = (byte) i;
        bArr[3] = b;
        bArr[11] = b;
        return bArr;
    }

    static byte[] withTutorialProgress(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] documentValue = documentValue(bArr, "eventTrigger");
        if (documentValue == null) {
            documentValue = EMPTY_DOCUMENT;
        }
        byte[] replaceElement = replaceElement(replaceElement(documentValue, "ecm", 4, intArrayBytes(progress.completedEvents)), "pe", 4, intArrayBytes(progress.processingEvents));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeEventAvailabilityArray(byteArrayOutputStream, "ae", progress.availableEvents);
        byte[] replaceElement2 = replaceElement(replaceElement, "ae", 4, documentValue(finishDocument(byteArrayOutputStream), "ae"));
        byte[] documentValue2 = documentValue(bArr, "nbd");
        if (documentValue2 == null) {
            documentValue2 = EMPTY_DOCUMENT;
        }
        return replaceElement(replaceElement(bArr, "eventTrigger", 3, replaceElement2), "nbd", 3, replaceElement(replaceElement(replaceElement(documentValue2, "fn", 4, intArrayBytes(progress.finishedNewbees)), "pe", 4, intArrayBytes(progress.processingNewbees)), "ip", 8, boolBytes(progress.initPrologue)));
    }

    static byte[] playerNameReplyDocument(boolean z, boolean z2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeBoolElement(byteArrayOutputStream, "r", z);
        writeBoolElement(byteArrayOutputStream, "in", z2);
        return finishDocument(byteArrayOutputStream);
    }

    static byte[] callbackDocument(int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(3);
        writeCString(byteArrayOutputStream, "_r_");
        byte[] bArr = EMPTY_DOCUMENT;
        byteArrayOutputStream.write(bArr, 0, bArr.length);
        byteArrayOutputStream.write(16);
        writeCString(byteArrayOutputStream, "_cbid_");
        writeLeInt(byteArrayOutputStream, i);
        return finishDocument(byteArrayOutputStream);
    }

    static String debugDocument(byte[] bArr) {
        return debugDocument(bArr, 0);
    }

    private static String debugDocument(byte[] bArr, int i) {
        ByteBuffer order;
        int i2;
        if (bArr == null || bArr.length < 5 || i > 3 || (i2 = (order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN)).getInt()) < 5 || i2 > bArr.length) {
            return "<invalid>";
        }
        StringBuilder sb = new StringBuilder("{");
        boolean z = true;
        while (order.position() < i2 - 1) {
            int i3 = order.get() & 255;
            String readCString = readCString(order, i2);
            if (readCString == null) {
                sb.append("<truncated>}");
                return sb.toString();
            }
            int position = order.position();
            if (!skipValue(order, i3, i2)) {
                sb.append("<unsupported:");
                sb.append(i3);
                sb.append(">}");
                return sb.toString();
            }
            byte[] bArr2 = new byte[order.position() - position];
            int position2 = order.position();
            order.get(bArr2);
            if (!z) {
                sb.append(',');
            }
            z = false;
            sb.append(readCString);
            sb.append('=');
            sb.append(debugValue(i3, bArr2, i));
        }
        sb.append('}');
        return sb.toString();
    }

    private static String debugValue(int i, byte[] bArr, int i2) {
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        switch (i) {
            case 2:
                int i3 = order.getInt();
                if (i3 < 1 || i3 > order.remaining()) {
                    return "<invalid-string>";
                }
                byte[] bArr2 = new byte[i3 - 1];
                order.get(bArr2);
                return '\"' + new String(bArr2, StandardCharsets.UTF_8) + '\"';
            case 3:
            case 4:
                return debugDocument(bArr, i2 + 1);
            case 5:
                return "<binary:" + order.getInt() + ">";
            case 6:
            case 9:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 17:
            default:
                return String.format(Locale.US, "<type:%02x bytes:%d>", Integer.valueOf(i), Integer.valueOf(bArr.length));
            case 7:
                return "ObjectId(" + hex(bArr, 12) + ")";
            case 8:
                return bArr[0] == 0 ? "false" : "true";
            case 10:
                return "null";
            case 16:
                return Integer.toString(order.getInt());
            case 18:
                return Long.toString(order.getLong());
        }
    }

    private static String hex(byte[] bArr, int i) {
        StringBuilder sb = new StringBuilder(Math.min(bArr.length, i) * 2);
        for (int i2 = 0; i2 < bArr.length && i2 < i; i2++) {
            sb.append(String.format(Locale.US, "%02x", Integer.valueOf(bArr[i2] & 255)));
        }
        return sb.toString();
    }

    private static String readCString(ByteBuffer byteBuffer, int i) {
        int position = byteBuffer.position();
        while (byteBuffer.position() < i) {
            if (byteBuffer.get() == 0) {
                byte[] bArr = new byte[(byteBuffer.position() - 1) - position];
                int position2 = byteBuffer.position();
                byteBuffer.get(bArr);
                return new String(bArr, StandardCharsets.UTF_8);
            }
        }
        return null;
    }

    private static Element findElement(byte[] bArr, String str) {
        ByteBuffer order;
        int i;
        if (bArr == null || bArr.length < 5 || (i = (order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN)).getInt()) < 5 || i > bArr.length) {
            return null;
        }
        while (order.position() < i - 1) {
            int i2 = order.get() & 255;
            String readCString = readCString(order, i);
            if (readCString == null) {
                return null;
            }
            int position = order.position();
            if (!skipValue(order, i2, i)) {
                return null;
            }
            if (str.equals(readCString)) {
                byte[] bArr2 = new byte[order.position() - position];
                int position2 = order.position();
                order.get(bArr2);
                return new Element(i2, bArr2);
            }
        }
        return null;
    }

    private static boolean skipValue(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = 4;
        switch (i) {
            case 1:
            case 9:
            case 17:
            case 18:
                i3 = 8;
                break;
            case 2:
            case 13:
            case 14:
                if (byteBuffer.remaining() >= 4) {
                    i3 = 4 + byteBuffer.getInt(byteBuffer.position());
                    break;
                } else {
                    return false;
                }
            case 3:
            case 4:
                if (byteBuffer.remaining() >= 4) {
                    i3 = byteBuffer.getInt(byteBuffer.position());
                    break;
                } else {
                    return false;
                }
            case 5:
                if (byteBuffer.remaining() >= 5) {
                    i3 = byteBuffer.getInt(byteBuffer.position()) + 5;
                    break;
                } else {
                    return false;
                }
            case 7:
                i3 = 12;
                break;
            case 8:
                i3 = 1;
                break;
            case 10:
            case 127:
            case 255:
                i3 = 0;
                break;
            case 11:
                return skipCString(byteBuffer, i2) && skipCString(byteBuffer, i2);
            case 16:
                break;
            case 19:
                i3 = 16;
                break;
            default:
                return false;
        }
        if (i3 > byteBuffer.remaining()) {
            return false;
        }
        return true;
    }

    private static boolean skipCString(ByteBuffer byteBuffer, int i) {
        while (byteBuffer.position() < i) {
            if (byteBuffer.get() == 0) {
                return true;
            }
        }
        return false;
    }

    private static byte[] finishDocument(ByteArrayOutputStream byteArrayOutputStream) {
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        writeLeInt(byteArrayOutputStream2, byteArrayOutputStream.size() + 5);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream2.write(byteArray, 0, byteArray.length);
        byteArrayOutputStream2.write(0);
        return byteArrayOutputStream2.toByteArray();
    }

    private static byte[] replaceElement(byte[] bArr, String str, int i, byte[] bArr2) {
        if (bArr == null || bArr.length < 5) {
            throw new IllegalArgumentException("invalid BSON document");
        }
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        int i2 = order.getInt();
        if (i2 < 5 || i2 > bArr.length) {
            throw new IllegalArgumentException("invalid BSON document length");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        boolean z = false;
        while (order.position() < i2 - 1) {
            int i3 = order.get() & 255;
            String readCString = readCString(order, i2);
            if (readCString == null) {
                throw new IllegalArgumentException("truncated BSON key");
            }
            int position = order.position();
            if (!skipValue(order, i3, i2)) {
                throw new IllegalArgumentException("unsupported BSON value type " + i3);
            }
            int position2 = order.position();
            if (str.equals(readCString)) {
                byteArrayOutputStream.write(i);
                writeCString(byteArrayOutputStream, readCString);
                byteArrayOutputStream.write(bArr2, 0, bArr2.length);
                z = true;
            } else {
                byteArrayOutputStream.write(i3);
                writeCString(byteArrayOutputStream, readCString);
                byteArrayOutputStream.write(bArr, position, position2 - position);
            }
        }
        if (!z) {
            byteArrayOutputStream.write(i);
            writeCString(byteArrayOutputStream, str);
            byteArrayOutputStream.write(bArr2, 0, bArr2.length);
        }
        return finishDocument(byteArrayOutputStream);
    }

    private static byte[] stringBytes(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        writeLeInt(byteArrayOutputStream, bytes.length + 1);
        byteArrayOutputStream.write(bytes, 0, bytes.length);
        byteArrayOutputStream.write(0);
        return byteArrayOutputStream.toByteArray();
    }

    private static byte[] intBytes(int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        writeLeInt(byteArrayOutputStream, i);
        return byteArrayOutputStream.toByteArray();
    }

    private static byte[] boolBytes(boolean z) {
        return new byte[]{z ? (byte) 1 : (byte) 0};
    }

    private static byte[] intArrayBytes(Iterable<Integer> iterable) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        for (Integer num : iterable) {
            if (num != null && num.intValue() != 0) {
                writeIntElement(byteArrayOutputStream, Integer.toString(i), num.intValue());
                i++;
            }
        }
        return finishDocument(byteArrayOutputStream);
    }

    private static void writeCString(ByteArrayOutputStream byteArrayOutputStream, String str) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        byteArrayOutputStream.write(bytes, 0, bytes.length);
        byteArrayOutputStream.write(0);
    }

    private static void writeStringElement(ByteArrayOutputStream byteArrayOutputStream, String str, String str2) {
        byteArrayOutputStream.write(2);
        writeCString(byteArrayOutputStream, str);
        byte[] bytes = str2.getBytes(StandardCharsets.UTF_8);
        writeLeInt(byteArrayOutputStream, bytes.length + 1);
        byteArrayOutputStream.write(bytes, 0, bytes.length);
        byteArrayOutputStream.write(0);
    }

    private static void writeEmptyArrayElement(ByteArrayOutputStream byteArrayOutputStream, String str) {
        writeArrayElement(byteArrayOutputStream, str, EMPTY_DOCUMENT);
    }

    private static void writeEventAvailabilityArray(ByteArrayOutputStream byteArrayOutputStream, String str, Iterable<Integer> iterable) {
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        int i = 0;
        for (Integer num : iterable) {
            if (num != null && num.intValue() != 0) {
                ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                writeIntElement(byteArrayOutputStream3, "0", num.intValue());
                writeIntElement(byteArrayOutputStream3, "1", 0);
                writeArrayElement(byteArrayOutputStream2, Integer.toString(i), finishDocument(byteArrayOutputStream3));
                i++;
            }
        }
        writeArrayElement(byteArrayOutputStream, str, finishDocument(byteArrayOutputStream2));
    }

    private static void writeIntArrayElement(ByteArrayOutputStream byteArrayOutputStream, String str, Iterable<Integer> iterable) {
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        int i = 0;
        for (Integer num : iterable) {
            if (num != null && num.intValue() != 0) {
                writeIntElement(byteArrayOutputStream2, Integer.toString(i), num.intValue());
                i++;
            }
        }
        writeArrayElement(byteArrayOutputStream, str, finishDocument(byteArrayOutputStream2));
    }

    private static void writeArrayElement(ByteArrayOutputStream byteArrayOutputStream, String str, byte[] bArr) {
        byteArrayOutputStream.write(4);
        writeCString(byteArrayOutputStream, str);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
    }

    private static void writeDocumentElement(ByteArrayOutputStream byteArrayOutputStream, String str, byte[] bArr) {
        byteArrayOutputStream.write(3);
        writeCString(byteArrayOutputStream, str);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
    }

    private static void writeIntElement(ByteArrayOutputStream byteArrayOutputStream, String str, int i) {
        byteArrayOutputStream.write(16);
        writeCString(byteArrayOutputStream, str);
        writeLeInt(byteArrayOutputStream, i);
    }

    private static void writeBoolElement(ByteArrayOutputStream byteArrayOutputStream, String str, boolean z) {
        byteArrayOutputStream.write(8);
        writeCString(byteArrayOutputStream, str);
        byteArrayOutputStream.write(z ? 1 : 0);
    }

    private static void writeNullElement(ByteArrayOutputStream byteArrayOutputStream, String str) {
        byteArrayOutputStream.write(10);
        writeCString(byteArrayOutputStream, str);
    }

    private static void writeObjectIdElement(ByteArrayOutputStream byteArrayOutputStream, String str, byte[] bArr) {
        if (bArr.length != 12) {
            throw new IllegalArgumentException("ObjectId must contain 12 bytes");
        }
        byteArrayOutputStream.write(7);
        writeCString(byteArrayOutputStream, str);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
    }

    private static void writeLeInt(ByteArrayOutputStream byteArrayOutputStream, int i) {
        byteArrayOutputStream.write(i & 255);
        byteArrayOutputStream.write((i >>> 8) & 255);
        byteArrayOutputStream.write((i >>> 16) & 255);
        byteArrayOutputStream.write((i >>> 24) & 255);
    }

    private static final class Element {
        final int type;
        final byte[] value;

        Element(int i, byte[] bArr) {
            this.type = i;
            this.value = bArr;
        }
    }
}
