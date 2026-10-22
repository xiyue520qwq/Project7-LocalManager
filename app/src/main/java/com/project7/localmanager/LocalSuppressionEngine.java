package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalEconomyEngine;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
final class LocalSuppressionEngine {
    LocalSuppressionEngine() {
    }

    /* renamed from: d */
    private static byte[] m75d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m76v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static byte[] recordPass(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (byte[] bArr2 : LocalResourceEngine.array(m75d(m75d(bArr, "bs"), "psh"))) {
            if (m76v(bArr2, "0") == i) {
                arrayList.add(Arrays.asList(Integer.valueOf(i), Integer.valueOf(Math.max(1, m76v(bArr2, "1")))));
                z = true;
            } else {
                arrayList.add(new BsonLite.ArrayValue(bArr2));
            }
        }
        if (!z) {
            arrayList.add(Arrays.asList(Integer.valueOf(i), 1));
        }
        return BsonLite.withProfileDocument(bArr, "bs", BsonLite.withProfileArray(m75d(bArr, "bs"), "psh", arrayList));
    }

    static byte[] recoverHistory(byte[] bArr, LocalTutorialStore.Progress progress) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (byte[] bArr2 : LocalResourceEngine.array(m75d(bArr, "q7BattleReceipts"))) {
            if (LocalCityProgress.area(m76v(bArr2, "s")) != 0) {
                linkedHashSet.add(Integer.valueOf(m76v(bArr2, "s")));
            }
        }
        if (progress != null) {
            Iterator<Integer> it = progress.eventConditions.getOrDefault("battle", Collections.emptySet()).iterator();
            while (it.hasNext()) {
                int intValue = it.next().intValue();
                if (LocalCityProgress.area(intValue) != 0) {
                    linkedHashSet.add(Integer.valueOf(intValue));
                }
            }
        }
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            int intValue2 = ((Integer) it2.next()).intValue();
            boolean z = false;
            for (byte[] bArr3 : LocalResourceEngine.array(m75d(m75d(bArr, "bs"), "psh"))) {
                if (m76v(bArr3, "0") == intValue2 && m76v(bArr3, "1") > 0) {
                    z = true;
                }
            }
            if (!z) {
                bArr = recordPass(bArr, intValue2);
            }
        }
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c7 A[Catch: ArithmeticException | IllegalArgumentException -> 0x0246, IllegalArgumentException -> 0x0248, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x0246, blocks: (B:3:0x0011, B:6:0x002b, B:8:0x002f, B:10:0x0033, B:13:0x0040, B:15:0x0047, B:17:0x004d, B:19:0x005b, B:22:0x006e, B:24:0x0083, B:26:0x0089, B:29:0x0090, B:30:0x00c1, B:32:0x00c7, B:34:0x00e3, B:42:0x00f1, B:45:0x0116, B:47:0x013c, B:50:0x0145, B:53:0x01b0, B:56:0x01ce, B:59:0x01df), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b0 A[Catch: ArithmeticException | IllegalArgumentException -> 0x0246, IllegalArgumentException -> 0x0248, TRY_ENTER, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x0246, blocks: (B:3:0x0011, B:6:0x002b, B:8:0x002f, B:10:0x0033, B:13:0x0040, B:15:0x0047, B:17:0x004d, B:19:0x005b, B:22:0x006e, B:24:0x0083, B:26:0x0089, B:29:0x0090, B:30:0x00c1, B:32:0x00c7, B:34:0x00e3, B:42:0x00f1, B:45:0x0116, B:47:0x013c, B:50:0x0145, B:53:0x01b0, B:56:0x01ce, B:59:0x01df), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01ce A[Catch: ArithmeticException | IllegalArgumentException -> 0x0246, IllegalArgumentException -> 0x0248, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x0246, blocks: (B:3:0x0011, B:6:0x002b, B:8:0x002f, B:10:0x0033, B:13:0x0040, B:15:0x0047, B:17:0x004d, B:19:0x005b, B:22:0x006e, B:24:0x0083, B:26:0x0089, B:29:0x0090, B:30:0x00c1, B:32:0x00c7, B:34:0x00e3, B:42:0x00f1, B:45:0x0116, B:47:0x013c, B:50:0x0145, B:53:0x01b0, B:56:0x01ce, B:59:0x01df), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalEconomyEngine.Result apply(byte[] bArr, LocalEconomyCatalog localEconomyCatalog, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, LocalTutorialStore.Progress progress, byte[] bArr2) {
        boolean z;
        Iterator<byte[]> it;
        byte[] m75d;
        try {
            int m76v = m76v(bArr2, "s");
            int m76v2 = m76v(bArr2, "a");
            byte[] bArr3 = localFeatureCatalog.get("YM", Integer.valueOf(m76v));
            require((progress == null || progress.initPrologue || progress.inEmergency || m76v(m75d(bArr, "weeknum"), "w") < 1) ? false : true, "当前尚未开放压制");
            if (m76v2 != 0 && LocalCityProgress.area(m76v) == m76v2) {
                if (localEconomyCatalog.missions.containsKey(Integer.valueOf(m76v)) && Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "available"))) {
                    z = true;
                    require(z, "该关卡不支持压制");
                    require((BsonLite.keys(m75d(bArr, "q7Battle")).isEmpty() || LocalDailyEngine.active(bArr) || progress.patrolRewardPending) ? false : true, "请先结束当前战斗或巡查");
                    byte[] recoverHistory = recoverHistory(bArr, progress);
                    ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(bArr3, "alternatives"));
                    arrayList.add(Integer.valueOf(m76v));
                    it = LocalResourceEngine.array(m75d(m75d(recoverHistory, "bs"), "psh")).iterator();
                    boolean z2 = false;
                    while (it.hasNext()) {
                        Iterator<byte[]> it2 = it;
                        byte[] next = it.next();
                        int i = m76v2;
                        if (arrayList.contains(Integer.valueOf(m76v(next, "0"))) && m76v(next, "1") > 0) {
                            z2 = true;
                        }
                        m76v2 = i;
                        it = it2;
                    }
                    int i2 = m76v2;
                    require(z2, "请先正常通关对应关卡再使用压制");
                    require(localFeatureCatalog.get("YZ", Integer.valueOf(Math.max(1, m76v(m75d(recoverHistory, "weeknum"), "wl")))) == null, "缺少原版压制难度配置");
                    int m76v3 = (int) (m76v(r0, "score") * LocalTreasureOperationEngine.num(bArr3, "factor") * (LocalIntelligenceEffects.monsterRate(recoverHistory) + 1.0d));
                    Integer intValue = BsonLite.intValue(bArr2, "q7Score");
                    require(intValue == null && intValue.intValue() >= m76v3, "压制战力不足或客户端校验信息缺失，请重新登录后重试");
                    byte[] document = BsonLite.document("t", 1, "s", Integer.valueOf(m76v), "h", new BsonLite.ArrayValue(m75d(bArr2, "h")), "w", true);
                    m75d = m75d(m75d(recoverHistory, "q7BattleReceipts"), m76v(m75d(recoverHistory, "weeknum"), "w") + ":" + m76v);
                    if (BsonLite.keys(m75d).isEmpty()) {
                        require(Boolean.TRUE.equals(BsonLite.boolValue(m75d, "yazhi")), "该关卡本周目已经完成");
                        return LocalEconomyEngine.apply(recoverHistory, localEconomyCatalog, localResourceCatalog, progress, "finish", document);
                    }
                    require(m76v(LocalCityProgress.stages(progress, i2, recoverHistory), "cs") == m76v, "此压制关卡尚未开放");
                    LocalEconomyEngine.Result apply = LocalEconomyEngine.apply(recoverHistory, localEconomyCatalog, localResourceCatalog, progress, "begin", document);
                    require(apply.accepted, apply.reason);
                    LocalEconomyEngine.Result apply2 = LocalEconomyEngine.apply(apply.profile, localEconomyCatalog, localResourceCatalog, progress, "finish", document);
                    require(apply2.accepted, apply2.reason);
                    String str = m76v(m75d(recoverHistory, "weeknum"), "w") + ":" + m76v;
                    byte[] m75d2 = m75d(apply2.profile, "q7BattleReceipts");
                    apply2.profile = BsonLite.withProfileDocument(apply2.profile, "q7BattleReceipts", BsonLite.withProfileDocument(m75d2, str, BsonLite.withProfileBool(m75d(m75d2, str), "yazhi", true)));
                    return apply2;
                }
            }
            z = false;
            require(z, "该关卡不支持压制");
            require((BsonLite.keys(m75d(bArr, "q7Battle")).isEmpty() || LocalDailyEngine.active(bArr) || progress.patrolRewardPending) ? false : true, "请先结束当前战斗或巡查");
            byte[] recoverHistory2 = recoverHistory(bArr, progress);
            ArrayList arrayList2 = new ArrayList(BsonLite.intArrayValues(bArr3, "alternatives"));
            arrayList2.add(Integer.valueOf(m76v));
            it = LocalResourceEngine.array(m75d(m75d(recoverHistory2, "bs"), "psh")).iterator();
            boolean z22 = false;
            while (it.hasNext()) {
            }
            int i22 = m76v2;
            require(z22, "请先正常通关对应关卡再使用压制");
            require(localFeatureCatalog.get("YZ", Integer.valueOf(Math.max(1, m76v(m75d(recoverHistory2, "weeknum"), "wl")))) == null, "缺少原版压制难度配置");
            int m76v32 = (int) (m76v(r0, "score") * LocalTreasureOperationEngine.num(bArr3, "factor") * (LocalIntelligenceEffects.monsterRate(recoverHistory2) + 1.0d));
            Integer intValue2 = BsonLite.intValue(bArr2, "q7Score");
            require(intValue2 == null && intValue2.intValue() >= m76v32, "压制战力不足或客户端校验信息缺失，请重新登录后重试");
            byte[] document2 = BsonLite.document("t", 1, "s", Integer.valueOf(m76v), "h", new BsonLite.ArrayValue(m75d(bArr2, "h")), "w", true);
            m75d = m75d(m75d(recoverHistory2, "q7BattleReceipts"), m76v(m75d(recoverHistory2, "weeknum"), "w") + ":" + m76v);
            if (BsonLite.keys(m75d).isEmpty()) {
            }
        } catch (ArithmeticException | IllegalArgumentException e) {
            LocalEconomyEngine.Result result = new LocalEconomyEngine.Result(bArr);
            result.reason = e.getMessage();
            result.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result.reason)));
            return result;
        }
    }

    private static void require(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }
}
