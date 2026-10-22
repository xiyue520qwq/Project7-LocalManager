package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Predicate;

/* loaded from: classes.dex */
final class LocalHomeSpecialGiftEngine {
    LocalHomeSpecialGiftEngine() {
    }

    /* renamed from: d */
    static byte[] m38d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m39v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static byte[] gifts(byte[] bArr, int i) {
        if (BsonLite.keys(bArr).contains("hg") && BsonLite.arrayValue(bArr, "hg") == null) {
            return null;
        }
        byte[] bArr2 = LocalHomeEngine.pairs(bArr, "hg").get(Integer.valueOf(i));
        return bArr2 == null ? BsonLite.EMPTY_DOCUMENT : BsonLite.arrayValue(bArr2, "1");
    }

    static Integer state(byte[] bArr, int i) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = LocalHomeEngine.pairs(BsonLite.document("pairs", new BsonLite.ArrayValue(bArr)), "pairs").get(Integer.valueOf(i));
        if (bArr2 == null) {
            return 0;
        }
        return BsonLite.intValue(bArr2, "1");
    }

    static byte[] setState(byte[] bArr, int i, int i2, int i3) {
        LocalHomeEngine.require(gifts(bArr, i) != null, "特殊礼物记录格式未知，保留原记录");
        return LocalHomeEngine.pairSet(bArr, "hg", i, new BsonLite.ArrayValue(m38d(LocalHomeEngine.pairSet(BsonLite.document("pairs", new BsonLite.ArrayValue(gifts(bArr, i))), "pairs", i2, Integer.valueOf(i3)), "pairs")));
    }

    static void reconcile(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, boolean z) {
        Integer state;
        byte[] m38d = m38d(result.profile, "hhd");
        Map<Integer, Integer> inventoryCounts = LocalHomeEngine.inventoryCounts(result.profile);
        byte[] bArr = m38d;
        for (String str : localFeatureCatalog.entries.keySet()) {
            if (str.startsWith("HSG:")) {
                byte[] bArr2 = localFeatureCatalog.entries.get(str);
                int m39v = m39v(bArr2, "heroid");
                int m39v2 = m39v(bArr2, "item_id");
                if (LocalResourceEngine.ownsHero(result.profile, m39v) && inventoryCounts.getOrDefault(Integer.valueOf(m39v2), 0).intValue() > 0 && (state = state(gifts(bArr, m39v), m39v2)) != null && state.intValue() == 0) {
                    bArr = setState(bArr, m39v, m39v2, 1);
                }
            }
        }
        if (!Arrays.equals(bArr, m38d)) {
            result.profile = BsonLite.withProfileDocument(result.profile, "hhd", bArr);
            if (z) {
                sync(result);
            }
        }
    }

    static void sync(LocalResourceEngine.Result result) {
        result.replies.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalHomeSpecialGiftEngine$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean equals;
                equals = "syncHeroHomeGift".equals(((LocalResourceEngine.Reply) obj).method);
                return equals;
            }
        });
        result.add("syncHeroHomeGift", BsonLite.document("hg", new BsonLite.ArrayValue(m38d(m38d(result.profile, "hhd"), "hg"))));
    }

    static void give(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr) {
        int m39v = m39v(bArr, "h");
        int m39v2 = m39v(bArr, "k");
        byte[] bArr2 = localFeatureCatalog.get("HSG", Integer.valueOf(m39v2));
        LocalHomeEngine.require(LocalResourceEngine.ownsHero(result.profile, m39v), "神器使尚未获得");
        LocalHomeEngine.require(LocalHomeEngine.pairs(m38d(result.profile, "hhd"), "hri").containsKey(Integer.valueOf(m39v)), "请先让神器使入住");
        LocalHomeEngine.require(bArr2 != null && m39v(bArr2, "heroid") == m39v && m39v(bArr2, "text") > 0, "特殊礼物与神器使不匹配");
        int m39v3 = m39v(bArr2, "item_id");
        Integer state = state(gifts(m38d(result.profile, "hhd"), m39v), m39v3);
        LocalHomeEngine.require(state != null && (state.intValue() == 1 || state.intValue() == 2), "尚未获得该特殊礼物");
        LocalGiftEngine.consume(result, m39v3, 1);
        result.profile = BsonLite.withProfileDocument(result.profile, "hhd", setState(m38d(result.profile, "hhd"), m39v, m39v3, 2));
        sync(result);
        result.add("replyGiveHeroSpecialGift", BsonLite.document("r", true, "i", BsonLite.document("h", Integer.valueOf(m39v), "k", Integer.valueOf(m39v2))));
    }
}
