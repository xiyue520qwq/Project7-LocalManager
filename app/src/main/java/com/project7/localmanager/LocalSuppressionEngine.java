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
    private static byte[] m73d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m74v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static byte[] recordPass(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (byte[] bArr2 : LocalResourceEngine.array(m73d(m73d(bArr, "bs"), "psh"))) {
            if (m74v(bArr2, "0") == i) {
                arrayList.add(Arrays.asList(Integer.valueOf(i), Integer.valueOf(Math.max(1, m74v(bArr2, "1")))));
                z = true;
            } else {
                arrayList.add(new BsonLite.ArrayValue(bArr2));
            }
        }
        if (!z) {
            arrayList.add(Arrays.asList(Integer.valueOf(i), 1));
        }
        return BsonLite.withProfileDocument(bArr, "bs", BsonLite.withProfileArray(m73d(bArr, "bs"), "psh", arrayList));
    }

    static byte[] recoverHistory(byte[] bArr, LocalTutorialStore.Progress progress) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (byte[] bArr2 : LocalResourceEngine.array(m73d(bArr, "q7BattleReceipts"))) {
            if (LocalCityProgress.area(m74v(bArr2, "s")) != 0) {
                linkedHashSet.add(Integer.valueOf(m74v(bArr2, "s")));
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
            for (byte[] bArr3 : LocalResourceEngine.array(m73d(m73d(bArr, "bs"), "psh"))) {
                if (m74v(bArr3, "0") == intValue2 && m74v(bArr3, "1") > 0) {
                    z = true;
                }
            }
            if (!z) {
                bArr = recordPass(bArr, intValue2);
            }
        }
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c7 A[Catch: ArithmeticException -> 0x023e, ArithmeticException | IllegalArgumentException -> 0x0240, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x0240, blocks: (B:3:0x0011, B:6:0x002b, B:8:0x002f, B:10:0x0033, B:13:0x0040, B:15:0x0047, B:17:0x004d, B:19:0x005b, B:22:0x006e, B:24:0x0083, B:26:0x0089, B:29:0x0090, B:30:0x00c1, B:32:0x00c7, B:34:0x00e3, B:42:0x00f1, B:45:0x0116, B:46:0x013d, B:49:0x01a8, B:52:0x01c6, B:55:0x01d7), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01a8 A[Catch: ArithmeticException -> 0x023e, ArithmeticException | IllegalArgumentException -> 0x0240, TRY_ENTER, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x0240, blocks: (B:3:0x0011, B:6:0x002b, B:8:0x002f, B:10:0x0033, B:13:0x0040, B:15:0x0047, B:17:0x004d, B:19:0x005b, B:22:0x006e, B:24:0x0083, B:26:0x0089, B:29:0x0090, B:30:0x00c1, B:32:0x00c7, B:34:0x00e3, B:42:0x00f1, B:45:0x0116, B:46:0x013d, B:49:0x01a8, B:52:0x01c6, B:55:0x01d7), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01c6 A[Catch: ArithmeticException -> 0x023e, ArithmeticException | IllegalArgumentException -> 0x0240, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x0240, blocks: (B:3:0x0011, B:6:0x002b, B:8:0x002f, B:10:0x0033, B:13:0x0040, B:15:0x0047, B:17:0x004d, B:19:0x005b, B:22:0x006e, B:24:0x0083, B:26:0x0089, B:29:0x0090, B:30:0x00c1, B:32:0x00c7, B:34:0x00e3, B:42:0x00f1, B:45:0x0116, B:46:0x013d, B:49:0x01a8, B:52:0x01c6, B:55:0x01d7), top: B:2:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0115  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalEconomyEngine.Result apply(byte[] bArr, LocalEconomyCatalog localEconomyCatalog, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, LocalTutorialStore.Progress progress, byte[] bArr2) {
        boolean z;
        Iterator<byte[]> it;
        byte[] m73d;
        try {
            int m74v = m74v(bArr2, "s");
            int m74v2 = m74v(bArr2, "a");
            byte[] bArr3 = localFeatureCatalog.get("YM", Integer.valueOf(m74v));
            require((progress == null || progress.initPrologue || progress.inEmergency || m74v(m73d(bArr, "weeknum"), "w") < 1) ? false : true, "当前尚未开放压制");
            if (m74v2 != 0 && LocalCityProgress.area(m74v) == m74v2) {
                if (localEconomyCatalog.missions.containsKey(Integer.valueOf(m74v)) && Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "available"))) {
                    z = true;
                    require(z, "该关卡不支持压制");
                    require((BsonLite.keys(m73d(bArr, "q7Battle")).isEmpty() || LocalDailyEngine.active(bArr) || progress.patrolRewardPending) ? false : true, "请先结束当前战斗或巡查");
                    byte[] recoverHistory = recoverHistory(bArr, progress);
                    ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(bArr3, "alternatives"));
                    arrayList.add(Integer.valueOf(m74v));
                    it = LocalResourceEngine.array(m73d(m73d(recoverHistory, "bs"), "psh")).iterator();
                    boolean z2 = false;
                    while (it.hasNext()) {
                        Iterator<byte[]> it2 = it;
                        byte[] next = it.next();
                        int i = m74v2;
                        if (arrayList.contains(Integer.valueOf(m74v(next, "0"))) && m74v(next, "1") > 0) {
                            z2 = true;
                        }
                        m74v2 = i;
                        it = it2;
                    }
                    int i2 = m74v2;
                    require(z2, "请先正常通关对应关卡再使用压制");
                    require(localFeatureCatalog.get("YZ", Integer.valueOf(Math.max(1, m74v(m73d(recoverHistory, "weeknum"), "wl")))) == null, "缺少原版压制难度配置");
                    BsonLite.intValue(bArr2, "q7Score");
                    require(true, "压制战力不足或客户端校验信息缺失，请重新登录后重试");
                    byte[] document = BsonLite.document("t", 1, "s", Integer.valueOf(m74v), "h", new BsonLite.ArrayValue(m73d(bArr2, "h")), "w", true);
                    m73d = m73d(m73d(recoverHistory, "q7BattleReceipts"), m74v(m73d(recoverHistory, "weeknum"), "w") + ":" + m74v);
                    if (BsonLite.keys(m73d).isEmpty()) {
                        require(Boolean.TRUE.equals(BsonLite.boolValue(m73d, "yazhi")), "该关卡本周目已经完成");
                        return LocalEconomyEngine.apply(recoverHistory, localEconomyCatalog, localResourceCatalog, progress, "finish", document);
                    }
                    require(m74v(LocalCityProgress.stages(progress, i2, recoverHistory), "cs") == m74v, "此压制关卡尚未开放");
                    LocalEconomyEngine.Result apply = LocalEconomyEngine.apply(recoverHistory, localEconomyCatalog, localResourceCatalog, progress, "begin", document);
                    require(apply.accepted, apply.reason);
                    LocalEconomyEngine.Result apply2 = LocalEconomyEngine.apply(apply.profile, localEconomyCatalog, localResourceCatalog, progress, "finish", document);
                    require(apply2.accepted, apply2.reason);
                    String str = m74v(m73d(recoverHistory, "weeknum"), "w") + ":" + m74v;
                    byte[] m73d2 = m73d(apply2.profile, "q7BattleReceipts");
                    apply2.profile = BsonLite.withProfileDocument(apply2.profile, "q7BattleReceipts", BsonLite.withProfileDocument(m73d2, str, BsonLite.withProfileBool(m73d(m73d2, str), "yazhi", true)));
                    return apply2;
                }
            }
            z = false;
            require(z, "该关卡不支持压制");
            require((BsonLite.keys(m73d(bArr, "q7Battle")).isEmpty() || LocalDailyEngine.active(bArr) || progress.patrolRewardPending) ? false : true, "请先结束当前战斗或巡查");
            byte[] recoverHistory2 = recoverHistory(bArr, progress);
            ArrayList arrayList2 = new ArrayList(BsonLite.intArrayValues(bArr3, "alternatives"));
            arrayList2.add(Integer.valueOf(m74v));
            it = LocalResourceEngine.array(m73d(m73d(recoverHistory2, "bs"), "psh")).iterator();
            boolean z22 = false;
            while (it.hasNext()) {
            }
            int i22 = m74v2;
            require(z22, "请先正常通关对应关卡再使用压制");
            require(localFeatureCatalog.get("YZ", Integer.valueOf(Math.max(1, m74v(m73d(recoverHistory2, "weeknum"), "wl")))) == null, "缺少原版压制难度配置");
            BsonLite.intValue(bArr2, "q7Score");
            require(true, "压制战力不足或客户端校验信息缺失，请重新登录后重试");
            byte[] document2 = BsonLite.document("t", 1, "s", Integer.valueOf(m74v), "h", new BsonLite.ArrayValue(m73d(bArr2, "h")), "w", true);
            m73d = m73d(m73d(recoverHistory2, "q7BattleReceipts"), m74v(m73d(recoverHistory2, "weeknum"), "w") + ":" + m74v);
            if (BsonLite.keys(m73d).isEmpty()) {
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
