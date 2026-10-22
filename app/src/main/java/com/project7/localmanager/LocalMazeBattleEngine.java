package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* loaded from: classes.dex */
final class LocalMazeBattleEngine {
    LocalMazeBattleEngine() {
    }

    /* renamed from: v */
    static int m49v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m48d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static boolean handles(byte[] bArr, String str, byte[] bArr2) {
        return "mazeBattleOnlineRequest".equals(str) || "refreshNewModeState".equals(str) || "saoDangRequest".equals(str) || (("q7DailyBegin".equals(str) || "q7DailyFinish".equals(str)) && m49v(bArr2, "t") == 7) || ("q7DailyReset".equals(str) && m49v(m48d(bArr, "q7DailyBattle"), "t") == 7);
    }

    static byte[] refresh(byte[] bArr, long j) {
        byte[] refresh = LocalMazeSweepEngine.refresh(LocalMazeShopEngine.refresh(bArr, j));
        int m49v = m49v(refresh, "q7ShopDay");
        if (m49v(refresh, "q7MazeDay") > 0 && m49v > m49v(refresh, "q7MazeDay")) {
            refresh = BsonLite.withProfileArray(BsonLite.withProfileArray(BsonLite.withProfileInt(refresh, "ocl", 0), "odcd", Collections.emptyList()), "ocdd", Collections.emptyList());
        }
        byte[] withProfileInt = BsonLite.withProfileInt(refresh, "q7MazeDay", Math.max(m49v, m49v(refresh, "q7MazeDay")));
        for (String str : Arrays.asList("moml", "noml")) {
            if (BsonLite.documentValue(withProfileInt, str) == null) {
                withProfileInt = BsonLite.withProfileIntArray(withProfileInt, str, Arrays.asList(1, 1, 1));
            }
        }
        if (BsonLite.documentValue(withProfileInt, "nmmo") == null) {
            withProfileInt = BsonLite.withProfileIntArray(withProfileInt, "nmmo", Arrays.asList(0, 0, 0));
        }
        if (BsonLite.documentValue(withProfileInt, "lmmo") == null) {
            return BsonLite.withProfileArray(withProfileInt, "lmmo", Arrays.asList(null, null, null));
        }
        return withProfileInt;
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2, long j) {
        String str2;
        String str3;
        String str4;
        int i;
        char c;
        if ("saoDangRequest".equals(str)) {
            return LocalMazeSweepEngine.apply(bArr, localFeatureCatalog, localResourceCatalog, bArr2, j);
        }
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        try {
        } catch (ArithmeticException | IllegalArgumentException e) {
            e = e;
            str2 = "q7DailyFinish";
            str3 = "s";
        }
        if ("q7DailyReset".equals(str)) {
            byte[] m48d = m48d(bArr, "q7DailyBattle");
            Integer intValue = BsonLite.intValue(bArr2, "s");
            if (LocalDailyEngine.active(bArr) && intValue != null && intValue.intValue() != m49v(m48d, "s")) {
                throw new IllegalArgumentException("取消请求与当前巡逻不匹配");
            }
            if (LocalDailyEngine.active(bArr)) {
                charge(result, m49v(m48d, "refund"));
            }
            result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyBattle", BsonLite.EMPTY_DOCUMENT);
        } else {
            if (!"q7DailyFinish".equals(str)) {
                if ("q7DailyBegin".equals(str)) {
                    begin(result, localFeatureCatalog, bArr2, j);
                } else {
                    try {
                        if (!"refreshNewModeState".equals(str)) {
                            throw new IllegalArgumentException("联网无尽挑战尚未接入，未扣除精神力");
                        }
                        LocalMazeShopEngine.eligible(bArr);
                        int m49v = m49v(bArr2, "at");
                        str3 = "s";
                        try {
                            Integer intValue2 = BsonLite.intValue(bArr2, "st");
                            byte[] refresh = refresh(m48d(bArr, "ifm"), j);
                            List<Integer> intArrayValues = BsonLite.intArrayValues(refresh, "moml");
                            if (m49v >= 1 && m49v <= 3 && intValue2 != null && intValue2.intValue() >= 0 && intValue2.intValue() <= 1) {
                                if (intArrayValues.size() == 3) {
                                    int i2 = m49v - 1;
                                    if (intArrayValues.get(i2).intValue() >= 10) {
                                        if (LocalDailyEngine.active(bArr)) {
                                            throw new IllegalArgumentException("请先结束当前日常战斗，再切换难度");
                                        }
                                        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(refresh, "nmmo"));
                                        ArrayList arrayList2 = new ArrayList();
                                        byte[] m48d2 = m48d(refresh, "lmmo");
                                        str4 = "q7DailyBattle";
                                        try {
                                            if (arrayList.size() != 3 || BsonLite.keys(m48d2).size() != 3) {
                                                throw new IllegalArgumentException("巡逻难度设置格式无效");
                                            }
                                            int i3 = 0;
                                            for (int i4 = 3; i3 < i4; i4 = 3) {
                                                arrayList2.add(i3 == i2 ? intValue2 : BsonLite.intValue(m48d2, Integer.toString(i3)));
                                                i3++;
                                            }
                                            arrayList.set(i2, 0);
                                            byte[] withProfileArray = BsonLite.withProfileArray(BsonLite.withProfileIntArray(refresh, "nmmo", arrayList), "lmmo", arrayList2);
                                            result.profile = BsonLite.withProfileDocument(result.profile, "ifm", withProfileArray);
                                            result.add("syncMazeData", BsonLite.document("d", withProfileArray));
                                        } catch (ArithmeticException e2) {
                                            e = e2;
                                            str2 = "q7DailyFinish";
                                            result = new LocalResourceEngine.Result(bArr);
                                            LocalDailyEngine.roomFailure(result, str);
                                            if ("refreshNewModeState".equals(str)) {
                                                i = 2;
                                                c = 1;
                                            } else {
                                                i = 2;
                                                c = 1;
                                                result.add("syncMazeData", BsonLite.document("d", m48d(bArr, "ifm")));
                                            }
                                            Object[] objArr = new Object[i];
                                            objArr[0] = "m";
                                            objArr[c] = e.getMessage();
                                            result.add("showMessageStr", BsonLite.document(objArr));
                                            if (str2.equals(str)) {
                                                byte[] m48d3 = m48d(bArr, str4);
                                                result.add("combatOfflineReward", BsonLite.combatOfflineRewardDocument(7, m49v(bArr2, str3), BsonLite.intArrayValues(bArr2, "h"), Collections.emptyList(), 0, result(Math.max(1, m49v(m48d3, "rt")), Math.max(1, m49v(m48d3, "hard")), reward(Collections.emptyList()), reward(Collections.emptyList()))));
                                            }
                                            return result;
                                        } catch (IllegalArgumentException e3) {
                                            e = e3;
                                            str2 = "q7DailyFinish";
                                            result = new LocalResourceEngine.Result(bArr);
                                            LocalDailyEngine.roomFailure(result, str);
                                            if ("refreshNewModeState".equals(str)) {
                                            }
                                            Object[] objArr2 = new Object[i];
                                            objArr2[0] = "m";
                                            objArr2[c] = e.getMessage();
                                            result.add("showMessageStr", BsonLite.document(objArr2));
                                            if (str2.equals(str)) {
                                            }
                                            return result;
                                        }
                                    }
                                }
                            }
                            throw new IllegalArgumentException("巡逻难度选择不满足原版开放条件");
                        } catch (ArithmeticException e4) {
                            e = e4;
                            str2 = "q7DailyFinish";
                            str4 = "q7DailyBattle";
                            result = new LocalResourceEngine.Result(bArr);
                            LocalDailyEngine.roomFailure(result, str);
                            if ("refreshNewModeState".equals(str)) {
                            }
                            Object[] objArr22 = new Object[i];
                            objArr22[0] = "m";
                            objArr22[c] = e.getMessage();
                            result.add("showMessageStr", BsonLite.document(objArr22));
                            if (str2.equals(str)) {
                            }
                            return result;
                        } catch (IllegalArgumentException e5) {
                            e = e5;
                            str2 = "q7DailyFinish";
                            str4 = "q7DailyBattle";
                            result = new LocalResourceEngine.Result(bArr);
                            LocalDailyEngine.roomFailure(result, str);
                            if ("refreshNewModeState".equals(str)) {
                            }
                            Object[] objArr222 = new Object[i];
                            objArr222[0] = "m";
                            objArr222[c] = e.getMessage();
                            result.add("showMessageStr", BsonLite.document(objArr222));
                            if (str2.equals(str)) {
                            }
                            return result;
                        }
                    } catch (ArithmeticException e6) {
                        e = e6;
                    } catch (IllegalArgumentException e7) {
                        e = e7;
                    }
                }
                return result;
            }
            finish(result, localResourceCatalog, bArr2, j);
        }
        return result;
    }

    static void charge(LocalResourceEngine.Result result, int i) {
        byte[] m48d = m48d(result.profile, "city");
        int addExact = Math.addExact(m49v(m48d, "jpv"), i);
        if (addExact < 0) {
            throw new IllegalArgumentException("精神力不足");
        }
        byte[] withProfileInt = BsonLite.withProfileInt(m48d, "jpv", addExact);
        result.profile = BsonLite.withProfileDocument(result.profile, "city", withProfileInt);
        result.add("syncJingshenliPower", BsonLite.document("p", Integer.valueOf(addExact), "t", Integer.valueOf(m49v(withProfileInt, "jpvt")), "cjsla", Integer.valueOf(m49v(withProfileInt, "cjsla"))));
    }

    static byte[] choose(List<byte[]> list) {
        Iterator<byte[]> it = list.iterator();
        long j = 0;
        while (it.hasNext()) {
            if (m49v(it.next(), "w") < 0) {
                throw new IllegalArgumentException("巡逻权重无效");
            }
            j = Math.addExact(j, m49v(r5, "w"));
        }
        if (j <= 0) {
            throw new IllegalArgumentException("缺少巡逻随机池");
        }
        double random = Math.random() * j;
        for (byte[] bArr : list) {
            random -= m49v(bArr, "w");
            if (random < 0.0d) {
                return bArr;
            }
        }
        return list.get(list.size() - 1);
    }

    static List<byte[]> rolls(byte[] bArr, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator<byte[]> it = LocalResourceEngine.array(m48d(bArr, str)).iterator();
        while (it.hasNext()) {
            arrayList.addAll(LocalResourceEngine.array(m48d(choose(LocalResourceEngine.array(it.next())), "g")));
        }
        return arrayList;
    }

    static byte[] reward(List<byte[]> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (byte[] bArr : list) {
            String stringValue = BsonLite.stringValue(bArr, "k");
            if ("item".equals(stringValue)) {
                linkedHashMap.put(Integer.valueOf(m49v(bArr, "i")), Integer.valueOf(Math.addExact(((Integer) linkedHashMap.getOrDefault(Integer.valueOf(m49v(bArr, "i")), 0)).intValue(), m49v(bArr, "n"))));
            } else if (Arrays.asList("money", "wCoin", "summonCoin").contains(stringValue)) {
                linkedHashMap2.put(stringValue, Integer.valueOf(Math.addExact(((Integer) linkedHashMap2.getOrDefault(stringValue, 0)).intValue(), m49v(bArr, "n"))));
            } else {
                throw new IllegalArgumentException("巡逻奖励类型尚未支持：" + stringValue);
            }
        }
        return BsonLite.document("item", LocalAccountFeatures.pairList(linkedHashMap), "money", linkedHashMap2.getOrDefault("money", 0), "wcoin", linkedHashMap2.getOrDefault("wCoin", 0), "summoncoin", linkedHashMap2.getOrDefault("summonCoin", 0));
    }

    static double probability(byte[] bArr, String str) {
        Object obj = ((Map) BsonLite.messagePackValue(bArr, false)).get(str);
        if (!(obj instanceof Number)) {
            throw new IllegalArgumentException("缺少巡逻房间概率");
        }
        return ((Number) obj).doubleValue();
    }

    static byte[] document(Map<String, Object> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            arrayList.add(entry.getKey());
            arrayList.add(entry.getValue());
        }
        return BsonLite.document(arrayList.toArray());
    }

    private static void begin(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr, long j) {
        int i;
        int i2;
        String str;
        int i3;
        int i4;
        List<byte[]> rolls;
        Object obj;
        LinkedHashMap linkedHashMap;
        byte[] bArr2;
        int m49v = m49v(bArr, "s");
        int m49v2 = m49v(m48d(bArr, "d"), "hard_level");
        int m49v3 = m49v(m48d(bArr, "d"), "reward_type");
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "h");
        byte[] m48d = m48d(result.profile, "q7DailyBattle");
        if (LocalDailyEngine.active(result.profile)) {
            if (m49v(m48d, "t") != 7 || m49v(m48d, "s") != m49v || m49v(m48d, "hard") != m49v2 || m49v(m48d, "rt") != m49v3 || !BsonLite.intArrayValues(m48d, "h").equals(intArrayValues)) {
                throw new IllegalArgumentException("请先结束当前日常战斗");
            }
            return;
        }
        LocalMazeShopEngine.eligible(result.profile);
        byte[] bArr3 = localFeatureCatalog.get("MP", 7);
        byte[] bArr4 = localFeatureCatalog.get("ML", Integer.valueOf(m49v2));
        byte[] bArr5 = localFeatureCatalog.get("MR", m49v2 + ":" + m49v3);
        if (bArr3 == null || m49v != m49v(bArr3, "scene") || bArr4 == null || bArr5 == null || m49v3 < 1 || m49v3 > 3 || m49v(m48d(bArr, "d"), "mission_mode") != 12) {
            throw new IllegalArgumentException("巡逻场景、难度或奖励类型无效");
        }
        if (intArrayValues.size() != 3 || new HashSet(intArrayValues).size() != 3) {
            throw new IllegalArgumentException("巡逻需要三名不同的神器使");
        }
        Iterator<Integer> it = intArrayValues.iterator();
        while (it.hasNext()) {
            Iterator<Integer> it2 = it;
            if (!LocalResourceEngine.ownsHero(result.profile, it.next().intValue())) {
                throw new IllegalArgumentException("请使用已拥有的神器使出战");
            }
            it = it2;
        }
        if (!BsonLite.keys(m48d(result.profile, "q7Battle")).isEmpty() || Boolean.TRUE.equals(BsonLite.boolValue(m48d(result.profile, "combat"), "of"))) {
            throw new IllegalArgumentException("请先结束当前主线战斗");
        }
        byte[] refresh = refresh(m48d(result.profile, "ifm"), j);
        byte[] bArr6 = localFeatureCatalog.get("MW", Integer.valueOf(m49v(refresh, "wd")));
        List<Integer> intArrayValues2 = BsonLite.intArrayValues(refresh, "moml");
        if (m49v(result.profile, "level") < m49v(bArr4, "level_limit") || intArrayValues2.size() != 3 || ((m49v2 <= 10 && m49v2 > intArrayValues2.get(m49v3 - 1).intValue()) || (m49v2 > 10 && intArrayValues2.get(m49v3 - 1).intValue() < 10))) {
            throw new IllegalArgumentException("请先达到等级要求并完成前一档巡逻");
        }
        if (m49v2 > 10 && ((bArr2 = localFeatureCatalog.get("MH", Integer.valueOf(m49v2))) == null || m49v(bArr2, "badge") <= 0 || !LocalAccountFeatures.pairs(m48d(m48d(result.profile, "bgd"), "cb")).containsKey(Integer.valueOf(m49v(bArr2, "badge"))))) {
            throw new IllegalArgumentException("尚未获得该困难巡逻要求的纪念章");
        }
        if (!BsonLite.intArrayValues(bArr6, "types").contains(Integer.valueOf(m49v3)) || m49v(refresh, "ocl") >= m49v(bArr6, "limit")) {
            throw new IllegalArgumentException("该类型今日未开放或巡逻次数已用尽");
        }
        List<byte[]> array = LocalResourceEngine.array(m48d(localFeatureCatalog.get("MG", 1), "layouts"));
        if (array.isEmpty()) {
            throw new IllegalArgumentException("缺少原版巡逻地图");
        }
        byte[] bArr7 = array.get(new Random().nextInt(array.size()));
        List<Integer> intArrayValues3 = BsonLite.intArrayValues(bArr7, "valid_points");
        int m49v4 = m49v(bArr7, "iindex");
        int m49v5 = m49v(bArr7, "oindex");
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        LinkedHashMap linkedHashMap6 = new LinkedHashMap();
        LinkedHashMap linkedHashMap7 = new LinkedHashMap();
        LinkedHashMap linkedHashMap8 = new LinkedHashMap();
        byte[] bArr8 = localFeatureCatalog.get("MX", 1);
        Random random = new Random();
        ArrayList arrayList = new ArrayList(intArrayValues3);
        Collections.shuffle(arrayList);
        Iterator it3 = arrayList.iterator();
        int i5 = 0;
        int i6 = 0;
        while (true) {
            LinkedHashMap linkedHashMap9 = linkedHashMap8;
            if (it3.hasNext()) {
                int intValue = ((Integer) it3.next()).intValue();
                Iterator it4 = it3;
                String num = Integer.toString(intValue);
                Object emptyList = Collections.emptyList();
                List<byte[]> emptyList2 = Collections.emptyList();
                if (intValue == m49v4) {
                    i2 = m49v4;
                    i3 = 0;
                    rolls = emptyList2;
                    i4 = 2;
                    i = m49v5;
                    obj = emptyList;
                } else if (intValue == m49v5) {
                    List<byte[]> array2 = LocalResourceEngine.array(m48d(bArr5, "exits"));
                    i = m49v5;
                    i2 = m49v4;
                    obj = BsonLite.intArrayValues(BsonLite.document("list", array2.get(new Random().nextInt(array2.size()))), "list");
                    rolls = rolls(bArr5, "boss");
                    i3 = 3;
                    i4 = 1;
                } else {
                    i = m49v5;
                    i2 = m49v4;
                    if (i6 < m49v(bArr4, "reward_max") && Math.random() < probability(bArr4, "reward_prob")) {
                        i6++;
                        if (bArr8 == null || !LocalMazeExtras.coreRoom(bArr4, random)) {
                            emptyList2 = rolls(bArr5, "box");
                            obj = reward(emptyList2);
                            i4 = 5;
                        } else {
                            byte[] cores = LocalMazeExtras.cores(bArr5, bArr8);
                            linkedHashMap6.put(num, cores);
                            obj = LocalMazeExtras.previews(cores);
                            i4 = 8;
                        }
                        rolls = emptyList2;
                        i3 = 1;
                    } else {
                        if (i5 < m49v(bArr4, "elite_max") && Math.random() < probability(bArr4, "elite_prob")) {
                            i5++;
                            str = "elite";
                            i3 = 2;
                            i4 = 3;
                        } else {
                            str = "normal";
                            i3 = 4;
                            i4 = 1;
                        }
                        int i7 = i5;
                        Object singletonList = Collections.singletonList(Integer.valueOf(m49v(choose(LocalResourceEngine.array(m48d(bArr4, str))), "i")));
                        rolls = rolls(bArr5, str);
                        obj = singletonList;
                        i5 = i7;
                        i6 = i6;
                    }
                }
                int i8 = i5;
                int i9 = i6;
                linkedHashMap2.put(num, Arrays.asList(Integer.valueOf(i3), Integer.valueOf(i4)));
                linkedHashMap3.put(num, obj);
                linkedHashMap4.put(num, reward(rolls));
                linkedHashMap5.put(num, rolls);
                if (bArr8 == null) {
                    linkedHashMap = linkedHashMap9;
                } else if (i3 == 2 || i3 == 3 || i3 == 4) {
                    byte[] breakables = LocalMazeExtras.breakables(bArr5, bArr8, random);
                    linkedHashMap7.put(num, breakables);
                    linkedHashMap = linkedHashMap9;
                    linkedHashMap.put(num, LocalMazeExtras.previews(breakables));
                } else {
                    linkedHashMap = linkedHashMap9;
                }
                linkedHashMap8 = linkedHashMap;
                it3 = it4;
                i5 = i8;
                m49v5 = i;
                i6 = i9;
                m49v4 = i2;
            } else {
                byte[] document = BsonLite.document("maze_type", 1, "hard_level", Integer.valueOf(m49v2), "reward_type", Integer.valueOf(m49v3), "armor_types", Integer.valueOf(m49v3), "valid_points", intArrayValues3, "iindex", Integer.valueOf(m49v4), "oindex", Integer.valueOf(m49v5), "battle_type", document(linkedHashMap2), "monsters", document(linkedHashMap3), "point_rewards", document(linkedHashMap4), "used_heroes", BsonLite.EMPTY_DOCUMENT, "breakables", document(linkedHashMap9));
                List<byte[]> array3 = LocalResourceEngine.array(m48d(bArr5, "passed"));
                reward(array3);
                result.profile = LocalServiceEngine.recover(result.profile, j);
                charge(result, -m49v(bArr3, "consume"));
                result.profile = BsonLite.withProfileDocument(result.profile, "ifm", refresh);
                result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyBattle", BsonLite.document("active", true, "t", 7, "s", Integer.valueOf(m49v), "h", intArrayValues, "rt", Integer.valueOf(m49v3), "hard", Integer.valueOf(m49v2), "day", Integer.valueOf(m49v(refresh, "q7MazeDay")), "wishCost", Integer.valueOf(m49v(bArr3, "consume")), "wishFailCost", Integer.valueOf(m49v(bArr3, "fail_consume")), "refund", Integer.valueOf(m49v(bArr3, "consume") - m49v(bArr3, "fail_consume")), "maze", document, "grants", document(linkedHashMap5), "coreGrants", document(linkedHashMap6), "breakableGrants", document(linkedHashMap7), "passed", array3, "lv", Integer.valueOf(Math.max(1, m49v(result.profile, "level"))), "ml", Integer.valueOf(m49v(bArr4, "monster_level")), "f", LocalResourceEngine.uuid()));
                result.add("syncMazeData", BsonLite.document("d", refresh));
                return;
            }
        }
    }

    static byte[] result(int i, int i2, byte[] bArr, byte[] bArr2) {
        return BsonLite.document("reward_type", Integer.valueOf(i), "hard_level", Integer.valueOf(i2), "pass_rewards", bArr, "other_rewards", bArr2);
    }

    private static void finish(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, byte[] bArr, long j) {
        ArrayList arrayList;
        String str;
        String str2;
        String str3;
        int i;
        String str4;
        String str5 = "q7DailyBattle";
        byte[] m48d = m48d(result.profile, "q7DailyBattle");
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "h");
        if (m49v(m48d, "t") != 7 || m49v(bArr, "t") != 7 || m49v(m48d, "s") != m49v(bArr, "s") || !intArrayValues.equals(BsonLite.intArrayValues(m48d, "h"))) {
            throw new IllegalArgumentException("巡逻结算与入场记录不匹配");
        }
        String str6 = "reply";
        String str7 = "ifm";
        if (!LocalDailyEngine.active(result.profile)) {
            if (BsonLite.documentValue(m48d, "reply") != null) {
                result.add("syncMazeData", BsonLite.document("d", m48d(result.profile, "ifm")));
                result.add("combatOfflineReward", m48d(m48d, "reply"));
                return;
            }
            return;
        }
        int i2 = BsonLite.combatWinValue(bArr) != 0 ? 1 : 0;
        byte[] m48d2 = m48d(bArr, "e");
        byte[] m48d3 = m48d(m48d, "maze");
        for (String str8 : Arrays.asList("maze_type", "hard_level", "reward_type")) {
            if (BsonLite.intValue(m48d2, str8) != null && m49v(m48d2, str8) != m49v(m48d3, str8)) {
                throw new IllegalArgumentException("巡逻结算难度或类型不匹配");
            }
        }
        List<Integer> intArrayValues2 = BsonLite.intArrayValues(m48d2, "point_clear");
        List<Integer> intArrayValues3 = BsonLite.intArrayValues(m48d3, "valid_points");
        if (new HashSet(intArrayValues2).size() != intArrayValues2.size() || !intArrayValues3.containsAll(intArrayValues2) || (i2 != 0 && !intArrayValues2.contains(Integer.valueOf(m49v(m48d3, "oindex"))))) {
            throw new IllegalArgumentException("缺少原版巡逻出口完成记录");
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        List<byte[]> collected = LocalMazeExtras.collected(m48d, m48d2);
        byte[] refresh = refresh(m48d(result.profile, "ifm"), j);
        String str9 = "rt";
        if (i2 == 0) {
            arrayList = arrayList3;
            str = "ifm";
            str2 = "q7DailyBattle";
            str3 = "reply";
            i = 2;
            str4 = "rt";
            charge(result, m49v(m48d, "refund"));
        } else {
            for (Iterator<Integer> it = intArrayValues2.iterator(); it.hasNext(); it = it) {
                arrayList2.addAll(LocalResourceEngine.array(m48d(m48d(m48d, "grants"), Integer.toString(it.next().intValue()))));
            }
            arrayList2.addAll(collected);
            arrayList3.addAll(LocalResourceEngine.array(m48d(m48d, "passed")));
            int i3 = 2;
            int i4 = 1;
            Iterator it2 = Arrays.asList(arrayList2, arrayList3).iterator();
            while (it2.hasNext()) {
                for (byte[] bArr2 : (List) it2.next()) {
                    LocalResourceEngine.grant(result, localResourceCatalog, BsonLite.stringValue(bArr2, "k"), m49v(bArr2, "i"), m49v(bArr2, "n"), m49v(bArr2, "q"));
                    str9 = str9;
                    arrayList3 = arrayList3;
                    str6 = str6;
                    i3 = i3;
                    str7 = str7;
                    i4 = i4;
                    str5 = str5;
                }
                str6 = str6;
                i4 = i4;
                str5 = str5;
            }
            i = i3;
            arrayList = arrayList3;
            String str10 = str7;
            str3 = str6;
            str4 = str9;
            int i5 = i4;
            str2 = str5;
            int i6 = i5;
            if (m49v(refresh, "q7MazeDay") == m49v(m48d, "day")) {
                refresh = BsonLite.withProfileInt(refresh, "ocl", Math.addExact(m49v(refresh, "ocl"), i6));
            }
            Iterator it3 = Arrays.asList("moml", "noml").iterator();
            while (it3.hasNext()) {
                String str11 = (String) it3.next();
                ArrayList arrayList4 = new ArrayList(BsonLite.intArrayValues(refresh, str11));
                if (arrayList4.size() != 3) {
                    throw new IllegalArgumentException("巡逻进度格式无效");
                }
                int m49v = m49v(m48d, str4) - i6;
                arrayList4.set(m49v, Integer.valueOf(Math.max(((Integer) arrayList4.get(m49v)).intValue(), Math.min(10, m49v(m48d, "hard") + 1))));
                refresh = BsonLite.withProfileIntArray(refresh, str11, arrayList4);
                it3 = it3;
                i6 = 1;
            }
            int m49v2 = m49v(m48d, str4) - 1;
            str = str10;
            if (BsonLite.intArrayValues(m48d(result.profile, str), "moml").get(m49v2).intValue() < 10 && BsonLite.intArrayValues(refresh, "moml").get(m49v2).intValue() >= 10) {
                ArrayList arrayList5 = new ArrayList(BsonLite.intArrayValues(refresh, "nmmo"));
                if (arrayList5.size() != 3) {
                    throw new IllegalArgumentException("巡逻难度提示格式无效");
                }
                arrayList5.set(m49v2, 1);
                refresh = BsonLite.withProfileIntArray(refresh, "nmmo", arrayList5);
            }
            LocalResourceEngine.syncCurrencies(result);
        }
        byte[] bArr3 = refresh;
        byte[] combatOfflineRewardDocument = BsonLite.combatOfflineRewardDocument(7, m49v(bArr, "s"), intArrayValues, Collections.emptyList(), i2, result(m49v(m48d, str4), m49v(m48d, "hard"), reward(arrayList), reward(arrayList2)));
        result.profile = BsonLite.withProfileDocument(result.profile, str, bArr3);
        result.profile = BsonLite.withProfileDocument(result.profile, str2, BsonLite.withProfileDocument(BsonLite.withProfileBool(m48d, "active", false), str3, combatOfflineRewardDocument));
        Object[] objArr = new Object[i];
        objArr[0] = "d";
        objArr[1] = bArr3;
        result.add("syncMazeData", BsonLite.document(objArr));
        result.add("combatOfflineReward", combatOfflineRewardDocument);
    }
}
