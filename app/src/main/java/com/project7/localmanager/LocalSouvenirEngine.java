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
    private static byte[] m68d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m69v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    private static String day(byte[] bArr) {
        return m69v(m68d(bArr, "weeknum"), "w") + ":" + m69v(m68d(bArr, "weeknum"), "d");
    }

    static boolean handles(LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr) {
        return "actionRewardRequest".equals(str) || "updateSouvenirLevel".equals(str) || ("buyCardMallItem".equals(str) && localFeatureCatalog.get("SS", Integer.valueOf(m69v(bArr, "store_id"))) != null);
    }

    private static byte[] supply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalTutorialStore.Progress progress) {
        if (progress == null || progress.inEmergency) {
            return null;
        }
        if ((progress.initPrologue && !progress.completedEvents.contains(1047)) || !progress.completedEvents.contains(1004) || LocalEconomyEngine.actions(bArr, progress) != 0) {
            return null;
        }
        int m69v = m69v(m68d(bArr, "weeknum"), "w") + 1;
        int m69v2 = 7 - m69v(m68d(bArr, "weeknum"), "d");
        byte[] bArr2 = localFeatureCatalog.get("AR", m69v + ":" + m69v2 + ":24");
        if (bArr2 != null) {
            return bArr2;
        }
        return localFeatureCatalog.get("AR", "-1:" + m69v2 + ":24");
    }

    static byte[] refresh(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalTutorialStore.Progress progress) {
        byte[] supply = supply(bArr, localFeatureCatalog, progress);
        List<Integer> emptyList = (supply == null || day(bArr).equals(BsonLite.stringValue(m68d(bArr, "q7ActionSupply"), "day"))) ? Collections.emptyList() : BsonLite.intArrayValues(supply, "ids");
        byte[] m68d = m68d(bArr, "city");
        if ((progress != null && !emptyList.equals(BsonLite.intArrayValues(m68d, "acr"))) || BsonLite.documentValue(m68d, "acr") == null) {
            bArr = BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileIntArray(m68d, "acr", emptyList));
        }
        byte[] m68d2 = m68d(bArr, "ldd");
        if (m69v(m68d2, "ssl") <= 0) {
            return BsonLite.withProfileDocument(bArr, "ldd", BsonLite.withProfileInt(m68d2, "ssl", 1));
        }
        return bArr;
    }

    static void recoverShopUnlock(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] m68d;
        String stringValue;
        if (progress == null || progress.finishedNewbees.contains(191)) {
            return;
        }
        if (progress.finishedNewbees.contains(190)) {
            progress.processingNewbees.remove(191);
            progress.finishedNewbees.add(191);
            return;
        }
        if (progress.inEmergency || progress.initPrologue || !progress.completedEvents.contains(1047) || (stringValue = BsonLite.stringValue((m68d = m68d(bArr, "q7ActionSupply")), "day")) == null || !stringValue.matches("[0-9]+:[0-9]+")) {
            return;
        }
        for (byte[] bArr2 : LocalResourceEngine.array(m68d(m68d(m68d, "reward"), "item"))) {
            if (m69v(bArr2, "0") == 329 && m69v(bArr2, "1") > 0) {
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
                if (day(result.profile).equals(BsonLite.stringValue(m68d(result.profile, "q7ActionSupply"), "day"))) {
                    result.add("get_city_data_reply", BsonLite.document("cd", m68d(result.profile, "city")));
                    result.add("clearActionReward", BsonLite.EMPTY_DOCUMENT);
                    return result;
                }
                byte[] supply = supply(result.profile, localFeatureCatalog, progress);
                if (supply == null || BsonLite.intArrayValues(m68d(result.profile, "city"), "acr").isEmpty()) {
                    throw new IllegalArgumentException("当天行动尚未耗尽，暂无可领取的补给");
                }
                LocalGiftEngine.reward(result, localResourceCatalog, supply, 1);
                result.profile = BsonLite.withProfileDocument(result.profile, "q7ActionSupply", BsonLite.document("day", day(result.profile), "reward", result.reward()));
                result.profile = refresh(result.profile, localFeatureCatalog, progress);
                LocalResourceEngine.syncCurrencies(result);
                result.add("get_city_data_reply", BsonLite.document("cd", m68d(result.profile, "city")));
                result.add("clearActionReward", BsonLite.EMPTY_DOCUMENT);
                result.add("actionRewardReply", BsonLite.document("reward", result.reward(), "dialogue", Integer.valueOf(m69v(supply, "dialogue"))));
            } else if ("updateSouvenirLevel".equals(str)) {
                int m69v = m69v(m68d(result.profile, "ldd"), "ssl");
                int i = m69v + 1;
                byte[] bArr3 = localFeatureCatalog.get("SL", Integer.valueOf(i));
                if (bArr3 != null) {
                    if (new HashSet(BsonLite.intArrayValues(result.profile, "cgs")).size() < m69v(bArr3, "cgs")) {
                        throw new IllegalArgumentException("解锁的CG数量尚未达到纪念商店升级条件");
                    }
                    result.profile = BsonLite.withProfileDocument(result.profile, "ldd", BsonLite.withProfileInt(m68d(result.profile, "ldd"), "ssl", i));
                    m69v = i;
                }
                result.add("syncSouvenirLevel", BsonLite.document("l", Integer.valueOf(m69v)));
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
        int m69v = m69v(bArr, "store_id");
        int m69v2 = m69v(bArr, "num");
        byte[] bArr3 = localFeatureCatalog.get("SS", Integer.valueOf(m69v));
        byte[] m68d = m68d(result.profile, "ldd");
        if (bArr3 == null || m69v2 <= 0 || m69v2 > Math.min(100, Math.max(1, m69v(bArr3, "max"))) || m69v(bArr, "coin_type") != 0 || m69v(result.profile, "level") < m69v(bArr3, "playerLevel") || m69v(m68d, "ssl") < m69v(bArr3, "level")) {
            throw new IllegalArgumentException("购买数量或纪念商店等级不符合条件");
        }
        byte[] bArr4 = localFeatureCatalog.get("SL", Integer.valueOf(m69v(bArr3, "level")));
        if (bArr4 == null || new HashSet(BsonLite.intArrayValues(result.profile, "cgs")).size() < m69v(bArr4, "cgs")) {
            throw new IllegalArgumentException("解锁的CG数量不足，未扣除纪念券");
        }
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr3, "limits");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = COUNTS;
            if (i2 < strArr.length) {
                Map<Integer, Integer> pairs = LocalAccountFeatures.pairs(m68d(m68d, strArr[i2]));
                int addExact = Math.addExact(pairs.getOrDefault(Integer.valueOf(m69v), 0).intValue(), m69v2);
                if (intArrayValues.get(i2).intValue() > 0 && addExact > intArrayValues.get(i2).intValue()) {
                    throw new IllegalArgumentException("商品已达到限购次数");
                }
                pairs.put(Integer.valueOf(m69v), Integer.valueOf(addExact));
                arrayList.add(pairs);
                i2++;
            } else {
                int multiplyExact = Math.multiplyExact(m69v(bArr3, "cost"), m69v2);
                int m69v3 = m69v(result.profile, "souvenir");
                if (multiplyExact >= 0 && multiplyExact <= m69v3) {
                    result.profile = BsonLite.withProfileInt(result.profile, "souvenir", m69v3 - multiplyExact);
                    HashSet hashSet2 = new HashSet();
                    Iterator<byte[]> it = LocalResourceEngine.array(m68d(m68d(result.profile, "inv"), "items")).iterator();
                    while (true) {
                        str = "u";
                        if (!it.hasNext()) {
                            break;
                        } else {
                            hashSet2.add(BsonLite.uuidValue(it.next(), "u"));
                        }
                    }
                    LocalGiftEngine.reward(result, localResourceCatalog, bArr3, m69v2);
                    List<byte[]> array = LocalResourceEngine.array(m68d(m68d(result.profile, "inv"), "items"));
                    ArrayList arrayList2 = new ArrayList();
                    while (true) {
                        bArr2 = m68d;
                        if (i >= array.size()) {
                            break;
                        }
                        if (hashSet2.contains(BsonLite.uuidValue(array.get(i), str))) {
                            hashSet = hashSet2;
                        } else {
                            hashSet = hashSet2;
                            if (BsonLite.documentValue(array.get(i), "tr") != null) {
                                str2 = str;
                                byte[] withProfileInt = BsonLite.withProfileInt(array.get(i), "tt", m69v(bArr3, "trade"));
                                array.set(i, withProfileInt);
                                arrayList2.add(withProfileInt);
                                i++;
                                m68d = bArr2;
                                hashSet2 = hashSet;
                                str = str2;
                            }
                        }
                        str2 = str;
                        i++;
                        m68d = bArr2;
                        hashSet2 = hashSet;
                        str = str2;
                    }
                    if (!arrayList2.isEmpty()) {
                        result.profile = BsonLite.withProfileDocument(result.profile, "inv", BsonLite.withProfileArray(m68d(result.profile, "inv"), "items", array));
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
                            result.add("buyCardMallItemDone", BsonLite.document("d", LocalAccountFeatures.pairList((Map) arrayList.get(0)), "w", LocalAccountFeatures.pairList((Map) arrayList.get(1)), "t", LocalAccountFeatures.pairList((Map) arrayList.get(2)), "m", LocalAccountFeatures.pairList((Map) arrayList.get(3)), "z", new BsonLite.ArrayValue(m68d(bArr5, "zin")), "itemid", Integer.valueOf(m69v(bArr3, "item")), "num", Integer.valueOf(m69v2), "result", result.reward(), "sd", Integer.valueOf(m69v), "silence", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(m68d(bArr, "ext"), "silence")))));
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
