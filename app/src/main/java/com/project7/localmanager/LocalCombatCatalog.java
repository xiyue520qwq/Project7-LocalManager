package com.project7.localmanager;

import android.content.Context;
import com.project7.localmanager.LocalStageCostRules;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeSet;

/* loaded from: classes.dex */
final class LocalCombatCatalog {
    private final Map<String, Map<String, Double>> attributes;
    private LocalFeatureCatalog growthRules;
    private LocalFeatureCatalog homeRules;
    private final Map<String, int[][]> skills;
    private LocalFeatureCatalog storyRules;

    LocalCombatCatalog(Context context) throws IOException {
        this(context.getApplicationContext().getAssets().open("combat_skills.tsv"));
        loadAttributes(context.getApplicationContext().getAssets().open("combat_attrs.tsv"));
        this.storyRules = new LocalFeatureCatalog(context.getApplicationContext().getAssets().open("suppression.tsv"));
        this.growthRules = new LocalFeatureCatalog(context.getApplicationContext().getAssets().open("growth.tsv"));
        this.homeRules = new LocalFeatureCatalog(context.getApplicationContext().getAssets().open("home.tsv"));
    }

    LocalCombatCatalog(InputStream inputStream, InputStream inputStream2) throws IOException {
        this(inputStream);
        loadAttributes(inputStream2);
    }

    LocalCombatCatalog(InputStream inputStream, InputStream inputStream2, InputStream inputStream3) throws IOException {
        this(inputStream, inputStream2);
        this.storyRules = new LocalFeatureCatalog(inputStream3);
    }

    LocalCombatCatalog(InputStream inputStream, InputStream inputStream2, InputStream inputStream3, InputStream inputStream4) throws IOException {
        this(inputStream, inputStream2, inputStream3);
        this.growthRules = new LocalFeatureCatalog(inputStream4);
    }

    LocalCombatCatalog(InputStream inputStream, InputStream inputStream2, InputStream inputStream3, InputStream inputStream4, InputStream inputStream5) throws IOException {
        this(inputStream, inputStream2, inputStream3, inputStream4);
        this.homeRules = new LocalFeatureCatalog(inputStream5);
    }

    Map<String, Double> roomAttributesFor(int i, byte[] bArr, Map<String, Double> map) {
        boolean z;
        Integer num;
        Integer num2;
        boolean z2;
        byte[] bArr2;
        String str;
        String[] strArr;
        String str2;
        double d;
        String str3;
        double doubleValue;
        LocalCombatCatalog localCombatCatalog = this;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LocalFeatureCatalog localFeatureCatalog = localCombatCatalog.growthRules;
        byte[] bArr3 = localFeatureCatalog == null ? null : localFeatureCatalog.get("AH", Integer.valueOf(i));
        Integer intValue = BsonLite.intValue(bArr3, "room_attack_type");
        Integer intValue2 = BsonLite.intValue(bArr3, "room_hero_type");
        if (localCombatCatalog.homeRules == null || intValue == null || intValue2 == null) {
            return linkedHashMap;
        }
        boolean equals = Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "physical"));
        byte[] documentValue = BsonLite.documentValue(BsonLite.documentValue(bArr, "rmd"), "rs");
        for (String str4 : BsonLite.keys(documentValue)) {
            try {
                int parseInt = Integer.parseInt(str4);
                byte[] documentValue2 = BsonLite.documentValue(documentValue, str4);
                if (documentValue2 == null) {
                    localCombatCatalog = this;
                } else if (BsonLite.arrayValue(documentValue, str4) == null) {
                    Integer intValue3 = BsonLite.intValue(documentValue2, "lv");
                    Integer intValue4 = BsonLite.intValue(documentValue2, "op");
                    if (!BsonLite.keys(documentValue2).contains("lv") || intValue3 != null) {
                        if (!BsonLite.keys(documentValue2).contains("op") || intValue4 != null) {
                            LocalFeatureCatalog localFeatureCatalog2 = localCombatCatalog.homeRules;
                            StringBuilder sb = new StringBuilder();
                            sb.append(parseInt);
                            sb.append(":");
                            sb.append(intValue3 == null ? 1 : intValue3.intValue());
                            sb.append(":");
                            sb.append(intValue4 == null ? 1 : intValue4.intValue());
                            byte[] bArr4 = localFeatureCatalog2.get("RS", sb.toString());
                            if (bArr4 != null) {
                                int value = LocalResourceEngine.value(bArr4, "hero_attr");
                                int i2 = value != 2 ? value == 3 ? 2 : value : 3;
                                if (value == 0 || i2 == intValue.intValue()) {
                                    if (LocalResourceEngine.value(bArr4, "hero_type") == 0 || LocalResourceEngine.value(bArr4, "hero_type") == intValue2.intValue()) {
                                        Number numericValue = BsonLite.numericValue(documentValue2, "bk");
                                        if (!BsonLite.keys(documentValue2).contains("bk") || (numericValue != null && Double.isFinite(numericValue.doubleValue()))) {
                                            byte[] documentValue3 = BsonLite.documentValue(bArr4, "attrs");
                                            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                            Iterator<String> it = BsonLite.keys(documentValue3).iterator();
                                            boolean z3 = true;
                                            while (true) {
                                                z = false;
                                                if (!it.hasNext()) {
                                                    num = intValue;
                                                    num2 = intValue2;
                                                    z2 = equals;
                                                    bArr2 = documentValue;
                                                    break;
                                                }
                                                String next = it.next();
                                                Number numericValue2 = BsonLite.numericValue(documentValue3, next);
                                                if (numericValue2 == null) {
                                                    num = intValue;
                                                    num2 = intValue2;
                                                    z2 = equals;
                                                    bArr2 = documentValue;
                                                    z3 = false;
                                                    break;
                                                }
                                                double doubleValue2 = numericValue2.doubleValue() + (numericValue == null ? 0.0d : numericValue.doubleValue());
                                                if (next.equals("_base_attack")) {
                                                    next = equals ? "_base_phy_att_str" : "_base_mag_att_str";
                                                }
                                                byte[] bArr5 = documentValue3;
                                                String str5 = "_mag_str_delta";
                                                if (next.equals("_base_attack_delta")) {
                                                    next = equals ? "_phy_str_delta" : "_mag_str_delta";
                                                }
                                                if ((equals || !(next.equals("_base_phy_att_str") || next.equals("_phy_str_delta"))) && !(equals && (next.equals("_base_mag_att_str") || next.equals("_mag_str_delta")))) {
                                                    num = intValue;
                                                    num2 = intValue2;
                                                    z2 = equals;
                                                    bArr2 = documentValue;
                                                    String str6 = "_base_phy_def";
                                                    if (next.equals("_base_defense")) {
                                                        strArr = new String[]{"_base_phy_def", "_base_mag_def"};
                                                        str = "_base_mag_def";
                                                    } else if (next.equals("_base_defense_delta")) {
                                                        strArr = new String[]{"_phy_def_delta", "_mag_def_delta"};
                                                        str = "_base_mag_def";
                                                    } else {
                                                        str = "_base_mag_def";
                                                        strArr = new String[]{next};
                                                    }
                                                    int length = strArr.length;
                                                    int i3 = 0;
                                                    while (true) {
                                                        if (i3 >= length) {
                                                            break;
                                                        }
                                                        int i4 = length;
                                                        String str7 = strArr[i3];
                                                        String str8 = str6;
                                                        if (str7.equals("_hp_delta")) {
                                                            str2 = "_base_max_hp";
                                                        } else if (str7.equals("_phy_str_delta")) {
                                                            str2 = "_base_phy_att_str";
                                                        } else if (str7.equals(str5)) {
                                                            str2 = "_base_mag_att_str";
                                                        } else if (str7.equals("_phy_def_delta")) {
                                                            str2 = str8;
                                                        } else {
                                                            str2 = str7.equals("_mag_def_delta") ? str : str7;
                                                        }
                                                        if (str2.equals(str7)) {
                                                            str3 = str5;
                                                            doubleValue = doubleValue2;
                                                            d = 0.0d;
                                                        } else {
                                                            d = 0.0d;
                                                            str3 = str5;
                                                            doubleValue = map.getOrDefault(str2, Double.valueOf(0.0d)).doubleValue() * doubleValue2;
                                                        }
                                                        double doubleValue3 = ((Double) linkedHashMap2.getOrDefault(str2, Double.valueOf(d))).doubleValue() + doubleValue;
                                                        if (!Double.isFinite(doubleValue3)) {
                                                            z3 = false;
                                                            break;
                                                        }
                                                        linkedHashMap2.put(str2, Double.valueOf(doubleValue3));
                                                        i3++;
                                                        length = i4;
                                                        str6 = str8;
                                                        str5 = str3;
                                                    }
                                                    if (!z3) {
                                                        break;
                                                    }
                                                    documentValue3 = bArr5;
                                                    intValue = num;
                                                    intValue2 = num2;
                                                    equals = z2;
                                                    documentValue = bArr2;
                                                } else {
                                                    documentValue3 = bArr5;
                                                }
                                            }
                                            if (z3) {
                                                for (Map.Entry entry : linkedHashMap2.entrySet()) {
                                                    if (!Double.isFinite(((Double) linkedHashMap.getOrDefault(entry.getKey(), Double.valueOf(0.0d))).doubleValue() + ((Double) entry.getValue()).doubleValue())) {
                                                        break;
                                                    }
                                                }
                                            }
                                            z = z3;
                                            if (z) {
                                                for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                                                    linkedHashMap.put((String) entry2.getKey(), Double.valueOf(((Double) linkedHashMap.getOrDefault(entry2.getKey(), Double.valueOf(0.0d))).doubleValue() + ((Double) entry2.getValue()).doubleValue()));
                                                }
                                            }
                                            localCombatCatalog = this;
                                            intValue = num;
                                            intValue2 = num2;
                                            equals = z2;
                                            documentValue = bArr2;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (NumberFormatException e) {
                localCombatCatalog = this;
                intValue = intValue;
                intValue2 = intValue2;
                equals = equals;
                documentValue = documentValue;
            }
        }
        return linkedHashMap;
    }

    Map<String, Double> attributesFor(int i, int i2, int i3, byte[] bArr, int i4, byte[] bArr2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(attributesFor(i, i2, i3, bArr, i4));
        LocalTreasureAttr.merge(linkedHashMap, bArr);
        for (Map.Entry<String, Double> entry : roomAttributesFor(i, bArr2, linkedHashMap).entrySet()) {
            linkedHashMap.put(entry.getKey(), Double.valueOf(linkedHashMap.getOrDefault(entry.getKey(), Double.valueOf(0.0d)).doubleValue() + entry.getValue().doubleValue()));
        }
        return linkedHashMap;
    }

    int awakeStage(int i, byte[] bArr) {
        int value = LocalResourceEngine.value(bArr, "as");
        LocalFeatureCatalog localFeatureCatalog = this.growthRules;
        byte[] bArr2 = localFeatureCatalog == null ? null : localFeatureCatalog.get("AH", Integer.valueOf(i));
        if (bArr2 != null && LocalResourceEngine.value(bArr2, "open") == 1 && !Boolean.TRUE.equals(BsonLite.boolValue(bArr2, "special")) && Boolean.TRUE.equals(BsonLite.boolValue(bArr, "oa")) && value > 0 && value <= 4) {
            if (this.growthRules.get("AW", i + ":" + value) != null) {
                return value;
            }
        }
        return 0;
    }

    int[][] skillsFor(int i, int i2, int i3, byte[] bArr) {
        int[][] skillsFor = skillsFor(i, i2, i3);
        int awakeStage = awakeStage(i, bArr);
        if (awakeStage == 0) {
            return skillsFor;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int[] iArr : skillsFor) {
            linkedHashMap.put(Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]));
        }
        Iterator<Integer> it = BsonLite.intArrayValues(this.growthRules.get("AW", i + ":" + awakeStage), "awaked_skills").iterator();
        while (it.hasNext()) {
            linkedHashMap.put(Integer.valueOf(it.next().intValue()), 5);
        }
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) int.class, linkedHashMap.size(), 2);
        int i4 = 0;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            iArr2[i4] = new int[]{((Integer) entry.getKey()).intValue(), ((Integer) entry.getValue()).intValue()};
            i4++;
        }
        return iArr2;
    }

    private byte[] artifactRule(int i, byte[] bArr) {
        if (this.growthRules == null || !Boolean.TRUE.equals(BsonLite.boolValue(bArr, "oa"))) {
            return null;
        }
        byte[] documentValue = BsonLite.documentValue(bArr, "ar");
        Integer intValue = BsonLite.intValue(documentValue, "o");
        Integer intValue2 = BsonLite.intValue(documentValue, "il");
        if (intValue == null || intValue.intValue() < 1 || ((intValue2 != null && (intValue2.intValue() < 0 || intValue2.intValue() > 20)) || (BsonLite.keys(documentValue).contains("il") && intValue2 == null))) {
            return null;
        }
        return this.growthRules.get("AC", i + ":" + intValue);
    }

    int[][] artifactSkillsFor(int i, byte[] bArr) {
        byte[] artifactRule = artifactRule(i, bArr);
        if (artifactRule == null) {
            return (int[][]) Array.newInstance((Class<?>) int.class, 0, 2);
        }
        byte[] documentValue = BsonLite.documentValue(artifactRule, "skills");
        ArrayList arrayList = new ArrayList();
        Iterator it = new TreeSet(BsonLite.keys(documentValue)).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Integer intValue = BsonLite.intValue(documentValue, str);
            try {
                int parseInt = Integer.parseInt(str);
                if (parseInt > 0 && intValue != null && intValue.intValue() > 0) {
                    arrayList.add(new int[]{parseInt, intValue.intValue()});
                }
                return (int[][]) Array.newInstance((Class<?>) int.class, 0, 2);
            } catch (NumberFormatException e) {
                return (int[][]) Array.newInstance((Class<?>) int.class, 0, 2);
            }
        }
        return (int[][]) arrayList.toArray(new int[arrayList.size()][]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a1, code lost:
    
        if (r9 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a4, code lost:
    
        r14 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00a9, code lost:
    
        if (r9 == false) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    Map<String, Double> artifactAttributesFor(int i, byte[] bArr) {
        byte[] documentValue;
        byte[] documentValue2;
        Number numericValue;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        byte[] artifactRule = artifactRule(i, bArr);
        if (artifactRule == null || (documentValue2 = BsonLite.documentValue((documentValue = BsonLite.documentValue(bArr, "ar")), "oa")) == null) {
            return linkedHashMap;
        }
        String[] strArr = {"_base_max_hp", "_base_phy_att_str", "_base_mag_att_str", "_base_phy_def", "_base_mag_def"};
        int i2 = 5;
        int[] iArr = {95, 25, 25, 6, 6};
        Iterator<String> it = BsonLite.keys(documentValue2).iterator();
        do {
            double d = 0.0d;
            if (it.hasNext()) {
                String next = it.next();
                numericValue = BsonLite.numericValue(documentValue2, next);
                if (!Arrays.asList(strArr).contains(next) || numericValue == null || !Double.isFinite(numericValue.doubleValue())) {
                    break;
                }
            } else {
                int value = LocalResourceEngine.value(documentValue, "o");
                int value2 = LocalResourceEngine.value(documentValue, "il");
                int i3 = 0;
                int i4 = 1;
                boolean z = LocalResourceEngine.value(this.growthRules.get("AH", Integer.valueOf(i)), "attack_type") == 1;
                while (i3 < i2) {
                    String str = "att_point";
                    if (i3 == 0) {
                        str = "hp_point";
                    } else if (i3 != i4) {
                        if (i3 != 2) {
                            str = i3 == 3 ? "phy_def_point" : "mag_def_point";
                        }
                    }
                    Number numericValue2 = BsonLite.numericValue(documentValue2, strArr[i3]);
                    double doubleValue = numericValue2 != null ? numericValue2.doubleValue() : d;
                    for (int i5 = i4; i5 <= value; i5++) {
                        doubleValue += LocalResourceEngine.value(this.growthRules.get("AP", Integer.valueOf(i5)), str);
                    }
                    for (int i6 = 1; i6 <= value2; i6++) {
                        doubleValue += LocalResourceEngine.value(this.growthRules.get("AI", Integer.valueOf(i6)), str);
                    }
                    double d2 = iArr[i3] * doubleValue;
                    if (!Double.isFinite(d2) || d2 > 2.147483647E9d) {
                        return new LinkedHashMap();
                    }
                    linkedHashMap.put(strArr[i3], Double.valueOf((int) d2));
                    i3++;
                    i2 = 5;
                    d = 0.0d;
                    i4 = 1;
                }
                byte[] documentValue3 = BsonLite.documentValue(artifactRule, "attrs");
                for (String str2 : BsonLite.keys(documentValue3)) {
                    Number numericValue3 = BsonLite.numericValue(documentValue3, str2);
                    if (numericValue3 == null || !Double.isFinite(numericValue3.doubleValue())) {
                        return new LinkedHashMap();
                    }
                    linkedHashMap.put(str2, Double.valueOf(((Double) linkedHashMap.getOrDefault(str2, Double.valueOf(0.0d))).doubleValue() + numericValue3.doubleValue()));
                }
                return linkedHashMap;
            }
        } while (numericValue.doubleValue() >= 0.0d);
        return linkedHashMap;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:34)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:24)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:252)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:55)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:49)
        */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 9 */
    java.util.Map<java.lang.String, java.lang.Double> attributesFor(int r22, int r23, int r24, byte[] r25, int r26) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.project7.localmanager.LocalCombatCatalog.attributesFor(int, int, int, byte[], int):java.util.Map");
    }

    int storyMonsterLevel(int i, int i2) {
        LocalFeatureCatalog localFeatureCatalog = this.storyRules;
        Integer intValue = BsonLite.intValue(localFeatureCatalog == null ? null : localFeatureCatalog.get("SM", Integer.valueOf(i)), i2 >= 1 ? "second" : "first");
        if (intValue == null) {
            return 1;
        }
        return Math.max(1, intValue.intValue());
    }

    LocalStageCostRules.Cost storyCost(int i, byte[] bArr) {
        LocalFeatureCatalog localFeatureCatalog = this.storyRules;
        byte[] bArr2 = localFeatureCatalog == null ? null : localFeatureCatalog.get("SC", Integer.valueOf(i));
        byte[] doc = LocalResourceEngine.doc(bArr, "city");
        Integer intValue = BsonLite.intValue(doc, "fv");
        if (intValue == null) {
            if (BsonLite.keys(doc).contains("fv")) {
                return null;
            }
            intValue = 0;
        }
        Integer intValue2 = BsonLite.intValue(wingEnhancement(i, bArr), "reduce_fatigue");
        return LocalStageCostRules.query(bArr2, intValue.intValue(), intValue2 != null ? intValue2.intValue() : 0);
    }

    byte[] wingEnhancement(int i, byte[] bArr) {
        byte[] doc = LocalResourceEngine.doc(bArr, "std");
        String stringValue = BsonLite.stringValue(doc, "rt");
        Integer intValue = BsonLite.intValue(doc, "byv");
        if (i != 291 || this.storyRules == null || stringValue == null || ((!stringValue.equals("7") && !stringValue.startsWith("7-")) || intValue == null || intValue.intValue() < 0 || intValue.intValue() > 100)) {
            return BsonLite.EMPTY_DOCUMENT;
        }
        for (int i2 = 1; i2 <= 10; i2++) {
            byte[] bArr2 = this.storyRules.get("WY", Integer.valueOf(i2));
            if (bArr2 != null) {
                Integer intValue2 = BsonLite.intValue(bArr2, "baiyu_down");
                Integer intValue3 = BsonLite.intValue(bArr2, "baiyu_up");
                int intValue4 = intValue2 == null ? 0 : intValue2.intValue();
                int intValue5 = intValue3 != null ? intValue3.intValue() : 0;
                if (intValue.intValue() >= intValue4 && intValue.intValue() <= intValue5) {
                    byte[] bArr3 = BsonLite.EMPTY_DOCUMENT;
                    Number numericValue = BsonLite.numericValue(bArr2, "battle_enhance");
                    Integer intValue6 = BsonLite.intValue(bArr2, "reduce_fatigue");
                    if (numericValue != null && Double.isFinite(numericValue.doubleValue()) && numericValue.doubleValue() > 0.0d) {
                        bArr3 = BsonLite.withProfileDouble(bArr3, "battle_enhance", numericValue.doubleValue());
                    }
                    if (intValue6 != null && intValue6.intValue() > 0) {
                        return BsonLite.withProfileInt(bArr3, "reduce_fatigue", intValue6.intValue());
                    }
                    return bArr3;
                }
            }
        }
        return BsonLite.EMPTY_DOCUMENT;
    }

    private void loadAttributes(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.US_ASCII));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                        String[] split = readLine.split("\t", -1);
                        if (split.length != 4) {
                            throw new IOException("Invalid combat attribute row");
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        try {
                            for (String str : split[3].split(",")) {
                                String[] split2 = str.split(":");
                                linkedHashMap.put(split2[0], Double.valueOf(Double.parseDouble(split2[1])));
                            }
                            this.attributes.put(split[0] + ":" + split[1] + ":" + split[2], linkedHashMap);
                        } catch (RuntimeException e) {
                            throw new IOException("Invalid combat attribute value", e);
                        }
                    }
                } else {
                    bufferedReader.close();
                    return;
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    Map<String, Double> attributesFor(int i, int i2, int i3) {
        Map<String, Double> map = this.attributes.get(i + ":" + i2 + ":" + i3);
        if (map == null) {
            map = this.attributes.get(i + ":1:1");
        }
        if (map == null) {
            throw new IllegalArgumentException("Unknown combat attributes for hero " + i);
        }
        return map;
    }

    LocalCombatCatalog(InputStream inputStream) throws IOException {
        this.skills = new HashMap();
        this.attributes = new HashMap();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.US_ASCII));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                        String[] split = readLine.split("\t", -1);
                        if (split.length != 4) {
                            throw new IOException("Invalid combat skill row");
                        }
                        String[] split2 = split[3].split(",");
                        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, split2.length, 2);
                        for (int i = 0; i < split2.length; i++) {
                            try {
                                String[] split3 = split2[i].split(":");
                                iArr[i][0] = Integer.parseInt(split3[0]);
                                iArr[i][1] = Integer.parseInt(split3[1]);
                            } catch (RuntimeException e) {
                                throw new IOException("Invalid combat skill pair", e);
                            }
                        }
                        this.skills.put(split[0] + ":" + split[1] + ":" + split[2], iArr);
                    }
                } else {
                    bufferedReader.close();
                    return;
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    int[][] skillsFor(int i, int i2, int i3) {
        int[][] iArr = this.skills.get(i + ":" + i2 + ":" + i3);
        if (iArr == null) {
            iArr = this.skills.get(i + ":1:1");
        }
        if (iArr == null) {
            throw new IllegalArgumentException("Unknown combat hero " + i);
        }
        return iArr;
    }

    boolean supportsHero(int i) {
        if (this.skills.containsKey(i + ":1:1")) {
            if (this.attributes.containsKey(i + ":1:1")) {
                return true;
            }
        }
        return false;
    }
}
