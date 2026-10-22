package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalRoomCrystalEngine {
    LocalRoomCrystalEngine() {
    }

    static boolean handles(String str) {
        return "requestRoomJiejingOpen".equals(str) || "calcCrystal".equals(str);
    }

    /* renamed from: d */
    static byte[] m66d(byte[] bArr, String str) {
        return LocalHomeEngine.m34d(bArr, str);
    }

    /* renamed from: v */
    static int m67v(byte[] bArr, String str) {
        return LocalHomeEngine.m35v(bArr, str);
    }

    static void require(boolean z, String str) {
        LocalHomeEngine.require(z, str);
    }

    static int seconds(long j) {
        return Math.toIntExact(j / 1000);
    }

    static double number(byte[] bArr, String str, double d) {
        Number numericValue = BsonLite.numericValue(bArr, str);
        if (numericValue == null) {
            require(!BsonLite.keys(bArr).contains(str), "结晶存档数字格式异常");
            return d;
        }
        double doubleValue = numericValue.doubleValue();
        require(Double.isFinite(doubleValue) && doubleValue >= 0.0d, "结晶存档数值异常");
        return doubleValue;
    }

    static byte[] rule(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        byte[] m66d = m66d(bArr, "rmd");
        int intValue = BsonLite.intValue(m66d, "rl");
        if (intValue == null && !BsonLite.keys(m66d).contains("rl")) {
            intValue = 1;
        }
        byte[] bArr2 = intValue == null ? null : localFeatureCatalog.get("RB", intValue);
        require(bArr2 != null, "结晶房间等级尚无原版数据");
        return bArr2;
    }

    static boolean active(byte[] bArr) {
        return m67v(m66d(bArr, "weeknum"), "w") >= 3 && m67v(m66d(bArr, "rmd"), "fc") != 0;
    }

    static int rate(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        byte[] rule = rule(bArr, localFeatureCatalog);
        int addExact = Math.addExact(m67v(rule, "base_crystal"), m67v(rule, "crystal_acc"));
        Map<Integer, Integer> inventoryCounts = LocalHomeEngine.inventoryCounts(bArr);
        HashSet hashSet = new HashSet();
        Iterator<Map.Entry<String, byte[]>> it = localFeatureCatalog.entries.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, byte[]> next = it.next();
            if (next.getKey().startsWith("F:")) {
                byte[] value = next.getValue();
                int m67v = m67v(value, "itemid");
                if (inventoryCounts.getOrDefault(Integer.valueOf(m67v), 0).intValue() > 0 && hashSet.add(Integer.valueOf(m67v))) {
                    addExact = Math.addExact(addExact, m67v(m66d(m66d(rule, "quality_acc_dict"), Integer.toString(m67v(value, "star"))), "1"));
                }
            }
        }
        for (Map.Entry<String, byte[]> entry : localFeatureCatalog.entries.entrySet()) {
            if (entry.getKey().startsWith("TH:")) {
                List<Integer> intArrayValues = BsonLite.intArrayValues(entry.getValue(), "items");
                boolean isEmpty = true ^ intArrayValues.isEmpty();
                Iterator<Integer> it2 = intArrayValues.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (inventoryCounts.getOrDefault(Integer.valueOf(it2.next().intValue()), 0).intValue() <= 0) {
                        isEmpty = false;
                        break;
                    }
                }
                if (isEmpty) {
                    addExact = Math.addExact(addExact, m67v(m66d(rule, "theme_acc_dict"), entry.getKey().substring(3)));
                }
            }
        }
        require(addExact > 0, "结晶产出规则异常");
        return addExact;
    }

    static byte[] initialize(byte[] bArr, long j) {
        byte[] m66d = m66d(bArr, "rmd");
        if (!BsonLite.keys(m66d).contains("rl")) {
            m66d = BsonLite.withProfileInt(m66d, "rl", 1);
        }
        byte[] documentValue = BsonLite.documentValue(m66d, "ac");
        if (documentValue != null || !BsonLite.keys(m66d).contains("ac")) {
            if (documentValue == null) {
                documentValue = BsonLite.EMPTY_DOCUMENT;
            }
            if (!BsonLite.keys(documentValue).contains("crc")) {
                documentValue = BsonLite.withProfileDouble(documentValue, "crc", 0.0d);
            }
            if (!BsonLite.keys(documentValue).contains("lct")) {
                documentValue = BsonLite.withProfileInt(documentValue, "lct", seconds(j));
            }
            m66d = BsonLite.withProfileDocument(m66d, "ac", documentValue);
        }
        return Arrays.equals(m66d, m66d(bArr, "rmd")) ? bArr : BsonLite.withProfileDocument(bArr, "rmd", m66d);
    }

    static byte[] clock(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, long j) {
        require(BsonLite.documentValue(m66d(bArr, "rmd"), "ac") != null, "结晶计时存档格式异常");
        byte[] m66d = m66d(m66d(bArr, "rmd"), "ac");
        byte[] rule = rule(bArr, localFeatureCatalog);
        double number = number(m66d, "crc", 0.0d);
        double number2 = number(m66d, "lct", seconds(j));
        require(number2 <= 2.147483647E9d && number2 == Math.floor(number2), "结晶计时格式异常");
        int m67v = m67v(rule, "max_crystal");
        require(m67v > 0 && number <= ((double) m67v), "结晶暂存超过原版上限");
        int seconds = seconds(j);
        double d = seconds;
        if (d <= number2) {
            return m66d;
        }
        if (active(bArr)) {
            number = Math.min(m67v, number + (((d - number2) * rate(bArr, localFeatureCatalog)) / 86400.0d));
        }
        return BsonLite.withProfileInt(BsonLite.withProfileDouble(m66d, "crc", number), "lct", seconds);
    }

    static void setClock(LocalResourceEngine.Result result, byte[] bArr, boolean z) {
        result.profile = BsonLite.withProfileDocument(result.profile, "rmd", BsonLite.withProfileDocument(m66d(result.profile, "rmd"), "ac", bArr));
        if (z) {
            result.add("syncAutoCrytal", BsonLite.document("d", bArr));
        }
    }

    static void inventoryChanged(LocalResourceEngine.Result result, byte[] bArr, LocalFeatureCatalog localFeatureCatalog, long j) {
        if (!active(bArr) || BsonLite.keys(m66d(m66d(bArr, "rmd"), "ac")).isEmpty()) {
            return;
        }
        byte[] clock = clock(bArr, localFeatureCatalog, j);
        if (!Arrays.equals(clock, m66d(m66d(result.profile, "rmd"), "ac"))) {
            setClock(result, clock, true);
        }
    }

    static void apply(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, long j) {
        require(m67v(m66d(result.profile, "weeknum"), "w") >= 3, "幻力结晶尚未达到原版周目开放条件");
        byte[] m66d = m66d(result.profile, "rmd");
        rule(result.profile, localFeatureCatalog);
        if ("requestRoomJiejingOpen".equals(str)) {
            int i = m67v(m66d, "fc") == 0 ? 1 : 0;
            setClock(result, clock(result.profile, localFeatureCatalog, j), false);
            if (i != 0) {
                result.profile = BsonLite.withProfileDocument(result.profile, "rmd", BsonLite.withProfileInt(m66d(result.profile, "rmd"), "fc", 1));
            }
            result.add("requestRoomJiejingOpenReply", BsonLite.document("d", m66d(result.profile, "rmd"), "f", Integer.valueOf(i)));
            return;
        }
        require(active(result.profile), "请先开启幻力结晶");
        require(BsonLite.keys(m66d(m66d, "rwd")).isEmpty(), "旧结晶随机奖励尚待原版合同核查，已保留未领取内容");
        byte[] clock = clock(result.profile, localFeatureCatalog, j);
        byte[] rule = rule(result.profile, localFeatureCatalog);
        int m67v = m67v(rule, "crystal_itemid");
        int m67v2 = m67v(rule, "crystal_limit") - LocalHomeEngine.count(result.profile, m67v);
        require(m67v2 > 0, "幻力结晶已达到原版持有上限");
        int min = Math.min(m67v2, (int) Math.floor(number(clock, "crc", 0.0d)));
        require(min > 0, "暂无可领取的幻力结晶");
        LocalResourceEngine.grant(result, localResourceCatalog, "item", m67v, min, 1);
        setClock(result, BsonLite.withProfileDouble(clock, "crc", number(clock, "crc", 0.0d) - min), true);
        result.add("calcCrystalReply", BsonLite.document("rd", Arrays.asList(Arrays.asList(Integer.valueOf(m67v), Integer.valueOf(min)))));
    }
}
