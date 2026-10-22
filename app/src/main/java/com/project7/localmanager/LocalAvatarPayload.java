package com.project7.localmanager;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.DeflaterOutputStream;

/* loaded from: classes.dex */
final class LocalAvatarPayload {
    LocalAvatarPayload() {
    }

    static byte[] encode(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        write(byteArrayOutputStream, BsonLite.messagePackValue(bArr, false));
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream2);
        try {
            byteArrayOutputStream.writeTo(deflaterOutputStream);
            deflaterOutputStream.close();
            return byteArrayOutputStream2.toByteArray();
        } catch (Throwable th) {
            try {
                deflaterOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void write(ByteArrayOutputStream byteArrayOutputStream, Object obj) {
        if (obj != null) {
            if (!(obj instanceof Boolean)) {
                if ((obj instanceof Integer) || (obj instanceof Long)) {
                    long longValue = ((Number) obj).longValue();
                    if ((longValue >= 0 && longValue <= 127) || (longValue >= -32 && longValue < 0)) {
                        byteArrayOutputStream.write(((int) longValue) & 255);
                        return;
                    }
                    if (longValue < -2147483648L || longValue > 2147483647L) {
                        byteArrayOutputStream.write(211);
                        number(byteArrayOutputStream, longValue, 8);
                        return;
                    } else {
                        byteArrayOutputStream.write(210);
                        number(byteArrayOutputStream, longValue, 4);
                        return;
                    }
                }
                if (!(obj instanceof Double)) {
                    if (obj instanceof String) {
                        byte[] bytes = ((String) obj).getBytes(StandardCharsets.UTF_8);
                        if (bytes.length < 32) {
                            byteArrayOutputStream.write(bytes.length | 160);
                        } else if (bytes.length <= 65535) {
                            byteArrayOutputStream.write(218);
                            number(byteArrayOutputStream, bytes.length, 2);
                        } else {
                            byteArrayOutputStream.write(219);
                            number(byteArrayOutputStream, bytes.length, 4);
                        }
                        byteArrayOutputStream.write(bytes, 0, bytes.length);
                        return;
                    }
                    if (obj instanceof List) {
                        List list = (List) obj;
                        container(byteArrayOutputStream, list.size(), 144, 220, 221);
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            write(byteArrayOutputStream, it.next());
                        }
                        return;
                    }
                    if (!(obj instanceof Map)) {
                        throw new IllegalArgumentException("unsupported MessagePack value");
                    }
                    Map map = (Map) obj;
                    container(byteArrayOutputStream, map.size(), 128, 222, 223);
                    for (Map.Entry entry : map.entrySet()) {
                        write(byteArrayOutputStream, entry.getKey());
                        write(byteArrayOutputStream, entry.getValue());
                    }
                    return;
                }
                byteArrayOutputStream.write(203);
                number(byteArrayOutputStream, Double.doubleToLongBits(((Double) obj).doubleValue()), 8);
                return;
            }
            byteArrayOutputStream.write(((Boolean) obj).booleanValue() ? 195 : 194);
            return;
        }
        byteArrayOutputStream.write(192);
    }

    private static void container(ByteArrayOutputStream byteArrayOutputStream, int i, int i2, int i3, int i4) {
        if (i >= 16) {
            if (i > 65535) {
                byteArrayOutputStream.write(i4);
                number(byteArrayOutputStream, i, 4);
                return;
            } else {
                byteArrayOutputStream.write(i3);
                number(byteArrayOutputStream, i, 2);
                return;
            }
        }
        byteArrayOutputStream.write(i | i2);
    }

    private static void number(ByteArrayOutputStream byteArrayOutputStream, long j, int i) {
        for (int i2 = i - 1; i2 >= 0; i2--) {
            byteArrayOutputStream.write(((int) (j >>> (i2 * 8))) & 255);
        }
    }
}
