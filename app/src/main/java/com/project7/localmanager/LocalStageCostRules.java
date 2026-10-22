package com.project7.localmanager;

/* loaded from: classes.dex */
final class LocalStageCostRules {

    static final class Cost {
        final int actions;
        final int fatigue;

        Cost(int i, int i2) {
            this.actions = i;
            this.fatigue = i2;
        }
    }

    private LocalStageCostRules() {
    }

    static Cost calculate(int i, int i2, int i3, int i4, int i5, int i6) {
        if (i < 0 || i2 < 0 || i3 < 0 || i4 < 0 || i5 < 0 || i6 < 0) {
            throw new IllegalArgumentException("invalid original stage cost");
        }
        if (i5 < i4) {
            i2 = i3;
        }
        return new Cost(i, Math.max(0, i2 - i6));
    }

    static Cost normal(int[] iArr, int i) {
        if (iArr == null || iArr.length < 4) {
            throw new IllegalArgumentException("missing original stage cost");
        }
        return calculate(iArr[0], iArr[1], iArr[2], iArr[3], i, 0);
    }

    static Cost query(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return null;
        }
        Integer[] numArr = new Integer[4];
        String[] strArr = {"va", "fatigue", "overFatigue", "force_recommend"};
        for (int i3 = 0; i3 < 4; i3++) {
            numArr[i3] = BsonLite.intValue(bArr, strArr[i3]);
            if (numArr[i3] == null) {
                if (BsonLite.keys(bArr).contains(strArr[i3])) {
                    return null;
                }
                numArr[i3] = 0;
            }
        }
        try {
            return calculate(numArr[0].intValue(), numArr[1].intValue(), numArr[2].intValue(), numArr[3].intValue(), i, i2);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }
}
