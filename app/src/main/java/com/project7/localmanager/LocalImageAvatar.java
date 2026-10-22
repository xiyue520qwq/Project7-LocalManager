package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
final class LocalImageAvatar {
    LocalImageAvatar() {
    }

    static byte[] update(byte[] bArr, byte[] bArr2) {
        String stringValue = BsonLite.stringValue(bArr2, "q7Image");
        String stringValue2 = BsonLite.stringValue(bArr2, "imgid");
        if (stringValue == null || stringValue.length() > 2800000) {
            return bArr;
        }
        try {
            byte[] decode = Base64.getDecoder().decode(stringValue);
            if (validImage(decode) && imageId(decode).equals(stringValue2)) {
                return BsonLite.withProfileDocument(BsonLite.withProfileString(BsonLite.withProfileArray(bArr, "headImage", Arrays.asList(2, 0, stringValue2)), "imgid", ""), "q7Avatar", BsonLite.document("id", stringValue2, "data", stringValue));
            }
            return bArr;
        } catch (IllegalArgumentException e) {
            return bArr;
        }
    }

    static boolean validImage(byte[] bArr) {
        if (bArr.length < 24 || bArr.length > 2097152) {
            return false;
        }
        boolean equals = Arrays.equals(Arrays.copyOf(bArr, 8), new byte[]{-119, 80, 78, 71, 13, 10, 26, 10});
        boolean z = bArr[0] == -1 && bArr[1] == -40 && bArr[2] == -1;
        if (equals) {
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int i = wrap.getInt(16);
            int i2 = wrap.getInt(20);
            return i > 0 && i2 > 0 && i <= 4096 && i2 <= 4096;
        }
        return z;
    }

    static String imageId(byte[] bArr) {
        try {
            StringBuilder sb = new StringBuilder("q7_");
            for (byte b : MessageDigest.getInstance("SHA-256").digest(bArr)) {
                sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(b & 255)));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    static List<LocalResourceEngine.Reply> cache(byte[] bArr) {
        byte[] doc = LocalResourceEngine.doc(bArr, "q7Avatar");
        String stringValue = BsonLite.stringValue(doc, "id");
        String stringValue2 = BsonLite.stringValue(doc, "data");
        byte[] doc2 = LocalResourceEngine.doc(bArr, "headImage");
        if (stringValue == null || stringValue2 == null || LocalResourceEngine.value(doc2, "0") != 2 || !stringValue.equals(BsonLite.stringValue(doc2, "2"))) {
            return Collections.emptyList();
        }
        if (!stringValue.matches("q7_[0-9a-f]{64}") || !stringValue2.matches("[A-Za-z0-9+/=]+")) {
            return Collections.emptyList();
        }
        return Collections.singletonList(new LocalResourceEngine.Reply("evalCode", BsonLite.document("s", "exec(\"import base64\\nimport cutils.chelpers as h\\nh.save_head_imgage_data(base64.b64decode('" + stringValue2 + "'), '" + stringValue + ".png')\")")));
    }

    static byte[] approveStored(byte[] bArr, String str) {
        byte[] doc = LocalResourceEngine.doc(bArr, "q7Avatar");
        byte[] doc2 = LocalResourceEngine.doc(bArr, "headImage");
        String stringValue = BsonLite.stringValue(doc, "id");
        String stringValue2 = BsonLite.stringValue(doc, "data");
        if (stringValue == null || stringValue2 == null || !stringValue.equals(str) || LocalResourceEngine.value(doc2, "0") != 2 || !stringValue.equals(BsonLite.stringValue(doc2, "2"))) {
            return bArr;
        }
        String stringValue3 = BsonLite.stringValue(bArr, "imgid");
        if (stringValue3 == null || stringValue3.isEmpty() || !stringValue3.equals(stringValue)) {
            return bArr;
        }
        try {
            byte[] decode = Base64.getDecoder().decode(stringValue2);
            if (validImage(decode) && stringValue.equals(imageId(decode))) {
                return BsonLite.withProfileString(bArr, "imgid", "");
            }
            return bArr;
        } catch (IllegalArgumentException e) {
            return bArr;
        }
    }

    static byte[] approveStored(byte[] bArr) {
        return approveStored(bArr, BsonLite.stringValue(bArr, "imgid"));
    }
}
