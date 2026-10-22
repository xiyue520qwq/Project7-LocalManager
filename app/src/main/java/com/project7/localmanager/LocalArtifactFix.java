package com.project7.localmanager;

/* loaded from: classes.dex */
final class LocalArtifactFix {
    LocalArtifactFix() {
    }

    static byte[] fix(byte[] bArr) {
        try {
            if (!Boolean.TRUE.equals(BsonLite.boolValue(bArr, "oa"))) {
                return bArr;
            }
            byte[] documentValue = BsonLite.documentValue(bArr, "ar");
            if (documentValue == null) {
                documentValue = BsonLite.EMPTY_DOCUMENT;
            }
            byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(documentValue, "o", 50), "il", 20), "aao", 20);
            if (BsonLite.documentValue(withProfileInt, "oa") == null) {
                withProfileInt = BsonLite.withProfileDocument(withProfileInt, "oa", BsonLite.EMPTY_DOCUMENT);
            }
            return BsonLite.withProfileDocument(bArr, "ar", withProfileInt);
        } catch (Throwable th) {
            return bArr;
        }
    }
}
