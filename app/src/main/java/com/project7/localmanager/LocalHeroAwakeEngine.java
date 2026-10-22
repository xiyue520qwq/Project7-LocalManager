package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceCatalog;
import com.project7.localmanager.LocalResourceEngine;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

/* loaded from: classes.dex */
final class LocalHeroAwakeEngine {
    LocalHeroAwakeEngine() {
    }

    static boolean handles(String str) {
        return Arrays.asList("upgradeAwakeStage", "changeAwakeSkinStyle", "seeAwakeSkillChanged").contains(str);
    }

    /* renamed from: v */
    static int m25v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m24d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static void require(boolean z, String str) {
        LocalHomeEngine.require(z, str);
    }

    static boolean released(LocalFeatureCatalog localFeatureCatalog, int i, long j) {
        byte[] bArr = localFeatureCatalog.get("AH", Integer.valueOf(i));
        if (bArr == null || m25v(bArr, "open") != 1 || Boolean.TRUE.equals(BsonLite.boolValue(bArr, "special"))) {
            return false;
        }
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "time");
        if (intArrayValues.isEmpty()) {
            return true;
        }
        if (intArrayValues.size() < 6) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.setLenient(false);
        try {
            calendar.set(intArrayValues.get(0).intValue(), intArrayValues.get(1).intValue() - 1, intArrayValues.get(2).intValue(), intArrayValues.get(3).intValue(), intArrayValues.get(4).intValue(), intArrayValues.get(5).intValue());
            return j >= calendar.getTimeInMillis();
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    static byte[] owned(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, int i) {
        require(LocalResourceEngine.ownsHero(bArr, i), "未拥有该神器使");
        byte[] profileHeroDocument = BsonLite.profileHeroDocument(bArr, i);
        require(released(localFeatureCatalog, i, LocalStoryEnvironment.now()), "该神器使尚未开放觉醒");
        require(Boolean.TRUE.equals(BsonLite.boolValue(profileHeroDocument, "oa")), "请先开启神器");
        return profileHeroDocument;
    }

    static String skinUuid(byte[] bArr, int i) {
        for (String str : BsonLite.keys(m24d(bArr, "sk"))) {
            if (m25v(m24d(m24d(bArr, "sk"), str), "i") == i && !Boolean.TRUE.equals(BsonLite.boolValue(m24d(m24d(bArr, "sk"), str), "fb"))) {
                return str;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x021c A[Catch: ArithmeticException | IllegalArgumentException -> 0x02e4, IllegalArgumentException -> 0x02e6, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x02e4, blocks: (B:3:0x001e, B:5:0x002e, B:7:0x003a, B:12:0x004a, B:15:0x005e, B:20:0x006b, B:23:0x008e, B:28:0x00af, B:30:0x00b6, B:31:0x00bd, B:34:0x00d4, B:36:0x0103, B:38:0x0113, B:41:0x011b, B:42:0x0138, B:50:0x0162, B:53:0x0171, B:55:0x0192, B:58:0x019e, B:62:0x01b3, B:65:0x01c3, B:71:0x01da, B:75:0x01f7, B:78:0x01fc, B:81:0x0206, B:85:0x025f, B:87:0x0269, B:91:0x0274, B:93:0x0282, B:94:0x0286, B:97:0x02cb, B:98:0x02c6, B:101:0x021c, B:105:0x022e, B:107:0x0238, B:111:0x0258, B:113:0x024e), top: B:2:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0282 A[Catch: ArithmeticException | IllegalArgumentException -> 0x02e4, IllegalArgumentException -> 0x02e6, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x02e4, blocks: (B:3:0x001e, B:5:0x002e, B:7:0x003a, B:12:0x004a, B:15:0x005e, B:20:0x006b, B:23:0x008e, B:28:0x00af, B:30:0x00b6, B:31:0x00bd, B:34:0x00d4, B:36:0x0103, B:38:0x0113, B:41:0x011b, B:42:0x0138, B:50:0x0162, B:53:0x0171, B:55:0x0192, B:58:0x019e, B:62:0x01b3, B:65:0x01c3, B:71:0x01da, B:75:0x01f7, B:78:0x01fc, B:81:0x0206, B:85:0x025f, B:87:0x0269, B:91:0x0274, B:93:0x0282, B:94:0x0286, B:97:0x02cb, B:98:0x02c6, B:101:0x021c, B:105:0x022e, B:107:0x0238, B:111:0x0258, B:113:0x024e), top: B:2:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02c6 A[Catch: ArithmeticException | IllegalArgumentException -> 0x02e4, IllegalArgumentException -> 0x02e6, TryCatch #2 {ArithmeticException | IllegalArgumentException -> 0x02e4, blocks: (B:3:0x001e, B:5:0x002e, B:7:0x003a, B:12:0x004a, B:15:0x005e, B:20:0x006b, B:23:0x008e, B:28:0x00af, B:30:0x00b6, B:31:0x00bd, B:34:0x00d4, B:36:0x0103, B:38:0x0113, B:41:0x011b, B:42:0x0138, B:50:0x0162, B:53:0x0171, B:55:0x0192, B:58:0x019e, B:62:0x01b3, B:65:0x01c3, B:71:0x01da, B:75:0x01f7, B:78:0x01fc, B:81:0x0206, B:85:0x025f, B:87:0x0269, B:91:0x0274, B:93:0x0282, B:94:0x0286, B:97:0x02cb, B:98:0x02c6, B:101:0x021c, B:105:0x022e, B:107:0x0238, B:111:0x0258, B:113:0x024e), top: B:2:0x001e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2) {
        LocalResourceEngine.Result result;
        Object obj;
        boolean z;
        String str2;
        String str3;
        boolean z2;
        int i;
        int i2;
        LocalResourceEngine.Result result2;
        int i3;
        char c;
        LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(bArr);
        try {
            int m25v = m25v(bArr2, "hid");
            byte[] owned = owned(bArr, localFeatureCatalog, m25v);
            if ("seeAwakeSkillChanged".equals(str)) {
                if (!Boolean.TRUE.equals(BsonLite.boolValue(owned, "sak"))) {
                    result3.profile = BsonLite.withHeroDocument(bArr, m25v, BsonLite.withProfileBool(owned, "sak", true));
                    result = result3;
                } else {
                    result = result3;
                }
            } else if ("upgradeAwakeStage".equals(str)) {
                int m25v2 = m25v(owned, "as");
                require(m25v2 >= 0 && m25v2 < 4, "已达到觉醒上限");
                StringBuilder sb = new StringBuilder();
                sb.append(m25v);
                sb.append(":");
                int i4 = m25v2 + 1;
                sb.append(i4);
                byte[] bArr3 = localFeatureCatalog.get("AW", sb.toString());
                require(bArr3 != null, "缺少原版觉醒配置");
                int m25v3 = m25v(bArr3, "update_consume_item");
                int m25v4 = m25v(bArr3, "prior_consume_item");
                int m25v5 = m25v(bArr3, "update_consume_num");
                require(m25v3 > 0 && m25v5 > 0 && m25v4 != m25v3, "觉醒材料配置无效");
                if (m25v4 > 0) {
                    i = LocalHeroGrowthEngine.count(bArr, m25v4);
                } else {
                    i = 0;
                }
                int min = Math.min(m25v5, i);
                LocalGiftEngine.consume(result3, m25v4, min);
                LocalGiftEngine.consume(result3, m25v3, m25v5 - min);
                int m25v6 = m25v(bArr3, "artifact_level_up");
                require(m25v6 >= 0, "觉醒神器配置无效");
                int addExact = Math.addExact(m25v(m24d(owned, "ar"), "aao"), m25v6);
                byte[] withProfileInt = BsonLite.withProfileInt(owned, "as", i4);
                result3.profile = BsonLite.withHeroDocument(result3.profile, m25v, BsonLite.withProfileDocument(withProfileInt, "ar", BsonLite.withProfileInt(m24d(withProfileInt, "ar"), "aao", addExact)));
                int m25v7 = m25v(bArr3, "awake_skin");
                if (m25v7 <= 0) {
                    i2 = m25v;
                    result2 = result3;
                    i3 = 6;
                    c = 1;
                } else {
                    LocalResourceCatalog.Skin skin = localResourceCatalog.skins.get(Integer.valueOf(m25v7));
                    require(skin != null && skin.hero == m25v, "缺少原版觉醒时装配置");
                    i2 = m25v;
                    c = 1;
                    i3 = 6;
                    result2 = result3;
                    LocalResourceEngine.grant(result3, localResourceCatalog, "skin", m25v7, 1, 1);
                }
                Object[] objArr = new Object[i3];
                objArr[0] = "hid";
                objArr[c] = Integer.valueOf(i2);
                objArr[2] = "as";
                objArr[3] = Integer.valueOf(i4);
                objArr[4] = "aao";
                objArr[5] = Integer.valueOf(addExact);
                result = result2;
                result.add("replyUpgradeAwakeStage", BsonLite.document(objArr));
            } else {
                result = result3;
                Boolean boolValue = BsonLite.boolValue(bArr2, "ss");
                require(boolValue != null, "觉醒时装状态无效");
                int m25v8 = m25v(owned, "as");
                byte[] bArr4 = localFeatureCatalog.get("AW", m25v + ":" + m25v8);
                require(bArr4 != null && m25v(bArr4, "has_skin") == 1, "尚未解锁觉醒时装");
                String uuidValue = BsonLite.uuidValue(owned, "cs");
                String uuidValue2 = BsonLite.uuidValue(owned, "lncs");
                if (uuidValue != 0) {
                    obj = "ss";
                    if (BsonLite.documentValue(m24d(owned, "sk"), uuidValue) != null) {
                        z = true;
                        require(z, "当前时装不存在");
                        if (!boolValue.booleanValue()) {
                            int i5 = 0;
                            int i6 = 1;
                            while (i6 <= m25v8) {
                                int i7 = m25v8;
                                int m25v9 = m25v(localFeatureCatalog.get("AW", m25v + ":" + i6), "awake_skin");
                                if (m25v9 > 0) {
                                    i5 = m25v9;
                                }
                                i6++;
                                m25v8 = i7;
                            }
                            str2 = skinUuid(owned, i5);
                            require(str2 != null, "觉醒时装未领取");
                            if (!Boolean.TRUE.equals(BsonLite.boolValue(owned, "ass"))) {
                                uuidValue2 = uuidValue;
                            }
                            str3 = uuidValue2;
                        } else {
                            str2 = Boolean.TRUE.equals(BsonLite.boolValue(owned, "ass")) ? uuidValue2 : uuidValue;
                            if (str2 == null || BsonLite.documentValue(m24d(owned, "sk"), str2) == null || Boolean.TRUE.equals(BsonLite.boolValue(m24d(m24d(owned, "sk"), str2), "fb"))) {
                                str2 = skinUuid(owned, m25v);
                            }
                            require(str2 != null, "原始时装不存在");
                            str3 = uuidValue2;
                        }
                        if (boolValue.equals(BsonLite.boolValue(owned, "ass")) && uuidValue.equals(str2)) {
                            z2 = false;
                            byte[] withProfileBool = BsonLite.withProfileBool(BsonLite.withProfileUuid(owned, "cs", str2), "ass", boolValue.booleanValue());
                            if (str3 != null) {
                                withProfileBool = BsonLite.withProfileUuid(withProfileBool, "lncs", str3);
                            }
                            result.profile = BsonLite.withHeroDocument(bArr, m25v, withProfileBool);
                            Object[] objArr2 = new Object[12];
                            objArr2[0] = "hid";
                            objArr2[1] = Integer.valueOf(m25v);
                            objArr2[2] = obj;
                            objArr2[3] = boolValue;
                            objArr2[4] = "oldsi";
                            objArr2[5] = new BsonLite.UuidValue(uuidValue);
                            objArr2[6] = "newsi";
                            objArr2[7] = new BsonLite.UuidValue(str2);
                            objArr2[8] = "lcs";
                            objArr2[9] = str3 != null ? null : new BsonLite.UuidValue(str3);
                            objArr2[10] = "st";
                            objArr2[11] = Boolean.valueOf(z2);
                            result.add("replyChangeAwakeSkinStyle", BsonLite.document(objArr2));
                        }
                        z2 = true;
                        byte[] withProfileBool2 = BsonLite.withProfileBool(BsonLite.withProfileUuid(owned, "cs", str2), "ass", boolValue.booleanValue());
                        if (str3 != null) {
                        }
                        result.profile = BsonLite.withHeroDocument(bArr, m25v, withProfileBool2);
                        Object[] objArr22 = new Object[12];
                        objArr22[0] = "hid";
                        objArr22[1] = Integer.valueOf(m25v);
                        objArr22[2] = obj;
                        objArr22[3] = boolValue;
                        objArr22[4] = "oldsi";
                        objArr22[5] = new BsonLite.UuidValue(uuidValue);
                        objArr22[6] = "newsi";
                        objArr22[7] = new BsonLite.UuidValue(str2);
                        objArr22[8] = "lcs";
                        objArr22[9] = str3 != null ? null : new BsonLite.UuidValue(str3);
                        objArr22[10] = "st";
                        objArr22[11] = Boolean.valueOf(z2);
                        result.add("replyChangeAwakeSkinStyle", BsonLite.document(objArr22));
                    }
                } else {
                    obj = "ss";
                }
                z = false;
                require(z, "当前时装不存在");
                if (!boolValue.booleanValue()) {
                }
                if (boolValue.equals(BsonLite.boolValue(owned, "ass"))) {
                    z2 = false;
                    byte[] withProfileBool22 = BsonLite.withProfileBool(BsonLite.withProfileUuid(owned, "cs", str2), "ass", boolValue.booleanValue());
                    if (str3 != null) {
                    }
                    result.profile = BsonLite.withHeroDocument(bArr, m25v, withProfileBool22);
                    Object[] objArr222 = new Object[12];
                    objArr222[0] = "hid";
                    objArr222[1] = Integer.valueOf(m25v);
                    objArr222[2] = obj;
                    objArr222[3] = boolValue;
                    objArr222[4] = "oldsi";
                    objArr222[5] = new BsonLite.UuidValue(uuidValue);
                    objArr222[6] = "newsi";
                    objArr222[7] = new BsonLite.UuidValue(str2);
                    objArr222[8] = "lcs";
                    objArr222[9] = str3 != null ? null : new BsonLite.UuidValue(str3);
                    objArr222[10] = "st";
                    objArr222[11] = Boolean.valueOf(z2);
                    result.add("replyChangeAwakeSkinStyle", BsonLite.document(objArr222));
                }
                z2 = true;
                byte[] withProfileBool222 = BsonLite.withProfileBool(BsonLite.withProfileUuid(owned, "cs", str2), "ass", boolValue.booleanValue());
                if (str3 != null) {
                }
                result.profile = BsonLite.withHeroDocument(bArr, m25v, withProfileBool222);
                Object[] objArr2222 = new Object[12];
                objArr2222[0] = "hid";
                objArr2222[1] = Integer.valueOf(m25v);
                objArr2222[2] = obj;
                objArr2222[3] = boolValue;
                objArr2222[4] = "oldsi";
                objArr2222[5] = new BsonLite.UuidValue(uuidValue);
                objArr2222[6] = "newsi";
                objArr2222[7] = new BsonLite.UuidValue(str2);
                objArr2222[8] = "lcs";
                objArr2222[9] = str3 != null ? null : new BsonLite.UuidValue(str3);
                objArr2222[10] = "st";
                objArr2222[11] = Boolean.valueOf(z2);
                result.add("replyChangeAwakeSkinStyle", BsonLite.document(objArr2222));
            }
            return result;
        } catch (ArithmeticException | IllegalArgumentException e) {
            LocalResourceEngine.Result result4 = new LocalResourceEngine.Result(bArr);
            result4.add("showMessageStr", BsonLite.document("m", e.getMessage()));
            return result4;
        }
    }
}
