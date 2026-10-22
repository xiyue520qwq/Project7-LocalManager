package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class LocalHeroGrowthEngine {
    LocalHeroGrowthEngine() {
    }

    static boolean handles(String str) {
        return "incHeroStarOrder".equals(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a4  */
    /* JADX WARN: Type inference failed for: r2v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, byte[] bArr2) {
        Object obj;
        Object obj2;
        boolean z;
        String str;
        int min;
        byte[] withProfileInt;
        String str2 = bArr2;
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        try {
            int value = LocalResourceEngine.value(str2, "h");
            try {
                if (!LocalResourceEngine.ownsHero(bArr, value)) {
                    throw new IllegalArgumentException("未拥有该神器使");
                }
                byte[] profileHeroDocument = BsonLite.profileHeroDocument(bArr, value);
                byte[] bArr3 = localFeatureCatalog.get("D", Integer.valueOf(value));
                int value2 = LocalResourceEngine.value(profileHeroDocument, "sl");
                int value3 = LocalResourceEngine.value(profileHeroDocument, "so");
                try {
                    boolean equals = Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "special"));
                    int i = equals ? 5 : 4;
                    if (value2 == i) {
                        obj = "artifact";
                        if (value3 == 4) {
                            z = true;
                            if (bArr3 == null) {
                                obj2 = "h";
                                if (value2 >= 1 && value2 <= i && value3 >= 1 && value3 <= 4) {
                                    if (z) {
                                        if (!equals) {
                                            try {
                                                if (!Boolean.TRUE.equals(BsonLite.boolValue(profileHeroDocument, "oa"))) {
                                                }
                                            } catch (ArithmeticException e) {
                                                e = e;
                                                str2 = "incHeroStarOrder";
                                                LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
                                                result2.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                                result2.add(str2, BsonLite.document(obj2, -1, obj, false));
                                                return result2;
                                            } catch (IllegalArgumentException e2) {
                                                e = e2;
                                                str2 = "incHeroStarOrder";
                                                LocalResourceEngine.Result result22 = new LocalResourceEngine.Result(bArr);
                                                result22.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                                result22.add(str2, BsonLite.document(obj2, -1, obj, false));
                                                return result22;
                                            }
                                        }
                                        throw new IllegalArgumentException("该神器使已达到当前升星上限");
                                    }
                                    if (z && LocalResourceEngine.value(bArr, "level") <= 30) {
                                        throw new IllegalArgumentException("指挥使等级需超过 30 级才能开启神器");
                                    }
                                    byte[] bArr4 = localFeatureCatalog.get("G", value2 + ":" + value3);
                                    byte[] bArr5 = localFeatureCatalog.get("K", value + ":" + value2 + ":" + value3);
                                    if (bArr4 == null || bArr5 == null) {
                                        throw new IllegalArgumentException("缺少该阶段的升星配置");
                                    }
                                    int value4 = LocalResourceEngine.value(bArr4, equals ? "yjt_fragment" : "fragment");
                                    int value5 = LocalResourceEngine.value(bArr3, "fragment");
                                    int i2 = equals ? 13280 : 24;
                                    if (value5 == i2) {
                                        str = "sl";
                                        min = 0;
                                    } else {
                                        str = "sl";
                                        min = Math.min(value4, count(bArr, value5));
                                    }
                                    if (min > 0) {
                                        LocalGiftEngine.consume(result, value5, min);
                                    }
                                    LocalGiftEngine.consume(result, i2, value4 - min);
                                    if (!equals) {
                                        int value6 = LocalResourceEngine.value(bArr4, "itemid");
                                        if (value6 > 0) {
                                            LocalGiftEngine.consume(result, value6, Math.max(1, LocalResourceEngine.value(bArr4, "itemnum")));
                                        }
                                        for (byte[] bArr6 : LocalResourceEngine.array(LocalResourceEngine.doc(bArr4, "items"))) {
                                            LocalGiftEngine.consume(result, LocalResourceEngine.value(bArr6, "0"), LocalResourceEngine.value(bArr6, "1"));
                                        }
                                    }
                                    consumeTreasure(result, localFeatureCatalog, bArr5, str2);
                                    byte[] profileHeroDocument2 = BsonLite.profileHeroDocument(result.profile, value);
                                    if (z) {
                                        withProfileInt = BsonLite.withProfileBool(profileHeroDocument2, "oa", true);
                                    } else {
                                        if (value3 == 4) {
                                            value2++;
                                        }
                                        withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileInt(profileHeroDocument2, str, value2), "so", value3 == 4 ? 1 : value3 + 1);
                                    }
                                    result.profile = BsonLite.withHeroDocument(result.profile, value, withProfileInt);
                                    result.add("incHeroStarOrder", BsonLite.document(obj2, Integer.valueOf(value), obj, Boolean.valueOf(z)));
                                    return result;
                                }
                            }
                            throw new IllegalArgumentException("该神器使已达到当前升星上限");
                        }
                    } else {
                        obj = "artifact";
                    }
                    z = false;
                    if (bArr3 == null) {
                    }
                    throw new IllegalArgumentException("该神器使已达到当前升星上限");
                } catch (ArithmeticException e3) {
                    e = e3;
                    obj = "artifact";
                    obj2 = "h";
                    str2 = "incHeroStarOrder";
                    LocalResourceEngine.Result result222 = new LocalResourceEngine.Result(bArr);
                    result222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    result222.add(str2, BsonLite.document(obj2, -1, obj, false));
                    return result222;
                } catch (IllegalArgumentException e4) {
                    e = e4;
                    obj = "artifact";
                    obj2 = "h";
                    str2 = "incHeroStarOrder";
                    LocalResourceEngine.Result result2222 = new LocalResourceEngine.Result(bArr);
                    result2222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                    result2222.add(str2, BsonLite.document(obj2, -1, obj, false));
                    return result2222;
                }
            } catch (ArithmeticException e5) {
                e = e5;
            } catch (IllegalArgumentException e6) {
                e = e6;
            }
        } catch (ArithmeticException | IllegalArgumentException e7) {
            e = e7;
            obj = "artifact";
            str2 = "incHeroStarOrder";
            obj2 = "h";
        }
    }

    static int count(byte[] bArr, int i) {
        int i2 = 0;
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "inv"), "items"))) {
            if (LocalResourceEngine.value(bArr2, "i") == i) {
                i2 = Math.addExact(i2, LocalResourceEngine.value(bArr2, "w"));
            }
        }
        return i2;
    }

    private static void consumeTreasure(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr, byte[] bArr2) {
        int value = LocalResourceEngine.value(bArr, "needTreasureId");
        int value2 = LocalResourceEngine.value(bArr2, "fkt");
        byte[] doc = LocalResourceEngine.doc(bArr2, "cost");
        List<String> keys = BsonLite.keys(doc);
        if (value == 0) {
            if (!keys.isEmpty() || value2 != 0) {
                throw new IllegalArgumentException("该阶段不需要影装材料");
            }
            return;
        }
        if (value2 == 0) {
            if (keys.size() != 1) {
                throw new IllegalArgumentException("请选择所需的升星影装");
            }
            String uuidValue = BsonLite.uuidValue(doc, keys.get(0));
            byte[] findOwned = LocalEquipmentEngine.findOwned(result.profile, uuidValue);
            if (uuidValue == null || findOwned == null) {
                throw new IllegalArgumentException("未拥有该升星影装");
            }
            int value3 = LocalResourceEngine.value(findOwned, "i");
            byte[] doc2 = LocalResourceEngine.doc(findOwned, "tr");
            if ((value3 != value && !BsonLite.intArrayValues(bArr, "otherNeedTreasure").contains(Integer.valueOf(value3))) || (BsonLite.intValue(bArr, "needTreasureClass") != null && LocalResourceEngine.value(doc2, "cl") != LocalResourceEngine.value(bArr, "needTreasureClass"))) {
                throw new IllegalArgumentException("升星影装类型或品质不匹配");
            }
            Iterator<Integer> it = BsonLite.intArrayValues(doc2, "st").iterator();
            int i = 0;
            while (it.hasNext()) {
                i += it.next().intValue();
            }
            if (BsonLite.intValue(bArr, "needTreasureStars") != null && i != LocalResourceEngine.value(bArr, "needTreasureStars")) {
                throw new IllegalArgumentException("升星影装星数不匹配");
            }
            if (Boolean.TRUE.equals(BsonLite.boolValue(doc2, "f")) || LocalResourceEngine.value(findOwned, "c") != 0) {
                throw new IllegalArgumentException("请先解锁影装材料");
            }
            result.profile = LocalEquipmentEngine.removeOwned(result.profile, uuidValue);
            result.add("unequipTreasureAllHeroReply", BsonLite.document("u", new BsonLite.UuidValue(uuidValue)));
            result.add("deleteItems", BsonLite.document("i", Collections.singletonList(new BsonLite.UuidValue(uuidValue))));
            LocalTreasurePlanEngine.pruneRemoved(result, localFeatureCatalog, uuidValue);
            return;
        }
        if (!keys.isEmpty() || value2 != LocalResourceEngine.value(bArr, "fakeTreasureId")) {
            throw new IllegalArgumentException("升星替代材料不匹配");
        }
        LocalGiftEngine.consume(result, value2, 1);
    }
}
