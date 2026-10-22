package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class LocalMemoryPalaceEngine {
    static final List<String> METHODS = Arrays.asList("memoryPalaceQuery", "memoryPalaceOpenArea", "refreshNewUIState", "refreshAreaBuff", "memoryPalaceBattleOnlineRequest");

    LocalMemoryPalaceEngine() {
    }

    /* renamed from: v */
    static int m57v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m56d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static boolean handles(byte[] bArr, String str, byte[] bArr2) {
        return METHODS.contains(str) || ("q7DailyBegin".equals(str) && m57v(bArr2, "t") == 5) || (("q7DailyFinish".equals(str) && m57v(bArr2, "t") == 5) || ("q7DailyReset".equals(str) && m57v(m56d(bArr, "q7DailyBattle"), "t") == 5));
    }

    static void eligible(byte[] bArr) {
        if (m57v(m56d(bArr, "weeknum"), "w") < 1) {
            throw new IllegalArgumentException("记忆殿堂从第二周目开放");
        }
    }

    static int status(byte[] bArr, String str, int i) {
        for (byte[] bArr2 : LocalResourceEngine.array(m56d(bArr, str))) {
            if (m57v(bArr2, "0") == i) {
                return m57v(bArr2, "1");
            }
        }
        return 0;
    }

    static byte[] setStatus(byte[] bArr, String str, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr2 : LocalResourceEngine.array(m56d(bArr, str))) {
            if (m57v(bArr2, "0") != i) {
                arrayList.add(Arrays.asList(Integer.valueOf(m57v(bArr2, "0")), Integer.valueOf(m57v(bArr2, "1"))));
            }
        }
        arrayList.add(Arrays.asList(Integer.valueOf(i), Integer.valueOf(i2)));
        return BsonLite.withProfileArray(bArr, str, arrayList);
    }

    static List<Integer> stages(byte[] bArr, int i) {
        for (byte[] bArr2 : LocalResourceEngine.array(m56d(bArr, "asi"))) {
            if (m57v(bArr2, "0") == i) {
                return BsonLite.intArrayValues(bArr2, "1");
            }
        }
        return Collections.emptyList();
    }

    private static byte[] setStages(byte[] bArr, int i, List<Integer> list) {
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr2 : LocalResourceEngine.array(m56d(bArr, "asi"))) {
            if (m57v(bArr2, "0") != i) {
                arrayList.add(Arrays.asList(Integer.valueOf(m57v(bArr2, "0")), BsonLite.intArrayValues(bArr2, "1")));
            }
        }
        arrayList.add(Arrays.asList(Integer.valueOf(i), list));
        return BsonLite.withProfileArray(bArr, "asi", arrayList);
    }

    private static byte[] mark(byte[] bArr, String str, int i) {
        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(bArr, str));
        if (!arrayList.contains(Integer.valueOf(i))) {
            arrayList.add(Integer.valueOf(i));
        }
        return BsonLite.withProfileIntArray(bArr, str, arrayList);
    }

    static boolean buffEnabled(byte[] bArr, int i) {
        for (byte[] bArr2 : LocalResourceEngine.array(m56d(bArr, "abs"))) {
            if (Integer.toString(i).equals(BsonLite.stringValue(bArr2, "0"))) {
                return Boolean.TRUE.equals(BsonLite.boolValue(bArr2, "1"));
            }
        }
        return false;
    }

    static int buffCount(LocalFeatureCatalog localFeatureCatalog, int i, long j) {
        byte[] bArr = localFeatureCatalog.get("PE", Integer.valueOf(i));
        int m57v = m57v(bArr, "start");
        int m57v2 = m57v(bArr, "interval");
        if (m57v == 0 || m57v(bArr, "buff") == 0) {
            return 0;
        }
        long floorDiv = (Math.floorDiv(j, 86400000L) - Math.floorDiv(m57v, 86400)) - m57v(bArr, "first");
        if (floorDiv < 0) {
            return 0;
        }
        if (m57v2 == 0) {
            return 1;
        }
        return (int) Math.min((floorDiv / m57v2) + 1, m57v(bArr, "max"));
    }

    private static byte[] setBuff(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr2 : LocalResourceEngine.array(m56d(bArr, "abs"))) {
            String stringValue = BsonLite.stringValue(bArr2, "0");
            if (!Integer.toString(i).equals(stringValue)) {
                arrayList.add(Arrays.asList(stringValue, Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(bArr2, "1")))));
            }
        }
        arrayList.add(Arrays.asList(Integer.toString(i), Boolean.valueOf(z)));
        return BsonLite.withProfileArray(bArr, "abs", arrayList);
    }

    private static boolean available(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr3 == null || Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "forbid"))) {
            return false;
        }
        int m57v = m57v(bArr3, "prev");
        int m57v2 = m57v(bArr3, "cg");
        if (m57v == 0 || status(bArr2, "ar", m57v) >= 3) {
            return m57v2 == 0 || BsonLite.intArrayValues(bArr, "cgs").contains(Integer.valueOf(m57v2));
        }
        return false;
    }

    static byte[] refresh(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        byte[] m56d = m56d(bArr, "mpd");
        for (String str : Arrays.asList("ai", "asi", "sr", "ar", "nas", "nss", "abs", "hj")) {
            if (BsonLite.documentValue(m56d, str) == null) {
                m56d = BsonLite.withProfileArray(m56d, str, Collections.emptyList());
            }
        }
        for (String str2 : localFeatureCatalog.entries.keySet()) {
            if (str2.startsWith("PA:")) {
                int parseInt = Integer.parseInt(str2.substring(3));
                byte[] bArr2 = localFeatureCatalog.get("PA", Integer.valueOf(parseInt));
                if (available(bArr, m56d, bArr2)) {
                    if (status(m56d, "ai", parseInt) == 0) {
                        m56d = setBuff(mark(setStatus(m56d, "ai", parseInt, m57v(bArr2, "cg") == 0 ? 2 : 1), "nas", parseInt), parseInt, false);
                    }
                    if (status(m56d, "ai", parseInt) >= 2 && stages(m56d, parseInt).isEmpty()) {
                        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, "stages");
                        if (!intArrayValues.isEmpty()) {
                            m56d = mark(setStages(m56d, parseInt, Collections.singletonList(intArrayValues.get(0))), "nss", intArrayValues.get(0).intValue());
                        }
                    }
                }
            }
        }
        return m56d;
    }

    private static void save(LocalResourceEngine.Result result, byte[] bArr) {
        result.profile = BsonLite.withProfileDocument(result.profile, "mpd", bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2, long j) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        LocalResourceEngine.Result result;
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
        try {
            if ("q7DailyReset".equals(str)) {
                reset(result2, localFeatureCatalog, bArr2);
                result = result2;
            } else if ("q7DailyFinish".equals(str)) {
                finish(result2, localFeatureCatalog, localResourceCatalog, bArr2);
                result = result2;
            } else {
                eligible(bArr);
                byte[] refresh = refresh(bArr, localFeatureCatalog);
                if ("memoryPalaceQuery".equals(str)) {
                    save(result2, refresh);
                    result2.add("memoryPalaceQueryReply", BsonLite.document("d", refresh));
                    result = result2;
                } else {
                    str7 = "PA";
                    str4 = "q7DailyFinish";
                    str5 = "ai";
                    try {
                        if ("memoryPalaceOpenArea".equals(str)) {
                            int m57v = m57v(bArr2, "a");
                            byte[] bArr3 = localFeatureCatalog.get("PA", Integer.valueOf(m57v));
                            if (!available(bArr, refresh, bArr3) || status(refresh, "ai", m57v) != 1) {
                                throw new IllegalArgumentException("请先完成前置区域并获得对应CG");
                            }
                            int intValue = BsonLite.intArrayValues(bArr3, "stages").get(0).intValue();
                            save(result2, mark(setStages(setStatus(refresh, "ai", m57v, 2), m57v, Collections.singletonList(Integer.valueOf(intValue))), "nss", intValue));
                            result2.add("memoryPalaceOpenAreaReply", BsonLite.document("a", Integer.valueOf(m57v)));
                            result = result2;
                        } else if ("refreshNewUIState".equals(str)) {
                            byte[] bArr4 = refresh;
                            for (String str8 : Arrays.asList("nas", "nss")) {
                                ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(bArr4, str8));
                                arrayList.remove(Integer.valueOf(m57v(bArr2, "nas".equals(str8) ? "a" : "s")));
                                bArr4 = BsonLite.withProfileIntArray(bArr4, str8, arrayList);
                            }
                            save(result2, bArr4);
                            result = result2;
                        } else if ("q7DailyBegin".equals(str)) {
                            str3 = "memoryPalaceOpenAreaReply";
                            str6 = "memoryPalaceQuery";
                            try {
                                begin(result2, localFeatureCatalog, bArr2, refresh, j);
                                result = result2;
                            } catch (ArithmeticException | IllegalArgumentException e) {
                                e = e;
                                str2 = "a";
                                str7 = "memoryPalaceQueryReply";
                                str5 = "memoryPalaceOpenArea";
                                LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(bArr);
                                if (str6.equals(str)) {
                                    result3.add(str7, BsonLite.document("d", BsonLite.EMPTY_DOCUMENT));
                                }
                                if (str5.equals(str)) {
                                    result3.add(str3, BsonLite.document(str2, 0));
                                }
                                LocalDailyEngine.roomFailure(result3, str);
                                result3.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                if (str4.equals(str)) {
                                    result3.add("combatOfflineReward", BsonLite.combatOfflineRewardDocument(5, m57v(bArr2, "s"), BsonLite.intArrayValues(bArr2, "h"), Collections.emptyList(), 0, BsonLite.document("fir_rew", false, "cle_rew", false, "are_rew", false)));
                                    return result3;
                                }
                                return result3;
                            }
                        } else {
                            result = result2;
                            str2 = "a";
                            str3 = "memoryPalaceOpenAreaReply";
                            str6 = "memoryPalaceQuery";
                            try {
                                try {
                                    if (!"refreshAreaBuff".equals(str)) {
                                        throw new IllegalArgumentException("记忆殿堂此关需要联网房间，尚未接入；未扣除精神力");
                                    }
                                    int m57v2 = m57v(bArr2, str2);
                                    if (status(refresh, "ai", m57v2) < 2 || !available(bArr, refresh, localFeatureCatalog.get("PA", Integer.valueOf(m57v2)))) {
                                        throw new IllegalArgumentException("该记忆殿堂区域尚未开放");
                                    }
                                    Boolean boolValue = BsonLite.boolValue(bArr2, "b");
                                    if (boolValue == null) {
                                        throw new IllegalArgumentException("助力设置格式无效");
                                    }
                                    if (LocalDailyEngine.active(bArr) && boolValue.booleanValue() != buffEnabled(refresh, m57v2)) {
                                        throw new IllegalArgumentException("请先结束当前战斗，再切换记忆殿堂助力");
                                    }
                                    if (boolValue.booleanValue() && buffCount(localFeatureCatalog, m57v2, j) <= 0) {
                                        throw new IllegalArgumentException("该区域尚未达到原版助力开放时间");
                                    }
                                    save(result, setBuff(refresh, m57v2, boolValue.booleanValue()));
                                    result.add("refreshAreaBuffReply", BsonLite.document(str2, Integer.valueOf(m57v2), "b", boolValue));
                                } catch (ArithmeticException e2) {
                                    e = e2;
                                    LocalResourceEngine.Result result32 = new LocalResourceEngine.Result(bArr);
                                    if (str6.equals(str)) {
                                    }
                                    if (str5.equals(str)) {
                                    }
                                    LocalDailyEngine.roomFailure(result32, str);
                                    result32.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    if (str4.equals(str)) {
                                    }
                                } catch (IllegalArgumentException e3) {
                                    e = e3;
                                    LocalResourceEngine.Result result322 = new LocalResourceEngine.Result(bArr);
                                    if (str6.equals(str)) {
                                    }
                                    if (str5.equals(str)) {
                                    }
                                    LocalDailyEngine.roomFailure(result322, str);
                                    result322.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                    if (str4.equals(str)) {
                                    }
                                }
                            } catch (ArithmeticException e4) {
                                e = e4;
                                str7 = "memoryPalaceQueryReply";
                                str5 = "memoryPalaceOpenArea";
                                LocalResourceEngine.Result result3222 = new LocalResourceEngine.Result(bArr);
                                if (str6.equals(str)) {
                                }
                                if (str5.equals(str)) {
                                }
                                LocalDailyEngine.roomFailure(result3222, str);
                                result3222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                if (str4.equals(str)) {
                                }
                            } catch (IllegalArgumentException e5) {
                                e = e5;
                                str7 = "memoryPalaceQueryReply";
                                str5 = "memoryPalaceOpenArea";
                                LocalResourceEngine.Result result32222 = new LocalResourceEngine.Result(bArr);
                                if (str6.equals(str)) {
                                }
                                if (str5.equals(str)) {
                                }
                                LocalDailyEngine.roomFailure(result32222, str);
                                result32222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                if (str4.equals(str)) {
                                }
                            }
                        }
                    } catch (ArithmeticException | IllegalArgumentException e6) {
                        e = e6;
                        str2 = "a";
                        str3 = "memoryPalaceOpenAreaReply";
                        str7 = "memoryPalaceQueryReply";
                        str5 = "memoryPalaceOpenArea";
                        str6 = "memoryPalaceQuery";
                    }
                }
            }
            return result;
        } catch (ArithmeticException | IllegalArgumentException e7) {
            e = e7;
            str2 = "a";
            str3 = "memoryPalaceOpenAreaReply";
            str4 = "q7DailyFinish";
            str5 = "memoryPalaceOpenArea";
            str6 = "memoryPalaceQuery";
            str7 = "memoryPalaceQueryReply";
        }
    }

    private static void begin(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr, byte[] bArr2, long j) {
        int m57v = m57v(bArr, "s");
        byte[] bArr3 = localFeatureCatalog.get("PB", Integer.valueOf(m57v));
        if (bArr3 == null || Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "online"))) {
            throw new IllegalArgumentException("此记忆殿堂关卡尚未接入离线战斗，未扣除精神力");
        }
        int m57v2 = m57v(bArr3, "area");
        if (!available(result.profile, bArr2, localFeatureCatalog.get("PA", Integer.valueOf(m57v2))) || status(bArr2, "ai", m57v2) < 2 || !stages(bArr2, m57v2).contains(Integer.valueOf(m57v)) || (m57v(bArr3, "prev") != 0 && status(bArr2, "sr", m57v(bArr3, "prev")) == 0)) {
            throw new IllegalArgumentException("请先完成记忆殿堂前置关卡");
        }
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "h");
        if (intArrayValues.size() < m57v(bArr3, "min_heroes") || intArrayValues.size() > m57v(bArr3, "max_heroes") || new HashSet(intArrayValues).size() != intArrayValues.size()) {
            throw new IllegalArgumentException("记忆殿堂出战队伍人数不符合原关卡要求");
        }
        Iterator<Integer> it = intArrayValues.iterator();
        while (it.hasNext()) {
            if (!LocalResourceEngine.ownsHero(result.profile, it.next().intValue())) {
                throw new IllegalArgumentException("请使用已拥有的神器使出战");
            }
        }
        Boolean boolValue = BsonLite.boolValue(m56d(bArr, "d"), "buff_enhance");
        boolean buffEnabled = buffEnabled(bArr2, m57v2);
        if (boolValue == null || boolValue.booleanValue() != buffEnabled) {
            throw new IllegalArgumentException("出战助力设置与已保存设置不一致，请重新打开关卡");
        }
        int buffCount = buffEnabled ? buffCount(localFeatureCatalog, m57v2, j) : 0;
        if (buffEnabled && buffCount <= 0) {
            throw new IllegalArgumentException("该区域尚未达到原版助力开放时间");
        }
        byte[] m56d = m56d(result.profile, "q7DailyBattle");
        int i = buffCount;
        if (LocalDailyEngine.active(result.profile)) {
            if (m57v(m56d, "t") != 5 || m57v(m56d, "s") != m57v || !BsonLite.intArrayValues(m56d, "h").equals(intArrayValues) || Boolean.TRUE.equals(BsonLite.boolValue(m56d, "assist")) != buffEnabled) {
                throw new IllegalArgumentException("请先结束当前日常战斗");
            }
            return;
        }
        if (!BsonLite.keys(m56d(result.profile, "q7Battle")).isEmpty() || Boolean.TRUE.equals(BsonLite.boolValue(m56d(result.profile, "combat"), "of"))) {
            throw new IllegalArgumentException("请先结束当前主线战斗");
        }
        save(result, bArr2);
        result.profile = LocalServiceEngine.recover(result.profile, j);
        charge(result, -m57v(localFeatureCatalog.get("P", 5), "consume"));
        result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyBattle", BsonLite.document("active", true, "t", 5, "s", Integer.valueOf(m57v), "h", intArrayValues, "a", Integer.valueOf(m57v2), "wishCost", Integer.valueOf(m57v(localFeatureCatalog.get("P", 5), "consume")), "wishFailCost", Integer.valueOf(m57v(localFeatureCatalog.get("P", 5), "fail_consume")), "assist", Boolean.valueOf(buffEnabled), "stacks", Integer.valueOf(i), "lv", Integer.valueOf(Math.max(1, m57v(result.profile, "level"))), "ml", Integer.valueOf(m57v(bArr3, "monster_level")), "f", LocalResourceEngine.uuid()));
    }

    private static void charge(LocalResourceEngine.Result result, int i) {
        byte[] m56d = m56d(result.profile, "city");
        int addExact = Math.addExact(m57v(m56d, "jpv"), i);
        if (addExact < 0) {
            throw new IllegalArgumentException("精神力不足");
        }
        byte[] withProfileInt = BsonLite.withProfileInt(m56d, "jpv", addExact);
        result.profile = BsonLite.withProfileDocument(result.profile, "city", withProfileInt);
        result.add("syncJingshenliPower", BsonLite.document("p", Integer.valueOf(addExact), "t", Integer.valueOf(m57v(withProfileInt, "jpvt")), "cjsla", Integer.valueOf(m57v(withProfileInt, "cjsla"))));
    }

    private static void reset(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr) {
        byte[] m56d = m56d(result.profile, "q7DailyBattle");
        Integer intValue = BsonLite.intValue(bArr, "s");
        if (intValue != null && LocalDailyEngine.active(result.profile) && intValue.intValue() != m57v(m56d, "s")) {
            throw new IllegalArgumentException("取消请求与当前记忆殿堂战斗不匹配");
        }
        if (LocalDailyEngine.active(result.profile)) {
            charge(result, m57v(localFeatureCatalog.get("P", 5), "consume") - m57v(localFeatureCatalog.get("P", 5), "fail_consume"));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyBattle", BsonLite.EMPTY_DOCUMENT);
    }

    private static byte[] grant(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, byte[] bArr, String str) {
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
        int i = 0;
        int i2 = 0;
        for (byte[] bArr2 : LocalResourceEngine.array(m56d(bArr, str))) {
            String stringValue = BsonLite.stringValue(bArr2, "k");
            LocalResourceEngine.grant(result2, localResourceCatalog, stringValue, m57v(bArr2, "i"), m57v(bArr2, "n"), m57v(bArr2, "q"));
            if ("money".equals(stringValue)) {
                i = Math.addExact(i, m57v(bArr2, "n"));
            }
            if ("summonCoin".equals(stringValue)) {
                i2 = Math.addExact(i2, m57v(bArr2, "n"));
            }
        }
        result.profile = result2.profile;
        result.replies.addAll(result2.replies);
        result.itemRewards.addAll(result2.itemRewards);
        result.treasureRewards.addAll(result2.treasureRewards);
        ArrayList arrayList = new ArrayList();
        for (List<Integer> list : result2.itemRewards) {
            if (list.get(0).intValue() != 102 && list.get(0).intValue() != 90) {
                arrayList.add(list);
            }
        }
        return BsonLite.document("item", arrayList, "treasure", result2.treasureRewards, "money", Integer.valueOf(i), "summoncoin", Integer.valueOf(i2));
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x025a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void finish(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, byte[] bArr) {
        String str;
        int i;
        byte[] bArr2;
        byte[] bArr3;
        boolean z;
        List<Integer> list;
        byte[] bArr4;
        int i2;
        byte[] m56d = m56d(result.profile, "q7DailyBattle");
        int m57v = m57v(bArr, "s");
        int m57v2 = m57v(m56d, "a");
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "h");
        if (m57v(m56d, "t") != 5 || m57v(bArr, "t") != 5 || m57v != m57v(m56d, "s") || !intArrayValues.equals(BsonLite.intArrayValues(m56d, "h"))) {
            throw new IllegalArgumentException("记忆殿堂结算与入场记录不匹配");
        }
        if (!LocalDailyEngine.active(result.profile)) {
            if (BsonLite.documentValue(m56d, "reply") != null) {
                result.add("memoryPalaceQueryReply", BsonLite.document("d", m56d(result.profile, "mpd")));
                result.add("combatOfflineReward", m56d(m56d, "reply"));
                return;
            }
            return;
        }
        int i3 = BsonLite.combatWinValue(bArr) != 0 ? 1 : 0;
        byte[] m56d2 = m56d(bArr, "e");
        if (i3 != 0) {
            str = "reply";
            if (m57v(m56d2, "clear") == 1 && !Boolean.TRUE.equals(BsonLite.boolValue(m56d, "assist")) && !Boolean.TRUE.equals(BsonLite.boolValue(m56d2, "buff_enhance"))) {
                i = 1;
                byte[] m56d3 = m56d(result.profile, "mpd");
                bArr2 = localFeatureCatalog.get("PB", Integer.valueOf(m57v));
                if (bArr2 != null) {
                    throw new IllegalArgumentException("缺少原版记忆殿堂关卡目录");
                }
                int status = status(m56d3, "sr", m57v);
                boolean z2 = i3 != 0 && status == 0;
                if (i != 0) {
                    bArr3 = m56d;
                    if (status < 2) {
                        z = true;
                        if (z2) {
                            list = intArrayValues;
                            bArr4 = BsonLite.EMPTY_DOCUMENT;
                        } else {
                            list = intArrayValues;
                            bArr4 = grant(result, localResourceCatalog, bArr2, "first");
                        }
                        byte[] grant = !z ? grant(result, localResourceCatalog, bArr2, "clear") : BsonLite.EMPTY_DOCUMENT;
                        if (i3 != 0) {
                            charge(result, m57v(localFeatureCatalog.get("P", 5), "consume") - m57v(localFeatureCatalog.get("P", 5), "fail_consume"));
                            i2 = 0;
                        } else {
                            byte[] status2 = setStatus(m56d3, "sr", m57v, Math.max(status, i != 0 ? 2 : 1));
                            Iterator<Integer> it = BsonLite.intArrayValues(localFeatureCatalog.get("PA", Integer.valueOf(m57v2)), "stages").iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                i2 = it.next().intValue();
                                if (m57v(localFeatureCatalog.get("PB", Integer.valueOf(i2)), "prev") == m57v) {
                                    ArrayList arrayList = new ArrayList(stages(status2, m57v2));
                                    if (!arrayList.contains(Integer.valueOf(i2))) {
                                        arrayList.add(Integer.valueOf(i2));
                                        m56d3 = mark(setStages(status2, m57v2, arrayList), "nss", i2);
                                    }
                                }
                            }
                            m56d3 = status2;
                            i2 = 0;
                            LocalResourceEngine.syncCurrencies(result);
                        }
                        save(result, m56d3);
                        byte[] document = BsonLite.document("ns", Integer.valueOf(i2), "aid", Integer.valueOf(m57v2), "sid", Integer.valueOf(m57v), "as", 0, "r", Integer.valueOf(i3), "cf", Integer.valueOf(i));
                        byte[] combatOfflineRewardDocument = BsonLite.combatOfflineRewardDocument(5, m57v, list, Collections.emptyList(), i3, BsonLite.document("fir_rew", Boolean.valueOf(z2), "cle_rew", Boolean.valueOf(z), "are_rew", false, "fir_stg_rew", bArr4, "cle_stg_rew", grant));
                        result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyBattle", BsonLite.withProfileDocument(BsonLite.withProfileBool(bArr3, "active", false), str, combatOfflineRewardDocument));
                        result.add("memoryPalaceBattleFinish", BsonLite.document("r", document));
                        result.add("combatOfflineReward", combatOfflineRewardDocument);
                        return;
                    }
                } else {
                    bArr3 = m56d;
                }
                z = false;
                if (z2) {
                }
                if (!z) {
                }
                if (i3 != 0) {
                }
                save(result, m56d3);
                byte[] document2 = BsonLite.document("ns", Integer.valueOf(i2), "aid", Integer.valueOf(m57v2), "sid", Integer.valueOf(m57v), "as", 0, "r", Integer.valueOf(i3), "cf", Integer.valueOf(i));
                byte[] combatOfflineRewardDocument2 = BsonLite.combatOfflineRewardDocument(5, m57v, list, Collections.emptyList(), i3, BsonLite.document("fir_rew", Boolean.valueOf(z2), "cle_rew", Boolean.valueOf(z), "are_rew", false, "fir_stg_rew", bArr4, "cle_stg_rew", grant));
                result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyBattle", BsonLite.withProfileDocument(BsonLite.withProfileBool(bArr3, "active", false), str, combatOfflineRewardDocument2));
                result.add("memoryPalaceBattleFinish", BsonLite.document("r", document2));
                result.add("combatOfflineReward", combatOfflineRewardDocument2);
                return;
            }
        } else {
            str = "reply";
        }
        i = 0;
        byte[] m56d32 = m56d(result.profile, "mpd");
        bArr2 = localFeatureCatalog.get("PB", Integer.valueOf(m57v));
        if (bArr2 != null) {
        }
    }
}
