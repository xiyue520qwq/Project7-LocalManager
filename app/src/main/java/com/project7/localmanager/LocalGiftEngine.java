package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes.dex */
final class LocalGiftEngine {
    private static final SecureRandom RANDOM = new SecureRandom();
    private static final String[] COUNTS = {"din", "win", "ton", "mon"};

    LocalGiftEngine() {
    }

    static boolean handles(LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr) {
        return "getGiftCardReward".equals(str) || "monthCardGetFudaiReward".equals(str) || "GiftCardClickEvent".equals(str) || "requestGetCurMonHead".equals(str) || ("buyMoney".equals(str) && localFeatureCatalog.get("C", goods(localFeatureCatalog, BsonLite.stringValue(bArr, "g"))) != null) || ("buyCardMallItem".equals(str) && localFeatureCatalog.get("S", Integer.valueOf(m23v(bArr, "store_id"))) != null);
    }

    /* renamed from: v */
    static int m23v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m22d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static int now() {
        return (int) (System.currentTimeMillis() / 1000);
    }

    private static String goods(LocalFeatureCatalog localFeatureCatalog, String str) {
        if (str == null || localFeatureCatalog.get("C", str) != null) {
            return str;
        }
        if (localFeatureCatalog.get("C", str + ".ad") == null) {
            return str;
        }
        return str + ".ad";
    }

    static int day(int i) {
        return Math.floorDiv(i - 25200, 86400);
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2) {
        return apply(bArr, localResourceCatalog, localFeatureCatalog, str, bArr2, now());
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2, int i) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        try {
            result.profile = refresh(LocalCommerceEngine.refreshStoreLimits(bArr, i * 1000), i);
            if ("buyCardMallItem".equals(str)) {
                buy(result, localResourceCatalog, localFeatureCatalog, bArr2);
            } else if ("buyMoney".equals(str)) {
                charge(result, localResourceCatalog, localFeatureCatalog, bArr2, i);
            } else if ("monthCardGetFudaiReward".equals(str)) {
                chargeBox(result, localResourceCatalog, localFeatureCatalog, i);
            } else if ("requestGetCurMonHead".equals(str)) {
                monthHead(result, localFeatureCatalog, i);
            } else if ("GiftCardClickEvent".equals(str)) {
                syncCard(result, BsonLite.EMPTY_DOCUMENT);
            } else {
                monthReward(result, localResourceCatalog, bArr2, i);
            }
        } catch (ArithmeticException | IllegalArgumentException e) {
            result = new LocalResourceEngine.Result(bArr);
            result.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
            if ("buyCardMallItem".equals(str)) {
                result.add("replyBuyCardMallItem", BsonLite.document("r", false, "i", BsonLite.EMPTY_DOCUMENT));
            }
            if ("requestGetCurMonHead".equals(str)) {
                result.add("replyGetCurMonHead", BsonLite.document("r", false, "i", BsonLite.EMPTY_DOCUMENT));
            }
        }
        return result;
    }

    static void reward(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, byte[] bArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            Iterator<byte[]> it = LocalResourceEngine.array(m22d(bArr, "rewards")).iterator();
            while (it.hasNext()) {
                List<byte[]> array = LocalResourceEngine.array(it.next());
                Iterator<byte[]> it2 = array.iterator();
                long j = 0;
                while (it2.hasNext()) {
                    j = Math.addExact(j, m23v(it2.next(), "w"));
                }
                if (j <= 0) {
                    throw new IllegalArgumentException("Invalid gift reward weights");
                }
                double nextDouble = RANDOM.nextDouble() * j;
                byte[] bArr2 = array.get(array.size() - 1);
                Iterator<byte[]> it3 = array.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    }
                    byte[] next = it3.next();
                    nextDouble -= m23v(next, "w");
                    if (nextDouble < 0.0d) {
                        bArr2 = next;
                        break;
                    }
                }
                for (byte[] bArr3 : LocalResourceEngine.array(m22d(bArr2, "g"))) {
                    LocalResourceEngine.grant(result, localResourceCatalog, BsonLite.stringValue(bArr3, "k"), m23v(bArr3, "i"), m23v(bArr3, "n"), m23v(bArr3, "q"), BsonLite.documentValue(bArr3, "design"));
                }
            }
        }
    }

    static void spend(LocalResourceEngine.Result result, String str, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Invalid gift price");
        }
        if (i == 0) {
            return;
        }
        String str2 = "yuanbao".equals(str) ? "fyuanbao" : "bind_crystal";
        int m23v = m23v(result.profile, str);
        int m23v2 = m23v(result.profile, str2);
        if ((m23v + m23v2) - ("yuanbao".equals(str) ? m23v(result.profile, "dyuanbao") : 0) < i) {
            throw new IllegalArgumentException("Insufficient gift currency");
        }
        int min = Math.min(m23v2, i);
        result.profile = BsonLite.withProfileInt(BsonLite.withProfileInt(result.profile, str2, m23v2 - min), str, m23v - (i - min));
    }

    static void consume(LocalResourceEngine.Result result, int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Invalid ticket price");
        }
        if (i2 == 0) {
            return;
        }
        byte[] m22d = m22d(result.profile, "inv");
        List<byte[]> array = LocalResourceEngine.array(m22d(m22d, "items"));
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (byte[] bArr : array) {
            if (m23v(bArr, "i") == i && i2 > 0) {
                int min = Math.min(i2, m23v(bArr, "w"));
                i2 -= min;
                if (min == m23v(bArr, "w")) {
                    arrayList3.add(new BsonLite.UuidValue(BsonLite.uuidValue(bArr, "u")));
                } else {
                    bArr = BsonLite.withProfileInt(bArr, "w", m23v(bArr, "w") - min);
                    arrayList2.add(bArr);
                }
            }
            arrayList.add(bArr);
        }
        if (i2 == 0) {
            result.profile = BsonLite.withProfileDocument(result.profile, "inv", BsonLite.withProfileArray(m22d, "items", arrayList));
            if (!arrayList2.isEmpty()) {
                result.add("updateItems", BsonLite.document("i", arrayList2));
            }
            if (!arrayList3.isEmpty()) {
                result.add("deleteItems", BsonLite.document("i", arrayList3));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Insufficient gift tickets");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008b, code lost:
    
        if (m23v(r6, "cost") > 0) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void buy(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, byte[] bArr) {
        Object obj;
        String str;
        List<Integer> list;
        int m23v = m23v(bArr, "store_id");
        int m23v2 = m23v(bArr, "num");
        byte[] bArr2 = localFeatureCatalog.get("S", Integer.valueOf(m23v));
        String str2 = "ldd";
        byte[] m22d = m22d(result.profile, "ldd");
        if (bArr2 == null) {
            bArr2 = localFeatureCatalog.get("CS", Integer.valueOf(m23v));
        }
        if (bArr2 == null) {
            throw new IllegalArgumentException("商品未接入，未扣除资源");
        }
        int m23v3 = m23v(bArr, "coin_type");
        String stringValue = BsonLite.stringValue(bArr2, "product");
        boolean z = (stringValue == null || stringValue.isEmpty()) ? false : true;
        String stringValue2 = BsonLite.stringValue(bArr2, "costCurrency");
        String str3 = "crystal";
        if (stringValue2 == null) {
            obj = "num";
            str = stringValue;
        } else {
            if (m23v3 == 0 && !z && m23v(bArr2, "costItem") == 0 && m23v(bArr2, "yuanbao") == 0 && m23v(bArr2, "crystal") == 0) {
                obj = "num";
                str = stringValue;
                if (Arrays.asList("tCoin", "bCoin", "lxtlCoin").contains(stringValue2)) {
                }
            }
            throw new IllegalArgumentException("挑战商品的支付方式无效，未扣除资源");
        }
        if (m23v2 <= 0 || m23v2 > Math.max(1, m23v(bArr2, "max")) || m23v2 > 100 || m23v(result.profile, "level") < m23v(bArr2, "level") || ((m23v3 != 0 && m23v3 != 1 && m23v3 != 2 && m23v3 != 4) || ((m23v3 == 1 && m23v(bArr2, "yuanbao") <= 0) || ((m23v3 == 2 && !z) || (m23v3 == 4 && m23v(bArr2, "costItem") != 10047))))) {
            throw new IllegalArgumentException("Invalid gift purchase conditions");
        }
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, "limits");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            String str4 = str2;
            String[] strArr = COUNTS;
            String str5 = str3;
            if (i < strArr.length) {
                Map<Integer, Integer> pairs = LocalAccountFeatures.pairs(m22d(m22d, strArr[i]));
                int addExact = Math.addExact(pairs.containsKey(Integer.valueOf(m23v)) ? pairs.get(Integer.valueOf(m23v)).intValue() : 0, m23v2);
                if (intArrayValues.get(i).intValue() > 0) {
                    list = intArrayValues;
                    if (addExact > intArrayValues.get(i).intValue()) {
                        throw new IllegalArgumentException("Gift purchase limit reached");
                    }
                } else {
                    list = intArrayValues;
                }
                pairs.put(Integer.valueOf(m23v), Integer.valueOf(addExact));
                arrayList.add(pairs);
                i++;
                str2 = str4;
                str3 = str5;
                intArrayValues = list;
            } else {
                if (stringValue2 != null) {
                    int multiplyExact = Math.multiplyExact(m23v(bArr2, "cost"), m23v2);
                    int m23v4 = m23v(result.profile, stringValue2);
                    if (m23v4 >= multiplyExact) {
                        result.profile = BsonLite.withProfileInt(result.profile, stringValue2, m23v4 - multiplyExact);
                    } else {
                        throw new IllegalArgumentException("挑战代币不足");
                    }
                } else if (m23v3 == 4 || (m23v3 == 0 && m23v(bArr2, "costItem") > 0)) {
                    consume(result, m23v(bArr2, "costItem"), Math.multiplyExact(m23v(bArr2, "cost"), m23v2));
                } else if (m23v3 == 1 || (m23v3 == 0 && !z)) {
                    spend(result, "yuanbao", Math.multiplyExact(m23v(bArr2, "yuanbao"), m23v2));
                    spend(result, str5, Math.multiplyExact(m23v(bArr2, str5), m23v2));
                }
                reward(result, localResourceCatalog, bArr2, m23v2);
                int i2 = 0;
                while (true) {
                    String[] strArr2 = COUNTS;
                    if (i2 >= strArr2.length) {
                        break;
                    }
                    m22d = BsonLite.withProfileArray(m22d, strArr2[i2], LocalAccountFeatures.pairList((Map) arrayList.get(i2)));
                    i2++;
                }
                result.profile = BsonLite.withProfileDocument(result.profile, str4, m22d);
                if (z) {
                    String replace = str.replace('.', '_');
                    byte[] m22d2 = m22d(result.profile, "eby");
                    result.profile = BsonLite.withProfileDocument(result.profile, "eby", BsonLite.withProfileInt(m22d2, replace, Math.addExact(m23v(m22d2, replace), m23v2)));
                    result.profile = LocalAccountFeatures.refreshRecharge(result.profile);
                    result.add("rookieRechargeSyncData", BsonLite.document("d", m22d(m22d(result.profile, "sma"), "rcd")));
                }
                LocalResourceEngine.syncCurrencies(result);
                result.add("replyBuyCardMallItem", BsonLite.document("r", true, "i", BsonLite.EMPTY_DOCUMENT));
                result.add("buyCardMallItemDone", BsonLite.document("d", LocalAccountFeatures.pairList((Map) arrayList.get(0)), "w", LocalAccountFeatures.pairList((Map) arrayList.get(1)), "t", LocalAccountFeatures.pairList((Map) arrayList.get(2)), "m", LocalAccountFeatures.pairList((Map) arrayList.get(3)), "z", new BsonLite.ArrayValue(m22d(m22d, "zin")), "itemid", Integer.valueOf(m23v(bArr2, "item")), obj, Integer.valueOf(m23v2), "result", result.reward(), "sd", Integer.valueOf(m23v), "silence", Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(m22d(bArr, "ext"), "silence")))));
                return;
            }
        }
    }

    private static void charge(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, byte[] bArr, int i) {
        String goods = goods(localFeatureCatalog, BsonLite.stringValue(bArr, "g"));
        String replace = goods.replace('.', '_');
        byte[] bArr2 = localFeatureCatalog.get("C", goods);
        if (m23v(bArr2, "days") > 0) {
            byte[] m22d = m22d(result.profile, "gc");
            byte[] m22d2 = m22d(m22d, replace);
            int m23v = m23v(m22d2, "0");
            int m23v2 = m23v(m22d2, "1");
            int max = Math.max(0, (m23v2 - day(i)) + day(m23v));
            if (max + 30 > 100) {
                throw new IllegalArgumentException("Month card maximum is 100 days");
            }
            Integer[] numArr = new Integer[3];
            if (max <= 0) {
                m23v = i;
            }
            numArr[0] = Integer.valueOf(m23v);
            numArr[1] = Integer.valueOf(max > 0 ? 30 + m23v2 : 30);
            numArr[2] = Integer.valueOf(m23v(m22d2, "2"));
            result.profile = BsonLite.withProfileDocument(result.profile, "gc", BsonLite.withProfileArray(m22d, replace, Arrays.asList(numArr)));
        }
        if (m23v(bArr2, "yuanbao") > 0) {
            LocalResourceEngine.grant(result, localResourceCatalog, "yuanbao", 0, m23v(bArr2, "yuanbao"), 1);
        }
        reward(result, localResourceCatalog, bArr2, 1);
        byte[] m22d3 = m22d(result.profile, "eby");
        result.profile = BsonLite.withProfileDocument(result.profile, "eby", BsonLite.withProfileInt(m22d3, replace, Math.addExact(m23v(m22d3, replace), 1)));
        result.profile = LocalAccountFeatures.refreshRecharge(result.profile);
        LocalResourceEngine.syncCurrencies(result);
        result.add("rookieRechargeSyncData", BsonLite.document("d", m22d(m22d(result.profile, "sma"), "rcd")));
        result.add("onOrderYuanbao", BsonLite.document("r", result.reward(), "g", goods, "i", BsonLite.EMPTY_DOCUMENT));
    }

    private static void monthReward(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, byte[] bArr, int i) {
        String stringValue = BsonLite.stringValue(bArr, "s");
        if (stringValue == null) {
            throw new IllegalArgumentException("Missing month card ID");
        }
        String replace = stringValue.replace('.', '_');
        byte[] m22d = m22d(result.profile, "gc");
        byte[] m22d2 = m22d(m22d, replace);
        int m23v = m23v(m22d2, "0");
        int m23v2 = m23v(m22d2, "1");
        int m23v3 = m23v(m22d2, "2");
        if (!stringValue.startsWith("g58.30yk.") || m23v <= 0 || day(i) < day(m23v) || day(i) >= day(m23v) + m23v2 || (m23v3 > 0 && day(i) <= day(m23v3))) {
            throw new IllegalArgumentException("Month card reward unavailable or already claimed today");
        }
        LocalResourceEngine.grant(result, localResourceCatalog, "yuanbao", 0, 100, 1);
        result.profile = BsonLite.withProfileDocument(result.profile, "gc", BsonLite.withProfileArray(m22d, replace, Arrays.asList(Integer.valueOf(m23v), Integer.valueOf(m23v2), Integer.valueOf(i))));
        result.profile = refresh(result.profile, i);
        LocalResourceEngine.syncCurrencies(result);
        result.add("onGiftCardExpired", BsonLite.document("r", result.reward(), "d", 0));
        syncCard(result, BsonLite.EMPTY_DOCUMENT);
    }

    static byte[] refresh(byte[] bArr, int i) {
        int m23v;
        byte[] m22d = m22d(bArr, "gcd");
        Integer intValue = BsonLite.intValue(m22d, "lfqd");
        int intValue2 = intValue == null ? -1 : intValue.intValue();
        for (Map.Entry<String, byte[]> entry : BsonLite.documentEntries(m22d(bArr, "gc")).entrySet()) {
            if (entry.getKey().startsWith("g58_30yk_") && (m23v = m23v(entry.getValue(), "2")) > 0 && m23v <= i) {
                intValue2 = Math.max(intValue2, day(m23v));
            }
        }
        if (intValue2 > (intValue != null ? intValue.intValue() : -1)) {
            return BsonLite.withProfileDocument(bArr, "gcd", BsonLite.withProfileInt(BsonLite.withProfileInt(m22d, "fc", Math.addExact(m23v(m22d, "fc"), 1)), "lfqd", intValue2));
        }
        return bArr;
    }

    private static void syncCard(LocalResourceEngine.Result result, byte[] bArr) {
        result.add("monthCardSyncData", BsonLite.document("d", m22d(result.profile, "gcd"), "ext_info", bArr));
        result.add("monthCardSyncAttr", BsonLite.document("d", BsonLite.EMPTY_DOCUMENT, "ext_info", BsonLite.EMPTY_DOCUMENT));
    }

    private static void chargeBox(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, LocalFeatureCatalog localFeatureCatalog, int i) {
        byte[] m22d = m22d(result.profile, "gcd");
        if (m23v(m22d, "fc") < 6) {
            throw new IllegalArgumentException("Month card requires six successful daily claims");
        }
        Map<Integer, Integer> pairs = LocalAccountFeatures.pairs(m22d(m22d, "fg"));
        if (pairs.isEmpty()) {
            for (int i2 = 1; localFeatureCatalog.get("MC", Integer.valueOf(i2)) != null; i2++) {
                pairs.put(Integer.valueOf(i2), 1);
            }
        }
        if (pairs.isEmpty()) {
            throw new IllegalArgumentException("Month card reward catalog unavailable");
        }
        int intValue = ((Integer) Collections.min(pairs.keySet())).intValue();
        byte[] bArr = localFeatureCatalog.get("MC", Integer.valueOf(intValue));
        if (bArr == null) {
            throw new IllegalArgumentException("Unknown month card reward stage");
        }
        reward(result, localResourceCatalog, bArr, 1);
        pairs.remove(Integer.valueOf(intValue));
        byte[] withProfileArray = BsonLite.withProfileArray(m22d, "fg", LocalAccountFeatures.pairList(pairs));
        result.profile = BsonLite.withProfileDocument(result.profile, "gcd", BsonLite.withProfileInt(BsonLite.withProfileInt(withProfileArray, "fc", m23v(withProfileArray, "fc") - 6), "lfrd", day(i)));
        LocalResourceEngine.syncCurrencies(result);
        syncCard(result, BsonLite.document("fudai_reward_reply", true, "reward", result.reward()));
    }

    private static void monthHead(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, int i) {
        boolean z;
        int m23v;
        Iterator<Map.Entry<String, byte[]>> it = BsonLite.documentEntries(m22d(result.profile, "gc")).entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            Map.Entry<String, byte[]> next = it.next();
            if (next.getKey().startsWith("g58_30yk_") && (m23v = m23v(next.getValue(), "0")) > 0 && day(i) >= day(m23v)) {
                z = (m23v(next.getValue(), "1") - day(i)) + day(m23v) > 30;
            }
        }
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar.setTimeInMillis(i * 1000);
        byte[] bArr = localFeatureCatalog.get("MH", Integer.valueOf(calendar.get(2) + 1));
        int m23v2 = m23v(bArr, "frame");
        int m23v3 = m23v(bArr, "item");
        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(result.profile, "tbk"));
        if (!z || m23v2 <= 0 || m23v3 <= 0 || arrayList.contains(Integer.valueOf(m23v2))) {
            throw new IllegalArgumentException("Monthly frame requires more than 30 remaining month-card days, or is already owned");
        }
        if (BsonLite.documentValue(result.profile, "tbk") == null) {
            arrayList.add(0);
        }
        arrayList.add(Integer.valueOf(m23v2));
        result.profile = BsonLite.withProfileArray(result.profile, "tbk", arrayList);
        result.add("updateBbsSkin", BsonLite.bbsSkinReplyDocument(arrayList, m23v(result.profile, "bk")));
        result.add("replyGetCurMonHead", BsonLite.document("r", true, "i", BsonLite.document("r", Arrays.asList(Integer.valueOf(m23v3), 1))));
    }
}
