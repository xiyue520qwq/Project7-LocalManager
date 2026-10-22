package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalStageCostRules;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* loaded from: classes.dex */
final class LocalEconomyEngine {
    LocalEconomyEngine() {
    }

    static final class Result {
        boolean accepted;
        byte[] profile;
        boolean replay;
        boolean resetPatrolCount;
        int win;
        byte[] reward = BsonLite.EMPTY_DOCUMENT;
        final List<LocalResourceEngine.Reply> replies = new ArrayList();
        int remainingActions = -1;
        int remainingSandglass = -1;
        final Map<Integer, Integer> fatigue = new LinkedHashMap();
        final Map<Integer, Integer> friendly = new LinkedHashMap();
        String reason = "ok";

        Result(byte[] bArr) {
            this.profile = bArr;
        }
    }

    static Result apply(byte[] bArr, LocalEconomyCatalog localEconomyCatalog, LocalResourceCatalog localResourceCatalog, LocalTutorialStore.Progress progress, String str, byte[] bArr2) {
        Result result = new Result(bArr);
        try {
            if ("begin".equals(str)) {
                begin(result, localEconomyCatalog, progress, bArr2);
            } else if ("finish".equals(str)) {
                finish(result, localEconomyCatalog, localResourceCatalog, progress, bArr2);
            } else if ("reset".equals(str)) {
                Integer intValue = BsonLite.intValue(bArr2, "s");
                byte[] doc = doc(bArr, "q7Battle");
                if (intValue != null && !BsonLite.keys(doc).isEmpty() && intValue.intValue() != m19v(doc, "s")) {
                    throw new IllegalArgumentException("取消请求与当前战斗不匹配，未修改战斗进度");
                }
                result.profile = clearBattle(bArr);
                result.accepted = true;
            } else if ("zhaiRequest".equals(str)) {
                rest(result, localEconomyCatalog, progress);
            } else if ("canteenRequest".equals(str)) {
                canteen(result, localEconomyCatalog, progress, bArr2);
            } else if ("incDayWhenNoActionVal".equals(str)) {
                advanceDay(result, localEconomyCatalog, progress);
            } else if ("clearCurDailySettlement".equals(str)) {
                result.profile = BsonLite.withProfileDocument(bArr, "weeknum", BsonLite.withProfileDocument(BsonLite.withProfileDocument(doc(bArr, "weeknum"), "c", BsonLite.EMPTY_DOCUMENT), "l", BsonLite.EMPTY_DOCUMENT));
                result.accepted = true;
            } else {
                throw new IllegalArgumentException("unsupported economy method");
            }
            if (result.remainingActions >= 0) {
                commit(result, (!"finish".equals(str) || result.win == 0) ? 0 : m19v(bArr2, "s"));
            }
        } catch (ArithmeticException | IllegalArgumentException e) {
            result = new Result(bArr);
            result.reason = e.getMessage();
            result.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.stringDocument("m", result.reason)));
            if ("zhaiRequest".equals(str)) {
                result.replies.add(new LocalResourceEngine.Reply("zhaiReply", BsonLite.document("rs", false, "reward", BsonLite.EMPTY_DOCUMENT)));
            }
            if ("incDayWhenNoActionVal".equals(str)) {
                result.replies.add(new LocalResourceEngine.Reply("updateDay", BsonLite.intDocument("d", m19v(doc(bArr, "weeknum"), "d"))));
            }
        }
        return result;
    }

    static void commit(Result result, int i) {
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.document("id", LocalResourceEngine.uuid(), "av", Integer.valueOf(result.remainingActions), "scene", Integer.valueOf(i)), "sgw", result.remainingSandglass >= 0 ? result.remainingSandglass : m19v(doc(result.profile, "weeknum"), "sgw"));
        if (result.resetPatrolCount) {
            withProfileInt = BsonLite.withProfileInt(withProfileInt, "pn", 0);
        }
        byte[] bArr = BsonLite.EMPTY_DOCUMENT;
        byte[] bArr2 = BsonLite.EMPTY_DOCUMENT;
        for (Map.Entry<Integer, Integer> entry : result.fatigue.entrySet()) {
            bArr = BsonLite.withProfileInt(bArr, entry.getKey().toString(), entry.getValue().intValue());
        }
        for (Map.Entry<Integer, Integer> entry2 : result.friendly.entrySet()) {
            bArr2 = BsonLite.withProfileInt(bArr2, entry2.getKey().toString(), entry2.getValue().intValue());
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "q7EconomyCommit", BsonLite.withProfileDocument(BsonLite.withProfileDocument(withProfileInt, "cf", bArr), "ef", bArr2));
    }

    /* renamed from: v */
    private static int m19v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    private static byte[] doc(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static int actions(byte[] bArr, LocalTutorialStore.Progress progress) {
        return Math.addExact(regularActions(bArr, progress), sandglass(bArr, progress));
    }

    static int regularActions(byte[] bArr, LocalTutorialStore.Progress progress) {
        return (progress == null || progress.patrolActions < 0) ? m19v(doc(bArr, "city"), "av") : progress.patrolActions;
    }

    static int sandglass(byte[] bArr, LocalTutorialStore.Progress progress) {
        return (progress == null || progress.sandglassActions < 0) ? m19v(doc(bArr, "weeknum"), "sgw") : progress.sandglassActions;
    }

    static void spendActions(Result result, LocalTutorialStore.Progress progress, int i) {
        int regularActions = regularActions(result.profile, progress);
        int sandglass = sandglass(result.profile, progress);
        if (i < 0 || i > Math.addExact(regularActions, sandglass)) {
            throw new IllegalArgumentException("行动力不足");
        }
        result.remainingActions = Math.max(0, regularActions - i);
        result.remainingSandglass = sandglass - Math.max(0, i - regularActions);
        result.profile = BsonLite.withProfileDocument(result.profile, "city", BsonLite.withProfileInt(doc(result.profile, "city"), "av", result.remainingActions));
        if (BsonLite.intValue(doc(result.profile, "weeknum"), "sgw") != null || sandglass != 0) {
            result.profile = BsonLite.withProfileDocument(result.profile, "weeknum", BsonLite.withProfileInt(doc(result.profile, "weeknum"), "sgw", result.remainingSandglass));
        }
        if (sandglass != result.remainingSandglass) {
            result.replies.add(new LocalResourceEngine.Reply("syncSandglass", BsonLite.document("v", Integer.valueOf(result.remainingSandglass))));
        }
    }

    private static String key(byte[] bArr, int i) {
        return m19v(doc(bArr, "weeknum"), "w") + ":" + i;
    }

    private static byte[] effective(byte[] bArr, LocalTutorialStore.Progress progress) {
        return BsonLite.withPatrolProgress(bArr, progress);
    }

    private static int playerLevel(byte[] bArr) {
        int max = Math.max(1, m19v(bArr, "level"));
        if (max > 110) {
            throw new IllegalArgumentException("账号等级超出原版范围，未修改经验和等级");
        }
        return max;
    }

    private static byte[] clearBattle(byte[] bArr) {
        byte[] withProfileDocument = BsonLite.withProfileDocument(bArr, "q7Battle", BsonLite.EMPTY_DOCUMENT);
        return BsonLite.withProfileDocument(withProfileDocument, "combat", BsonLite.withProfileBool(doc(withProfileDocument, "combat"), "of", false));
    }

    private static void begin(Result result, LocalEconomyCatalog localEconomyCatalog, LocalTutorialStore.Progress progress, byte[] bArr) {
        int m19v = m19v(bArr, "s");
        int[] iArr = localEconomyCatalog.missions.get(Integer.valueOf(m19v));
        if (m19v(bArr, "t") != 1 || iArr == null) {
            throw new IllegalArgumentException("此战斗模式尚未接入主线奖励系统");
        }
        if (LocalArkCityEngine.area(m19v) != 0 && (progress == null || progress.weekIndex != m19v(doc(result.profile, "weeknum"), "w") || !LocalArkCityEngine.active(result.profile))) {
            throw new IllegalArgumentException("缺少本周突袭剧情进度");
        }
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "h");
        if (intArrayValues.size() < iArr[4] || intArrayValues.size() > iArr[5] || new LinkedHashSet(intArrayValues).size() != intArrayValues.size()) {
            throw new IllegalArgumentException("战斗编队人数无效");
        }
        byte[] doc = doc(result.profile, "q7Battle");
        if (!BsonLite.keys(doc).isEmpty()) {
            if (m19v == m19v(doc, "s") && intArrayValues.equals(BsonLite.intArrayValues(doc, "h"))) {
                result.accepted = true;
                result.replay = true;
                return;
            }
            throw new IllegalArgumentException("上一场战斗尚未结算或退出");
        }
        if (LocalCityProgress.hasBattle(progress, m19v) || !BsonLite.keys(doc(doc(result.profile, "q7BattleReceipts"), key(result.profile, m19v))).isEmpty()) {
            throw new IllegalArgumentException("该主线关卡已完成，请选择当前关卡");
        }
        if (m19v != 101 && progress != null) {
            if (m19v(LocalCityProgress.stages(progress, LocalCityProgress.area(m19v), result.profile), "cs") != m19v) {
                throw new IllegalArgumentException("此关卡尚未开放");
            }
            int[] iArr2 = localEconomyCatalog.missionGates.get(Integer.valueOf(m19v));
            if (iArr2 != null) {
                if (iArr2[0] != 0 && !progress.completedEvents.contains(Integer.valueOf(iArr2[0]))) {
                    throw new IllegalArgumentException("请先完成该地区的前置剧情");
                }
                for (int i = 1; i < iArr2.length; i++) {
                    if (!LocalCityProgress.hasBattle(progress, iArr2[i])) {
                        throw new IllegalArgumentException("请先完成该地区的前置关卡");
                    }
                }
            }
        }
        LocalStageCostRules.Cost normal = LocalStageCostRules.normal(iArr, m19v(doc(result.profile, "city"), "fv"));
        int i2 = normal.fatigue;
        byte[] effective = effective(result.profile, progress);
        for (Integer num : intArrayValues) {
            if (!LocalResourceEngine.ownsHero(effective, num.intValue())) {
                throw new IllegalArgumentException("未拥有编队中的角色");
            }
            if (m19v(BsonLite.profileHeroDocument(effective, num.intValue()), "cf") < i2) {
                throw new IllegalArgumentException("编队角色疲劳值不足");
            }
        }
        if (actions(result.profile, progress) >= normal.actions) {
            result.profile = BsonLite.withProfileDocument(result.profile, "q7Battle", BsonLite.document("s", Integer.valueOf(m19v), "h", intArrayValues, "k", key(result.profile, m19v), "f", LocalResourceEngine.uuid(), "fatigue", Integer.valueOf(i2)));
            result.profile = BsonLite.withProfileDocument(result.profile, "combat", BsonLite.withProfileIntArray(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileBool(doc(result.profile, "combat"), "of", true), "sc", m19v), "bt", 1), "hr", intArrayValues));
            result.accepted = true;
            return;
        }
        throw new IllegalArgumentException("行动力不足");
    }

    private static void finish(Result result, LocalEconomyCatalog localEconomyCatalog, LocalResourceCatalog localResourceCatalog, LocalTutorialStore.Progress progress, byte[] bArr) {
        byte[] bArr2;
        String str;
        Object obj;
        String str2;
        int m19v = m19v(bArr, "s");
        if (m19v(bArr, "t") != 1 || !localEconomyCatalog.missions.containsKey(Integer.valueOf(m19v))) {
            throw new IllegalArgumentException("此战斗模式尚未接入主线奖励系统");
        }
        byte[] doc = doc(result.profile, "q7BattleReceipts");
        byte[] doc2 = doc(doc, key(result.profile, m19v));
        if (!BsonLite.keys(doc2).isEmpty()) {
            if (!BsonLite.intArrayValues(doc2, "h").equals(BsonLite.intArrayValues(bArr, "h"))) {
                throw new IllegalArgumentException("战斗编队与结算记录不匹配");
            }
            result.accepted = true;
            result.replay = true;
            result.win = 1;
            result.reward = BsonLite.withProfileInt(doc(doc2, "reward"), "sid", m19v);
            return;
        }
        byte[] doc3 = doc(result.profile, "q7Battle");
        if (m19v != m19v(doc3, "s") || !key(result.profile, m19v).equals(BsonLite.stringValue(doc3, "k")) || !BsonLite.intArrayValues(doc3, "h").equals(BsonLite.intArrayValues(bArr, "h"))) {
            throw new IllegalArgumentException("没有与本次结算对应的已开始战斗");
        }
        result.accepted = true;
        result.win = BsonLite.combatWinValue(bArr);
        result.profile = clearBattle(result.profile);
        if (result.win == 0) {
            return;
        }
        int[] iArr = localEconomyCatalog.missions.get(Integer.valueOf(m19v));
        if (actions(result.profile, progress) < iArr[0]) {
            throw new IllegalArgumentException("行动力已变化，无法结算本次战斗");
        }
        int playerLevel = playerLevel(result.profile);
        int[] iArr2 = localEconomyCatalog.levels.get(Integer.valueOf(playerLevel));
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
        if (iArr[6] == 0) {
            bArr2 = doc;
            str = "q7BattleReceipts";
            obj = "reward";
            str2 = "h";
        } else {
            LocalResourceEngine.grant(result2, localResourceCatalog, "money", 0, iArr2[2], 1);
            str = "q7BattleReceipts";
            bArr2 = doc;
            obj = "reward";
            str2 = "h";
            localEconomyCatalog.grantDrops(result2, localResourceCatalog, playerLevel, new Random(Long.parseLong(BsonLite.stringValue(doc3, "f").substring(0, 12), 16)));
        }
        result.profile = result2.profile;
        result.replies.addAll(result2.replies);
        result.reward = result2.reward();
        result.reward = BsonLite.withProfileInt(result.reward, "sid", m19v);
        result.reward = BsonLite.withProfileInt(result.reward, "money", iArr[6] != 0 ? iArr2[2] : 0);
        result.reward = BsonLite.withProfileArray(result.reward, "item", Collections.emptyList());
        if (iArr[6] != 0) {
            addExperience(result, localEconomyCatalog, iArr2[1]);
        }
        byte[] effective = effective(result.profile, progress);
        String str3 = str2;
        Iterator<Integer> it = BsonLite.intArrayValues(doc3, str3).iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, next.intValue());
            byte[] profileHeroDocument2 = BsonLite.profileHeroDocument(effective, next.intValue());
            Iterator<Integer> it2 = it;
            int max = Math.max(0, m19v(profileHeroDocument2, "cf") - m19v(doc3, "fatigue"));
            int m19v2 = m19v(profileHeroDocument2, "ef");
            if (m19v2 < 100) {
                m19v2 = Math.min(100, Math.addExact(m19v2, iArr[6] != 0 ? iArr2[3] : 0));
            }
            result.profile = BsonLite.withHeroDocument(result.profile, next.intValue(), BsonLite.withProfileInt(BsonLite.withProfileInt(profileHeroDocument, "cf", max), "ef", m19v2));
            result.replies.add(new LocalResourceEngine.Reply("updateCurFatigueValue", BsonLite.heroValueDocument(next.intValue(), max)));
            result.replies.add(new LocalResourceEngine.Reply("updateFriendlyValue", BsonLite.heroValueDocument(next.intValue(), m19v2)));
            result.fatigue.put(next, Integer.valueOf(max));
            result.friendly.put(next, Integer.valueOf(m19v2));
            it = it2;
        }
        byte[] bArr3 = BsonLite.EMPTY_DOCUMENT;
        byte[] bArr4 = BsonLite.EMPTY_DOCUMENT;
        Iterator<Integer> it3 = BsonLite.intArrayValues(doc3, str3).iterator();
        while (it3.hasNext()) {
            int intValue = it3.next().intValue();
            bArr3 = BsonLite.withProfileInt(bArr3, Integer.toString(intValue), result.friendly.get(Integer.valueOf(intValue)).intValue() - m19v(BsonLite.profileHeroDocument(effective, intValue), "ef"));
        }
        Iterator<Integer> it4 = BsonLite.intArrayValues(doc3, str3).iterator();
        while (it4.hasNext()) {
            int intValue2 = it4.next().intValue();
            bArr4 = BsonLite.withProfileIntArray(bArr4, Integer.toString(intValue2), Arrays.asList(Integer.valueOf(m19v(BsonLite.profileHeroDocument(effective, intValue2), "ef")), result.friendly.get(Integer.valueOf(intValue2))));
        }
        result.reward = BsonLite.withProfileDocument(result.reward, "fr", bArr3);
        result.reward = BsonLite.withProfileDocument(result.reward, "fri", bArr4);
        result.reward = BsonLite.withProfileIntArray(result.reward, "hs", BsonLite.intArrayValues(doc3, str3));
        spendActions(result, progress, iArr[0]);
        byte[] document = BsonLite.document("s", Integer.valueOf(m19v), str3, BsonLite.intArrayValues(doc3, str3), "av", Integer.valueOf(result.remainingActions), "sgw", Integer.valueOf(result.remainingSandglass), obj, result.reward);
        result.profile = BsonLite.withProfileDocument(result.profile, str, BsonLite.withProfileDocument(bArr2, key(result.profile, m19v), document));
        result.profile = BsonLite.withProfileDocument(result.profile, "q7BattleLast", document);
        result.profile = LocalSuppressionEngine.recordPass(result.profile, m19v);
        result.replies.add(new LocalResourceEngine.Reply("battleStageSyncPassHistory", BsonLite.document("psh", new BsonLite.ArrayValue(doc(doc(result.profile, "bs"), "psh")))));
        LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(result.profile);
        LocalResourceEngine.syncCurrencies(result3);
        result.replies.addAll(result3.replies);
    }

    static void addExperience(Result result, LocalEconomyCatalog localEconomyCatalog, int i) {
        int playerLevel = playerLevel(result.profile);
        int max = Math.max(0, m19v(result.profile, "exp"));
        int addExact = Math.addExact(max, i);
        int i2 = playerLevel;
        while (i2 < 110 && addExact >= localEconomyCatalog.levels.get(Integer.valueOf(i2))[0]) {
            addExact -= localEconomyCatalog.levels.get(Integer.valueOf(i2))[0];
            i2++;
        }
        if (i2 == 110) {
            addExact = Math.min(addExact, localEconomyCatalog.levels.get(Integer.valueOf(i2))[0]);
        }
        result.profile = BsonLite.withProfileInt(BsonLite.withProfileInt(result.profile, "exp", addExact), "level", i2);
        result.reward = BsonLite.withProfileInt(result.reward, "exp", i);
        result.reward = BsonLite.withProfileInt(result.reward, "oe", max);
        result.reward = BsonLite.withProfileInt(result.reward, "ol", playerLevel);
        result.reward = BsonLite.withProfileInt(BsonLite.withProfileInt(result.reward, "ce", addExact), "cl", i2);
        result.replies.add(new LocalResourceEngine.Reply("updateExpAndLevel", BsonLite.document("e", Integer.valueOf(addExact), "lv", Integer.valueOf(i2))));
    }

    static /* synthetic */ boolean lambda$rest$0(Integer num) {
        return num.intValue() != 9;
    }

    private static void rest(Result result, LocalEconomyCatalog localEconomyCatalog, LocalTutorialStore.Progress progress) {
        char c;
        boolean z = progress != null && progress.processingEvents.stream().anyMatch(LocalEconomyEngine$$ExternalSyntheticLambda0.INSTANCE);
        if (progress == null || progress.inEmergency || z || progress.patrolRewardPending || !BsonLite.keys(doc(result.profile, "q7Battle")).isEmpty()) {
            throw new IllegalArgumentException("请先完成当前剧情、巡查或战斗，再休息");
        }
        int actions = actions(result.profile, progress);
        int playerLevel = playerLevel(result.profile);
        String str = m19v(doc(result.profile, "weeknum"), "w") + ":" + m19v(doc(result.profile, "weeknum"), "d");
        byte[] doc = doc(result.profile, "q7Rest");
        if (actions == 0 && str.equals(BsonLite.stringValue(doc, "day"))) {
            result.accepted = true;
            result.replay = true;
            result.reward = doc(doc, "reward");
            c = 0;
        } else {
            int[] iArr = localEconomyCatalog.rest.get(playerLevel + ":" + actions);
            if (iArr == null) {
                throw new IllegalArgumentException("没有可用于休息的行动力");
            }
            if (iArr[3] == 0) {
                result.profile = BsonLite.withProfileInt(result.profile, "money", Math.addExact(m19v(result.profile, "money"), iArr[2]));
                result.reward = BsonLite.document("money", Integer.valueOf(iArr[2]), "fatigue", false);
                addExperience(result, localEconomyCatalog, iArr[1]);
                spendActions(result, progress, actions);
                result.profile = BsonLite.withProfileDocument(result.profile, "q7Rest", BsonLite.document("day", str, "reward", result.reward));
                result.replies.add(new LocalResourceEngine.Reply("updateMoney", BsonLite.intDocument("v", m19v(result.profile, "money"))));
                result.accepted = true;
                c = 0;
                result.remainingActions = 0;
            } else {
                throw new IllegalArgumentException("此等级的特殊休息疲劳规则尚未实现");
            }
        }
        List<LocalResourceEngine.Reply> list = result.replies;
        Object[] objArr = new Object[4];
        objArr[c] = "rs";
        objArr[1] = true;
        objArr[2] = "reward";
        objArr[3] = result.reward;
        list.add(new LocalResourceEngine.Reply("zhaiReply", BsonLite.document(objArr)));
    }

    private static byte[] dailyValues(byte[] bArr) {
        return BsonLite.document("rsv", Integer.valueOf(m19v(bArr, "rv")), "dvv", Integer.valueOf(m19v(bArr, "dv")), "frv", Integer.valueOf(m19v(bArr, "fv")));
    }

    private static void canteen(Result result, LocalEconomyCatalog localEconomyCatalog, LocalTutorialStore.Progress progress, byte[] bArr) {
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "h");
        if (intArrayValues.isEmpty() || intArrayValues.size() > 3 || new LinkedHashSet(intArrayValues).size() != intArrayValues.size()) {
            throw new IllegalArgumentException("请选择一至三名不同的神器使");
        }
        if (actions(result.profile, progress) != 0 || !BsonLite.keys(doc(result.profile, "q7Battle")).isEmpty()) {
            throw new IllegalArgumentException("请先结束当天的行动或战斗");
        }
        byte[] doc = doc(result.profile, "weeknum");
        String str = m19v(doc, "w") + ":" + m19v(doc, "d");
        byte[] doc2 = doc(result.profile, "q7Canteen");
        if (str.equals(BsonLite.stringValue(doc2, "day"))) {
            if (BsonLite.intArrayValues(doc2, "heroes").equals(intArrayValues)) {
                result.profile = refreshCanteen(result.profile);
                result.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", doc(result.profile, "city"))));
                result.accepted = true;
                result.replay = true;
                return;
            }
            throw new IllegalArgumentException("今天已经用餐，不能再次恢复疲劳");
        }
        Iterator<Integer> it = intArrayValues.iterator();
        while (it.hasNext()) {
            if (!LocalResourceEngine.ownsHero(result.profile, it.next().intValue())) {
                throw new IllegalArgumentException("未拥有所选神器使");
            }
        }
        int[] orDefault = localEconomyCatalog.dailyFatigue.getOrDefault(Integer.valueOf(m19v(doc, "w")), localEconomyCatalog.dailyFatigue.get(-1));
        if (orDefault == null) {
            throw new IllegalArgumentException("缺少深夜食堂恢复配置");
        }
        byte[] effective = effective(result.profile, progress);
        Iterator<Integer> it2 = intArrayValues.iterator();
        while (it2.hasNext()) {
            int intValue = it2.next().intValue();
            int m19v = m19v(BsonLite.profileHeroDocument(effective, intValue), "cf");
            byte[] bArr2 = effective;
            if (m19v < 100) {
                m19v = Math.min(100, Math.addExact(m19v, orDefault[1]));
            }
            result.profile = BsonLite.withHeroDocument(result.profile, intValue, BsonLite.withProfileInt(BsonLite.profileHeroDocument(result.profile, intValue), "cf", m19v));
            result.fatigue.put(Integer.valueOf(intValue), Integer.valueOf(m19v));
            result.replies.add(new LocalResourceEngine.Reply("updateCurFatigueValue", BsonLite.heroValueDocument(intValue, m19v)));
            effective = bArr2;
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "q7Canteen", BsonLite.document("day", str, "heroes", intArrayValues));
        result.profile = refreshCanteen(result.profile);
        result.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", doc(result.profile, "city"))));
        result.remainingActions = 0;
        result.accepted = true;
    }

    static String nextDayBlocker(byte[] bArr, LocalTutorialStore.Progress progress) {
        int m19v = m19v(doc(bArr, "weeknum"), "d");
        if (Boolean.TRUE.equals(BsonLite.boolValue(doc(bArr, "std"), "ff"))) {
            return "当前处于回溯中，请通过回溯按钮进入下一轮";
        }
        if (progress != null && !progress.inEmergency) {
            if ((progress.initPrologue && !progress.completedEvents.contains(1047)) || progress.patrolRewardPending || progress.processingEvents.stream().anyMatch(LocalEconomyEngine$$ExternalSyntheticLambda0.INSTANCE) || !BsonLite.keys(doc(bArr, "q7Battle")).isEmpty()) {
                return "请先完成当前引导、剧情、巡查或战斗，再进入下一天";
            }
            if (actions(bArr, progress) != 0) {
                return "行动力尚未耗尽，不能进入下一天";
            }
            if (m19v < 0 || m19v >= 7) {
                return "请先完成最后一天的结局剧情，再选择下一周目";
            }
            return null;
        }
        return "请先完成当前引导、剧情、巡查或战斗，再进入下一天";
    }

    static boolean hasDailySettlement(byte[] bArr) {
        byte[] doc = doc(doc(bArr, "weeknum"), "c");
        if (BsonLite.keys(doc).isEmpty()) {
            return false;
        }
        Iterator<String> it = BsonLite.keys(doc).iterator();
        while (it.hasNext()) {
            Integer intValue = BsonLite.intValue(doc, it.next());
            if (intValue == null || intValue.intValue() != 0) {
                return true;
            }
        }
        byte[] doc2 = doc(doc(bArr, "weeknum"), "l");
        Iterator<String> it2 = BsonLite.keys(doc2).iterator();
        while (it2.hasNext()) {
            Integer intValue2 = BsonLite.intValue(doc2, it2.next());
            if (intValue2 == null || intValue2.intValue() != 0) {
                return true;
            }
        }
        return false;
    }

    static byte[] clearEmptyDailySettlement(byte[] bArr) {
        byte[] doc = doc(bArr, "weeknum");
        if (!BsonLite.keys(doc(doc, "c")).isEmpty() && !hasDailySettlement(bArr)) {
            return BsonLite.withProfileDocument(bArr, "weeknum", BsonLite.withProfileDocument(BsonLite.withProfileDocument(doc, "c", BsonLite.EMPTY_DOCUMENT), "l", BsonLite.EMPTY_DOCUMENT));
        }
        return bArr;
    }

    static byte[] refreshCanteen(byte[] bArr) {
        byte[] doc = doc(bArr, "weeknum");
        boolean equals = (m19v(doc, "w") + ":" + m19v(doc, "d")).equals(BsonLite.stringValue(doc(bArr, "q7Canteen"), "day"));
        return Boolean.valueOf(equals).equals(BsonLite.boolValue(doc(bArr, "city"), "uc")) ? bArr : BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileBool(doc(bArr, "city"), "uc", equals));
    }

    private static void advanceDay(Result result, LocalEconomyCatalog localEconomyCatalog, LocalTutorialStore.Progress progress) {
        byte[] doc = doc(result.profile, "weeknum");
        int m19v = m19v(doc, "d");
        int m19v2 = m19v(doc, "w");
        String nextDayBlocker = nextDayBlocker(result.profile, progress);
        if (nextDayBlocker != null) {
            throw new IllegalArgumentException(nextDayBlocker);
        }
        int[] orDefault = localEconomyCatalog.dailyFatigue.getOrDefault(Integer.valueOf(m19v2), localEconomyCatalog.dailyFatigue.get(-1));
        if (orDefault == null) {
            throw new IllegalArgumentException("缺少原版每日疲劳恢复配置");
        }
        byte[] doc2 = doc(result.profile, "city");
        byte[] dailyValues = dailyValues(doc2);
        byte[] doc3 = doc(result.profile, "q7DailyPrevious");
        if (BsonLite.keys(doc3).isEmpty()) {
            doc3 = dailyValues;
        }
        int i = m19v + 1;
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileBool(BsonLite.withProfileInt(doc, "d", i), "sgnt", false), "sgw", 0);
        result.remainingSandglass = 0;
        String str = "l";
        result.profile = BsonLite.withProfileDocument(result.profile, "weeknum", BsonLite.withProfileDocument(BsonLite.withProfileDocument(withProfileInt, "c", dailyValues), "l", doc3));
        result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyPrevious", dailyValues);
        int m19v3 = m19v(result.profile, "q7DailyBuildIncome");
        if (m19v3 < 0) {
            throw new IllegalArgumentException("城市每日建设资金收益无效");
        }
        byte[] withProfileInt2 = BsonLite.withProfileInt(doc2, "bf", Math.addExact(m19v(doc2, "bf"), m19v3));
        byte[] withProfileInt3 = BsonLite.withProfileInt(withProfileInt2, "dvc", m19v(withProfileInt2, "dv"));
        result.profile = BsonLite.withProfileDocument(result.profile, "intelligence", BsonLite.withProfileBool(doc(result.profile, "intelligence"), "rd", false));
        result.remainingActions = 24;
        result.resetPatrolCount = true;
        byte[] withProfileInt4 = BsonLite.withProfileInt(BsonLite.withProfileBool(BsonLite.withProfileInt(withProfileInt3, "av", 24), "uc", false), "pn", 1);
        result.profile = BsonLite.withProfileDocument(result.profile, "city", withProfileInt4);
        byte[] doc4 = doc(doc(effective(result.profile, progress), "heromgr"), "hrs");
        Iterator<String> it = BsonLite.keys(doc4).iterator();
        while (it.hasNext()) {
            byte[] doc5 = doc(doc4, it.next());
            int m19v4 = m19v(doc5, "0");
            byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, m19v4);
            byte[] bArr = doc4;
            Iterator<String> it2 = it;
            byte[] bArr2 = doc3;
            int m19v5 = m19v(doc(doc5, "1"), "cf");
            String str2 = str;
            byte[] bArr3 = dailyValues;
            if (m19v5 < 100) {
                m19v5 = Math.min(100, Math.addExact(m19v5, orDefault[0]));
            }
            int m19v6 = m19v(doc(doc5, "1"), "ef");
            result.profile = BsonLite.withHeroDocument(result.profile, m19v4, BsonLite.withProfileInt(BsonLite.withProfileInt(profileHeroDocument, "ef", m19v6), "cf", m19v5));
            result.fatigue.put(Integer.valueOf(m19v4), Integer.valueOf(m19v5));
            result.friendly.put(Integer.valueOf(m19v4), Integer.valueOf(m19v6));
            result.replies.add(new LocalResourceEngine.Reply("updateCurFatigueValue", BsonLite.heroValueDocument(m19v4, m19v5)));
            doc4 = bArr;
            it = it2;
            doc3 = bArr2;
            str = str2;
            dailyValues = bArr3;
        }
        result.profile = LocalHeroGiftEngine.reset(result.profile);
        result.replies.add(new LocalResourceEngine.Reply("syncHeroMgrData", BsonLite.document("d", doc(result.profile, "heromgr"))));
        result.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", withProfileInt4)));
        result.replies.add(new LocalResourceEngine.Reply("syncAllIntelligence", BsonLite.document("is", doc(result.profile, "intelligence"))));
        result.replies.add(new LocalResourceEngine.Reply("updateDay", BsonLite.intDocument("d", i)));
        result.replies.add(new LocalResourceEngine.Reply("showDailySettlement", BsonLite.document("c", dailyValues, str, doc3)));
        result.accepted = true;
    }

    static void reconcile(byte[] bArr, LocalTutorialStore.Progress progress, Result result) {
        if (progress == null || !result.accepted) {
            return;
        }
        recover(bArr, progress);
    }

    static void recover(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] doc;
        String stringValue;
        if (progress == null || (stringValue = BsonLite.stringValue((doc = doc(bArr, "q7EconomyCommit")), "id")) == null || stringValue.equals(progress.economyCommit)) {
            return;
        }
        progress.patrolActions = m19v(doc, "av");
        if (BsonLite.intValue(doc, "sgw") != null) {
            progress.sandglassActions = m19v(doc, "sgw");
        }
        Integer intValue = BsonLite.intValue(doc, "pn");
        if (intValue != null) {
            progress.patrolCount = intValue.intValue();
            progress.patrolDay = LocalPatrolEngine.dayKey(bArr);
        }
        for (String str : BsonLite.keys(doc(doc, "cf"))) {
            progress.patrolFatigue.put(Integer.valueOf(Integer.parseInt(str)), Integer.valueOf(m19v(doc(doc, "cf"), str)));
        }
        for (String str2 : BsonLite.keys(doc(doc, "ef"))) {
            progress.patrolFriendly.put(Integer.valueOf(Integer.parseInt(str2)), Integer.valueOf(m19v(doc(doc, "ef"), str2)));
        }
        int m19v = m19v(doc, "scene");
        if (m19v > 0) {
            progress.recordCondition("battle", Collections.singleton(Integer.valueOf(m19v)));
        }
        progress.economyCommit = stringValue;
    }
}
