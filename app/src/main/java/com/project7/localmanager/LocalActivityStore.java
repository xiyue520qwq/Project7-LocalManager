package com.project7.localmanager;

import com.project7.localmanager.LocalCommerceCatalog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes.dex */
final class LocalActivityStore {
    private static final Object LOCK = new Object();
    private final File file;

    LocalActivityStore(File file) {
        this.file = new File(file, "activity-schedule.properties");
    }

    Map<String, long[]> snapshot() throws IOException {
        LinkedHashMap linkedHashMap;
        synchronized (LOCK) {
            Properties properties = new Properties();
            if (this.file.isFile()) {
                FileInputStream fileInputStream = new FileInputStream(this.file);
                try {
                    properties.load(fileInputStream);
                    fileInputStream.close();
                } finally {
                }
            }
            linkedHashMap = new LinkedHashMap();
            for (String str : properties.stringPropertyNames()) {
                String[] split = properties.getProperty(str).split(",", -1);
                try {
                    long parseLong = Long.parseLong(split[0]);
                    long parseLong2 = Long.parseLong(split[1]);
                    if (split.length != 2 || parseLong < 0 || parseLong2 < parseLong) {
                        throw new NumberFormatException();
                    }
                    linkedHashMap.put(str, new long[]{parseLong, parseLong2});
                } catch (RuntimeException e) {
                    throw new IOException("invalid activity schedule", e);
                }
            }
        }
        return linkedHashMap;
    }

    void set(String str, long j, long j2, LocalCommerceCatalog localCommerceCatalog) throws IOException {
        boolean z = false;
        for (LocalCommerceCatalog.SkinProduct skinProduct : localCommerceCatalog.skinProducts.values()) {
            if (skinProduct.purchasable() && skinProduct.start > 0 && skinProduct.activityKey().equals(str)) {
                z = true;
            }
        }
        if (!z || j < 0 || j2 < j || j2 > 4102444800L) {
            throw new IllegalArgumentException("invalid activity or duration");
        }
        synchronized (LOCK) {
            Map<String, long[]> snapshot = snapshot();
            snapshot.put(str, new long[]{j, j2});
            Properties properties = new Properties();
            for (Map.Entry<String, long[]> entry : snapshot.entrySet()) {
                properties.setProperty(entry.getKey(), entry.getValue()[0] + "," + entry.getValue()[1]);
            }
            File file = new File(this.file.getPath() + ".tmp");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                properties.store(fileOutputStream, "Project7 server-wide activities");
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
                Files.move(file.toPath(), this.file.toPath(), StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
            } finally {
            }
        }
    }

    String clientSource(LocalCommerceCatalog localCommerceCatalog) throws IOException {
        long[] jArr;
        Map<String, long[]> snapshot = snapshot();
        StringBuilder sb = new StringBuilder("_q7_skin_windows = {\n");
        for (Map.Entry<Integer, LocalCommerceCatalog.SkinProduct> entry : localCommerceCatalog.skinProducts.entrySet()) {
            LocalCommerceCatalog.SkinProduct value = entry.getValue();
            if (value.purchasable() && value.start != 0 && (jArr = snapshot.get(value.activityKey())) != null) {
                sb.append(entry.getKey());
                sb.append(": (");
                sb.append(jArr[0]);
                sb.append(", ");
                sb.append(jArr[1]);
                sb.append("),\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }
}
