package com.project7.localmanager;

/* loaded from: classes.dex */
final class LocalRefreshFix {
    private LocalRefreshFix() {
    }

    static byte[] ensure(byte[] bArr) {
        if (bArr == null) {
            return bArr;
        }
        try {
            byte[] documentValue = BsonLite.documentValue(bArr, "ta");
            if (documentValue == null) {
                documentValue = BsonLite.EMPTY_DOCUMENT;
            }
            if (BsonLite.numericValue(documentValue, "injure_rate") != null) {
                return bArr;
            }
            return BsonLite.withProfileDocument(bArr, "ta", BsonLite.withProfileDouble(documentValue, "injure_rate", 4.0d));
        } catch (Throwable th) {
            return bArr;
        }
    }
}
