package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceCatalog;
import com.project7.localmanager.LocalResourceEngine;
import java.security.SecureRandom;
import java.time.DateTimeException;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.function.Predicate;

/* loaded from: classes.dex */
final class LocalTreasureOperationEngine {
    static final List<String> METHODS = Collections.unmodifiableList(Arrays.asList("decomposeTreasure", "smeltTreasure", "transferTreasure", "composeTreasure", "composeTreasureBatch", "tupoTreasure", "refreshTreasureGoldAsk", "refreshTreasureOrangeAsk", "refreshTreasureApply", "refreshTreasureApplyOrange", "upgradeTreasureExp", "upgradeTreasureClassByItem"));
    private static final Random RANDOM = new SecureRandom();

    LocalTreasureOperationEngine() {
    }

    static boolean handles(String str) {
        return METHODS.contains(str);
    }

    /* renamed from: v */
    static int m77v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m75d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: id */
    static BsonLite.UuidValue m76id(String str) {
        return new BsonLite.UuidValue(str);
    }

    static Map<String, Object> map(byte[] bArr) {
        return (Map) BsonLite.messagePackValue(bArr, false);
    }

    static List<Object> values(byte[] bArr) {
        return (List) BsonLite.messagePackValue(bArr, true);
    }

    static double num(byte[] bArr, String str) {
        if (bArr == null) {
            throw new IllegalArgumentException("缺少原版影装数值配置: " + str);
        }
        Object obj = map(bArr).get(str);
        if (!(obj instanceof Number)) {
            throw new IllegalArgumentException("缺少原版影装数值配置: " + str);
        }
        return ((Number) obj).doubleValue();
    }

    static byte[] fields(Map<String, ?> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            arrayList.add(entry.getKey());
            arrayList.add(entry.getValue());
        }
        return BsonLite.document(arrayList.toArray());
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2) {
        return apply(bArr, localResourceCatalog, localFeatureCatalog, str, bArr2, RANDOM, System.currentTimeMillis() / 1000);
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2, Random random, long j) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        try {
            if (!handles(str)) {
                throw new IllegalArgumentException("影装操作尚未接入");
            }
            if (!"decomposeTreasure".equals(str) && !"smeltTreasure".equals(str)) {
                if ("transferTreasure".equals(str)) {
                    transfer(result, localFeatureCatalog, bArr2, random, j);
                } else if ("upgradeTreasureExp".equals(str)) {
                    attune(result, localFeatureCatalog, bArr2);
                } else if ("upgradeTreasureClassByItem".equals(str)) {
                    evolve(result, localResourceCatalog, localFeatureCatalog, bArr2, j);
                } else if (str.startsWith("composeTreasure")) {
                    compose(result, localResourceCatalog, localFeatureCatalog, str, bArr2, random, j);
                } else if ("tupoTreasure".equals(str)) {
                    breakthrough(result, localResourceCatalog, localFeatureCatalog, bArr2, random);
                } else if (str.startsWith("refreshTreasureApply")) {
                    accept(result, localFeatureCatalog, str, bArr2);
                } else {
                    preview(result, localFeatureCatalog, str, bArr2, random, j);
                }
                LocalTreasurePlanEngine.clearMismatchedBindings(result, localFeatureCatalog, null);
                return result;
            }
            resolve(result, localResourceCatalog, localFeatureCatalog, str, bArr2);
            LocalTreasurePlanEngine.clearMismatchedBindings(result, localFeatureCatalog, null);
            return result;
        } catch (ArithmeticException | IllegalArgumentException e) {
            LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
            result2.add("showMessageStr", BsonLite.document("m", e.getMessage()));
            return result2;
        }
    }

    private static byte[] definition(LocalFeatureCatalog localFeatureCatalog, byte[] bArr) {
        byte[] bArr2 = localFeatureCatalog.get("EQ", m77v(bArr, "i") + ":" + m77v(m75d(bArr, "tr"), "cl"));
        if (bArr2 == null || m77v(bArr, "c") != 0 || m77v(bArr, "w") != 1) {
            throw new IllegalArgumentException("影装数据无效");
        }
        return bArr2;
    }

    private static void evolve(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, byte[] bArr, long j) {
        int m77v;
        String uuidValue = BsonLite.uuidValue(bArr, "s");
        byte[] owned = owned(result.profile, localFeatureCatalog, uuidValue, 0);
        byte[] m75d = m75d(owned, "tr");
        byte[] definition = definition(localFeatureCatalog, owned);
        int m77v2 = m77v(owned, "i");
        byte[] bArr2 = localFeatureCatalog.get("EG", Integer.valueOf(m77v2));
        byte[] bArr3 = localFeatureCatalog.get("EQ", m77v2 + ":4");
        if (m77v(m75d, "cl") == 3 && !BsonLite.intArrayValues(definition, "validHeroes").isEmpty() && bArr2 != null && bArr3 != null) {
            if (localResourceCatalog.treasures.containsKey(m77v2 + ":4")) {
                if (m77v(definition, "cost") != m77v(bArr3, "cost") || !BsonLite.intArrayValues(definition, "validHeroes").equals(BsonLite.intArrayValues(bArr3, "validHeroes")) || !BsonLite.intArrayValues(definition, "fixTrick").equals(BsonLite.intArrayValues(bArr3, "fixTrick"))) {
                    throw new IllegalArgumentException("该专属影装的进阶属性规则尚未核实，本次未扣费");
                }
                Iterator it = Arrays.asList("secondAttrs", "thridAttrs").iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    byte[] m75d2 = m75d(definition, str);
                    byte[] m75d3 = m75d(bArr3, str);
                    Iterator it2 = it;
                    if (!BsonLite.keys(m75d2).equals(BsonLite.keys(m75d3))) {
                        throw new IllegalArgumentException("该专属影装的进阶属性规则尚未核实，本次未扣费");
                    }
                    Iterator<String> it3 = BsonLite.keys(m75d2).iterator();
                    while (it3.hasNext()) {
                        String next = it3.next();
                        Iterator<String> it4 = it3;
                        byte[] bArr4 = definition;
                        if (num(m75d(m75d2, next), "0") >= num(m75d(m75d3, next), "0") && num(m75d(m75d2, next), "1") <= num(m75d(m75d3, next), "1")) {
                            it3 = it4;
                            definition = bArr4;
                        } else {
                            throw new IllegalArgumentException("该专属影装的进阶属性范围尚未核实，本次未扣费");
                        }
                    }
                    it = it2;
                }
                Boolean boolValue = BsonLite.boolValue(bArr, "c");
                if (boolValue == null) {
                    throw new IllegalArgumentException("请选择进阶材料");
                }
                int trade = trade(owned);
                if (boolValue.booleanValue()) {
                    int m77v3 = m77v(bArr2, "catUse");
                    int m77v4 = m77v(result.profile, "giftCoin");
                    if (m77v3 > 0 && m77v4 >= m77v3) {
                        result.profile = BsonLite.withProfileInt(result.profile, "giftCoin", m77v4 - m77v3);
                    } else {
                        throw new IllegalArgumentException("礼品券不足");
                    }
                } else {
                    int m77v5 = m77v(bArr, "ci");
                    if (m77v5 == 867) {
                        m77v = m77v(bArr2, "smelt2Use");
                    } else {
                        if (m77v5 <= 0 || m77v5 != m77v(bArr2, "activity_item") || !evolutionActivityOpen(bArr2, j)) {
                            throw new IllegalArgumentException("该进阶活动材料不匹配或不在开放时间内");
                        }
                        m77v = m77v(bArr2, "activity_num");
                    }
                    if (m77v <= 0 || localFeatureCatalog.get("ED", Integer.valueOf(m77v5)) == null) {
                        throw new IllegalArgumentException("缺少原版进阶材料配置");
                    }
                    LocalGiftEngine.consume(result, m77v5, m77v);
                    trade = Math.max(trade, m77v(localFeatureCatalog.get("ED", Integer.valueOf(m77v5)), "tradeType"));
                }
                byte[] withProfileInt = BsonLite.withProfileInt(m75d, "cl", 4);
                Iterator it5 = Arrays.asList("ri", "ro").iterator();
                while (it5.hasNext()) {
                    withProfileInt = BsonLite.withoutProfileKey(withProfileInt, (String) it5.next());
                }
                byte[] withProfileInt2 = BsonLite.withProfileInt(BsonLite.withProfileDocument(owned, "tr", withProfileInt), "tt", trade);
                update(result, withProfileInt2);
                LocalResourceEngine.syncCurrencies(result);
                result.add("upgradeTreasureClassByItemReply", BsonLite.document("s", m76id(uuidValue), "r", BsonLite.document("i", withProfileInt2)));
                canonical(result, withProfileInt2);
                return;
            }
        }
        throw new IllegalArgumentException("请选择可进阶的3品级专属影装");
    }

    private static boolean evolutionActivityOpen(byte[] bArr, long j) {
        String stringValue = BsonLite.stringValue(bArr, "begin_time");
        String stringValue2 = BsonLite.stringValue(bArr, "end_time");
        if (stringValue == null || stringValue.isEmpty() || stringValue2 == null || stringValue2.isEmpty()) {
            return true;
        }
        try {
            DateTimeFormatter ofPattern = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            LocalDateTime ofInstant = LocalDateTime.ofInstant(Instant.ofEpochSecond(j), ZoneOffset.UTC);
            if (ofInstant.isAfter(LocalDateTime.parse(stringValue, ofPattern))) {
                if (ofInstant.isBefore(LocalDateTime.parse(stringValue2, ofPattern))) {
                    return true;
                }
            }
            return false;
        } catch (DateTimeException e) {
            throw new IllegalArgumentException("原版进阶活动时间配置无效，本次未扣费");
        }
    }

    private static void attune(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr) {
        String str = "s";
        String uuidValue = BsonLite.uuidValue(bArr, "s");
        byte[] owned = owned(result.profile, localFeatureCatalog, uuidValue, 0);
        String str2 = "tr";
        byte[] m75d = m75d(owned, "tr");
        int i = -1;
        for (Map.Entry<String, byte[]> entry : localFeatureCatalog.entries.entrySet()) {
            if (entry.getKey().startsWith("EE:") && m77v(entry.getValue(), "treasureId") == m77v(owned, "i")) {
                i = Math.max(i, m77v(entry.getValue(), "totalExp"));
            }
        }
        String str3 = "x";
        int m77v = m77v(m75d, "x");
        if (i <= 0 || m77v < 0 || m77v >= i || BsonLite.intArrayValues(definition(localFeatureCatalog, owned), "validHeroes").isEmpty()) {
            throw new IllegalArgumentException("请选择尚未满阶的专属影装");
        }
        List<byte[]> array = LocalResourceEngine.array(m75d(bArr, "i"));
        if (array.isEmpty() || array.size() > 100) {
            throw new IllegalArgumentException("请选择同调材料");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i2 = Integer.MAX_VALUE;
        int trade = trade(owned);
        Iterator<byte[]> it = array.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            byte[] next = it.next();
            Iterator<byte[]> it2 = it;
            int m77v2 = m77v(next, "0");
            String str4 = uuidValue;
            int m77v3 = m77v(next, "1");
            String str5 = str;
            String str6 = str2;
            byte[] bArr2 = localFeatureCatalog.get("EU", Integer.valueOf(m77v2));
            if (BsonLite.keys(next).size() == 2 && m77v3 > 0 && bArr2 != null) {
                byte[] bArr3 = m75d;
                if (m77v(localFeatureCatalog.get("ED", Integer.valueOf(m77v2)), "type") == 15) {
                    String str7 = str3;
                    linkedHashMap.put(Integer.valueOf(m77v2), Integer.valueOf(Math.addExact(((Integer) linkedHashMap.getOrDefault(Integer.valueOf(m77v2), 0)).intValue(), m77v3)));
                    int m77v4 = m77v(bArr2, BsonLite.intArrayValues(bArr2, "treasureList").contains(Integer.valueOf(m77v(owned, "i"))) ? "tlExp" : "normalExp");
                    if (m77v4 <= 0) {
                        throw new IllegalArgumentException("缺少原版同调经验配置");
                    }
                    i3 = Math.addExact(i3, Math.multiplyExact(m77v4, m77v3));
                    i2 = Math.min(i2, m77v4);
                    trade = Math.max(trade, m77v(localFeatureCatalog.get("ED", Integer.valueOf(m77v2)), "tradeType"));
                    it = it2;
                    uuidValue = str4;
                    str = str5;
                    str2 = str6;
                    m75d = bArr3;
                    str3 = str7;
                }
            }
            throw new IllegalArgumentException("同调材料无效");
        }
        String str8 = str;
        String str9 = uuidValue;
        String str10 = str2;
        byte[] bArr4 = m75d;
        String str11 = str3;
        int i4 = i3;
        int i5 = i - m77v;
        if (i4 - i2 >= i5) {
            throw new IllegalArgumentException("同调材料超过满阶所需，请减少材料数量");
        }
        int min = Math.min(i4, i5);
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            LocalGiftEngine.consume(result, ((Integer) entry2.getKey()).intValue(), ((Integer) entry2.getValue()).intValue());
        }
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileDocument(owned, str10, BsonLite.withProfileInt(bArr4, str11, Math.addExact(m77v, min))), "tt", trade);
        update(result, withProfileInt);
        result.add("upgradeTreasureExpReply", BsonLite.document(str8, m76id(str9), "r", BsonLite.document("add", Integer.valueOf(min), "bExp", Integer.valueOf(m77v))));
        canonical(result, withProfileInt);
    }

    private static byte[] owned(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, String str, int i) {
        byte[] findOwned = LocalEquipmentEngine.findOwned(bArr, str);
        if (findOwned == null) {
            throw new IllegalArgumentException("未拥有该影装");
        }
        definition(localFeatureCatalog, findOwned);
        if (i != 0) {
            boolean z = false;
            Iterator<byte[]> it = LocalResourceEngine.array(m75d(m75d(BsonLite.profileHeroDocument(bArr, i), "ti"), "items")).iterator();
            while (it.hasNext()) {
                if (str.equals(BsonLite.uuidValue(it.next(), "u"))) {
                    z = true;
                }
            }
            if (!z) {
                throw new IllegalArgumentException("该神器使未装备此影装");
            }
        }
        return findOwned;
    }

    private static void disposable(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, byte[] bArr2, boolean z) {
        byte[] definition = definition(localFeatureCatalog, bArr2);
        byte[] m75d = m75d(bArr2, "tr");
        if (Boolean.TRUE.equals(BsonLite.boolValue(m75d, "f")) || m77v(definition, "noRemove") != 0 || (z && m77v(definition, "noCompound") != 0 && BsonLite.intArrayValues(definition, "validHeroes").isEmpty())) {
            throw new IllegalArgumentException("锁定或受保护的影装不能作为消耗材料");
        }
        String uuidValue = BsonLite.uuidValue(bArr2, "u");
        Iterator<byte[]> it = LocalResourceEngine.array(m75d(m75d(bArr, "heromgr"), "hrs")).iterator();
        while (it.hasNext()) {
            Iterator<byte[]> it2 = LocalResourceEngine.array(m75d(m75d(m75d(it.next(), "1"), "ti"), "items")).iterator();
            while (it2.hasNext()) {
                if (uuidValue.equals(BsonLite.uuidValue(it2.next(), "u"))) {
                    throw new IllegalArgumentException("请先从所有神器使卸下将被消耗的影装");
                }
            }
        }
        if (m77v(m75d, "x") > 0) {
            throw new IllegalArgumentException("同调影装不能作为消耗材料，请保留专属影装");
        }
        upgradeMoney(localFeatureCatalog, bArr2);
    }

    static int upgradeMoney(LocalFeatureCatalog localFeatureCatalog, byte[] bArr) {
        int m77v = m77v(m75d(bArr, "tr"), "lv");
        int m77v2 = m77v(definition(localFeatureCatalog, bArr), "cost");
        if (m77v < 1 || m77v > 1000) {
            throw new IllegalArgumentException("影装强化等级无效");
        }
        int i = 0;
        for (int i2 = 1; i2 < m77v; i2++) {
            List<Integer> intArrayValues = BsonLite.intArrayValues(localFeatureCatalog.get("U", Integer.valueOf(i2)), "costs");
            if (m77v2 >= 1 && m77v2 <= intArrayValues.size()) {
                int i3 = m77v2 - 1;
                if (intArrayValues.get(i3).intValue() >= 0) {
                    i = Math.addExact(i, intArrayValues.get(i3).intValue());
                }
            }
            throw new IllegalArgumentException("缺少原版强化返还配置，本次未消耗");
        }
        return i;
    }

    private static int refund(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, List<String> list) {
        Iterator<String> it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = Math.addExact(i, upgradeMoney(localFeatureCatalog, owned(result.profile, localFeatureCatalog, it.next(), 0)));
        }
        result.profile = BsonLite.withProfileInt(result.profile, "money", Math.addExact(m77v(result.profile, "money"), i));
        return i;
    }

    private static byte[] generatedAttrs(LocalFeatureCatalog localFeatureCatalog, byte[] bArr, String str, Random random) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str2 : BsonLite.keys(m75d(bArr, str))) {
            byte[] m75d = m75d(m75d(bArr, str), str2);
            double num = num(m75d, "0");
            double num2 = num(m75d, "1");
            if (!Double.isFinite(num) || !Double.isFinite(num2) || num > num2) {
                throw new IllegalArgumentException("原版生成属性范围无效");
            }
            if (num != num2) {
                num += (num2 - num) * random.nextDouble();
            }
            linkedHashMap.put(str2, Double.valueOf(num));
        }
        return fields(linkedHashMap);
    }

    private static byte[] composed(LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, byte[] bArr, int i, byte[] bArr2, Random random) {
        byte[] bArr3 = localFeatureCatalog.get("EQ", m77v(bArr, "i") + ":" + i);
        LocalResourceCatalog.Treasure treasure = localResourceCatalog.treasures.get(m77v(bArr, "i") + ":" + i);
        if (bArr3 == null || treasure == null) {
            throw new IllegalArgumentException("缺少原版合成产物配置");
        }
        byte[] bArr4 = BsonLite.EMPTY_DOCUMENT;
        if (random.nextDouble() < num(bArr2, "hiddenProb")) {
            List<byte[]> array = LocalResourceEngine.array(m75d(localFeatureCatalog.get("EH", Integer.valueOf(m77v(bArr3, "hiddenAttrGroup"))), "weights"));
            Iterator<byte[]> it = array.iterator();
            double d = 0.0d;
            while (it.hasNext()) {
                double num = num(it.next(), "1");
                if (num < 0.0d) {
                    throw new IllegalArgumentException("隐藏属性权重无效");
                }
                d += num;
            }
            if (!Double.isFinite(d) || d <= 0.0d) {
                throw new IllegalArgumentException("缺少原版隐藏属性池");
            }
            double nextDouble = random.nextDouble() * d;
            Iterator<byte[]> it2 = array.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                byte[] next = it2.next();
                nextDouble -= num(next, "1");
                if (nextDouble < 0.0d) {
                    byte[] bArr5 = localFeatureCatalog.get("EV", Integer.valueOf(m77v(next, "0")));
                    if (bArr5 != null) {
                        bArr4 = generatedAttrs(localFeatureCatalog, bArr5, "hiddenAttrs", random);
                    } else {
                        throw new IllegalArgumentException("缺少原版隐藏属性配置");
                    }
                }
            }
        }
        byte[] document = BsonLite.document("fa", generatedAttrs(localFeatureCatalog, bArr3, "secondAttrsLow", random), "ta", generatedAttrs(localFeatureCatalog, bArr3, "thridAttrsLow", random), "ha", bArr4, "ft", BsonLite.intArrayValues(bArr3, "fixTrick"));
        byte[] replaceAttrs = replaceAttrs(replaceAttrs(replaceAttrs(BsonLite.withProfileInt(treasure.data(), "lv", m77v(m75d(bArr, "tr"), "lv")), localFeatureCatalog, document, "fa", "f"), localFeatureCatalog, document, "ta", "t"), localFeatureCatalog, document, "ha", "h");
        if (i >= 4) {
            replaceAttrs = BsonLite.withProfileDocument(replaceAttrs, "ic", document);
        }
        if (i == 5) {
            byte[] extra = extra(localFeatureCatalog, bArr3, "extraRandomLow", random, true);
            replaceAttrs = BsonLite.withProfileArray(BsonLite.withProfileArray(BsonLite.withProfileDocument(replaceAttrs, "oc", extra), "era", values(m75d(extra, "era"))), "su", BsonLite.intArrayValues(extra, "su"));
        }
        return BsonLite.withProfileDocument(bArr, "tr", replaceAttrs);
    }

    private static void compose(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr, Random random, long j) {
        int i;
        boolean z;
        byte[] bArr2;
        int i2;
        String str2;
        ArrayList arrayList;
        int m77v;
        boolean equals = "composeTreasureBatch".equals(str);
        List<String> ids = ids(bArr, "s", equals ? 120 : 4);
        if (ids.size() % 4 != 0 || (!equals && ids.size() != 4)) {
            throw new IllegalArgumentException("每组合成需要四件影装");
        }
        Iterator<String> it = ids.iterator();
        int i3 = -1;
        do {
            int i4 = 0;
            if (it.hasNext()) {
                byte[] owned = owned(result.profile, localFeatureCatalog, it.next(), 0);
                byte[] definition = definition(localFeatureCatalog, owned);
                disposable(result.profile, localFeatureCatalog, owned, true);
                if (m77v(definition, "noCompound") != 0) {
                    throw new IllegalArgumentException("该影装不能合成");
                }
                m77v = m77v(m75d(owned, "tr"), "cl");
                if (i3 == -1) {
                    i3 = m77v;
                }
            } else {
                byte[] bArr3 = localFeatureCatalog.get("EP", Integer.valueOf(i3));
                if (bArr3 == null || !map(bArr3).containsKey("sucProb") || i3 < 1 || i3 >= 5) {
                    throw new IllegalArgumentException("该品级影装不能合成");
                }
                List<Object> values = values(m75d(bArr3, "probList"));
                if (values.size() != 1 || !(values.get(0) instanceof Number) || ((Number) values.get(0)).doubleValue() != 1.0d) {
                    throw new IllegalArgumentException("未核实的合成跳级配置，本次未消耗");
                }
                double num = num(bArr3, "sucProb");
                if (num < 0.0d || num > 1.0d) {
                    throw new IllegalArgumentException("原版合成概率无效");
                }
                int size = ids.size() / 4;
                int m77v2 = m77v(localFeatureCatalog.get("EC", "1:1"), "composeCost");
                if (m77v2 <= 0) {
                    throw new IllegalArgumentException("缺少原版合成费用");
                }
                counter(result, "tcn", 200, size, j);
                money(result, Math.multiplyExact(m77v2, size));
                for (String str3 : BsonLite.keys(m75d(bArr3, "composeItems"))) {
                    LocalGiftEngine.consume(result, Integer.parseInt(str3), Math.multiplyExact(m77v(m75d(bArr3, "composeItems"), str3), size));
                }
                ArrayList arrayList2 = new ArrayList();
                int i5 = 0;
                boolean z2 = false;
                int i6 = 0;
                while (i5 < ids.size()) {
                    int i7 = i5 + 4;
                    ArrayList arrayList3 = new ArrayList(ids.subList(i5, i7));
                    ArrayList arrayList4 = new ArrayList();
                    Iterator it2 = arrayList3.iterator();
                    int i8 = i4;
                    while (it2.hasNext()) {
                        String str4 = (String) it2.next();
                        Iterator it3 = it2;
                        byte[] owned2 = owned(result.profile, localFeatureCatalog, str4, i4);
                        int i9 = i7;
                        if (m77v(definition(localFeatureCatalog, owned2), "rarity") == 2) {
                            arrayList4.add(str4);
                        }
                        i8 = Math.max(i8, trade(owned2));
                        it2 = it3;
                        i7 = i9;
                        i4 = 0;
                    }
                    int i10 = i7;
                    boolean z3 = random.nextDouble() < num;
                    if (!z3 || arrayList4.size() < 2) {
                        arrayList4 = arrayList3;
                    }
                    String str5 = (String) arrayList4.get(random.nextInt(arrayList4.size()));
                    byte[] owned3 = owned(result.profile, localFeatureCatalog, str5, 0);
                    if (z3) {
                        int i11 = i3 + 1;
                        i = i3;
                        i2 = i8;
                        z = z3;
                        str2 = str5;
                        byte[] bArr4 = bArr3;
                        bArr2 = bArr3;
                        arrayList = arrayList3;
                        owned3 = composed(localFeatureCatalog, localResourceCatalog, owned3, i11, bArr4, random);
                    } else {
                        i = i3;
                        z = z3;
                        bArr2 = bArr3;
                        i2 = i8;
                        str2 = str5;
                        arrayList = arrayList3;
                    }
                    byte[] withProfileInt = BsonLite.withProfileInt(owned3, "tt", i2);
                    arrayList.remove(str2);
                    i6 = Math.addExact(i6, refund(result, localFeatureCatalog, arrayList));
                    delete(result, arrayList);
                    update(result, withProfileInt);
                    canonical(result, withProfileInt);
                    arrayList2.add(withProfileInt);
                    z2 = z;
                    i5 = i10;
                    bArr3 = bArr2;
                    i3 = i;
                    i4 = 0;
                }
                LocalResourceEngine.syncCurrencies(result);
                if (equals) {
                    result.add("composeTreasureBatchReply", BsonLite.document("s", uuids(ids), "i", arrayList2, "rm", Integer.valueOf(i6)));
                    return;
                } else {
                    result.add("composeTreasureReply", BsonLite.document("s", uuids(ids), "r", Boolean.valueOf(z2), "i", arrayList2.get(0), "rm", Integer.valueOf(i6)));
                    return;
                }
            }
        } while (m77v == i3);
        throw new IllegalArgumentException("影装合成品级必须相同");
    }

    private static List<String> ids(byte[] bArr, String str, int i) {
        byte[] documentValue = BsonLite.documentValue(bArr, str);
        ArrayList arrayList = new ArrayList();
        if (documentValue == null) {
            throw new IllegalArgumentException("影装列表无效");
        }
        Iterator<String> it = BsonLite.keys(documentValue).iterator();
        while (it.hasNext()) {
            String uuidValue = BsonLite.uuidValue(documentValue, it.next());
            if (uuidValue == null || arrayList.contains(uuidValue)) {
                throw new IllegalArgumentException("影装编号无效或重复");
            }
            arrayList.add(uuidValue);
        }
        if (arrayList.isEmpty() || arrayList.size() > i) {
            throw new IllegalArgumentException("影装数量无效");
        }
        return arrayList;
    }

    private static List<BsonLite.UuidValue> uuids(List<String> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(m76id(it.next()));
        }
        return arrayList;
    }

    private static void money(LocalResourceEngine.Result result, int i) {
        if (i < 0 || m77v(result.profile, "money") < i) {
            throw new IllegalArgumentException("金币不足");
        }
        result.profile = BsonLite.withProfileInt(result.profile, "money", m77v(result.profile, "money") - i);
    }

    private static void delete(LocalResourceEngine.Result result, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            result.profile = LocalEquipmentEngine.removeOwned(result.profile, it.next());
        }
        if (!list.isEmpty()) {
            result.add("deleteItems", BsonLite.document("i", uuids(list)));
        }
    }

    private static void update(LocalResourceEngine.Result result, byte[] bArr) {
        result.profile = LocalEquipmentEngine.updateRecords(result.profile, Collections.singletonMap(BsonLite.uuidValue(bArr, "u"), bArr));
    }

    private static void canonical(LocalResourceEngine.Result result, byte[] bArr) {
        Iterator<byte[]> it = LocalResourceEngine.array(m75d(m75d(result.profile, "inv"), "items")).iterator();
        while (it.hasNext()) {
            if (BsonLite.uuidValue(bArr, "u").equals(BsonLite.uuidValue(it.next(), "u"))) {
                result.add("updateItems", BsonLite.document("i", Collections.singletonList(bArr)));
                return;
            }
        }
    }

    private static byte[] config(LocalFeatureCatalog localFeatureCatalog, byte[] bArr) {
        byte[] definition = definition(localFeatureCatalog, bArr);
        byte[] bArr2 = localFeatureCatalog.get("EC", m77v(definition, "cost") + ":" + m77v(definition, "rarity"));
        if (bArr2 == null) {
            throw new IllegalArgumentException("缺少原版影装消耗配置");
        }
        return bArr2;
    }

    private static void counter(LocalResourceEngine.Result result, String str, int i, int i2, long j) {
        byte[] m75d = m75d(result.profile, "heromgr");
        int day = LocalGiftEngine.day(Math.toIntExact(j));
        String str2 = "updateTreasureRefreshOrangeNum";
        if (BsonLite.intValue(m75d, "q7TreasureDay") != null && m77v(m75d, "q7TreasureDay") != day) {
            for (Iterator it = Arrays.asList("tcn", "ttn", "trg", "tro").iterator(); it.hasNext(); it = it) {
                m75d = BsonLite.withProfileInt(m75d, (String) it.next(), 0);
            }
            result.add("updateTreasureComposeNum", BsonLite.document("d", 0));
            result.add("updateTreasureTransferNum", BsonLite.document("d", 0));
            result.add("updateTreasureRefreshGoldNum", BsonLite.document("d", 0));
            result.add("updateTreasureRefreshOrangeNum", BsonLite.document("d", 0));
            m75d = m75d;
        }
        byte[] withProfileInt = BsonLite.withProfileInt(m75d, "q7TreasureDay", day);
        int addExact = Math.addExact(m77v(withProfileInt, str), i2);
        if (addExact <= i) {
            result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", BsonLite.withProfileInt(withProfileInt, str, addExact));
            if ("tcn".equals(str)) {
                str2 = "updateTreasureComposeNum";
            } else if ("ttn".equals(str)) {
                str2 = "updateTreasureTransferNum";
            } else if ("trg".equals(str)) {
                str2 = "updateTreasureRefreshGoldNum";
            }
            result.add(str2, BsonLite.document("d", Integer.valueOf(addExact)));
            return;
        }
        throw new IllegalArgumentException("今日影装操作次数已达上限");
    }

    static byte[] refreshCounters(byte[] bArr, long j) {
        byte[] m75d = m75d(bArr, "heromgr");
        Integer intValue = BsonLite.intValue(m75d, "q7TreasureDay");
        int day = LocalGiftEngine.day(Math.toIntExact(j));
        if (intValue != null && intValue.intValue() == day) {
            return bArr;
        }
        if (intValue != null) {
            Iterator it = Arrays.asList("tcn", "ttn", "trg", "tro").iterator();
            while (it.hasNext()) {
                m75d = BsonLite.withProfileInt(m75d, (String) it.next(), 0);
            }
        }
        return BsonLite.withProfileDocument(bArr, "heromgr", BsonLite.withProfileInt(m75d, "q7TreasureDay", day));
    }

    private static void resolve(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr) {
        List<String> ids = ids(bArr, "t", 500);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = ids.iterator();
        int i = 0;
        while (it.hasNext()) {
            byte[] owned = owned(result.profile, localFeatureCatalog, it.next(), 0);
            disposable(result.profile, localFeatureCatalog, owned, false);
            byte[] definition = definition(localFeatureCatalog, owned);
            arrayList.add(definition);
            if (str.equals("decomposeTreasure")) {
                i = Math.addExact(i, m77v(definition, "decomposeMoney"));
            } else if (LocalResourceEngine.array(m75d(definition, "rewards")).isEmpty()) {
                throw new IllegalArgumentException("该影装不能解析");
            }
        }
        int refund = refund(result, localFeatureCatalog, ids);
        delete(result, ids);
        if (i > 0) {
            result.profile = BsonLite.withProfileInt(result.profile, "money", Math.addExact(m77v(result.profile, "money"), i));
        }
        if (str.equals("smeltTreasure")) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                LocalGiftEngine.reward(result, localResourceCatalog, (byte[]) it2.next(), 1);
            }
        }
        LocalResourceEngine.syncCurrencies(result);
        byte[] reward = result.reward();
        if (i > 0) {
            reward = BsonLite.withProfileInt(reward, "money", i);
        }
        result.add(str + "Reply", BsonLite.document("t", uuids(ids), "rm", Integer.valueOf(refund), "r", reward));
    }

    private static byte[] hidden(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Map<String, Object> map = map(localFeatureCatalog.get("EI", 0));
        for (byte[] bArr2 : LocalResourceEngine.array(m75d(bArr, "attr"))) {
            String stringValue = BsonLite.stringValue(bArr2, "n");
            if (stringValue != null && stringValue.startsWith("h")) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    if (stringValue.equals("h" + entry.getValue())) {
                        linkedHashMap.put(entry.getKey(), Double.valueOf(num(bArr2, "v")));
                    }
                }
            }
        }
        return fields(linkedHashMap);
    }

    private static byte[] replaceAttrs(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, byte[] bArr2, String str, final String str2) {
        List<byte[]> array = LocalResourceEngine.array(m75d(bArr, "attr"));
        array.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalTreasureOperationEngine$$ExternalSyntheticLambda1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return LocalTreasureOperationEngine.lambda$replaceAttrs$0(str2, (byte[]) obj);
            }
        });
        for (String str3 : BsonLite.keys(m75d(bArr2, str))) {
            Integer intValue = BsonLite.intValue(localFeatureCatalog.get("EI", 0), str3);
            if (intValue == null) {
                throw new IllegalArgumentException("未知影装属性");
            }
            array.add(BsonLite.document("n", str2 + intValue, "v", Double.valueOf(num(m75d(bArr2, str), str3))));
        }
        return BsonLite.withProfileArray(bArr, "attr", array);
    }

    static /* synthetic */ boolean lambda$replaceAttrs$0(String str, byte[] bArr) {
        String stringValue = BsonLite.stringValue(bArr, "n");
        return stringValue != null && stringValue.startsWith(str);
    }

    private static void transfer(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr, Random random, long j) {
        String uuidValue = BsonLite.uuidValue(bArr, "s");
        String uuidValue2 = BsonLite.uuidValue(bArr, "d");
        byte[] owned = owned(result.profile, localFeatureCatalog, uuidValue, 0);
        byte[] owned2 = owned(result.profile, localFeatureCatalog, uuidValue2, 0);
        if (uuidValue.equals(uuidValue2)) {
            throw new IllegalArgumentException("不能转移到同一件影装");
        }
        disposable(result.profile, localFeatureCatalog, owned, false);
        byte[] definition = definition(localFeatureCatalog, owned);
        byte[] definition2 = definition(localFeatureCatalog, owned2);
        byte[] config = config(localFeatureCatalog, owned2);
        if (m77v(definition, "cost") != m77v(definition2, "cost")) {
            throw new IllegalArgumentException("转移影装 cost 必须相同");
        }
        byte[] hidden = hidden(m75d(owned, "tr"), localFeatureCatalog);
        byte[] hidden2 = hidden(m75d(owned2, "tr"), localFeatureCatalog);
        if (BsonLite.keys(hidden).isEmpty()) {
            throw new IllegalArgumentException("源影装没有隐藏属性");
        }
        if (BsonLite.keys(hidden).equals(BsonLite.keys(hidden2))) {
            for (String str : BsonLite.keys(hidden)) {
                if (num(hidden2, str) >= num(hidden, str)) {
                    throw new IllegalArgumentException("目标已有更高的相同隐藏属性");
                }
            }
        }
        byte[] bArr2 = localFeatureCatalog.get("EX", m77v(m75d(owned, "tr"), "cl") + ":" + m77v(m75d(owned2, "tr"), "cl"));
        if (bArr2 == null) {
            throw new IllegalArgumentException("缺少原版转移配置");
        }
        byte[] bArr3 = hidden2;
        counter(result, "ttn", 200, 1, j);
        for (String str2 : BsonLite.keys(m75d(bArr2, "items"))) {
            LocalGiftEngine.consume(result, Integer.parseInt(str2), m77v(m75d(bArr2, "items"), str2));
        }
        money(result, m77v(config, "transferCost"));
        boolean z = random.nextDouble() < num(bArr2, "prob");
        if (z) {
            byte[] withProfileDocument = BsonLite.withProfileDocument(owned2, "tr", replaceAttrs(m75d(owned2, "tr"), localFeatureCatalog, BsonLite.document("ha", hidden), "ha", "h"));
            owned2 = BsonLite.withProfileInt(withProfileDocument, "tt", Math.max(trade(withProfileDocument), trade(owned)));
            update(result, owned2);
        }
        int refund = refund(result, localFeatureCatalog, Collections.singletonList(uuidValue));
        delete(result, Collections.singletonList(uuidValue));
        LocalResourceEngine.syncCurrencies(result);
        Object[] objArr = new Object[12];
        objArr[0] = "s";
        objArr[1] = m76id(uuidValue);
        objArr[2] = "d";
        objArr[3] = m76id(uuidValue2);
        objArr[4] = "t";
        if (z) {
            bArr3 = hidden;
        }
        objArr[5] = bArr3;
        objArr[6] = "r";
        objArr[7] = Boolean.valueOf(z);
        objArr[8] = "rm";
        objArr[9] = Integer.valueOf(refund);
        objArr[10] = "tt";
        objArr[11] = Integer.valueOf(trade(owned2));
        result.add("transferTreasureReply", BsonLite.document(objArr));
        canonical(result, owned2);
    }

    private static void consumeOptions(LocalResourceEngine.Result result, List<Integer> list, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("原版材料配置无效");
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            int i2 = 0;
            for (byte[] bArr : LocalResourceEngine.array(m75d(m75d(result.profile, "inv"), "items"))) {
                if (m77v(bArr, "i") == intValue) {
                    i2 = Math.addExact(i2, m77v(bArr, "w"));
                }
            }
            int min = Math.min(i, i2);
            LocalGiftEngine.consume(result, intValue, min);
            i -= min;
            if (i == 0) {
                break;
            }
        }
        if (i != 0) {
            throw new IllegalArgumentException("影装材料不足");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00bf, code lost:
    
        throw new java.lang.IllegalArgumentException("突破材料必须为同 cost 的普通金色影装");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void breakthrough(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, byte[] bArr, Random random) {
        String str;
        String str2 = "h";
        int m77v = m77v(bArr, "h");
        String uuidValue = BsonLite.uuidValue(bArr, "s");
        byte[] owned = owned(result.profile, localFeatureCatalog, uuidValue, m77v);
        byte[] m75d = m75d(owned, "tr");
        byte[] definition = definition(localFeatureCatalog, owned);
        if (m77v(m75d, "cl") < 4) {
            breakthroughLow(result, localResourceCatalog, localFeatureCatalog, bArr, m77v, uuidValue, owned, m75d, definition);
            return;
        }
        String str3 = "d";
        List<String> ids = ids(bArr, "d", 2);
        if (ids.size() != 2 || ids.contains(uuidValue) || m77v(m75d, "cl") != 4 || m77v(m75d, "lv") < 40) {
            throw new IllegalArgumentException("突破需要40级金色影装和两件同 cost 金色材料");
        }
        int trade = trade(owned);
        Iterator<String> it = ids.iterator();
        while (true) {
            int i = m77v;
            if (it.hasNext()) {
                Iterator<String> it2 = it;
                byte[] owned2 = owned(result.profile, localFeatureCatalog, it.next(), 0);
                byte[] definition2 = definition(localFeatureCatalog, owned2);
                String str4 = str2;
                disposable(result.profile, localFeatureCatalog, owned2, true);
                if (m77v(m75d(owned2, "tr"), "cl") != 4 || m77v(definition2, "cost") != m77v(definition, "cost") || m77v(definition2, "rarity") != 1) {
                    break;
                }
                trade = Math.max(trade, trade(owned2));
                m77v = i;
                it = it2;
                str2 = str4;
            } else {
                String str5 = str2;
                byte[] bArr2 = localFeatureCatalog.get("ET", m77v(definition, "cost") + ":" + m77v(definition, "rarity"));
                LocalResourceCatalog.Treasure treasure = localResourceCatalog.treasures.get(m77v(owned, "i") + ":5");
                if (bArr2 == null || treasure == null) {
                    throw new IllegalArgumentException("缺少原版突破配置");
                }
                List<byte[]> array = LocalResourceEngine.array(m75d(bArr2, "itemid"));
                List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, "itemnum");
                int i2 = trade;
                if (array.size() != intArrayValues.size()) {
                    throw new IllegalArgumentException("原版突破材料配置无效");
                }
                int i3 = i2;
                int i4 = 0;
                while (true) {
                    str = str3;
                    if (i4 >= array.size()) {
                        break;
                    }
                    List<byte[]> list = array;
                    List<Integer> intArrayValues2 = BsonLite.intArrayValues(confArray(array.get(i4)), "v");
                    byte[] bArr3 = result.profile;
                    List<Integer> list2 = intArrayValues;
                    consumeOptions(result, intArrayValues2, intArrayValues.get(i4).intValue());
                    Iterator<Integer> it3 = intArrayValues2.iterator();
                    while (it3.hasNext()) {
                        int intValue = it3.next().intValue();
                        Iterator<Integer> it4 = it3;
                        byte[] bArr4 = bArr3;
                        if (count(bArr3, intValue) > count(result.profile, intValue)) {
                            i3 = Math.max(i3, m77v(localFeatureCatalog.get("ED", Integer.valueOf(intValue)), "tradeType"));
                        }
                        it3 = it4;
                        bArr3 = bArr4;
                    }
                    i4++;
                    array = list;
                    str3 = str;
                    intArrayValues = list2;
                }
                money(result, m77v(bArr2, "money"));
                byte[] bArr5 = localFeatureCatalog.get("EQ", m77v(owned, "i") + ":5");
                for (String str6 : Arrays.asList("secondAttrs", "thridAttrs")) {
                    if (!map(m75d(definition, str6)).equals(map(m75d(bArr5, str6)))) {
                        throw new IllegalArgumentException("该影装突破属性变换尚未核实，本次未扣费或消耗");
                    }
                }
                byte[] withProfileInt = BsonLite.withProfileInt(m75d, "cl", 5);
                byte[] extra = extra(localFeatureCatalog, bArr5, "extraRandomLow", random, false);
                byte[] withProfileInt2 = BsonLite.withProfileInt(BsonLite.withProfileDocument(owned, "tr", BsonLite.withoutProfileKey(BsonLite.withoutProfileKey(BsonLite.withProfileDocument(BsonLite.withProfileArray(BsonLite.withProfileArray(withProfileInt, "era", values(m75d(extra, "era"))), "su", BsonLite.intArrayValues(extra, "su")), "oc", extra), "ri"), "ro")), "tt", i3);
                int refund = refund(result, localFeatureCatalog, ids);
                update(result, withProfileInt2);
                delete(result, ids);
                LocalResourceEngine.syncCurrencies(result);
                result.add("tupoTreasureReply", BsonLite.document(str, uuids(ids), str5, Integer.valueOf(i), "i", withProfileInt2, "rm", Integer.valueOf(refund)));
                canonical(result, withProfileInt2);
                return;
            }
        }
    }

    private static void breakthroughLow(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, byte[] bArr, int i, String str, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        LocalResourceEngine.Result result2 = result;
        int m77v = m77v(bArr3, "cl");
        int m77v2 = m77v(bArr2, "i");
        int m77v3 = m77v(bArr4, "rarity");
        String str2 = "d";
        List<String> ids = ids(bArr, "d", 3);
        if (m77v < 1 || m77v > 3 || m77v(bArr3, "lv") < 1 || ids.size() != 3 || ids.contains(str) || ((m77v2 == 1095 && m77v != 1) || m77v3 < 1 || m77v3 > 2)) {
            throw new IllegalArgumentException("低品质突破需要三件符合条件的同品级材料");
        }
        int trade = trade(bArr2);
        Iterator<String> it = ids.iterator();
        int i2 = trade;
        int i3 = 0;
        int i4 = 0;
        while (it.hasNext()) {
            String str3 = str2;
            List<String> list = ids;
            byte[] owned = owned(result2.profile, localFeatureCatalog, it.next(), 0);
            byte[] definition = definition(localFeatureCatalog, owned);
            disposable(result2.profile, localFeatureCatalog, owned, true);
            if (m77v(m75d(owned, "tr"), "cl") == m77v) {
                if ((m77v(owned, "i") == 1095) == (m77v2 == 1095)) {
                    if (m77v3 == 1) {
                        if (m77v(definition, "rarity") != 1 || m77v(definition, "cost") != m77v(bArr4, "cost")) {
                            throw new IllegalArgumentException("普通影装突破需要三件同 cost 普通材料");
                        }
                    } else if (m77v(definition, "rarity") == 2 && m77v(owned, "i") == m77v2) {
                        i3++;
                    } else {
                        int i5 = i3;
                        if (m77v(definition, "rarity") != 1) {
                            throw new IllegalArgumentException("稀有影装突破需要一件同名稀有材料及两件普通材料");
                        }
                        i4++;
                        i3 = i5;
                    }
                    i2 = Math.max(i2, trade(owned));
                    result2 = result;
                    ids = list;
                    str2 = str3;
                }
            }
            throw new IllegalArgumentException("突破材料品级或特殊影装类型不匹配");
        }
        String str4 = str2;
        List<String> list2 = ids;
        int i6 = i2;
        int i7 = i3;
        int i8 = i4;
        if (m77v3 == 2 && (i7 != 1 || i8 != 2)) {
            throw new IllegalArgumentException("稀有影装突破需要一件同名稀有材料及两件普通材料");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(m77v2);
        sb.append(":");
        int i9 = m77v + 1;
        sb.append(i9);
        byte[] bArr5 = localFeatureCatalog.get("EQ", sb.toString());
        if (bArr5 != null) {
            if (localResourceCatalog.treasures.containsKey(m77v2 + ":" + i9) && m77v(bArr5, "cost") == m77v(bArr4, "cost") && m77v(bArr5, "rarity") == m77v3) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                String str5 = "secondAttrs";
                Iterator it2 = Arrays.asList("secondAttrs", "thridAttrs").iterator();
                while (it2.hasNext()) {
                    String str6 = (String) it2.next();
                    LinkedHashMap linkedHashMap3 = str5.equals(str6) ? linkedHashMap : linkedHashMap2;
                    String str7 = str5;
                    if (!BsonLite.keys(m75d(bArr4, str6)).equals(BsonLite.keys(m75d(bArr5, str6)))) {
                        throw new IllegalArgumentException("该突破属性变换尚未核实，本次未扣费");
                    }
                    Iterator<String> it3 = BsonLite.keys(m75d(bArr5, str6)).iterator();
                    while (it3.hasNext()) {
                        String next = it3.next();
                        Iterator<String> it4 = it3;
                        byte[] m75d = m75d(m75d(bArr5, str6), next);
                        Iterator it5 = it2;
                        double num = num(m75d, "0");
                        double num2 = num(m75d, "1");
                        int i10 = i6;
                        if ((m77v < 3 && num != num2) || (m77v == 3 && (num(m75d(m75d(bArr4, str6), next), "0") != num || num(m75d(m75d(bArr4, str6), next), "1") != num))) {
                            throw new IllegalArgumentException("该突破属性范围尚未核实，本次未扣费");
                        }
                        linkedHashMap3.put(next, Double.valueOf(num));
                        it3 = it4;
                        it2 = it5;
                        i6 = i10;
                    }
                    str5 = str7;
                }
                int i11 = i6;
                byte[] document = BsonLite.document("fa", fields(linkedHashMap), "ta", fields(linkedHashMap2), "ft", BsonLite.intArrayValues(bArr5, "fixTrick"), "ha", hidden(bArr3, localFeatureCatalog));
                byte[] withProfileArray = BsonLite.withProfileArray(BsonLite.withProfileInt(replaceAttrs(replaceAttrs(bArr3, localFeatureCatalog, document, "fa", "f"), localFeatureCatalog, document, "ta", "t"), "cl", i9), "ft", BsonLite.intArrayValues(bArr5, "fixTrick"));
                Iterator it6 = Arrays.asList("ri", "ro").iterator();
                while (it6.hasNext()) {
                    withProfileArray = BsonLite.withoutProfileKey(withProfileArray, (String) it6.next());
                }
                if (m77v == 3) {
                    withProfileArray = BsonLite.withProfileDocument(withProfileArray, "ic", document);
                }
                int m77v4 = m77v(localFeatureCatalog.get("EC", "1:1"), "composeCost");
                if (m77v4 <= 0) {
                    throw new IllegalArgumentException("缺少原版低品质突破费用");
                }
                money(result, m77v4);
                byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileDocument(bArr2, "tr", withProfileArray), "tt", i11);
                int refund = refund(result, localFeatureCatalog, list2);
                update(result, withProfileInt);
                delete(result, list2);
                LocalResourceEngine.syncCurrencies(result);
                result.add("tupoTreasureReply", BsonLite.document(str4, uuids(list2), "h", Integer.valueOf(i), "i", withProfileInt, "rm", Integer.valueOf(refund)));
                canonical(result, withProfileInt);
                return;
            }
        }
        throw new IllegalArgumentException("缺少原版低品质突破配置");
    }

    private static byte[] confArray(byte[] bArr) {
        return BsonLite.document("v", new BsonLite.ArrayValue(bArr));
    }

    private static byte[] extra(LocalFeatureCatalog localFeatureCatalog, byte[] bArr, String str, Random random, boolean z) {
        byte[] m75d = m75d(bArr, str);
        int num = (int) (num(m75d, "0") + ((num(m75d, "1") - num(m75d, "0")) * random.nextDouble()));
        int nextInt = num <= 1 ? 1 : random.nextInt(Math.min(3, num)) + 1;
        ArrayList arrayList = new ArrayList(Arrays.asList("_phy_str_delta", "_mag_str_delta", "_phy_def_delta", "_mag_def_delta", "_hp_delta", "block_rate", "penetrate_rate", "bless_rate", "injure_rate", "attack_twice_rate", "avoid_rate", "cri_rate", "cd_reset_rate", "magic_shield_val", "absorb_rate", "delay_hurt_rate"));
        Collections.shuffle(arrayList, random);
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        while (i < nextInt) {
            Object[] objArr = new Object[2];
            objArr[0] = arrayList.get(i);
            objArr[1] = Double.valueOf((num / nextInt) + (i < num % nextInt ? 1 : 0));
            arrayList2.add(Arrays.asList(objArr));
            i++;
        }
        ArrayList arrayList3 = new ArrayList();
        if (z) {
            byte[] bArr2 = localFeatureCatalog.get("EF", 5);
            String[][] strArr = {new String[]{"suitProb", "suitGroupId"}, new String[]{"suitProb2", "suitGroupId2"}};
            for (int i2 = 0; i2 < 2; i2++) {
                String[] strArr2 = strArr[i2];
                int m77v = m77v(bArr, strArr2[1]);
                if (m77v != 0 && random.nextDouble() < num(bArr2, strArr2[0])) {
                    List<byte[]> array = LocalResourceEngine.array(m75d(localFeatureCatalog.get("ES", Integer.valueOf(m77v)), "weights"));
                    Iterator<byte[]> it = array.iterator();
                    double d = 0.0d;
                    while (it.hasNext()) {
                        d += num(it.next(), "1");
                    }
                    if (d <= 0.0d) {
                        throw new IllegalArgumentException("缺少原版套装权重");
                    }
                    double nextDouble = random.nextDouble() * d;
                    Iterator<byte[]> it2 = array.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            byte[] next = it2.next();
                            nextDouble -= num(next, "1");
                            if (nextDouble < 0.0d) {
                                int m77v2 = m77v(next, "0");
                                if (!arrayList3.contains(Integer.valueOf(m77v2))) {
                                    arrayList3.add(Integer.valueOf(m77v2));
                                }
                            }
                        }
                    }
                }
            }
        }
        return BsonLite.document("era", arrayList2, "su", arrayList3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00ab, code lost:
    
        r2.put(r5, java.lang.Double.valueOf(r6 + ((r8 - r6) * r14)));
        r0 = r19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static byte[] roll(LocalFeatureCatalog localFeatureCatalog, byte[] bArr, int i, String str, Random random) {
        byte[] bArr2 = bArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        byte[] bArr3 = localFeatureCatalog.get("EN", i + ":" + m77v(bArr2, "rarity") + ":0");
        Iterator<String> it = BsonLite.keys(m75d(bArr2, str)).iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (BsonLite.keys(m75d(m75d(bArr2, str), next)).size() != 2) {
                throw new IllegalArgumentException("影装属性范围配置无效");
            }
            double num = num(m75d(m75d(bArr2, str), next), "0");
            double num2 = num(m75d(m75d(bArr2, str), next), "1");
            num(bArr3, "mu");
            double num3 = num(bArr3, "sigma");
            int i2 = 0;
            while (true) {
                double num4 = num(bArr3, "mu") + (random.nextGaussian() * num3);
                i2++;
                if (i2 > 10000) {
                    throw new IllegalArgumentException("影装属性随机生成失败，本次未扣费");
                }
                if (num4 < num(bArr3, "truncLower") || num4 > num(bArr3, "truncUpper")) {
                }
            }
        }
        return fields(linkedHashMap);
    }

    private static void preview(LocalResourceEngine.Result result, final LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr, Random random, long j) {
        Object obj;
        byte[] bArr2;
        Object obj2;
        int i;
        char c;
        Object obj3;
        int i2;
        boolean z;
        int i3;
        String str2;
        String str3;
        byte[] extra;
        boolean equals = str.equals("refreshTreasureOrangeAsk");
        int m77v = m77v(bArr, "h");
        String uuidValue = BsonLite.uuidValue(bArr, equals ? "d" : "u");
        byte[] owned = owned(result.profile, localFeatureCatalog, uuidValue, m77v);
        byte[] m75d = m75d(owned, "tr");
        byte[] definition = definition(localFeatureCatalog, owned);
        byte[] config = config(localFeatureCatalog, owned);
        int m77v2 = m77v(m75d, "cl");
        if (m77v2 < 4 || (equals && m77v2 != 5)) {
            throw new IllegalArgumentException("只能洗练金色/橙色影装，重构仅限橙色");
        }
        int m77v3 = m77v(bArr, "ui");
        if (equals) {
            obj = "ui";
            bArr2 = m75d;
            obj2 = "u";
            i = m77v3;
            c = 5;
            obj3 = "h";
            i2 = m77v;
            z = equals;
            i3 = 1;
            counter(result, "tro", 50, 1, j);
            String uuidValue2 = BsonLite.uuidValue(bArr, "s");
            if (uuidValue2 == null) {
                str2 = uuidValue;
                str3 = "tr";
            } else if (uuidValue2.equals("000000000000000000000000")) {
                str2 = uuidValue;
                str3 = "tr";
            } else {
                str2 = uuidValue;
                if (uuidValue2.equals(str2)) {
                    throw new IllegalArgumentException("重构不能消耗目标影装");
                }
                byte[] owned2 = owned(result.profile, localFeatureCatalog, uuidValue2, 0);
                byte[] definition2 = definition(localFeatureCatalog, owned2);
                disposable(result.profile, localFeatureCatalog, owned2, true);
                str3 = "tr";
                if (m77v(m75d(owned2, str3), "cl") == 4 && m77v(definition2, "cost") == m77v(definition, "cost")) {
                    LocalGiftEngine.spend(result, "crystal", m77v(config, "orangeRefreshCost"));
                    refund(result, localFeatureCatalog, Collections.singletonList(uuidValue2));
                    owned = BsonLite.withProfileInt(owned, "tt", Math.max(trade(owned), trade(owned2)));
                    delete(result, Collections.singletonList(uuidValue2));
                    extra = extra(localFeatureCatalog, definition, "extraRandomHigh", random, true);
                } else {
                    throw new IllegalArgumentException("重构材料需要同 cost 的金色影装");
                }
            }
            LocalGiftEngine.consume(result, m77v(config, "orangeRefreshItemid"), 1);
            extra = extra(localFeatureCatalog, definition, "extraRandomHigh", random, true);
        } else if (BsonLite.intValue(bArr, "ui") != null) {
            obj2 = "u";
            i2 = m77v;
            int i4 = m77v3;
            obj3 = "h";
            z = equals;
            obj = "ui";
            c = 5;
            bArr2 = m75d;
            counter(result, "trg", 200, 1, j);
            if (i4 == 0) {
                LocalGiftEngine.consume(result, m77v(config, "goldRefreshItemid"), m77v(definition, "cost"));
                i = i4;
            } else if (i4 == 1) {
                int trade = trade(owned);
                byte[] bArr3 = localFeatureCatalog.get("ER", Integer.valueOf(m77v(definition, "rarity")));
                Iterator<String> it = BsonLite.keys(m75d(bArr3, "refreshConsume")).iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    ArrayList arrayList = new ArrayList();
                    String[] split = next.split(":");
                    Iterator<String> it2 = it;
                    int i5 = i4;
                    int i6 = 0;
                    for (int length = split.length; i6 < length; length = length) {
                        arrayList.add(Integer.valueOf(Integer.parseInt(split[i6])));
                        i6++;
                    }
                    arrayList.sort(new Comparator() { // from class: com.project7.localmanager.LocalTreasureOperationEngine$$ExternalSyntheticLambda0
                        @Override // java.util.Comparator
                        public final int compare(Object obj4, Object obj5) {
                            int compare;
                            compare = Integer.compare(LocalTreasureOperationEngine.m77v(r0.get("ED", (Integer) obj4), "tradeType"), LocalTreasureOperationEngine.m77v(LocalFeatureCatalog.this.get("ED", (Integer) obj5), "tradeType"));
                            return compare;
                        }
                    });
                    if (trade(owned) > 2) {
                        Collections.reverse(arrayList);
                    }
                    byte[] bArr4 = result.profile;
                    consumeOptions(result, arrayList, Math.multiplyExact(m77v(m75d(bArr3, "refreshConsume"), next), m77v(definition, "cost")));
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        int intValue = ((Integer) it3.next()).intValue();
                        if (count(bArr4, intValue) > count(result.profile, intValue)) {
                            trade = Math.max(trade, m77v(localFeatureCatalog.get("ED", Integer.valueOf(intValue)), "tradeType"));
                        }
                    }
                    it = it2;
                    i4 = i5;
                }
                i = i4;
                for (String str4 : BsonLite.keys(m75d(bArr3, "refreshConsume2"))) {
                    LocalGiftEngine.consume(result, Integer.parseInt(str4), Math.multiplyExact(m77v(m75d(bArr3, "refreshConsume2"), str4), m77v(definition, "cost")));
                }
                money(result, m77v(config, "goldRefreshCost"));
                LocalGiftEngine.spend(result, "crystal", m77v(config, "goldRefreshCost2"));
                owned = BsonLite.withProfileInt(owned, "tt", trade);
            } else {
                throw new IllegalArgumentException("洗练材料模式无效");
            }
            extra = LocalRefreshFix.ensure(BsonLite.document("fa", roll(localFeatureCatalog, definition, m77v2, "secondAttrs", random), "ta", roll(localFeatureCatalog, definition, m77v2, "thridAttrs", random)));
            i3 = 1;
            str2 = uuidValue;
            str3 = "tr";
        } else {
            throw new IllegalArgumentException("请选择洗练材料模式");
        }
        byte[] withProfileDocument = BsonLite.withProfileDocument(bArr2, z ? "ro" : "ri", extra);
        ArrayList arrayList2 = new ArrayList(BsonLite.intArrayValues(withProfileDocument, "rt"));
        while (arrayList2.size() < 2) {
            arrayList2.add(0);
        }
        boolean z2 = z;
        arrayList2.set(z2 ? 1 : 0, Integer.valueOf(Math.addExact(((Integer) arrayList2.get(z2 ? 1 : 0)).intValue(), i3)));
        byte[] withProfileArray = BsonLite.withProfileArray(withProfileDocument, "rt", arrayList2);
        ArrayList arrayList3 = new ArrayList(BsonLite.intArrayValues(withProfileArray, z2 ? "ol" : "il"));
        arrayList3.add(Integer.valueOf(Math.toIntExact(j)));
        if (arrayList3.size() > 200) {
            arrayList3 = new ArrayList(arrayList3.subList(arrayList3.size() - 200, arrayList3.size()));
        }
        byte[] withProfileDocument2 = BsonLite.withProfileDocument(owned, str3, BsonLite.withProfileArray(withProfileArray, z2 ? "ol" : "il", arrayList3));
        update(result, withProfileDocument2);
        LocalResourceEngine.syncCurrencies(result);
        if (z2) {
            Object[] objArr = new Object[6];
            objArr[0] = obj3;
            objArr[i3] = Integer.valueOf(i2);
            objArr[2] = obj2;
            objArr[3] = m76id(str2);
            objArr[4] = "r";
            objArr[c] = extra;
            result.add("refreshTreasureOrangeReply", BsonLite.document(objArr));
        } else {
            Object[] objArr2 = new Object[10];
            objArr2[0] = obj3;
            objArr2[i3] = Integer.valueOf(i2);
            objArr2[2] = obj2;
            objArr2[3] = m76id(str2);
            objArr2[4] = "r";
            objArr2[c] = extra;
            objArr2[6] = "t";
            objArr2[7] = Integer.valueOf(trade(withProfileDocument2));
            objArr2[8] = obj;
            objArr2[9] = Integer.valueOf(i);
            result.add("refreshTreasureReply", BsonLite.document(objArr2));
        }
        canonical(result, withProfileDocument2);
    }

    private static int trade(byte[] bArr) {
        Integer intValue = BsonLite.intValue(bArr, "tt");
        if (intValue == null) {
            return 3;
        }
        return intValue.intValue();
    }

    private static int count(byte[] bArr, int i) {
        int i2 = 0;
        for (byte[] bArr2 : LocalResourceEngine.array(m75d(m75d(bArr, "inv"), "items"))) {
            if (m77v(bArr2, "i") == i) {
                i2 = Math.addExact(i2, m77v(bArr2, "w"));
            }
        }
        return i2;
    }

    private static void accept(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr) {
        byte[] replaceAttrs;
        int m77v = m77v(bArr, "h");
        String uuidValue = BsonLite.uuidValue(bArr, "u");
        byte[] owned = owned(result.profile, localFeatureCatalog, uuidValue, m77v);
        byte[] m75d = m75d(owned, "tr");
        boolean equals = str.equals("refreshTreasureApplyOrange");
        String str2 = equals ? "ro" : "ri";
        byte[] documentValue = BsonLite.documentValue(m75d, str2);
        if (documentValue == null || BsonLite.keys(documentValue).isEmpty()) {
            throw new IllegalArgumentException("没有待替换的影装属性");
        }
        if (equals) {
            replaceAttrs = BsonLite.withProfileArray(BsonLite.withProfileArray(m75d, "era", values(m75d(documentValue, "era"))), "su", BsonLite.intArrayValues(documentValue, "su"));
        } else {
            replaceAttrs = replaceAttrs(replaceAttrs(m75d, localFeatureCatalog, documentValue, "fa", "f"), localFeatureCatalog, documentValue, "ta", "t");
        }
        byte[] withProfileDocument = BsonLite.withProfileDocument(owned, "tr", BsonLite.withoutProfileKey(replaceAttrs, str2));
        update(result, withProfileDocument);
        result.add(str + "Reply", BsonLite.document("h", Integer.valueOf(m77v), "u", m76id(uuidValue), "r", withProfileDocument));
        canonical(result, withProfileDocument);
    }
}
