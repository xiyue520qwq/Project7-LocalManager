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
final class LocalFeatureCatalog {
    final Map<String, byte[]> entries = new LinkedHashMap();

    LocalFeatureCatalog(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.US_ASCII));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                        String[] split = readLine.split("\t", -1);
                        if (split.length != 3) {
                            throw new IOException("invalid feature row");
                        }
                        this.entries.put(split[0] + ":" + split[1], Base64.getDecoder().decode(split[2]));
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

    byte[] get(String str, Object obj) {
        return this.entries.get(str + ":" + obj);
    }
}
