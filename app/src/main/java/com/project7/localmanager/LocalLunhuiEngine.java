package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
final class LocalLunhuiEngine {
    static final List<String> METHODS = Arrays.asList("seeLunhuizhijingUnlock", "requestLunhuizhijingAddEP", "lunhuizhijingBattleOnlineRequest");

    LocalLunhuiEngine() {
    }

    /* renamed from: v */
    static int m47v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m46d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static boolean handles(byte[] bArr, String str, byte[] bArr2) {
        return METHODS.contains(str) || ("q7DailyBegin".equals(str) && m47v(bArr2, "t") == 16) || (("q7DailyFinish".equals(str) && m47v(bArr2, "t") == 16) || ("q7DailyReset".equals(str) && m47v(m46d(bArr, "q7DailyBattle"), "t") == 16));
    }

    static boolean open(byte[] bArr, byte[] bArr2, int i) {
        if (bArr2 == null || m47v(m46d(bArr, "weeknum"), "w") < 1) {
            return false;
        }
        if (i == 301000) {
            return true;
        }
        int status = LocalMemoryPalaceEngine.status(m46d(bArr, "mpd"), "ar", m47v(bArr2, "area"));
        int m47v = m47v(bArr2, "badge");
        if (status == 3 || status == 4) {
            return m47v == 0 || LocalAccountFeatures.pairs(m46d(m46d(bArr, "bgd"), "cb")).containsKey(Integer.valueOf(m47v));
        }
        return false;
    }

    static long day(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        if (calendar.get(11) < 7) {
            calendar.add(5, -1);
        }
        return (calendar.get(1) * 10000) + ((calendar.get(2) + 1) * 100) + calendar.get(5);
    }

    static byte[] refresh(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, long j) {
        String str;
        if (m47v(m46d(bArr, "weeknum"), "w") < 1) {
            return bArr;
        }
        byte[] m46d = m46d(bArr, "lhzj");
        byte[] bArr2 = localFeatureCatalog.get("LE", 0);
        if (bArr2 == null) {
            return bArr;
        }
        int max = Math.max(0, m47v(m46d, "ep"));
        Integer intValue = BsonLite.intValue(m46d, "q7day");
        long day = day(j);
        if (intValue == null) {
            if (max == 0) {
                max = m47v(bArr2, "add");
            }
            str = "lhzj";
        } else if (day <= intValue.intValue()) {
            str = "lhzj";
        } else {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ROOT);
            try {
                str = "lhzj";
                max = (int) Math.min(m47v(bArr2, "max"), max + (Math.max(1L, Math.round((simpleDateFormat.parse(Long.toString(day)).getTime() - simpleDateFormat.parse(intValue.toString()).getTime()) / 8.64E7d)) * m47v(bArr2, "add")));
            } catch (ParseException e) {
                throw new IllegalArgumentException("轮回充能日期记录无效");
            }
        }
        byte[] withProfileInt = BsonLite.withProfileInt(m46d, "ep", max);
        if (intValue == null || day > intValue.intValue()) {
            withProfileInt = BsonLite.withProfileInt(withProfileInt, "q7day", (int) day);
        }
        return BsonLite.withProfileDocument(bArr, str, withProfileInt);
    }

    static void sync(LocalResourceEngine.Result result) {
        result.add("syncLunhuizhijinigEnergyPoint", BsonLite.document("ep", Integer.valueOf(m47v(m46d(result.profile, "lhzj"), "ep"))));
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x020f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2, long j) {
        String str2;
        String str3 = str;
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        try {
            if ("q7DailyFinish".equals(str3)) {
                finish(result, localFeatureCatalog, localResourceCatalog, bArr2);
            } else if ("q7DailyReset".equals(str3)) {
                reset(result, localFeatureCatalog, bArr2);
            } else {
                str2 = "q7DailyFinish";
                try {
                } catch (ArithmeticException e) {
                    e = e;
                    str3 = "replyLunhuizhijingAddEP";
                    result = new LocalResourceEngine.Result(bArr);
                    if ("requestLunhuizhijingAddEP".equals(str)) {
                        result.add(str3, BsonLite.document("rs", false, "ep", Integer.valueOf(m47v(m46d(bArr, "lhzj"), "ep"))));
                    }
                    LocalDailyEngine.roomFailure(result, str);
                    result.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    if (str2.equals(str)) {
                        result.add("combatOfflineReward", BsonLite.combatOfflineRewardDocument(16, m47v(bArr2, "s"), BsonLite.intArrayValues(bArr2, "h"), Collections.emptyList(), 0, BsonLite.EMPTY_DOCUMENT));
                    }
                    return result;
                } catch (IllegalArgumentException e2) {
                    e = e2;
                    str3 = "replyLunhuizhijingAddEP";
                    result = new LocalResourceEngine.Result(bArr);
                    if ("requestLunhuizhijingAddEP".equals(str)) {
                    }
                    LocalDailyEngine.roomFailure(result, str);
                    result.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    if (str2.equals(str)) {
                    }
                    return result;
                }
                try {
                    if (m47v(m46d(bArr, "weeknum"), "w") < 1) {
                        throw new IllegalArgumentException("轮回之境从第二周目开放");
                    }
                    result.profile = refresh(bArr, localFeatureCatalog, j);
                    if ("q7DailyBegin".equals(str3)) {
                        begin(result, localFeatureCatalog, bArr2, j);
                    } else if ("seeLunhuizhijingUnlock".equals(str3)) {
                        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(m46d(result.profile, "lhzj"), "su"));
                        for (String str4 : localFeatureCatalog.entries.keySet()) {
                            if (str4.startsWith("LB:")) {
                                int parseInt = Integer.parseInt(str4.substring(3));
                                if (open(result.profile, localFeatureCatalog.get("LB", Integer.valueOf(parseInt)), parseInt) && !arrayList.contains(Integer.valueOf(parseInt))) {
                                    arrayList.add(Integer.valueOf(parseInt));
                                }
                            }
                        }
                        result.profile = BsonLite.withProfileDocument(result.profile, "lhzj", BsonLite.withProfileIntArray(m46d(result.profile, "lhzj"), "su", arrayList));
                        sync(result);
                        result.add("replySeeLunhuizhijingUnlock", BsonLite.document("su", arrayList));
                    } else {
                        if (!"requestLunhuizhijingAddEP".equals(str3)) {
                            throw new IllegalArgumentException("轮回联网房间尚未接入；请使用原离线入口，未扣除资源");
                        }
                        int m47v = m47v(bArr2, "ii");
                        byte[] bArr3 = localFeatureCatalog.get("LE", Integer.valueOf(m47v));
                        byte[] m46d = m46d(result.profile, "lhzj");
                        if (m47v == 0 || bArr3 == null || m47v(bArr3, "add") <= 0) {
                            throw new IllegalArgumentException("该道具不能用于轮回充能");
                        }
                        int addExact = Math.addExact(m47v(m46d, "ep"), m47v(bArr3, "add"));
                        if (addExact > m47v(localFeatureCatalog.get("LE", 0), "max")) {
                            throw new IllegalArgumentException("轮回充能次数已达上限，未消耗道具");
                        }
                        LocalGiftEngine.consume(result, m47v, 1);
                        result.profile = LocalServiceEngine.recover(result.profile, j);
                        charge(result, Math.multiplyExact(m47v(bArr3, "add"), m47v(localFeatureCatalog.get("LP", 16), "consume")));
                        result.profile = BsonLite.withProfileDocument(result.profile, "lhzj", BsonLite.withProfileInt(m46d, "ep", addExact));
                        result.add("replyLunhuizhijingAddEP", BsonLite.document("rs", true, "ep", Integer.valueOf(addExact)));
                    }
                } catch (ArithmeticException e3) {
                    e = e3;
                    result = new LocalResourceEngine.Result(bArr);
                    if ("requestLunhuizhijingAddEP".equals(str)) {
                    }
                    LocalDailyEngine.roomFailure(result, str);
                    result.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    if (str2.equals(str)) {
                    }
                    return result;
                } catch (IllegalArgumentException e4) {
                    e = e4;
                    result = new LocalResourceEngine.Result(bArr);
                    if ("requestLunhuizhijingAddEP".equals(str)) {
                    }
                    LocalDailyEngine.roomFailure(result, str);
                    result.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    if (str2.equals(str)) {
                    }
                    return result;
                }
            }
        } catch (ArithmeticException | IllegalArgumentException e5) {
            e = e5;
            str2 = "q7DailyFinish";
        }
        return result;
    }

    private static void charge(LocalResourceEngine.Result result, int i) {
        byte[] m46d = m46d(result.profile, "city");
        int addExact = Math.addExact(m47v(m46d, "jpv"), i);
        if (addExact < 0) {
            throw new IllegalArgumentException("精神力不足");
        }
        byte[] withProfileInt = BsonLite.withProfileInt(m46d, "jpv", addExact);
        result.profile = BsonLite.withProfileDocument(result.profile, "city", withProfileInt);
        result.add("syncJingshenliPower", BsonLite.document("p", Integer.valueOf(addExact), "t", Integer.valueOf(m47v(withProfileInt, "jpvt")), "cjsla", Integer.valueOf(m47v(withProfileInt, "cjsla"))));
    }

    private static List<byte[]> sample(byte[] bArr, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<byte[]> it = LocalResourceEngine.array(m46d(bArr, str)).iterator();
        while (it.hasNext()) {
            List<byte[]> array = LocalResourceEngine.array(it.next());
            Iterator<byte[]> it2 = array.iterator();
            long j = 0;
            while (it2.hasNext()) {
                j = Math.addExact(j, m47v(it2.next(), "w"));
            }
            if (j <= 0) {
                throw new IllegalArgumentException("缺少有效的原版轮回奖励池");
            }
            double random = Math.random() * j;
            Iterator<byte[]> it3 = array.iterator();
            while (true) {
                if (it3.hasNext()) {
                    byte[] next = it3.next();
                    random -= m47v(next, "w");
                    if (random < 0.0d) {
                        arrayList.addAll(LocalResourceEngine.array(m46d(next, "g")));
                        break;
                    }
                }
            }
        }
        return arrayList;
    }

    private static void begin(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr, long j) {
        int m47v = m47v(bArr, "s");
        byte[] bArr2 = localFeatureCatalog.get("LB", Integer.valueOf(m47v));
        if (!open(result.profile, bArr2, m47v)) {
            throw new IllegalArgumentException("请先通关对应记忆殿堂区域并取得所需纪念章");
        }
        byte[] m46d = m46d(bArr, "d");
        if (!Boolean.TRUE.equals(BsonLite.boolValue(m46d, "lunhuizhijing")) || !Boolean.FALSE.equals(BsonLite.boolValue(m46d, "buff_enhance"))) {
            throw new IllegalArgumentException("轮回出战参数不符合原客户端约定");
        }
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "h");
        if (intArrayValues.size() < m47v(bArr2, "min_heroes") || intArrayValues.size() > m47v(bArr2, "max_heroes") || new HashSet(intArrayValues).size() != intArrayValues.size()) {
            throw new IllegalArgumentException("出战队伍人数无效");
        }
        Iterator<Integer> it = intArrayValues.iterator();
        while (it.hasNext()) {
            if (!LocalResourceEngine.ownsHero(result.profile, it.next().intValue())) {
                throw new IllegalArgumentException("请使用已拥有的神器使出战");
            }
        }
        byte[] m46d2 = m46d(result.profile, "q7DailyBattle");
        if (LocalDailyEngine.active(result.profile)) {
            if (m47v(m46d2, "t") != 16 || m47v(m46d2, "s") != m47v || !BsonLite.intArrayValues(m46d2, "h").equals(intArrayValues)) {
                throw new IllegalArgumentException("请先结束当前日常战斗");
            }
            return;
        }
        if (!BsonLite.keys(m46d(result.profile, "q7Battle")).isEmpty() || Boolean.TRUE.equals(BsonLite.boolValue(m46d(result.profile, "combat"), "of"))) {
            throw new IllegalArgumentException("请先结束当前主线战斗");
        }
        boolean z = m47v(m46d(result.profile, "lhzj"), "ep") > 0;
        List<byte[]> sample = sample(bArr2, "rewards");
        if (z) {
            sample.addAll(sample(bArr2, "bonus"));
        }
        result.profile = LocalServiceEngine.recover(result.profile, j);
        charge(result, -m47v(localFeatureCatalog.get("LP", 16), "consume"));
        result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyBattle", BsonLite.document("active", true, "t", 16, "s", Integer.valueOf(m47v), "h", intArrayValues, "bonus", Boolean.valueOf(z), "grants", sample, "wishCost", Integer.valueOf(m47v(localFeatureCatalog.get("LP", 16), "consume")), "wishFailCost", Integer.valueOf(m47v(localFeatureCatalog.get("LP", 16), "fail_consume")), "lv", Integer.valueOf(Math.max(1, m47v(result.profile, "level"))), "ml", Integer.valueOf(m47v(bArr2, "monster_level")), "f", LocalResourceEngine.uuid()));
        sync(result);
    }

    private static void reset(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr) {
        byte[] m46d = m46d(result.profile, "q7DailyBattle");
        Integer intValue = BsonLite.intValue(bArr, "s");
        if (intValue != null && LocalDailyEngine.active(result.profile) && intValue.intValue() != m47v(m46d, "s")) {
            throw new IllegalArgumentException("取消请求与当前轮回战斗不匹配");
        }
        if (LocalDailyEngine.active(result.profile)) {
            charge(result, m47v(localFeatureCatalog.get("LP", 16), "consume") - m47v(localFeatureCatalog.get("LP", 16), "fail_consume"));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyBattle", BsonLite.EMPTY_DOCUMENT);
    }

    private static void finish(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, byte[] bArr) {
        String str;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        ArrayList arrayList3;
        boolean z;
        int i;
        boolean z2;
        byte[] bArr2;
        byte[] m46d = m46d(result.profile, "q7DailyBattle");
        int m47v = m47v(bArr, "s");
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "h");
        if (m47v(m46d, "t") != 16 || m47v != m47v(m46d, "s") || !intArrayValues.equals(BsonLite.intArrayValues(m46d, "h"))) {
            throw new IllegalArgumentException("轮回结算与入场记录不匹配");
        }
        String str3 = "reply";
        if (!LocalDailyEngine.active(result.profile)) {
            if (BsonLite.documentValue(m46d, "reply") != null) {
                result.add("combatOfflineReward", m46d(m46d, "reply"));
            }
            sync(result);
            return;
        }
        int i2 = BsonLite.combatWinValue(bArr) != 0 ? 1 : 0;
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        String str4 = "lhzj";
        if (i2 == 0) {
            str = "lhzj";
            arrayList = arrayList6;
            arrayList2 = arrayList5;
            str2 = "reply";
            arrayList3 = arrayList4;
            charge(result, m47v(localFeatureCatalog.get("LP", 16), "consume") - m47v(localFeatureCatalog.get("LP", 16), "fail_consume"));
        } else {
            for (byte[] bArr3 : LocalResourceEngine.array(m46d(m46d, "grants"))) {
                LocalResourceEngine.grant(result, localResourceCatalog, BsonLite.stringValue(bArr3, "k"), m47v(bArr3, "i"), m47v(bArr3, "n"), m47v(bArr3, "q"));
                arrayList5 = arrayList5;
                arrayList4 = arrayList4;
                str3 = str3;
                str4 = str4;
                arrayList6 = arrayList6;
            }
            String str5 = str4;
            ArrayList arrayList7 = arrayList6;
            arrayList2 = arrayList5;
            str2 = str3;
            arrayList3 = arrayList4;
            for (List<Integer> list : result.itemRewards) {
                if (list.get(0).intValue() == 102) {
                    arrayList3.add(list);
                } else {
                    arrayList2.add(list);
                }
            }
            for (List<Object> list2 : result.treasureRewards) {
                arrayList7.add(Arrays.asList(list2.get(0), list2.get(1), list2.get(2)));
            }
            arrayList = arrayList7;
            if (!Boolean.TRUE.equals(BsonLite.boolValue(m46d, "bonus"))) {
                str = str5;
            } else {
                str = str5;
                byte[] m46d2 = m46d(result.profile, str);
                if (m47v(m46d2, "ep") > 0) {
                    result.profile = BsonLite.withProfileDocument(result.profile, str, BsonLite.withProfileInt(m46d2, "ep", m47v(m46d2, "ep") - 1));
                } else {
                    throw new IllegalArgumentException("入场充能记录不一致，未提交奖励");
                }
            }
            LocalResourceEngine.syncCurrencies(result);
        }
        if (i2 != 0) {
            z2 = false;
            Object[] objArr = {"money", arrayList3, "item", arrayList2, "treasure", arrayList, "pendant", Collections.emptyList()};
            z = true;
            i = 2;
            bArr2 = BsonLite.document("rwds", BsonLite.document(objArr), "exp_info", BsonLite.EMPTY_DOCUMENT);
        } else {
            z = true;
            i = 2;
            z2 = false;
            bArr2 = BsonLite.EMPTY_DOCUMENT;
        }
        int i3 = i;
        boolean z3 = z2;
        boolean z4 = z;
        byte[] combatOfflineRewardDocument = BsonLite.combatOfflineRewardDocument(16, m47v, intArrayValues, Collections.emptyList(), i2, bArr2);
        result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyBattle", BsonLite.withProfileDocument(BsonLite.withProfileBool(m46d, "active", z3), str2, combatOfflineRewardDocument));
        Object[] objArr2 = new Object[i3];
        objArr2[z3 ? 1 : 0] = "r";
        Object[] objArr3 = new Object[i3];
        objArr3[z3 ? 1 : 0] = "ep";
        objArr3[z4 ? 1 : 0] = Integer.valueOf(m47v(m46d(result.profile, str), "ep"));
        objArr2[z4 ? 1 : 0] = BsonLite.document(objArr3);
        result.add("lunhuizhijingBattleFinish", BsonLite.document(objArr2));
        result.add("combatOfflineReward", combatOfflineRewardDocument);
    }
}
