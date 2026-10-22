package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalCommerceEngine;
import com.project7.localmanager.LocalResourceCatalog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalResourceEngine {
    static final String[] COINS = {"money", "yuanbao", "crystal", "summonCoin", "giftCoin", "friendCoin", "souvenir"};
    static final String[] MAIL_COINS = {"mn", "yb", "cr", "sc", "gc", "fc", "svc"};

    LocalResourceEngine() {
    }

    static final class Reply {
        final String method;
        final byte[] parameters;

        Reply(String str, byte[] bArr) {
            this.method = str;
            this.parameters = bArr;
        }
    }

    static final class Result {
        String inventoryDeliveryId;
        byte[] profile;
        final List<Reply> replies = new ArrayList();
        final List<List<Integer>> itemRewards = new ArrayList();
        final List<Integer> heroRewards = new ArrayList();
        final List<List<Object>> treasureRewards = new ArrayList();

        Result(byte[] bArr) {
            this.profile = bArr;
        }

        void add(String str, byte[] bArr) {
            this.replies.add(new Reply(str, bArr));
        }

        byte[] reward() {
            return BsonLite.document("item", this.itemRewards, "hero", this.heroRewards, "treasure", this.treasureRewards);
        }
    }

    static byte[] doc(byte[] bArr, String str) {
        byte[] documentValue = BsonLite.documentValue(bArr, str);
        return documentValue == null ? BsonLite.EMPTY_DOCUMENT : documentValue;
    }

    static int value(byte[] bArr, String str) {
        return LocalCommerceEngine.value(bArr, str);
    }

    static String uuid() {
        return LocalStoryEnvironment.identity();
    }

    static List<byte[]> array(byte[] bArr) {
        return new ArrayList(BsonLite.documentEntries(bArr).values());
    }

    static boolean currency(String str) {
        return Arrays.asList(COINS).contains(str) || Arrays.asList("tCoin", "bCoin", "skinCoin", "wCoin", "sCoin", "lxtlCoin", "newFriendCoin").contains(str);
    }

    static boolean ownsHero(byte[] bArr, int i) {
        return !BsonLite.keys(BsonLite.profileHeroDocument(bArr, i)).isEmpty();
    }

    static byte[] repairHeroDefaults(byte[] bArr, LocalResourceCatalog localResourceCatalog) {
        byte[] bArr2;
        for (byte[] bArr3 : array(doc(doc(bArr, "heromgr"), "hrs"))) {
            int value = value(bArr3, "0");
            byte[] doc = doc(bArr3, "1");
            LocalResourceCatalog.Hero hero = localResourceCatalog.heroes.get(Integer.valueOf(value));
            if (hero != null && value(doc, "sl") < hero.rank) {
                bArr2 = BsonLite.withProfileInt(doc, "sl", hero.rank);
            } else {
                bArr2 = doc;
            }
            byte[] doc2 = doc(bArr2, "ti");
            if (value(doc2, "mc") == 9999) {
                bArr2 = BsonLite.withProfileDocument(bArr2, "ti", BsonLite.withProfileInt(doc2, "mc", 25));
            }
            if (bArr2 != doc) {
                bArr = BsonLite.withHeroDocument(bArr, value, bArr2);
            }
        }
        return bArr;
    }

    static void validate(LocalResourceCatalog localResourceCatalog, String str, int i, int i2, int i3) {
        if (i2 < 1 || i2 > 1000000) {
            throw new IllegalArgumentException("数量应为 1-1000000");
        }
        if (currency(str)) {
            return;
        }
        if ("skin".equals(str)) {
            if (!localResourceCatalog.skins.containsKey(Integer.valueOf(i)) || i2 != 1) {
                throw new IllegalArgumentException("时装 ID 无效或数量不是 1");
            }
            return;
        }
        if ("hero".equals(str)) {
            if (!localResourceCatalog.heroes.containsKey(Integer.valueOf(i)) || i2 != 1) {
                throw new IllegalArgumentException("角色 ID 无效或数量不是 1");
            }
            return;
        }
        if ("item".equals(str)) {
            LocalResourceCatalog.Item item = localResourceCatalog.items.get(Integer.valueOf(i));
            if (item == null || item.type == 5) {
                throw new IllegalArgumentException("道具 ID 无效；影装请选择影装类型：" + i);
            }
            return;
        }
        if ("treasure".equals(str)) {
            if (i2 <= 100 && localResourceCatalog.items.containsKey(Integer.valueOf(i))) {
                if (localResourceCatalog.treasures.containsKey(i + ":" + i3)) {
                    return;
                }
            }
            throw new IllegalArgumentException("影装 ID/品质无效或数量超过 100");
        }
        throw new IllegalArgumentException("资源类型无效");
    }

    static void grant(Result result, LocalResourceCatalog localResourceCatalog, String str, int i, int i2, int i3) {
        grant(result, localResourceCatalog, str, i, i2, i3, null);
    }

    static void grant(Result result, LocalResourceCatalog localResourceCatalog, String str, int i, int i2, int i3, byte[] bArr) {
        byte[] bArr2;
        int i4;
        char c;
        int i5;
        int i6;
        int i7;
        validate(localResourceCatalog, str, i, i2, i3);
        if (currency(str)) {
            result.profile = BsonLite.withProfileInt(result.profile, str, Math.addExact(value(result.profile, str), i2));
            int indexOf = Arrays.asList(COINS).indexOf(str);
            if (indexOf >= 0) {
                i7 = new int[]{102, 80, 89, 90, 105, 179, 329}[indexOf];
            } else {
                i7 = new int[]{2051, 2052, 2053, 2054, 2055, 2058, 10130}[Arrays.asList("tCoin", "bCoin", "skinCoin", "wCoin", "sCoin", "lxtlCoin", "newFriendCoin").indexOf(str)];
            }
            result.itemRewards.add(Arrays.asList(Integer.valueOf(i7), Integer.valueOf(i2)));
        } else if ("skin".equals(str)) {
            LocalResourceCatalog.Skin skin = localResourceCatalog.skins.get(Integer.valueOf(i));
            byte[] doc = doc(result.profile, "heromgr");
            byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, skin.hero);
            byte[] doc2 = doc(profileHeroDocument, "sk");
            byte[] doc3 = doc(doc, "ps");
            ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(doc3, Integer.toString(skin.hero)));
            boolean contains = arrayList.contains(Integer.valueOf(i));
            Iterator<byte[]> it = BsonLite.documentEntries(doc2).values().iterator();
            while (it.hasNext()) {
                contains |= value(it.next(), "i") == i;
            }
            if (!contains) {
                if (BsonLite.keys(doc2).size() + arrayList.size() >= 500) {
                    throw new IllegalArgumentException("衣橱数量已达到本地安全上限");
                }
                if (ownsHero(result.profile, skin.hero)) {
                    String uuid = uuid();
                    byte[] purchasedSkin = LocalCommerceEngine.purchasedSkin(i, uuid, LocalStoryEnvironment.now() / 1000);
                    result.profile = BsonLite.withHeroDocument(result.profile, skin.hero, BsonLite.withProfileDocument(profileHeroDocument, "sk", BsonLite.withProfileDocument(doc2, uuid, purchasedSkin)));
                    result.add("syncOneSkinData", BsonLite.document("h", Integer.valueOf(skin.hero), "s", new BsonLite.UuidValue(uuid), "d", purchasedSkin));
                    i4 = 2;
                    c = 0;
                    i5 = 1;
                } else {
                    arrayList.add(Integer.valueOf(i));
                    byte[] withProfileDocument = BsonLite.withProfileDocument(doc, "ps", BsonLite.withProfileArray(doc3, Integer.toString(skin.hero), arrayList));
                    result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", withProfileDocument);
                    i4 = 2;
                    c = 0;
                    i5 = 1;
                    result.add("syncHeroMgrPendingData", BsonLite.document("d", withProfileDocument));
                }
                List<List<Integer>> list = result.itemRewards;
                Integer[] numArr = new Integer[i4];
                numArr[c] = Integer.valueOf(skin.item);
                numArr[i5] = Integer.valueOf(i5);
                list.add(Arrays.asList(numArr));
            }
            byte[] doc4 = doc(result.profile, "heromgr");
            ArrayList arrayList2 = new ArrayList(BsonLite.intArrayValues(doc4, "es"));
            if (!arrayList2.contains(Integer.valueOf(i))) {
                arrayList2.add(Integer.valueOf(i));
            }
            result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", BsonLite.withProfileArray(doc4, "es", arrayList2));
        } else if ("hero".equals(str)) {
            if (!ownsHero(result.profile, i)) {
                addMissingHero(result, i, localResourceCatalog.heroes.get(Integer.valueOf(i)).rank);
            } else {
                LocalResourceCatalog.Hero hero = localResourceCatalog.heroes.get(Integer.valueOf(i));
                grant(result, localResourceCatalog, "item", Math.max(1, Math.min(4, hero.rank)) + 4252, Math.max(1, hero.duplicate), 1);
                return;
            }
        } else {
            LocalResourceCatalog.Item item = localResourceCatalog.items.get(Integer.valueOf(i));
            boolean equals = "treasure".equals(str);
            if ("treasure".equals(str) && bArr == null) {
                bArr2 = localResourceCatalog.treasures.get(i + ":" + i3).data();
            } else {
                bArr2 = bArr;
            }
            grantInventory(result, localResourceCatalog, item, i2, equals, i3, bArr2);
        }
        if ("money".equals(str)) {
            i6 = i2;
            result.profile = LocalNewAchievementEngine.add(result.profile, 1, i6);
        } else {
            i6 = i2;
        }
        if ("treasure".equals(str)) {
            result.profile = LocalNewAchievementEngine.add(result.profile, 51, Collections.singletonList(Integer.valueOf(i3)), i6);
        }
    }

    static void grantItem(Result result, LocalResourceCatalog.Item item, int i) {
        if (item == null || item.type == 5 || item.type == 8 || item.wrap < 1 || i < 1 || i > 1000000) {
            throw new IllegalArgumentException("invalid physical story item");
        }
        grantInventory(result, null, item, i, false, 1, null);
    }

    private static void grantInventory(Result result, LocalResourceCatalog localResourceCatalog, LocalResourceCatalog.Item item, int i, boolean z, int i2, byte[] bArr) {
        int i3;
        int i4;
        Iterator<byte[]> it;
        String str;
        LocalResourceCatalog.Item item2;
        int min;
        int i5 = item.f8id;
        byte[] doc = doc(result.profile, "inv");
        String str2 = "items";
        List<byte[]> array = array(doc(doc, "items"));
        ArrayList arrayList = new ArrayList();
        int i6 = 0;
        if (z) {
            i3 = i;
        } else {
            i3 = i;
            int i7 = 0;
            while (i7 < array.size() && i3 > 0) {
                byte[] bArr2 = array.get(i7);
                if (value(bArr2, "i") == i5 && (min = Math.min(i3, Math.max(i6, item.wrap - value(bArr2, "w")))) != 0) {
                    byte[] withProfileInt = BsonLite.withProfileInt(bArr2, "w", Math.addExact(value(bArr2, "w"), min));
                    array.set(i7, withProfileInt);
                    arrayList.add(withProfileInt);
                    i3 -= min;
                }
                i7++;
                i6 = 0;
            }
        }
        int i8 = z ? 1 : item.wrap;
        long j = i8;
        long j2 = ((i3 + j) - 1) / j;
        Iterator<byte[]> it2 = array.iterator();
        int i9 = 0;
        while (true) {
            i4 = i3;
            if (!it2.hasNext()) {
                break;
            }
            byte[] next = it2.next();
            if (localResourceCatalog == null) {
                str = str2;
                it = it2;
                item2 = null;
            } else {
                it = it2;
                str = str2;
                item2 = localResourceCatalog.items.get(Integer.valueOf(value(next, "i")));
            }
            if (localResourceCatalog == null) {
                if ((BsonLite.intValue(doc(next, "tr"), "cl") != null) != (item.type == 5)) {
                    it2 = it;
                    i3 = i4;
                    str2 = str;
                }
                i9++;
                it2 = it;
                i3 = i4;
                str2 = str;
            } else {
                if (item2 != null) {
                    if ((item2.type == 5) != (item.type == 5)) {
                    }
                    i9++;
                }
                it2 = it;
                i3 = i4;
                str2 = str;
            }
        }
        String str3 = str2;
        if (j2 <= 500 && i9 + j2 <= 500) {
            int i10 = i4;
            while (i10 > 0) {
                int min2 = Math.min(i8, i10);
                byte[] document = BsonLite.document("u", new BsonLite.UuidValue(uuid()), "i", Integer.valueOf(i5), "w", Integer.valueOf(min2), "c", 0, "ctt", Integer.valueOf((int) (LocalStoryEnvironment.now() / 1000)));
                if (z) {
                    document = BsonLite.withProfileDocument(document, "tr", bArr);
                    result.treasureRewards.add(Arrays.asList(Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(min2), Collections.singletonList(new BsonLite.UuidValue(BsonLite.uuidValue(document, "u")))));
                }
                array.add(document);
                arrayList.add(document);
                i10 -= min2;
            }
            result.profile = BsonLite.withProfileDocument(result.profile, "inv", BsonLite.withProfileArray(doc, str3, array));
            result.add("updateItems", BsonLite.document("i", arrayList));
            if (!z) {
                result.itemRewards.add(Arrays.asList(Integer.valueOf(i5), Integer.valueOf(i)));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("背包空间不足，奖励保留在邮件/卡池中");
    }

    static void addMissingHero(Result result, int i, int i2) {
        if (ownsHero(result.profile, i)) {
            return;
        }
        if (i <= 0 || i2 < 1 || i2 > 4) {
            throw new IllegalArgumentException("invalid original hero definition");
        }
        result.profile = BsonLite.withHero(result.profile, i);
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.profileHeroDocument(result.profile, i), "sl", i2);
        result.profile = BsonLite.withHeroDocument(result.profile, i, withProfileInt);
        result.heroRewards.add(Integer.valueOf(i));
        result.add("addHero", BsonLite.document("h", Integer.valueOf(i), "d", withProfileInt));
    }

    static void syncCurrencies(Result result) {
        LocalCommerceEngine.Result result2 = new LocalCommerceEngine.Result(result.profile);
        LocalCommerceEngine.currencies(result2);
        for (Map.Entry<String, byte[]> entry : result2.replies.entrySet()) {
            result.add(entry.getKey(), entry.getValue());
        }
        if (BsonLite.intValue(result.profile, "friendCoin") != null) {
            result.add("updateFriendCoin", BsonLite.intDocument("v", value(result.profile, "friendCoin")));
        }
        if (BsonLite.intValue(result.profile, "giftCoin") != null) {
            result.add("updateGiftCoin", BsonLite.intDocument("v", value(result.profile, "giftCoin")));
        }
    }
}
