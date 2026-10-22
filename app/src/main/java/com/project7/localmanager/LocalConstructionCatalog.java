package com.project7.localmanager;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalConstructionCatalog {
    final Map<String, byte[]> rules = new LinkedHashMap();

    LocalConstructionCatalog(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.US_ASCII));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                        String[] split = readLine.split("\t", -1);
                        if (split.length != 3) {
                            throw new IOException("invalid construction row");
                        }
                        try {
                            this.rules.put(split[0] + ":" + split[1], Base64.getDecoder().decode(split[2]));
                        } catch (IllegalArgumentException e) {
                            throw new IOException("invalid construction BSON", e);
                        }
                    }
                } else {
                    bufferedReader.close();
                    return;
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    byte[] rule(String str, Object obj) {
        return this.rules.getOrDefault(str + ":" + obj, BsonLite.EMPTY_DOCUMENT);
    }

    int slots(int i, int i2) {
        int i3 = 0;
        for (int i4 = 1; i4 <= 8; i4++) {
            Integer intValue = BsonLite.intValue(rule("S", i + ":" + i4), "level");
            if (intValue != null && intValue.intValue() <= i2) {
                i3++;
            }
        }
        return i3;
    }

    int work(byte[] bArr, int i, String str) {
        int value = LocalResourceEngine.value(rule("H", Integer.valueOf(i)), str) + LocalResourceEngine.value(rule("G", i + ":" + LocalResourceEngine.value(bArr, "sl") + ":" + LocalResourceEngine.value(bArr, "so")), str);
        return Boolean.TRUE.equals(BsonLite.boolValue(bArr, "fd")) ? value + LocalResourceEngine.value(rule("F", Integer.valueOf(i)), str) : value;
    }
}
