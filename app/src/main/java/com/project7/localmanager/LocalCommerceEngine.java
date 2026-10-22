package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalCommerceCatalog;
import com.project7.localmanager.LocalResourceEngine;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;

/* loaded from: classes.dex */
final class LocalCommerceEngine {
    private static final String[] COUNT_KEYS = {"din", "win", "ton", "mon"};
    private static final Map<String, String> CURRENCY_CALLBACKS;

    LocalCommerceEngine() {
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        CURRENCY_CALLBACKS = linkedHashMap;
        linkedHashMap.put("money", "updateMoney");
        linkedHashMap.put("summonCoin", "updateSummonCoin");
        linkedHashMap.put("skinCoin", "updateSkinCoin");
        linkedHashMap.put("tCoin", "updateTCoin");
        linkedHashMap.put("bCoin", "updateBCoin");
        linkedHashMap.put("wCoin", "updateWCoin");
        linkedHashMap.put("souvenir", "updateSouvenirCoin");
        linkedHashMap.put("lxtlCoin", "updateLxtlCoin");
        linkedHashMap.put("sCoin", "updateSCoin");
        linkedHashMap.put("newFriendCoin", "updateNewFriendCoin");
    }

    static boolean handles(String str) {
        return "buyMoney".equals(str) || "buyCardMallItem".equals(str) || "setSkinRequest".equals(str) || "queryItemDetail".equals(str) || "yuanbaoExchangeCrystal".equals(str) || "crystalExchangeSkinCoin".equals(str) || "buySkinRequest".equals(str);
    }

    static Result apply(byte[] bArr, LocalCommerceCatalog localCommerceCatalog, String str, byte[] bArr2) {
        return apply(bArr, localCommerceCatalog, str, bArr2, false);
    }

    static Result apply(byte[] bArr, LocalCommerceCatalog localCommerceCatalog, String str, byte[] bArr2, boolean z) {
        return apply(bArr, localCommerceCatalog, str, bArr2, z, System.currentTimeMillis() / 1000, Collections.emptyMap());
    }

    static Result apply(byte[] bArr, LocalCommerceCatalog localCommerceCatalog, String str, byte[] bArr2, boolean z, long j, Map<String, long[]> map) {
        Result result = new Result(bArr);
        try {
            if (LocalSpecialItemEngine.handles(str, bArr2) && !z) {
                throw new Rejected("特殊道具需要通过周目事务购买，未扣款。");
            }
            if ("buyMoney".equals(str)) {
                charge(result, localCommerceCatalog, bArr2);
            } else if ("buyCardMallItem".equals(str)) {
                buy(result, localCommerceCatalog, bArr2);
            } else if ("setSkinRequest".equals(str)) {
                equip(result, localCommerceCatalog, bArr2);
            } else if ("queryItemDetail".equals(str)) {
                itemDetail(result, bArr2);
            } else if ("buySkinRequest".equals(str)) {
                buySkin(result, localCommerceCatalog, bArr2, j, map);
            } else if ("yuanbaoExchangeCrystal".equals(str)) {
                exchange(result, bArr2, "yuanbao", "crystal", 10, 1);
            } else {
                if (!"crystalExchangeSkinCoin".equals(str)) {
                    throw new IllegalArgumentException("unsupported commerce method");
                }
                exchange(result, bArr2, "crystal", "skinCoin", 1, 50);
            }
        } catch (Rejected | ArithmeticException e) {
            result.profile = bArr;
            result.replies.clear();
            result.add("showMessageStr", BsonLite.stringDocument("m", e instanceof Rejected ? e.getMessage() : "数值超出范围，操作未执行。"));
            if ("buyCardMallItem".equals(str)) {
                result.add("replyBuyCardMallItem", BsonLite.document("r", false, "i", BsonLite.EMPTY_DOCUMENT));
            }
            if ("setSkinRequest".equals(str)) {
                result.add("setSkinReply", skinReply(false, uuid(bArr2, "sid")));
            }
            if ("buySkinRequest".equals(str)) {
                result.add("buySkinReply", BsonLite.document("s", false, "id", Integer.valueOf(value(bArr2, "id"))));
            }
            String uuidValue = BsonLite.uuidValue(bArr2, "u");
            if ("queryItemDetail".equals(str) && uuidValue != null) {
                result.add("queryItemDetailReply", BsonLite.document("u", new BsonLite.UuidValue(uuidValue), "d", BsonLite.EMPTY_DOCUMENT));
            }
        }
        return result;
    }

    private static void buySkin(Result result, LocalCommerceCatalog localCommerceCatalog, byte[] bArr, long j, Map<String, long[]> map) {
        String str;
        String str2;
        int required = required(bArr, "id");
        LocalCommerceCatalog.SkinProduct skinProduct = localCommerceCatalog.skinProducts.get(Integer.valueOf(required));
        int[] iArr = localCommerceCatalog.skins.get(Integer.valueOf(required));
        if (iArr == null || skinProduct == null || !skinProduct.purchasable()) {
            throw new Rejected("这件时装不是可直接购买的商品。");
        }
        if (value(bArr, "uri") != 0) {
            throw new Rejected("此替代券的兑换规则尚未实现，未扣款。");
        }
        long[] jArr = map.get(skinProduct.activityKey());
        long j2 = jArr == null ? skinProduct.start : jArr[0];
        long j3 = jArr == null ? skinProduct.end : jArr[1];
        if (skinProduct.start > 0 && (j < j2 || j >= j3)) {
            throw new Rejected("该时装活动尚未开放或已经结束。");
        }
        int i = iArr[0];
        byte[] doc = doc(result.profile, "heromgr");
        byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, i);
        Iterator<String> it = BsonLite.keys(doc(profileHeroDocument, "sk")).iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (value(BsonLite.documentValue(doc(profileHeroDocument, "sk"), it.next()), "i") == required) {
                z = true;
            }
        }
        byte[] doc2 = doc(doc, "ps");
        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(doc2, Integer.toString(i)));
        boolean z2 = z || arrayList.contains(Integer.valueOf(required));
        if (skinProduct.type == 4 && !z2 && !BsonLite.intArrayValues(doc, "es").contains(Integer.valueOf(required))) {
            throw new Rejected("需要先解锁该觉醒时装，才能购买。");
        }
        if (skinProduct.type == 6 && !z2) {
            String str3 = null;
            for (String str4 : skinProduct.costs.keySet()) {
                if (str4.startsWith("item:")) {
                    str3 = str4;
                }
            }
            str = str3;
        } else {
            String[] strArr = {"crystal", "skinCoin", "yuanbao"};
            int i2 = 0;
            String str5 = null;
            for (int i3 = 3; i2 < i3; i3 = 3) {
                String str6 = strArr[i2];
                if (str5 == null && skinProduct.costs.containsKey(str6)) {
                    str5 = str6;
                }
                i2++;
            }
            if (str5 == null) {
                for (String str7 : skinProduct.costs.keySet()) {
                    if (str7.startsWith("item:")) {
                        str5 = str7;
                    }
                }
            }
            str = str5;
        }
        if (str == null) {
            throw new Rejected("时装支付方式不完整，未扣款。");
        }
        if (BsonLite.keys(doc(profileHeroDocument, "sk")).size() + arrayList.size() >= 500) {
            throw new Rejected("衣橱数量已达到本地安全上限。");
        }
        for (Map.Entry<String, Integer> entry : skinProduct.costs.entrySet()) {
            if (str.equals(entry.getKey())) {
                if (entry.getValue().intValue() <= 0) {
                    throw new Rejected("无效的时装价格。");
                }
                if (entry.getKey().startsWith("item:")) {
                    LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
                    try {
                        str2 = str;
                        LocalGiftEngine.consume(result2, Integer.parseInt(entry.getKey().substring(5)), entry.getValue().intValue());
                        result.profile = result2.profile;
                        for (LocalResourceEngine.Reply reply : result2.replies) {
                            result.add(reply.method, reply.parameters);
                        }
                    } catch (IllegalArgumentException e) {
                        throw new Rejected("购买时装所需道具不足。");
                    }
                } else {
                    str2 = str;
                    result.profile = spend(result.profile, entry.getKey(), entry.getValue().intValue());
                }
                str = str2;
            }
        }
        if (LocalResourceEngine.ownsHero(result.profile, i)) {
            String substring = UUID.randomUUID().toString().replace("-", "").substring(0, 24);
            byte[] purchasedSkin = purchasedSkin(required, substring, j);
            result.profile = BsonLite.withHeroDocument(result.profile, i, BsonLite.withProfileDocument(profileHeroDocument, "sk", BsonLite.withProfileDocument(doc(profileHeroDocument, "sk"), substring, purchasedSkin)));
            result.add("syncOneSkinData", BsonLite.document("h", Integer.valueOf(i), "s", new BsonLite.UuidValue(substring), "d", purchasedSkin));
        } else {
            arrayList.add(Integer.valueOf(required));
            byte[] withProfileDocument = BsonLite.withProfileDocument(doc(result.profile, "heromgr"), "ps", BsonLite.withProfileArray(doc2, Integer.toString(i), arrayList));
            result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", withProfileDocument);
            result.add("syncHeroMgrPendingData", BsonLite.document("d", withProfileDocument));
        }
        byte[] doc3 = doc(result.profile, "heromgr");
        ArrayList arrayList2 = new ArrayList(BsonLite.intArrayValues(doc3, "es"));
        if (!arrayList2.contains(Integer.valueOf(required))) {
            arrayList2.add(Integer.valueOf(required));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", BsonLite.withProfileArray(doc3, "es", arrayList2));
        currencies(result);
        result.add("buySkinReply", BsonLite.document("s", true, "id", Integer.valueOf(required)));
    }

    static byte[] purchasedSkin(int i, String str, long j) {
        return BsonLite.document("i", Integer.valueOf(i), "u", new BsonLite.UuidValue(str), "fb", false, "cr", Integer.valueOf((int) j), "cd", BsonLite.EMPTY_DOCUMENT, "pd", BsonLite.EMPTY_DOCUMENT, "cwd", BsonLite.EMPTY_DOCUMENT, "pwd", BsonLite.EMPTY_DOCUMENT, "ias", false, "tr", Collections.emptyList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    static byte[] refreshStoreLimits(byte[] bArr, long j) {
        TimeZone timeZone = TimeZone.getDefault();
        Calendar calendar = Calendar.getInstance(timeZone, Locale.ROOT);
        calendar.setTimeInMillis(j);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT);
        simpleDateFormat.setTimeZone(timeZone);
        String format = simpleDateFormat.format(calendar.getTime());
        String substring = format.substring(0, 7);
        calendar.add(5, -((calendar.get(7) + 5) % 7));
        String format2 = simpleDateFormat.format(calendar.getTime());
        byte[] doc = doc(bArr, "ldd");
        String[][] strArr = {new String[]{"q7ShopDay", format, "din"}, new String[]{"q7ShopWeek", format2, "win"}, new String[]{"q7ShopMonth", substring, "mon"}};
        for (int i = 0; i < 3; i++) {
            Object[] objArr = strArr[i];
            String stringValue = BsonLite.stringValue(doc, objArr[0]);
            if (stringValue != null && !stringValue.equals(objArr[1])) {
                doc = BsonLite.withProfileArray(doc, objArr[2], Collections.emptyList());
                if ("q7ShopWeek".equals(objArr[0])) {
                    doc = BsonLite.withProfileArray(doc, "swl", Collections.emptyList());
                }
            }
            if (!objArr[1].equals(stringValue)) {
                doc = BsonLite.withProfileString(doc, objArr[0], objArr[1]);
            }
        }
        return BsonLite.withProfileDocument(bArr, "ldd", normalizeStoryCounts(doc, value(doc(bArr, "weeknum"), "w")));
    }

    private static void charge(Result result, LocalCommerceCatalog localCommerceCatalog, byte[] bArr) {
        String stringValue = BsonLite.stringValue(bArr, "g");
        int[] iArr = localCommerceCatalog.charges.get(stringValue);
        if (iArr == null) {
            throw new Rejected("此充值礼包尚未实现；普通钻石档位支持本地直接领取，不会产生真实支付。");
        }
        String replace = stringValue.replace('.', '_');
        byte[] doc = doc(result.profile, "eby");
        int addExact = Math.addExact(iArr[0], (value(doc, replace) != 0 || Boolean.TRUE.equals(BsonLite.boolValue(doc, replace))) ? 0 : iArr[1]);
        result.profile = BsonLite.withProfileInt(result.profile, "yuanbao", Math.addExact(value(result.profile, "yuanbao"), addExact));
        result.profile = BsonLite.withProfileDocument(result.profile, "eby", BsonLite.withProfileInt(doc, replace, Math.addExact(value(doc, replace), 1)));
        currencies(result);
        result.add("onOrderYuanbao", BsonLite.document("r", BsonLite.document("item", Collections.singletonList(Arrays.asList(80, Integer.valueOf(addExact)))), "g", stringValue, "i", BsonLite.EMPTY_DOCUMENT));
    }

    private static void exchange(Result result, byte[] bArr, String str, String str2, int i, int i2) {
        int required = required(bArr, "yuanbao".equals(str) ? "yn" : "cn");
        if (required <= 0 || required % i2 != 0) {
            throw new Rejected("兑换数量不符合原版比例。");
        }
        int multiplyExact = Math.multiplyExact(required / i2, i);
        result.profile = spend(result.profile, str, required);
        result.profile = BsonLite.withProfileInt(result.profile, str2, Math.addExact(value(result.profile, str2), multiplyExact));
        currencies(result);
        if ("yuanbao".equals(str)) {
            result.add("yuanbaoExchangeCrystalReply", BsonLite.document("yn", Integer.valueOf(required), "cn", Integer.valueOf(multiplyExact)));
        }
    }

    private static void buy(Result result, LocalCommerceCatalog localCommerceCatalog, byte[] bArr) {
        int required = required(bArr, "store_id");
        int required2 = required(bArr, "num");
        LocalCommerceCatalog.Product product = localCommerceCatalog.products.get(Integer.valueOf(required));
        if (product == null) {
            throw new Rejected("此商品的特殊规则尚未实现，未扣除任何代币。");
        }
        if (required2 <= 0 || ((product.max > 0 && required2 > product.max) || value(result.profile, "level") < product.level || value(bArr, "coin_type") != 0)) {
            throw new Rejected("购买数量、等级或支付方式不符合条件。");
        }
        int value = value(doc(result.profile, "weeknum"), "w");
        byte[] normalizeStoryCounts = normalizeStoryCounts(doc(result.profile, "ldd"), value);
        Map<Integer, Map<Integer, Integer>> storyCounts = storyCounts(normalizeStoryCounts);
        if (product.storyLimit > 0) {
            Map<Integer, Integer> computeIfAbsent = storyCounts.computeIfAbsent(Integer.valueOf(required), LocalCommerceEngine$$ExternalSyntheticLambda0.INSTANCE);
            int addExact = Math.addExact(computeIfAbsent.getOrDefault(Integer.valueOf(value), 0).intValue(), required2);
            if (addExact > product.storyLimit) {
                throw new Rejected("本周目已购买此任务道具。");
            }
            computeIfAbsent.put(Integer.valueOf(value), Integer.valueOf(addExact));
            normalizeStoryCounts = BsonLite.withProfileArray(normalizeStoryCounts, "zin", storyPairs(storyCounts));
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            if (i < 4) {
                Map<Integer, Integer> pairCounts = pairCounts(BsonLite.documentValue(normalizeStoryCounts, COUNT_KEYS[i]));
                int addExact2 = Math.addExact(pairCounts.containsKey(Integer.valueOf(required)) ? pairCounts.get(Integer.valueOf(required)).intValue() : 0, required2);
                if (product.limits[i] > 0 && addExact2 > product.limits[i]) {
                    throw new Rejected("商品已达到限购次数。");
                }
                pairCounts.put(Integer.valueOf(required), Integer.valueOf(addExact2));
                arrayList.add(pairCounts);
                i++;
            } else {
                for (Map.Entry<String, Integer> entry : product.costs.entrySet()) {
                    result.profile = spend(result.profile, entry.getKey(), Math.multiplyExact(entry.getValue().intValue(), required2));
                }
                int multiplyExact = Math.multiplyExact(product.quantity, required2);
                List<byte[]> addItems = addItems(result, product.item, multiplyExact, product.wrap);
                byte[] bArr2 = normalizeStoryCounts;
                int i2 = 0;
                for (int i3 = 4; i2 < i3; i3 = 4) {
                    bArr2 = BsonLite.withProfileArray(bArr2, COUNT_KEYS[i2], pairs((Map) arrayList.get(i2)));
                    i2++;
                }
                result.profile = BsonLite.withProfileDocument(result.profile, "ldd", bArr2);
                currencies(result);
                result.add("updateItems", BsonLite.document("i", addItems));
                result.add("replyBuyCardMallItem", BsonLite.document("r", true, "i", BsonLite.EMPTY_DOCUMENT));
                result.add("buyCardMallItemDone", BsonLite.document("d", pairs((Map) arrayList.get(0)), "w", pairs((Map) arrayList.get(1)), "t", pairs((Map) arrayList.get(2)), "m", pairs((Map) arrayList.get(3)), "z", storyPairs(storyCounts), "itemid", Integer.valueOf(product.item), "num", Integer.valueOf(required2), "result", BsonLite.document("item", Collections.singletonList(Arrays.asList(Integer.valueOf(product.item), Integer.valueOf(multiplyExact)))), "sd", Integer.valueOf(required), "silence", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(BsonLite.documentValue(bArr, "ext"), "silence")))));
                return;
            }
        }
    }

    static /* synthetic */ Map lambda$buy$0(Integer num) {
        return new LinkedHashMap();
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x009a, code lost:
    
        if ((r6.size() + r14) <= 500) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static List<byte[]> addItems(Result result, int i, int i2, int i3) {
        byte[] bArr;
        String str;
        if (i2 <= 0 || i3 <= 0) {
            throw new Rejected("无效的商品数量。");
        }
        byte[] doc = doc(result.profile, "inv");
        byte[] documentValue = BsonLite.documentValue(doc, "items");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> it = BsonLite.keys(documentValue).iterator();
        int i4 = i2;
        while (it.hasNext()) {
            byte[] documentValue2 = BsonLite.documentValue(documentValue, it.next());
            if (documentValue2 == null) {
                throw new Rejected("背包数据格式异常，未执行购买。");
            }
            if (Integer.valueOf(i).equals(BsonLite.intValue(documentValue2, "i")) && i4 > 0) {
                int value = value(documentValue2, "w");
                int min = Math.min(i4, Math.max(0, i3 - value));
                if (min > 0) {
                    documentValue2 = BsonLite.withProfileInt(documentValue2, "w", Math.addExact(value, min));
                    i4 -= min;
                    arrayList2.add(documentValue2);
                }
            }
            arrayList.add(documentValue2);
        }
        int i5 = i4;
        long j = i3;
        long j2 = ((i4 + j) - 1) / j;
        if (j2 <= 500) {
            if (j2 > 0) {
                bArr = doc;
                str = "inv";
            } else {
                bArr = doc;
                str = "inv";
            }
            int i6 = i5;
            while (i6 > 0) {
                int min2 = Math.min(i6, i3);
                byte[] document = BsonLite.document("u", new BsonLite.UuidValue(UUID.randomUUID().toString().replace("-", "").substring(0, 24)), "i", Integer.valueOf(i), "w", Integer.valueOf(min2), "c", 0, "ctt", Integer.valueOf((int) (System.currentTimeMillis() / 1000)));
                arrayList.add(document);
                arrayList2.add(document);
                i6 -= min2;
            }
            result.profile = BsonLite.withProfileDocument(result.profile, str, BsonLite.withProfileArray(bArr, "items", arrayList));
            return arrayList2;
        }
        throw new Rejected("背包空间不足。");
    }

    private static void equip(Result result, LocalCommerceCatalog localCommerceCatalog, byte[] bArr) {
        int required = required(bArr, "h");
        String uuid = uuid(bArr, "sid");
        byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, required);
        byte[] documentValue = BsonLite.documentValue(BsonLite.documentValue(profileHeroDocument, "sk"), uuid);
        Integer intValue = BsonLite.intValue(documentValue, "i");
        int[] iArr = intValue == null ? null : localCommerceCatalog.skins.get(intValue);
        if (iArr == null || iArr[0] != required || Boolean.TRUE.equals(BsonLite.boolValue(documentValue, "fb"))) {
            throw new Rejected("该角色未拥有这件可穿戴时装。");
        }
        result.profile = BsonLite.withHeroDocument(result.profile, required, BsonLite.withProfileBool(BsonLite.withProfileUuid(profileHeroDocument, "cs", uuid), "ass", false));
        result.add("setSkinReply", skinReply(true, uuid));
    }

    private static byte[] skinReply(boolean z, String str) {
        return BsonLite.document("s", Boolean.valueOf(z), "sid", new BsonLite.UuidValue(str), "ass", false);
    }

    private static void itemDetail(Result result, byte[] bArr) {
        String uuid = uuid(bArr, "u");
        byte[] findOwned = LocalEquipmentEngine.findOwned(result.profile, uuid);
        if (findOwned == null) {
            throw new Rejected("该影装或道具已不存在，请重新打开背包。");
        }
        result.add("queryItemDetailReply", BsonLite.document("u", new BsonLite.UuidValue(uuid), "d", findOwned));
    }

    private static byte[] spend(byte[] bArr, String str, int i) {
        if (i < 0) {
            throw new Rejected("无效的价格。");
        }
        if ("crystal".equals(str)) {
            int value = value(bArr, "bind_crystal");
            int value2 = value(bArr, "crystal");
            if (value + value2 < i) {
                throw new Rejected("晶钻不足。");
            }
            int min = Math.min(value, i);
            return BsonLite.withProfileInt(BsonLite.withProfileInt(bArr, "bind_crystal", value - min), "crystal", value2 - (i - min));
        }
        if ("yuanbao".equals(str)) {
            int value3 = value(bArr, "fyuanbao");
            int value4 = value(bArr, "yuanbao");
            if ((value3 + value4) - value(bArr, "dyuanbao") < i) {
                throw new Rejected("钻石不足。");
            }
            int min2 = Math.min(value3, i);
            return BsonLite.withProfileInt(BsonLite.withProfileInt(bArr, "fyuanbao", value3 - min2), "yuanbao", value4 - (i - min2));
        }
        int value5 = value(bArr, str);
        if (value5 < i) {
            throw new Rejected("商品所需代币不足。");
        }
        return BsonLite.withProfileInt(bArr, str, value5 - i);
    }

    static void currencies(Result result) {
        byte[] bArr = result.profile;
        result.add("updateCrystal", BsonLite.document("v", Integer.valueOf(value(bArr, "crystal")), "bv", Integer.valueOf(value(bArr, "bind_crystal"))));
        result.add("updateYuanbao", BsonLite.document("v", Integer.valueOf(value(bArr, "yuanbao")), "fv", Integer.valueOf(value(bArr, "fyuanbao")), "dv", Integer.valueOf(value(bArr, "dyuanbao")), "eby", doc(bArr, "eby"), "gc", doc(bArr, "gc"), "chry", Integer.valueOf(value(bArr, "chry")), "nyy", Integer.valueOf(value(bArr, "nyy")), "mary", Integer.valueOf(value(bArr, "mary")), "mayy", Integer.valueOf(value(bArr, "mayy")), "novy", Integer.valueOf(value(bArr, "novy")), "yuanbao_20190130", Integer.valueOf(value(bArr, "yb20190130")), "yuanbao_20190403", Integer.valueOf(value(bArr, "yb20190403")), "ybumba", 0));
        for (Map.Entry<String, String> entry : CURRENCY_CALLBACKS.entrySet()) {
            if (BsonLite.intValue(bArr, entry.getKey()) != null) {
                result.add(entry.getValue(), BsonLite.intDocument("v", value(bArr, entry.getKey())));
            }
        }
    }

    static int value(byte[] bArr, String str) {
        Integer intValue = BsonLite.intValue(bArr, str);
        if (intValue == null) {
            return 0;
        }
        return intValue.intValue();
    }

    private static int required(byte[] bArr, String str) {
        Integer intValue = BsonLite.intValue(bArr, str);
        if (intValue == null) {
            throw new Rejected("请求参数不完整。");
        }
        return intValue.intValue();
    }

    private static String uuid(byte[] bArr, String str) {
        String uuidValue = BsonLite.uuidValue(bArr, str);
        return uuidValue == null ? "000000000000000000000000" : uuidValue;
    }

    private static byte[] doc(byte[] bArr, String str) {
        byte[] documentValue = BsonLite.documentValue(bArr, str);
        return documentValue == null ? BsonLite.EMPTY_DOCUMENT : documentValue;
    }

    private static Map<Integer, Integer> pairCounts(byte[] bArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> it = BsonLite.keys(bArr).iterator();
        while (it.hasNext()) {
            byte[] documentValue = BsonLite.documentValue(bArr, it.next());
            Integer intValue = BsonLite.intValue(documentValue, "0");
            Integer intValue2 = BsonLite.intValue(documentValue, "1");
            if (intValue != null && intValue2 != null) {
                linkedHashMap.put(intValue, intValue2);
            }
        }
        return linkedHashMap;
    }

    private static Map<Integer, Map<Integer, Integer>> storyCounts(byte[] bArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (byte[] bArr2 : LocalResourceEngine.array(doc(bArr, "zin"))) {
            Integer intValue = BsonLite.intValue(bArr2, "0");
            if (intValue != null) {
                linkedHashMap.put(intValue, pairCounts(doc(bArr2, "1")));
            }
        }
        return linkedHashMap;
    }

    private static List<List<Object>> storyPairs(Map<Integer, Map<Integer, Integer>> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Integer, Map<Integer, Integer>> entry : map.entrySet()) {
            arrayList.add(Arrays.asList(entry.getKey(), pairs(entry.getValue())));
        }
        return arrayList;
    }

    private static byte[] normalizeStoryCounts(byte[] bArr, int i) {
        Map<Integer, Map<Integer, Integer>> storyCounts = storyCounts(bArr);
        String stringValue = BsonLite.stringValue(bArr, "q7ShopStoryWeek");
        if (stringValue != null) {
            try {
                i = Integer.parseInt(stringValue);
            } catch (NumberFormatException e) {
            }
        }
        boolean z = false;
        for (byte[] bArr2 : LocalResourceEngine.array(doc(bArr, "zin"))) {
            Integer intValue = BsonLite.intValue(bArr2, "0");
            Integer intValue2 = BsonLite.intValue(bArr2, "1");
            if (intValue != null && intValue2 != null) {
                storyCounts.computeIfAbsent(intValue, LocalCommerceEngine$$ExternalSyntheticLambda0.INSTANCE).put(Integer.valueOf(i), intValue2);
                z = true;
            }
        }
        return z ? BsonLite.withProfileArray(bArr, "zin", storyPairs(storyCounts)) : bArr;
    }

    private static List<List<Integer>> pairs(Map<Integer, Integer> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            arrayList.add(Arrays.asList(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    private static List<List<Integer>> arrayPairs(byte[] bArr, String str) {
        return pairs(pairCounts(BsonLite.documentValue(bArr, str)));
    }

    static final class Result {
        byte[] profile;
        final Map<String, byte[]> replies = new LinkedHashMap();

        Result(byte[] bArr) {
            this.profile = bArr;
        }

        void add(String str, byte[] bArr) {
            this.replies.put(str, bArr);
        }
    }

    private static final class Rejected extends RuntimeException {
        Rejected(String str) {
            super(str);
        }
    }
}
