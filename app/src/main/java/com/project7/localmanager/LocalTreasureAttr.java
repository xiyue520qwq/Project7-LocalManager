package com.project7.localmanager;

import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalTreasureAttr {
    private static final String[] NAMES;

    static {
        String[] strArr = new String[60];
        strArr[1] = "max_hp";
        strArr[2] = "phy_att_str";
        strArr[3] = "mag_att_str";
        strArr[4] = "phydef";
        strArr[5] = "magdef";
        strArr[6] = "block_rate";
        strArr[7] = "penetrate_rate";
        strArr[8] = "bless_rate";
        strArr[9] = "injure_rate";
        strArr[10] = "attack_twice_rate";
        strArr[11] = "avoid_rate";
        strArr[12] = "cri_rate";
        strArr[13] = "cd_reset_rate";
        strArr[14] = "magic_shield_val";
        strArr[15] = "rebound_rate";
        strArr[16] = "absorb_rate";
        strArr[17] = "delay_hurt_rate";
        strArr[18] = "cri_hurt_addition_rate";
        strArr[19] = "cri_hurt_reduce_rate";
        strArr[20] = "hurt_addition_rate";
        strArr[21] = "hurt_reduction_rate";
        strArr[22] = "attack_hurt_addition_rate";
        strArr[23] = "attack_hurt_reduction_rate";
        strArr[24] = "_att_speed_addition_rate";
        strArr[25] = "insight";
        strArr[26] = "construct";
        strArr[27] = "leader";
        strArr[28] = "friendly";
        strArr[29] = "fatigue";
        strArr[30] = "_phy_str_delta";
        strArr[31] = "_mag_str_delta";
        strArr[32] = "_phy_def_delta";
        strArr[33] = "_mag_def_delta";
        strArr[34] = "_hp_delta";
        strArr[35] = "_base_max_hp";
        strArr[36] = "_base_phy_att_str";
        strArr[37] = "_base_mag_att_str";
        strArr[38] = "_base_phy_def";
        strArr[39] = "_base_mag_def";
        strArr[40] = "_base_max_hp_addition_val";
        strArr[41] = "_base_max_hp_addition_rate";
        strArr[42] = "_max_hp_addition_val";
        strArr[43] = "_max_hp_addition_rate";
        strArr[44] = "_base_phy_str_addition_val";
        strArr[45] = "_base_phy_str_addition_rate";
        strArr[46] = "_phy_att_str_addition_val";
        strArr[47] = "_phy_att_str_addition_rate";
        strArr[48] = "_base_mag_str_addition_val";
        strArr[49] = "_base_mag_str_addition_rate";
        strArr[50] = "_mag_att_str_addition_val";
        strArr[51] = "_mag_att_str_addition_rate";
        strArr[52] = "_base_phy_def_addition_val";
        strArr[53] = "_base_phy_def_addition_rate";
        strArr[54] = "_phy_def_addition_val";
        strArr[55] = "_phy_def_addition_rate";
        strArr[56] = "_base_mag_def_addition_val";
        strArr[57] = "_base_mag_def_addition_rate";
        strArr[58] = "_mag_def_addition_val";
        strArr[59] = "_mag_def_addition_rate";
        NAMES = strArr;
    }

    private LocalTreasureAttr() {
    }

    static void merge(Map map, byte[] bArr) {
        List<byte[]> array;
        byte[] doc;
        List<byte[]> array2;
        byte[] bArr2;
        String keyOf;
        Number numericValue;
        if (map == null || bArr == null) {
            return;
        }
        try {
            byte[] doc2 = LocalResourceEngine.doc(bArr, "ti");
            if (doc2 == null || (array = LocalResourceEngine.array(LocalResourceEngine.doc(doc2, "items"))) == null) {
                return;
            }
            int size = array.size();
            for (int i = 0; i < size; i++) {
                byte[] bArr3 = array.get(i);
                if ((bArr3 instanceof byte[]) && (doc = LocalResourceEngine.doc(bArr3, "tr")) != null && (array2 = LocalResourceEngine.array(LocalResourceEngine.doc(doc, "attr"))) != null) {
                    int size2 = array2.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        byte[] bArr4 = array2.get(i2);
                        if ((bArr4 instanceof byte[]) && (keyOf = keyOf((bArr2 = bArr4))) != null && (numericValue = BsonLite.numericValue(bArr2, "v")) != null) {
                            double doubleValue = numericValue.doubleValue();
                            if (!Double.isNaN(doubleValue) && !Double.isInfinite(doubleValue)) {
                                Object obj = map.get(keyOf);
                                double doubleValue2 = (obj instanceof Number ? ((Number) obj).doubleValue() : 0.0d) + doubleValue;
                                if (!Double.isNaN(doubleValue2) && !Double.isInfinite(doubleValue2)) {
                                    map.put(keyOf, Double.valueOf(doubleValue2));
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    private static String keyOf(byte[] bArr) {
        int length;
        String stringValue = BsonLite.stringValue(bArr, "n");
        if (stringValue == null || (length = stringValue.length()) < 2 || length > 3) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(stringValue.substring(1));
            if (parseInt < 1 || parseInt >= NAMES.length) {
                return null;
            }
            return NAMES[parseInt];
        } catch (RuntimeException e) {
            return null;
        }
    }
}
