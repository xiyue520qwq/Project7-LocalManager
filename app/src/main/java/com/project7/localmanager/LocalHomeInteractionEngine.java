package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalHomeInteractionEngine {
    LocalHomeInteractionEngine() {
    }

    static boolean handles(String str) {
        return "requestAddHeroHomeResource".equals(str) || "requestSaveHeroCamera".equals(str);
    }

    /* renamed from: d */
    static byte[] m36d(byte[] bArr, String str) {
        return LocalHomeEngine.m34d(bArr, str);
    }

    /* renamed from: v */
    static int m37v(byte[] bArr, String str) {
        return LocalHomeEngine.m35v(bArr, str);
    }

    static void require(boolean z, String str) {
        LocalHomeEngine.require(z, str);
    }

    static byte[] setPair(byte[] bArr, String str, int i, Object obj) {
        Map<Integer, byte[]> numericPairs = LocalHomeWishEngine.numericPairs(bArr, str);
        numericPairs.put(Integer.valueOf(i), BsonLite.withCopiedValue(numericPairs.getOrDefault(Integer.valueOf(i), BsonLite.document("0", Integer.valueOf(i))), "1", BsonLite.document("value", obj), "value"));
        ArrayList arrayList = new ArrayList();
        Iterator<byte[]> it = numericPairs.values().iterator();
        while (it.hasNext()) {
            arrayList.add(new BsonLite.ArrayValue(it.next()));
        }
        return BsonLite.withProfileArray(bArr, str, arrayList);
    }

    static void apply(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr) {
        boolean z;
        int m37v = m37v(bArr, "h");
        byte[] m36d = m36d(result.profile, "hhd");
        int i = 3;
        int i2 = 4;
        boolean z2 = true;
        if ("requestSaveHeroCamera".equals(str)) {
            Iterator<Map.Entry<String, byte[]>> it = localFeatureCatalog.entries.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                Map.Entry<String, byte[]> next = it.next();
                if (next.getKey().startsWith("HM:") && m37v(next.getValue(), "model") == m37v && LocalResourceEngine.ownsHero(result.profile, m37v(next.getValue(), "hero"))) {
                    z = true;
                    break;
                }
            }
            require(z, "该模型对应的神器使尚未获得");
            require(BsonLite.arrayValue(bArr, "c") != null, "视角数据格式无效");
            byte[] m36d2 = m36d(bArr, "c");
            require(BsonLite.keys(m36d2).size() == 4, "视角数据格式无效");
            ArrayList arrayList = new ArrayList();
            int i3 = 0;
            while (i3 < i2) {
                String num = Integer.toString(i3);
                require(BsonLite.arrayValue(m36d2, num) != null ? z2 : false, "视角向量格式无效");
                byte[] m36d3 = m36d(m36d2, num);
                require(BsonLite.keys(m36d3).size() == i, "视角向量格式无效");
                ArrayList arrayList2 = new ArrayList();
                int i4 = 0;
                while (i4 < i) {
                    Number numericValue = BsonLite.numericValue(m36d3, Integer.toString(i4));
                    require(numericValue != null && Double.isFinite(numericValue.doubleValue()), "视角向量格式无效");
                    arrayList2.add(numericValue);
                    i4++;
                    i = 3;
                }
                arrayList.add(arrayList2);
                i3++;
                i = 3;
                i2 = 4;
                z2 = true;
            }
            result.profile = BsonLite.withProfileDocument(result.profile, "hhd", setPair(m36d, "hc", m37v, arrayList));
            result.add("replySaveHeroCamera", BsonLite.document("r", true, "i", BsonLite.document("m", Integer.valueOf(m37v), "ci", arrayList)));
            return;
        }
        String stringValue = BsonLite.stringValue(bArr, "t");
        int m37v2 = m37v(bArr, "k");
        if ("music".equals(stringValue)) {
            require(m37v == 0 && localFeatureCatalog.get("M", Integer.valueOf(m37v2)) != null, "乐章解锁参数无效");
            require(BsonLite.intArrayValues(m36d, "hhm").contains(Integer.valueOf(m37v2)), "乐章尚未获得");
        } else if ("anim".equals(stringValue)) {
            byte[] bArr2 = localFeatureCatalog.get("HA", Integer.valueOf(m37v2));
            require(LocalResourceEngine.ownsHero(result.profile, m37v), "神器使尚未获得");
            require(bArr2 != null && m37v(bArr2, "hero_id") == m37v, "动作与神器使不匹配");
            require(LocalHomeWishEngine.level(result.profile, m37v) >= Math.max(1, m37v(bArr2, "happy")), "羁绊等级不足");
        } else {
            throw new IllegalArgumentException("家园资源类型尚未接入");
        }
        byte[] bArr3 = LocalHomeWishEngine.numericPairs(m36d, "hgr").get(Integer.valueOf(m37v));
        require(bArr3 == null || BsonLite.documentValue(bArr3, "1") != null, "家园资源记录格式未知");
        byte[] m36d4 = bArr3 == null ? BsonLite.EMPTY_DOCUMENT : m36d(bArr3, "1");
        require((BsonLite.keys(m36d4).contains(stringValue) && BsonLite.arrayValue(m36d4, stringValue) == null) ? false : true, "家园资源记录格式未知");
        ArrayList arrayList3 = new ArrayList(BsonLite.intArrayValues(m36d4, stringValue));
        require(arrayList3.size() == BsonLite.keys(m36d(m36d4, stringValue)).size(), "家园资源记录格式未知");
        if (!arrayList3.contains(Integer.valueOf(m37v2))) {
            arrayList3.add(Integer.valueOf(m37v2));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "hhd", setPair(m36d, "hgr", m37v, BsonLite.withProfileArray(m36d4, stringValue, arrayList3)));
        result.add("replyAddHeroHomeResource", BsonLite.document("r", true, "i", BsonLite.document("h", Integer.valueOf(m37v), "t", stringValue, "k", Integer.valueOf(m37v2), "ks", Collections.singletonList(Integer.valueOf(m37v2)))));
    }
}
