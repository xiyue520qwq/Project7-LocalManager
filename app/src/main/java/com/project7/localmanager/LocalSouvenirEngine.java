package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalSouvenirEngine {
    private static final String[] COUNTS = {"din", "win", "ton", "mon"};

    LocalSouvenirEngine() {
    }

    /* renamed from: d */
    private static byte[] m70d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m71v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    private static String day(byte[] bArr) {
        return m71v(m70d(bArr, "weeknum"), "w") + ":" + m71v(m70d(bArr, "weeknum"), "d");
    }

    static boolean handles(LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr) {
        return "actionRewardRequest".equals(str) || "updateSouvenirLevel".equals(str) || ("buyCardMallItem".equals(str) && localFeatureCatalog.get("SS", Integer.valueOf(m71v(bArr, "store_id"))) != null);
    }

    private static byte[] supply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalTutorialStore.Progress progress) {
        if (progress == null || progress.inEmergency) {
            return null;
        }
        if ((progress.initPrologue && !progress.completedEvents.contains(1047)) || !progress.completedEvents.contains(1004) || LocalEconomyEngine.actions(bArr, progress) != 0) {
            return null;
        }
        int m71v = m71v(m70d(bArr, "weeknum"), "w") + 1;
        int m71v2 = 7 - m71v(m70d(bArr, "weeknum"), "d");
        byte[] bArr2 = localFeatureCatalog.get("AR", m71v + ":" + m71v2 + ":24");
        if (bArr2 != null) {
            return bArr2;
        }
        return localFeatureCatalog.get("AR", "-1:" + m71v2 + ":24");
    }

    static byte[] refresh(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalTutorialStore.Progress progress) {
        byte[] supply = supply(bArr, localFeatureCatalog, progress);
        List<Integer> emptyList = (supply == null || day(bArr).equals(BsonLite.stringValue(m70d(bArr, "q7ActionSupply"), "day"))) ? Collections.emptyList() : BsonLite.intArrayValues(supply, "ids");
        byte[] m70d = m70d(bArr, "city");
        if ((progress != null && !emptyList.equals(BsonLite.intArrayValues(m70d, "acr"))) || BsonLite.documentValue(m70d, "acr") == null) {
            bArr = BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileIntArray(m70d, "acr", emptyList));
        }
        byte[] m70d2 = m70d(bArr, "ldd");
        if (m71v(m70d2, "ssl") <= 0) {
            return BsonLite.withProfileDocument(bArr, "ldd", BsonLite.withProfileInt(m70d2, "ssl", 1));
        }
        return bArr;
    }

    static void recoverShopUnlock(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] m70d;
        String stringValue;
        if (progress == null || progress.finishedNewbees.contains(191)) {
            return;
        }
        if (progress.finishedNewbees.contains(190)) {
            progress.processingNewbees.remove(191);
            progress.finishedNewbees.add(191);
            return;
        }
        if (progress.inEmergency || progress.initPrologue || !progress.completedEvents.contains(1047) || (stringValue = BsonLite.stringValue((m70d = m70d(bArr, "q7ActionSupply")), "day")) == null || !stringValue.matches("[0-9]+:[0-9]+")) {
            return;
        }
        for (byte[] bArr2 : LocalResourceEngine.array(m70d(m70d(m70d, "reward"), "item"))) {
            if (m71v(bArr2, "0") == 329 && m71v(bArr2, "1") > 0) {
                progress.processingNewbees.remove(191);
                progress.finishedNewbees.add(191);
                return;
            }
        }
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, LocalTutorialStore.Progress progress, String str, byte[] bArr2) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        try {
            result.profile = refresh(LocalCommerceEngine.refreshStoreLimits(BsonLite.withPatrolProgress(bArr, progress), System.currentTimeMillis()), localFeatureCatalog, progress);
            if ("actionRewardRequest".equals(str)) {
                if (day(result.profile).equals(BsonLite.stringValue(m70d(result.profile, "q7ActionSupply"), "day"))) {
                    result.add("get_city_data_reply", BsonLite.document("cd", m70d(result.profile, "city")));
                    result.add("clearActionReward", BsonLite.EMPTY_DOCUMENT);
                    return result;
                }
                byte[] supply = supply(result.profile, localFeatureCatalog, progress);
                if (supply == null || BsonLite.intArrayValues(m70d(result.profile, "city"), "acr").isEmpty()) {
                    throw new IllegalArgumentException("当天行动尚未耗尽，暂无可领取的补给");
                }
                LocalGiftEngine.reward(result, localResourceCatalog, supply, 1);
                result.profile = BsonLite.withProfileDocument(result.profile, "q7ActionSupply", BsonLite.document("day", day(result.profile), "reward", result.reward()));
                result.profile = refresh(result.profile, localFeatureCatalog, progress);
                LocalResourceEngine.syncCurrencies(result);
                result.add("get_city_data_reply", BsonLite.document("cd", m70d(result.profile, "city")));
                result.add("clearActionReward", BsonLite.EMPTY_DOCUMENT);
                result.add("actionRewardReply", BsonLite.document("reward", result.reward(), "dialogue", Integer.valueOf(m71v(supply, "dialogue"))));
            } else if ("updateSouvenirLevel".equals(str)) {
                int m71v = m71v(m70d(result.profile, "ldd"), "ssl");
                int i = m71v + 1;
                byte[] bArr3 = localFeatureCatalog.get("SL", Integer.valueOf(i));
                if (bArr3 != null) {
                    if (new HashSet(BsonLite.intArrayValues(result.profile, "cgs")).size() < m71v(bArr3, "cgs")) {
                        throw new IllegalArgumentException("解锁的CG数量尚未达到纪念商店升级条件");
                    }
                    result.profile = BsonLite.withProfileDocument(result.profile, "ldd", BsonLite.withProfileInt(m70d(result.profile, "ldd"), "ssl", i));
                    m71v = i;
                }
                result.add("syncSouvenirLevel", BsonLite.document("l", Integer.valueOf(m71v)));
            } else {
                buy(result, localResourceCatalog, localFeatureCatalog, bArr2);
            }
        } catch (ArithmeticException | IllegalArgumentException e) {
            result = new LocalResourceEngine.Result(bArr);
            result.add("showMessageStr", BsonLite.document("m", e.getMessage()));
            if ("buyCardMallItem".equals(str)) {
                result.add("replyBuyCardMallItem", BsonLite.document("r", false, "i", BsonLite.EMPTY_DOCUMENT));
            }
        }
        return result;
    }

    private static void buy(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, byte[] bArr) {
        String str;
        byte[] bArr2;
        HashSet hashSet;
        String str2;
        int m71v = m71v(bArr, "store_id");
        int m71v2 = m71v(bArr, "num");
        byte[] bArr3 = localFeatureCatalog.get("SS", Integer.valueOf(m71v));
        byte[] m70d = m70d(result.profile, "ldd");
        if (bArr3 == null || m71v2 <= 0 || m71v2 > Math.min(100, Math.max(1, m71v(bArr3, "max"))) || m71v(bArr, "coin_type") != 0 || m71v(result.profile, "level") < m71v(bArr3, "playerLevel") || m71v(m70d, "ssl") < m71v(bArr3, "level")) {
            throw new IllegalArgumentException("购买数量或纪念商店等级不符合条件");
        }
        byte[] bArr4 = localFeatureCatalog.get("SL", Integer.valueOf(m71v(bArr3, "level")));
        if (bArr4 == null || new HashSet(BsonLite.intArrayValues(result.profile, "cgs")).size() < m71v(bArr4, "cgs")) {
            throw new IllegalArgumentException("解锁的CG数量不足，未扣除纪念券");
        }
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr3, "limits");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = COUNTS;
            if (i2 < strArr.length) {
                Map<Integer, Integer> pairs = LocalAccountFeatures.pairs(m70d(m70d, strArr[i2]));
                int addExact = Math.addExact(pairs.getOrDefault(Integer.valueOf(m71v), 0).intValue(), m71v2);
                if (intArrayValues.get(i2).intValue() > 0 && addExact > intArrayValues.get(i2).intValue()) {
                    throw new IllegalArgumentException("商品已达到限购次数");
                }
                pairs.put(Integer.valueOf(m71v), Integer.valueOf(addExact));
                arrayList.add(pairs);
                i2++;
            } else {
                int multiplyExact = Math.multiplyExact(m71v(bArr3, "cost"), m71v2);
                int m71v3 = m71v(result.profile, "souvenir");
                if (multiplyExact >= 0 && multiplyExact <= m71v3) {
                    result.profile = BsonLite.withProfileInt(result.profile, "souvenir", m71v3 - multiplyExact);
                    HashSet hashSet2 = new HashSet();
                    Iterator<byte[]> it = LocalResourceEngine.array(m70d(m70d(result.profile, "inv"), "items")).iterator();
                    while (true) {
                        str = "u";
                        if (!it.hasNext()) {
                            break;
                        } else {
                            hashSet2.add(BsonLite.uuidValue(it.next(), "u"));
                        }
                    }
                    LocalGiftEngine.reward(result, localResourceCatalog, bArr3, m71v2);
                    List<byte[]> array = LocalResourceEngine.array(m70d(m70d(result.profile, "inv"), "items"));
                    ArrayList arrayList2 = new ArrayList();
                    while (true) {
                        bArr2 = m70d;
                        if (i >= array.size()) {
                            break;
                        }
                        if (hashSet2.contains(BsonLite.uuidValue(array.get(i), str))) {
                            hashSet = hashSet2;
                        } else {
                            hashSet = hashSet2;
                            if (BsonLite.documentValue(array.get(i), "tr") != null) {
                                str2 = str;
                                byte[] withProfileInt = BsonLite.withProfileInt(array.get(i), "tt", m71v(bArr3, "trade"));
                                array.set(i, withProfileInt);
                                arrayList2.add(withProfileInt);
                                i++;
                                m70d = bArr2;
                                hashSet2 = hashSet;
                                str = str2;
                            }
                        }
                        str2 = str;
                        i++;
                        m70d = bArr2;
                        hashSet2 = hashSet;
                        str = str2;
                    }
                    if (!arrayList2.isEmpty()) {
                        result.profile = BsonLite.withProfileDocument(result.profile, "inv", BsonLite.withProfileArray(m70d(result.profile, "inv"), "items", array));
                        result.add("updateItems", BsonLite.document("i", arrayList2));
                    }
                    byte[] bArr5 = bArr2;
                    int i3 = 0;
                    while (true) {
                        String[] strArr2 = COUNTS;
                        if (i3 >= strArr2.length) {
                            result.profile = BsonLite.withProfileDocument(result.profile, "ldd", bArr5);
                            LocalResourceEngine.syncCurrencies(result);
                            result.add("replyBuyCardMallItem", BsonLite.document("r", true, "i", BsonLite.EMPTY_DOCUMENT));
                            result.add("buyCardMallItemDone", BsonLite.document("d", LocalAccountFeatures.pairList((Map) arrayList.get(0)), "w", LocalAccountFeatures.pairList((Map) arrayList.get(1)), "t", LocalAccountFeatures.pairList((Map) arrayList.get(2)), "m", LocalAccountFeatures.pairList((Map) arrayList.get(3)), "z", new BsonLite.ArrayValue(m70d(bArr5, "zin")), "itemid", Integer.valueOf(m71v(bArr3, "item")), "num", Integer.valueOf(m71v2), "result", result.reward(), "sd", Integer.valueOf(m71v), "silence", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(m70d(bArr, "ext"), "silence")))));
                            return;
                        }
                        bArr5 = BsonLite.withProfileArray(bArr5, strArr2[i3], LocalAccountFeatures.pairList((Map) arrayList.get(i3)));
                        i3++;
                    }
                } else {
                    throw new IllegalArgumentException("纪念券不足");
                }
            }
        }
    }
}
