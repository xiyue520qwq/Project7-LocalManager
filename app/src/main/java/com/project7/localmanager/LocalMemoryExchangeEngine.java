package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalMemoryExchangeEngine {
    LocalMemoryExchangeEngine() {
    }

    static boolean handles(String str) {
        return "memoryCrystalExchangeSuipian".equals(str);
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalResourceCatalog localResourceCatalog, byte[] bArr2) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        try {
            byte[] documentValue = BsonLite.documentValue(bArr2, "ii");
            if (documentValue == null || BsonLite.keys(documentValue).isEmpty()) {
                throw new IllegalArgumentException("请选择需要兑换的记忆结晶");
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = BsonLite.keys(documentValue).iterator();
            int i = 0;
            while (it.hasNext()) {
                byte[] documentValue2 = BsonLite.documentValue(documentValue, it.next());
                if (documentValue2 == null || BsonLite.keys(documentValue2).size() != 2) {
                    throw new IllegalArgumentException("兑换列表无效");
                }
                Integer intValue = BsonLite.intValue(documentValue2, "0");
                Integer intValue2 = BsonLite.intValue(documentValue2, "1");
                if (intValue == null || intValue2 == null || intValue2.intValue() < 0 || intValue2.intValue() > 1000000 || !localResourceCatalog.memoryExchange.containsKey(intValue) || linkedHashMap.put(intValue, intValue2) != null) {
                    throw new IllegalArgumentException("记忆结晶种类或数量无效");
                }
                if (LocalHeroGrowthEngine.count(bArr, intValue.intValue()) < intValue2.intValue()) {
                    throw new IllegalArgumentException("记忆结晶不足");
                }
                i = Math.addExact(i, Math.multiplyExact(intValue2.intValue(), localResourceCatalog.memoryExchange.get(intValue).intValue()));
                if (intValue2.intValue() > 0) {
                    arrayList.add(Arrays.asList(intValue, intValue2));
                }
            }
            if (i <= 0) {
                throw new IllegalArgumentException("请选择兑换数量");
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                LocalGiftEngine.consume(result, ((Integer) entry.getKey()).intValue(), ((Integer) entry.getValue()).intValue());
            }
            LocalResourceEngine.grant(result, localResourceCatalog, "item", 24, i, 1);
            result.add("replyMemoryCrystalExchangeSuipian", BsonLite.document("ii", arrayList, "sp", Integer.valueOf(i)));
            return result;
        } catch (ArithmeticException | IllegalArgumentException e) {
            LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
            result2.add("showMessageStr", BsonLite.document("m", e.getMessage()));
            return result2;
        }
    }
}
