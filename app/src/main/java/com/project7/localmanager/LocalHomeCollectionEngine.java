package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes.dex */
final class LocalHomeCollectionEngine {
    static final Set<String> METHODS = new HashSet(Arrays.asList("sellFurnitureByID", "sellFurnitureByItemList", "doBuyFurniture", "doAddSawFurniture", "addKnownFurnitureScheme", "requestBuyMusicByMusicCoin", "requestSetHeroHomeCurMusic"));

    LocalHomeCollectionEngine() {
    }

    /* renamed from: d */
    static byte[] m30d(byte[] bArr, String str) {
        return LocalHomeEngine.m34d(bArr, str);
    }

    /* renamed from: v */
    static int m31v(byte[] bArr, String str) {
        return LocalHomeEngine.m35v(bArr, str);
    }

    static void require(boolean z, String str) {
        LocalHomeEngine.require(z, str);
    }

    static int score(byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        Map<Integer, Integer> inventoryCounts = LocalHomeEngine.inventoryCounts(bArr);
        HashMap hashMap = new HashMap();
        Iterator<Map.Entry<String, byte[]>> it = localFeatureCatalog.entries.entrySet().iterator();
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, byte[]> next = it.next();
            if (next.getKey().startsWith("F:")) {
                byte[] value = next.getValue();
                int intValue = inventoryCounts.getOrDefault(Integer.valueOf(m31v(value, "itemid")), 0).intValue();
                int m31v = m31v(value, "star");
                int m31v2 = m31v(LocalHomeEngine.rule(localFeatureCatalog, "C", Integer.valueOf(m31v)), "count");
                byte[] m30d = m30d(LocalHomeEngine.rule(localFeatureCatalog, "S", next.getKey().substring(2)), "score");
                if (intValue > 0 && m31v2 > 0 && !BsonLite.keys(m30d).isEmpty()) {
                    Iterator<String> it2 = BsonLite.keys(m30d).iterator();
                    while (it2.hasNext()) {
                        i = Math.max(i, Integer.parseInt(it2.next()));
                    }
                    Integer num = null;
                    PriorityQueue priorityQueue = (PriorityQueue) hashMap.computeIfAbsent(Integer.valueOf(m31v), new Function() { // from class: com.project7.localmanager.LocalHomeCollectionEngine$$ExternalSyntheticLambda0
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return LocalHomeCollectionEngine.lambda$score$0((Integer) obj);
                        }
                    });
                    for (int i2 = 1; i2 <= Math.min(intValue, i + m31v2); i2++) {
                        Integer intValue2 = BsonLite.intValue(m30d, Integer.toString(i2));
                        if (intValue2 == null) {
                            intValue2 = num;
                        }
                        if (intValue2 != null) {
                            if (num == null || num.intValue() == 0 || num.intValue() > intValue2.intValue()) {
                                num = intValue2;
                            }
                            priorityQueue.add(intValue2);
                            if (priorityQueue.size() > m31v2) {
                                priorityQueue.poll();
                            }
                        }
                    }
                }
            }
        }
        Iterator it3 = hashMap.values().iterator();
        int i3 = 0;
        while (it3.hasNext()) {
            Iterator it4 = ((PriorityQueue) it3.next()).iterator();
            while (it4.hasNext()) {
                i3 = Math.addExact(i3, ((Integer) it4.next()).intValue());
            }
        }
        for (Map.Entry<String, byte[]> entry : localFeatureCatalog.entries.entrySet()) {
            if (entry.getKey().startsWith("TH:")) {
                List<Integer> intArrayValues = BsonLite.intArrayValues(entry.getValue(), "items");
                boolean z = !intArrayValues.isEmpty();
                Iterator<Integer> it5 = intArrayValues.iterator();
                while (true) {
                    if (!it5.hasNext()) {
                        break;
                    }
                    if (inventoryCounts.getOrDefault(Integer.valueOf(it5.next().intValue()), 0).intValue() <= 0) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    i3 = Math.addExact(i3, m31v(entry.getValue(), "score"));
                }
            }
        }
        return i3;
    }

    static /* synthetic */ PriorityQueue lambda$score$0(Integer num) {
        return new PriorityQueue();
    }

    static byte[] baseInfo(byte[] bArr) {
        byte[] m30d = m30d(bArr, "fnd");
        Object[] objArr = new Object[12];
        objArr[0] = "sc";
        objArr[1] = Integer.valueOf(m31v(m30d, "sc"));
        objArr[2] = "nm";
        objArr[3] = LocalHomeEngine.text(m30d, "nm");
        objArr[4] = "th";
        objArr[5] = Integer.valueOf(m31v(m30d, "th"));
        objArr[6] = "vt";
        objArr[7] = Integer.valueOf(m31v(m30d, "vt"));
        objArr[8] = "vh";
        objArr[9] = new BsonLite.ArrayValue(m30d(m30d, "vh"));
        objArr[10] = "vw";
        objArr[11] = BsonLite.intArrayValues(m30d, "vw").isEmpty() ? Arrays.asList(0, 0) : BsonLite.intArrayValues(m30d, "vw");
        return BsonLite.document(objArr);
    }

    static void refresh(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, boolean z) {
        byte[] m30d = m30d(result.profile, "fnd");
        int score = score(result.profile, localFeatureCatalog);
        int m31v = m31v(m30d, "sc");
        if (score != m31v || !BsonLite.keys(m30d).contains("sc")) {
            result.profile = BsonLite.withProfileDocument(result.profile, "fnd", BsonLite.withProfileInt(m30d, "sc", score));
        }
        if (!z || score == m31v) {
            return;
        }
        result.add("syncRoomBaseInfo", BsonLite.document("d", baseInfo(result.profile)));
    }

    static void initialize(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog) {
        byte[] m30d = m30d(result.profile, "hhd");
        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(m30d, "hhm"));
        for (Map.Entry<String, byte[]> entry : localFeatureCatalog.entries.entrySet()) {
            if (entry.getKey().startsWith("M:") && m31v(entry.getValue(), "init") == 1) {
                int parseInt = Integer.parseInt(entry.getKey().substring(2));
                if (!arrayList.contains(Integer.valueOf(parseInt))) {
                    arrayList.add(Integer.valueOf(parseInt));
                }
            }
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "hhd", BsonLite.withProfileArray(m30d, "hhm", arrayList));
        refresh(result, localFeatureCatalog, false);
    }

    static void inventoryChanged(LocalResourceEngine.Result result, byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        inventoryChanged(result, bArr, localFeatureCatalog, LocalStoryEnvironment.now());
    }

    static void inventoryChanged(LocalResourceEngine.Result result, byte[] bArr, LocalFeatureCatalog localFeatureCatalog, long j) {
        if (Arrays.equals(m30d(bArr, "inv"), m30d(result.profile, "inv"))) {
            if (LocalResourceEngine.array(m30d(m30d(bArr, "heromgr"), "hrs")).size() != LocalResourceEngine.array(m30d(m30d(result.profile, "heromgr"), "hrs")).size()) {
                LocalHomeSpecialGiftEngine.reconcile(result, localFeatureCatalog, true);
                return;
            }
            return;
        }
        LocalHomeSpecialGiftEngine.reconcile(result, localFeatureCatalog, true);
        Map<Integer, Integer> inventoryCounts = LocalHomeEngine.inventoryCounts(bArr);
        Map<Integer, Integer> inventoryCounts2 = LocalHomeEngine.inventoryCounts(result.profile);
        for (Map.Entry<String, byte[]> entry : localFeatureCatalog.entries.entrySet()) {
            if (entry.getKey().startsWith("F:")) {
                int m31v = m31v(entry.getValue(), "itemid");
                if (!inventoryCounts.getOrDefault(Integer.valueOf(m31v), 0).equals(inventoryCounts2.getOrDefault(Integer.valueOf(m31v), 0))) {
                    LocalRoomCrystalEngine.inventoryChanged(result, bArr, localFeatureCatalog, j);
                    markLacking(result, localFeatureCatalog);
                    refresh(result, localFeatureCatalog, true);
                    LocalHomeEngine.syncOwned(result, localFeatureCatalog);
                    return;
                }
            }
        }
    }

    static void apply(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr) {
        if (!str.startsWith("sellFurniture")) {
            if ("doBuyFurniture".equals(str)) {
                throw new IllegalArgumentException("家具回购有效期尚待原版规则核查，暂未开放");
            }
            if ("doAddSawFurniture".equals(str)) {
                int m31v = m31v(bArr, "fi");
                require(localFeatureCatalog.get("F", Integer.valueOf(m31v)) != null, "家具不存在");
                byte[] m30d = m30d(result.profile, "fnd");
                ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(m30d, "hsf"));
                if (!arrayList.contains(Integer.valueOf(m31v))) {
                    arrayList.add(Integer.valueOf(m31v));
                }
                result.profile = BsonLite.withProfileDocument(result.profile, "fnd", BsonLite.withProfileArray(m30d, "hsf", arrayList));
                result.add("syncSawFurnitureData", BsonLite.document("hsf", arrayList));
                return;
            }
            if ("addKnownFurnitureScheme".equals(str)) {
                String text = LocalHomeEngine.text(bArr, "st");
                require(!BsonLite.keys(m30d(m30d(m30d(result.profile, "fnd"), "s"), text)).isEmpty(), "房型尚未解锁");
                byte[] m30d2 = m30d(result.profile, "fnd");
                byte[] m30d3 = m30d(m30d2, "kns");
                ArrayList arrayList2 = new ArrayList();
                Iterator<String> it = BsonLite.keys(m30d3).iterator();
                while (it.hasNext()) {
                    String stringValue = BsonLite.stringValue(m30d3, it.next());
                    if (stringValue != null) {
                        arrayList2.add(stringValue);
                    }
                }
                if (!arrayList2.contains("player_home")) {
                    arrayList2.add("player_home");
                }
                if (!arrayList2.contains(text)) {
                    arrayList2.add(text);
                }
                result.profile = BsonLite.withProfileDocument(result.profile, "fnd", BsonLite.withProfileArray(m30d2, "kns", arrayList2));
                return;
            }
            music(result, localFeatureCatalog, str, bArr);
            return;
        }
        sell(result, localFeatureCatalog, localResourceCatalog, str, bArr);
    }

    static byte[] furnitureByItem(LocalFeatureCatalog localFeatureCatalog, int i) {
        for (Map.Entry<String, byte[]> entry : localFeatureCatalog.entries.entrySet()) {
            if (entry.getKey().startsWith("F:") && m31v(entry.getValue(), "itemid") == i) {
                return entry.getValue();
            }
        }
        throw new IllegalArgumentException("不是已发布家具");
    }

    private static Map<Integer, Integer> quantities(byte[] bArr, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<byte[]> array = LocalResourceEngine.array(m30d(bArr, str));
        require(array.size() <= 500, "家具列表过大");
        for (byte[] bArr2 : array) {
            require(BsonLite.keys(bArr2).size() == 2, "家具数量格式无效");
            int m31v = m31v(bArr2, "0");
            int m31v2 = m31v(bArr2, "1");
            require(m31v > 0 && m31v2 > 0, "家具数量无效");
            linkedHashMap.put(Integer.valueOf(m31v), Integer.valueOf(Math.addExact(((Integer) linkedHashMap.getOrDefault(Integer.valueOf(m31v), 0)).intValue(), m31v2)));
        }
        return linkedHashMap;
    }

    private static List<Object> pairList(Map<Integer, Integer> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            arrayList.add(Arrays.asList(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void sell(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr) {
        Map map;
        Iterator it;
        boolean z;
        Iterator<byte[]> it2;
        Map linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if ("sellFurnitureByID".equals(str)) {
            int m31v = m31v(bArr, "id");
            int m31v2 = m31v(bArr, "a");
            require(m31v > 0 && m31v2 > 0, "家具数量无效");
            linkedHashMap2.put(Integer.valueOf(m31v), Integer.valueOf(m31v2));
            map = linkedHashMap;
        } else {
            linkedHashMap2.putAll(quantities(bArr, "uul"));
            Map quantities = quantities(bArr, "ul");
            for (Map.Entry entry : quantities.entrySet()) {
                linkedHashMap2.put((Integer) entry.getKey(), Integer.valueOf(Math.addExact(((Integer) linkedHashMap2.getOrDefault(entry.getKey(), 0)).intValue(), ((Integer) entry.getValue()).intValue())));
            }
            map = quantities;
        }
        require(!linkedHashMap2.isEmpty(), "没有选择家具");
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        Iterator it3 = linkedHashMap2.entrySet().iterator();
        while (it3.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it3.next();
            List<byte[]> array = LocalResourceEngine.array(m30d(furnitureByItem(localFeatureCatalog, ((Integer) entry2.getKey()).intValue()), "sell_list"));
            if (array.isEmpty()) {
                it = it3;
            } else {
                it = it3;
                if (((Integer) entry2.getValue()).intValue() <= LocalHomeEngine.count(result.profile, ((Integer) entry2.getKey()).intValue())) {
                    z = true;
                    require(z, "家具不可出售或数量不足");
                    for (it2 = array.iterator(); it2.hasNext(); it2 = it2) {
                        byte[] next = it2.next();
                        int m31v3 = m31v(next, "0");
                        int multiplyExact = Math.multiplyExact(m31v(next, "1"), ((Integer) entry2.getValue()).intValue());
                        require(m31v3 > 0 && multiplyExact > 0, "家具出售价格无效");
                        linkedHashMap3.put(Integer.valueOf(m31v3), Integer.valueOf(Math.addExact(((Integer) linkedHashMap3.getOrDefault(Integer.valueOf(m31v3), 0)).intValue(), multiplyExact)));
                    }
                    it3 = it;
                }
            }
            z = false;
            require(z, "家具不可出售或数量不足");
            while (it2.hasNext()) {
            }
            it3 = it;
        }
        byte[] m30d = m30d(result.profile, "q7HomeSold");
        byte[] bArr2 = m30d;
        for (Map.Entry entry3 : linkedHashMap2.entrySet()) {
            LocalGiftEngine.consume(result, ((Integer) entry3.getKey()).intValue(), ((Integer) entry3.getValue()).intValue());
            bArr2 = BsonLite.withProfileInt(bArr2, ((Integer) entry3.getKey()).toString(), Math.addExact(m31v(bArr2, ((Integer) entry3.getKey()).toString()), ((Integer) entry3.getValue()).intValue()));
        }
        for (Map.Entry entry4 : linkedHashMap3.entrySet()) {
            LocalResourceEngine.grant(result, localResourceCatalog, "item", ((Integer) entry4.getKey()).intValue(), ((Integer) entry4.getValue()).intValue(), 1);
            linkedHashMap3 = linkedHashMap3;
        }
        LinkedHashMap linkedHashMap4 = linkedHashMap3;
        result.profile = BsonLite.withProfileDocument(result.profile, "q7HomeSold", bArr2);
        markLacking(result, localFeatureCatalog);
        if (!"sellFurnitureByID".equals(str)) {
            result.add("sellFurnitureByItemListReply", BsonLite.document("i", pairList(linkedHashMap2), "r", pairList(linkedHashMap4), "u", pairList(map)));
            return;
        }
        require(linkedHashMap4.size() == 1, "此家具需要使用批量出售");
        Map.Entry entry5 = (Map.Entry) linkedHashMap4.entrySet().iterator().next();
        result.add("sellFurnitureByIDReply", BsonLite.document("id", Integer.valueOf(m31v(bArr, "id")), "r", entry5.getKey(), "a", entry5.getValue()));
    }

    private static void markLacking(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog) {
        Map<Integer, Integer> inventoryCounts = LocalHomeEngine.inventoryCounts(result.profile);
        String str = "fnd";
        byte[] m30d = m30d(result.profile, "fnd");
        String str2 = "s";
        byte[] m30d2 = m30d(m30d, "s");
        Iterator<String> it = BsonLite.keys(m30d2).iterator();
        while (it.hasNext()) {
            String next = it.next();
            byte[] m30d3 = m30d(m30d2, next);
            Iterator<String> it2 = BsonLite.keys(m30d3).iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                byte[] documentValue = BsonLite.documentValue(m30d3, next2);
                if (documentValue != null) {
                    byte[] m30d4 = m30d(documentValue, "e");
                    HashMap hashMap = new HashMap();
                    Iterator<String> it3 = BsonLite.keys(m30d4).iterator();
                    Iterator<String> it4 = it;
                    byte[] bArr = m30d4;
                    while (it3.hasNext()) {
                        Iterator<String> it5 = it2;
                        String next3 = it3.next();
                        Iterator<String> it6 = it3;
                        byte[] m30d5 = m30d(bArr, next3);
                        String str3 = str;
                        byte[] bArr2 = m30d;
                        String str4 = str2;
                        byte[] bArr3 = localFeatureCatalog.get("F", Integer.valueOf(m31v(m30d5, "id")));
                        if (bArr3 == null) {
                            it3 = it6;
                            it2 = it5;
                            str = str3;
                            m30d = bArr2;
                            str2 = str4;
                        } else {
                            int m31v = m31v(bArr3, "itemid");
                            int intValue = ((Integer) hashMap.getOrDefault(Integer.valueOf(m31v), 0)).intValue() + 1;
                            byte[] bArr4 = m30d2;
                            hashMap.put(Integer.valueOf(m31v), Integer.valueOf(intValue));
                            bArr = BsonLite.withProfileDocument(bArr, next3, BsonLite.withProfileBool(m30d5, "il", intValue > inventoryCounts.getOrDefault(Integer.valueOf(m31v), 0).intValue()));
                            it3 = it6;
                            it2 = it5;
                            str = str3;
                            m30d = bArr2;
                            str2 = str4;
                            m30d2 = bArr4;
                        }
                    }
                    byte[] bArr5 = m30d;
                    String str5 = str;
                    String str6 = str2;
                    byte[] bArr6 = m30d2;
                    Iterator<String> it7 = it2;
                    if (!Arrays.equals(m30d4, bArr)) {
                        byte[] withProfileDocument = BsonLite.withProfileDocument(documentValue, "e", bArr);
                        byte[] withProfileDocument2 = BsonLite.withProfileDocument(m30d3, next2, withProfileDocument);
                        result.add("syncScheme", BsonLite.document("st", next, "sk", next2, "d", withProfileDocument));
                        m30d3 = withProfileDocument2;
                    }
                    it = it4;
                    it2 = it7;
                    str = str5;
                    m30d = bArr5;
                    str2 = str6;
                    m30d2 = bArr6;
                }
            }
            m30d2 = BsonLite.withProfileDocument(m30d2, next, m30d3);
        }
        result.profile = BsonLite.withProfileDocument(result.profile, str, BsonLite.withProfileDocument(m30d, str2, m30d2));
    }

    private static void music(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr) {
        byte[] m30d = m30d(result.profile, "hhd");
        int m31v = m31v(bArr, "requestBuyMusicByMusicCoin".equals(str) ? "key" : "k");
        byte[] bArr2 = localFeatureCatalog.get("M", Integer.valueOf(m31v));
        require(bArr2 != null, "乐章不存在");
        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(m30d, "hhm"));
        byte[] bArr3 = LocalHomeEngine.pairs(m30d, "hgr").get(0);
        byte[] m30d2 = bArr3 == null ? BsonLite.EMPTY_DOCUMENT : m30d(bArr3, "1");
        ArrayList arrayList2 = new ArrayList(BsonLite.intArrayValues(m30d2, "music"));
        if ("requestBuyMusicByMusicCoin".equals(str)) {
            if (!arrayList.contains(Integer.valueOf(m31v)) && !arrayList2.contains(Integer.valueOf(m31v))) {
                require(m31v(bArr2, "init") == 0 && m31v(bArr2, "cost") > 0, "此乐章须通过其他途径获取");
                int m31v2 = m31v(bArr2, "need_cg");
                require(m31v2 == 0 || BsonLite.intArrayValues(result.profile, "cgs").contains(Integer.valueOf(m31v2)), "尚未获得所需CG");
                LocalGiftEngine.consume(result, 4185, m31v(bArr2, "cost"));
                arrayList2.add(Integer.valueOf(m31v));
                arrayList.add(Integer.valueOf(m31v));
                m30d = BsonLite.withProfileArray(LocalHomeEngine.pairSet(m30d, "hgr", 0, BsonLite.withProfileArray(m30d2, "music", arrayList2)), "hhm", arrayList);
            }
            result.add("replyBuyMusicByMusicCoin", BsonLite.document("r", true, "i", BsonLite.document("k", Integer.valueOf(m31v))));
            result.add("syncHeroHomeMusic", BsonLite.document("hhm", arrayList));
        } else {
            int m31v3 = m31v(bArr, "h");
            require(m31v3 == 0 || LocalResourceEngine.ownsHero(result.profile, m31v3), "神器使尚未获得");
            require(m31v(bArr2, "init") == 1 || arrayList.contains(Integer.valueOf(m31v)) || arrayList2.contains(Integer.valueOf(m31v)), "乐章尚未获得");
            m30d = LocalHomeEngine.pairSet(m30d, "hhcm", m31v3, Integer.valueOf(m31v));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "hhd", m30d);
    }
}
