package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalRoomGrowthEngine {
    static final List<String> METHODS = Arrays.asList("activeSkill", "upgradeSkill", "breakSkill", "swapSkillOption", "upRoomLevel");

    LocalRoomGrowthEngine() {
    }

    /* renamed from: d */
    static byte[] m66d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m67v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static byte[] rule(LocalFeatureCatalog localFeatureCatalog, String str, Object obj) {
        byte[] bArr = localFeatureCatalog.get(str, obj);
        return bArr == null ? BsonLite.EMPTY_DOCUMENT : bArr;
    }

    static byte[] skill(byte[] bArr, int i) {
        byte[] m66d = m66d(bArr, "rmd");
        byte[] documentValue = BsonLite.documentValue(m66d, "rs");
        if (documentValue == null && BsonLite.keys(m66d).contains("rs")) {
            throw new IllegalArgumentException("房间模块存档格式异常");
        }
        if (documentValue == null) {
            documentValue = BsonLite.EMPTY_DOCUMENT;
        }
        String num = Integer.toString(i);
        byte[] documentValue2 = BsonLite.documentValue(documentValue, num);
        if (documentValue2 == null && BsonLite.keys(documentValue).contains(num)) {
            throw new IllegalArgumentException("房间技能存档格式异常");
        }
        return documentValue2 == null ? BsonLite.EMPTY_DOCUMENT : documentValue2;
    }

    static byte[] definition(LocalFeatureCatalog localFeatureCatalog, int i, int i2, int i3) {
        return rule(localFeatureCatalog, "RS", i + ":" + i2 + ":" + i3);
    }

    static int valueOr(byte[] bArr, String str, int i) {
        Integer intValue = BsonLite.intValue(bArr, str);
        if (intValue == null && BsonLite.keys(bArr).contains(str)) {
            throw new IllegalArgumentException("房间模块数字格式异常");
        }
        return intValue == null ? i : intValue.intValue();
    }

    static int roomLevel(byte[] bArr) {
        return valueOr(m66d(bArr, "rmd"), "rl", 1);
    }

    static boolean has(byte[] bArr) {
        return !BsonLite.keys(bArr).isEmpty();
    }

    static boolean enough(byte[] bArr, byte[] bArr2, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (byte[] bArr3 : LocalResourceEngine.array(m66d(bArr2, str))) {
            int m67v = m67v(bArr3, "0");
            int m67v2 = m67v(bArr3, "1");
            if (m67v <= 0 || m67v2 < 0) {
                throw new IllegalArgumentException("房间模块材料配置无效");
            }
            linkedHashMap.put(Integer.valueOf(m67v), Integer.valueOf(Math.addExact(((Integer) linkedHashMap.getOrDefault(Integer.valueOf(m67v), 0)).intValue(), m67v2)));
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (LocalHomeEngine.count(bArr, ((Integer) entry.getKey()).intValue()) < ((Integer) entry.getValue()).intValue()) {
                return false;
            }
        }
        return true;
    }

    static void consume(LocalResourceEngine.Result result, byte[] bArr, String str) {
        for (byte[] bArr2 : LocalResourceEngine.array(m66d(bArr, str))) {
            LocalGiftEngine.consume(result, m67v(bArr2, "0"), m67v(bArr2, "1"));
        }
    }

    static Map<Integer, Integer> progress(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i = 1; i <= 5; i++) {
            byte[] m66d = m66d(rule(localFeatureCatalog, "RL", roomLevel(bArr) + ":" + i), "skill_dict");
            int i2 = 0;
            Iterator<String> it = BsonLite.keys(m66d).iterator();
            while (it.hasNext()) {
                int m67v = m67v(m66d, it.next());
                i2 = Math.addExact(i2, Math.min(valueOr(definition(localFeatureCatalog, m67v, 1, 1), "level_limit", 1), m67v(skill(bArr, m67v), "lv")));
            }
            linkedHashMap.put(Integer.valueOf(i), Integer.valueOf(i2));
        }
        return linkedHashMap;
    }

    static boolean moduleReady(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, byte[] bArr2) {
        Map<Integer, Integer> progress = progress(bArr, localFeatureCatalog);
        int i = 0;
        for (byte[] bArr3 : LocalResourceEngine.array(m66d(bArr2, "unlock_mod_cond_list"))) {
            int m67v = m67v(bArr3, "0");
            int m67v2 = m67v(bArr3, "1");
            if (m67v == 0) {
                i = m67v2;
            } else if (!progress.containsKey(Integer.valueOf(m67v)) || progress.get(Integer.valueOf(m67v)).intValue() < m67v2) {
                return false;
            }
        }
        if (i == 0) {
            return true;
        }
        int i2 = 0;
        for (Map.Entry<Integer, Integer> entry : progress.entrySet()) {
            if (entry.getKey().intValue() != 4) {
                i2 += entry.getValue().intValue();
            }
        }
        return i2 >= i;
    }

    static boolean groupLimit(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, int i, int i2, int i3, int i4, int i5) {
        int i6 = i3;
        int i7 = i4;
        byte[] rule = rule(localFeatureCatalog, "RL", i + ":" + i2);
        byte[] skill = skill(bArr, i6);
        int i8 = 1;
        byte[] definition = definition(localFeatureCatalog, i6, valueOr(skill, "lv", 1), i7);
        if (!has(rule) || !has(definition)) {
            return true;
        }
        Iterator<Integer> it = BsonLite.intArrayValues(definition, "group").iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<Integer> it2 = BsonLite.intArrayValues(m66d(rule, "group_dict"), Integer.toString(intValue)).iterator();
            while (it2.hasNext()) {
                int intValue2 = it2.next().intValue();
                if (intValue2 == i6 || has(skill)) {
                    byte[] m66d = m66d(definition(localFeatureCatalog, intValue2, intValue2 == i6 ? m67v(skill, "lv") + i5 : valueOr(skill, "lv", i8), intValue2 == i6 ? i7 != 0 ? i7 : valueOr(skill, "op", i8) : valueOr(skill, "op", i7)), "attrs");
                    for (String str : BsonLite.keys(m66d)) {
                        Number numericValue = BsonLite.numericValue(m66d, str);
                        if (numericValue == null || !Double.isFinite(numericValue.doubleValue())) {
                            throw new IllegalArgumentException("模块属性配置无效");
                        }
                        for (String str2 : expand(str)) {
                            linkedHashMap.put(str2, Double.valueOf(((Double) linkedHashMap.getOrDefault(str2, Double.valueOf(0.0d))).doubleValue() + numericValue.doubleValue()));
                        }
                    }
                    i6 = i3;
                    i7 = i4;
                    i8 = 1;
                }
            }
            byte[] rule2 = rule(localFeatureCatalog, "RG", Integer.valueOf(intValue));
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                Number numericValue2 = BsonLite.numericValue(rule2, (String) entry.getKey());
                if (numericValue2 != null && ((Double) entry.getValue()).doubleValue() > numericValue2.doubleValue()) {
                    return true;
                }
            }
            i6 = i3;
            i7 = i4;
            i8 = 1;
        }
        return false;
    }

    static String[] expand(String str) {
        return "_base_attack".equals(str) ? new String[]{"_base_phy_att_str", "_base_mag_att_str"} : "_base_attack_delta".equals(str) ? new String[]{"_phy_str_delta", "_mag_str_delta"} : "_base_defense".equals(str) ? new String[]{"_base_phy_def", "_base_mag_def"} : "_base_defense_delta".equals(str) ? new String[]{"_phy_def_delta", "_mag_def_delta"} : new String[]{str};
    }

    static int validate(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2) {
        int m67v = m67v(bArr2, "lv");
        if ("upRoomLevel".equals(str)) {
            if (roomLevel(bArr) != m67v) {
                return 1259;
            }
            if (!has(rule(localFeatureCatalog, "RU", Integer.valueOf(m67v + 1)))) {
                return 1276;
            }
            byte[] rule = rule(localFeatureCatalog, "RU", Integer.valueOf(m67v));
            if (!has(rule) || m67v(bArr, "level") < m67v(rule, "hero_level")) {
                return 1278;
            }
            for (int i = 1; i <= 5; i++) {
                byte[] m66d = m66d(rule(localFeatureCatalog, "RL", m67v + ":" + i), "skill_dict");
                Iterator<String> it = BsonLite.keys(m66d).iterator();
                while (it.hasNext()) {
                    int m67v2 = m67v(m66d, it.next());
                    if (m67v(skill(bArr, m67v2), "lv") < valueOr(definition(localFeatureCatalog, m67v2, 1, 1), "level_limit", 1)) {
                        return 1277;
                    }
                }
            }
            return enough(bArr, rule, "up_level_cost_list") ? 0 : 1263;
        }
        int m67v3 = m67v(bArr2, "m");
        int m67v4 = m67v(bArr2, "sk");
        int m67v5 = m67v(bArr2, "op");
        byte[] rule2 = rule(localFeatureCatalog, "RL", m67v + ":" + m67v3);
        if (!has(rule2)) {
            return 1257;
        }
        if (m67v4 != m67v(m66d(rule2, "skill_dict"), Integer.toString(m67v(bArr2, "idx")))) {
            return 1258;
        }
        if (m67v > roomLevel(bArr)) {
            return 1259;
        }
        byte[] skill = skill(bArr, m67v4);
        if ("activeSkill".equals(str)) {
            if (has(skill)) {
                return 1260;
            }
            byte[] definition = definition(localFeatureCatalog, m67v4, 1, m67v5);
            if (!has(definition)) {
                return 1261;
            }
            for (byte[] bArr3 : LocalResourceEngine.array(m66d(m66d(rule2, "skill_pre_link"), Integer.toString(m67v4)))) {
                if (!has(skill(bArr, m67v(bArr3, "0"))) || m67v(skill(bArr, m67v(bArr3, "0")), "lv") < m67v(bArr3, "1")) {
                    return 1262;
                }
            }
            if (!moduleReady(bArr, localFeatureCatalog, definition)) {
                return 1323;
            }
            if (enough(bArr, definition, "up_cost_list")) {
                return groupLimit(bArr, localFeatureCatalog, m67v, m67v3, m67v4, m67v5, 1) ? 1264 : 0;
            }
            return 1263;
        }
        if (!has(skill)) {
            return 1269;
        }
        int valueOr = valueOr(skill, "lv", 99);
        byte[] definition2 = definition(localFeatureCatalog, m67v4, valueOr, m67v5);
        if ("upgradeSkill".equals(str)) {
            if (!has(definition2)) {
                return 1261;
            }
            if (valueOr(definition2, "level_limit", 1) < valueOr) {
                return 1270;
            }
            byte[] definition3 = definition(localFeatureCatalog, m67v4, valueOr + 1, m67v5);
            if (!has(definition3)) {
                return 1261;
            }
            if (enough(bArr, definition3, "up_cost_list")) {
                return groupLimit(bArr, localFeatureCatalog, m67v, m67v3, m67v4, m67v5, 1) ? 1264 : 0;
            }
            return 1263;
        }
        if ("breakSkill".equals(str)) {
            if (!has(definition2) || m67v(definition2, "can_break") == 0 || m67v(definition2, "break_limit") == 0) {
                return 1271;
            }
            if (m67v(skill, "bk") >= m67v(definition2, "break_limit")) {
                return 1273;
            }
            if (valueOr(skill, "op", 0) != m67v5) {
                return 1274;
            }
            if (valueOr(definition2, "level_limit", 1) != valueOr) {
                return 1272;
            }
            if (enough(bArr, definition2, "break_cost_list")) {
                return groupLimit(bArr, localFeatureCatalog, m67v, m67v3, m67v4, m67v5, 1) ? 1264 : 0;
            }
            return 1263;
        }
        int m67v6 = m67v(bArr2, "n_op");
        if (valueOr(skill, "op", 0) == m67v6) {
            return 1275;
        }
        if (valueOr(skill, "op", 0) != m67v5) {
            return 1274;
        }
        byte[] definition4 = definition(localFeatureCatalog, m67v4, valueOr, m67v6);
        if (!has(definition2) || !has(definition4)) {
            return 1261;
        }
        if (enough(bArr, definition4, "up_cost_list")) {
            return groupLimit(bArr, localFeatureCatalog, m67v, m67v3, m67v4, m67v6, 0) ? 1264 : 0;
        }
        return 1263;
    }

    static void apply(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr, long j) {
        byte[] withProfileInt;
        LocalHomeEngine.require(m67v(m66d(result.profile, "weeknum"), "w") >= 3, "房间模块尚未达到原版周目开放条件");
        LocalHomeEngine.require(localFeatureCatalog.get("RU", Integer.valueOf(roomLevel(result.profile))) != null, "房间等级尚无原版配置");
        int validate = validate(result.profile, localFeatureCatalog, str, bArr);
        LocalHomeEngine.require(validate == 0, "房间模块操作未满足原版条件（" + validate + "）");
        byte[] m66d = m66d(result.profile, "rmd");
        int m67v = m67v(bArr, "lv");
        if ("upRoomLevel".equals(str)) {
            if (LocalRoomCrystalEngine.active(result.profile)) {
                LocalRoomCrystalEngine.setClock(result, LocalRoomCrystalEngine.clock(result.profile, localFeatureCatalog, j), true);
            }
            consume(result, rule(localFeatureCatalog, "RU", Integer.valueOf(m67v)), "up_level_cost_list");
            int i = m67v + 1;
            result.profile = BsonLite.withProfileDocument(result.profile, "rmd", BsonLite.withProfileInt(m66d(result.profile, "rmd"), "rl", i));
            result.add("upRoomLevelReply", BsonLite.document("lv", Integer.valueOf(i)));
        } else {
            int m67v2 = m67v(bArr, "sk");
            int m67v3 = m67v(bArr, "op");
            int valueOr = "activeSkill".equals(str) ? 1 : valueOr(skill(result.profile, m67v2), "lv", 99);
            if ("upgradeSkill".equals(str)) {
                valueOr++;
            }
            if ("swapSkillOption".equals(str)) {
                m67v3 = m67v(bArr, "n_op");
            }
            byte[] definition = definition(localFeatureCatalog, m67v2, valueOr, m67v3);
            byte[] skill = skill(result.profile, m67v2);
            consume(result, definition, "breakSkill".equals(str) ? "break_cost_list" : "up_cost_list");
            if ("breakSkill".equals(str)) {
                withProfileInt = BsonLite.withProfileInt(skill, "bk", Math.addExact(m67v(skill, "bk"), 1));
                result.add("breakSkillReply", BsonLite.document("sk", Integer.valueOf(m67v2), "op", Integer.valueOf(m67v3), "bk", Integer.valueOf(m67v(withProfileInt, "bk"))));
            } else {
                withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileInt(skill, "lv", valueOr), "op", m67v3);
                if ("swapSkillOption".equals(str)) {
                    withProfileInt = BsonLite.withProfileInt(withProfileInt, "bk", 0);
                }
                result.add(str + "Reply", BsonLite.document("sk", Integer.valueOf(m67v2), "op", Integer.valueOf(m67v3), "lv", Integer.valueOf(valueOr)));
            }
            result.profile = BsonLite.withProfileDocument(result.profile, "rmd", BsonLite.withProfileDocument(m66d, "rs", BsonLite.withProfileDocument(m66d(m66d, "rs"), Integer.toString(m67v2), withProfileInt)));
        }
        LocalHomeEngine.callback(result, true);
    }
}
