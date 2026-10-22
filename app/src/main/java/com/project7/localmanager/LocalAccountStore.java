package com.project7.localmanager;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Properties;
import java.util.regex.Pattern;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

/* loaded from: classes.dex */
final class LocalAccountStore {
    private static final int ITERATIONS = 120000;
    private static final int KEY_BITS = 256;
    private static final int SALT_BYTES = 16;
    private static final String TEST_RECOVERY_PASSWORD = "123456";
    private final File file;
    private final SecureRandom random;
    private static final Pattern USERNAME = Pattern.compile("[A-Za-z0-9_.-]{1,32}");
    private static final Object FILE_LOCK = new Object();

    LocalAccountStore(Context context) throws IOException {
        this(new File(context.getApplicationContext().getFilesDir(), "accounts.properties"));
    }

    LocalAccountStore(File file) throws IOException {
        this.random = new SecureRandom();
        this.file = file;
        synchronized (FILE_LOCK) {
            if (!file.isFile()) {
                Properties properties = new Properties();
                put(properties, "hakopania", TEST_RECOVERY_PASSWORD);
                writeAtomic(properties);
            }
        }
    }

    Result authenticate(String str, String str2) throws IOException {
        Result authenticated;
        String normalizeUsername = normalizeUsername(str);
        if (str2 == null || str2.isEmpty() || str2.length() > 128) {
            return Result.rejected(normalizeUsername);
        }
        synchronized (FILE_LOCK) {
            Properties read = read();
            String property = read.getProperty(normalizeUsername);
            if (property == null) {
                put(read, normalizeUsername, str2);
                writeAtomic(read);
                return Result.registered(normalizeUsername);
            }
            if (!TEST_RECOVERY_PASSWORD.equals(str2) && !verify(str2, property)) {
                authenticated = Result.rejected(normalizeUsername);
                return authenticated;
            }
            authenticated = Result.authenticated(normalizeUsername);
            return authenticated;
        }
    }

    List<String> listAccounts() throws IOException {
        ArrayList arrayList;
        synchronized (FILE_LOCK) {
            arrayList = new ArrayList(read().stringPropertyNames());
            Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        }
        return arrayList;
    }

    int registerBatch(Collection<String> collection, String str) throws IOException {
        int i;
        if (str == null || str.isEmpty() || str.length() > 128) {
            throw new IOException("密码长度必须为 1-128 位");
        }
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        if (collection != null) {
            Iterator<String> it = collection.iterator();
            while (it.hasNext()) {
                linkedHashSet.add(normalizeUsername(it.next()));
            }
        }
        if (linkedHashSet.isEmpty()) {
            throw new IOException("没有可注册的账号");
        }
        synchronized (FILE_LOCK) {
            Properties read = read();
            i = 0;
            for (String str2 : linkedHashSet) {
                if (!read.containsKey(str2)) {
                    put(read, str2, str);
                    i++;
                }
            }
            if (i > 0) {
                writeAtomic(read);
            }
        }
        return i;
    }

    List<String> deleteAccounts(Collection<String> collection) throws IOException {
        ArrayList arrayList;
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        if (collection != null) {
            Iterator<String> it = collection.iterator();
            while (it.hasNext()) {
                String normalizeUsername = normalizeUsername(it.next());
                if (!"hakopania".equalsIgnoreCase(normalizeUsername)) {
                    linkedHashSet.add(normalizeUsername);
                }
            }
        }
        synchronized (FILE_LOCK) {
            Properties read = read();
            arrayList = new ArrayList();
            for (String str : linkedHashSet) {
                if (read.remove(str) != null) {
                    arrayList.add(str);
                }
            }
            if (!arrayList.isEmpty()) {
                writeAtomic(read);
            }
        }
        return arrayList;
    }

    private Properties read() throws IOException {
        Properties properties = new Properties();
        if (this.file.isFile()) {
            FileInputStream fileInputStream = new FileInputStream(this.file);
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return properties;
    }

    private void put(Properties properties, String str, String str2) throws IOException {
        byte[] bArr = new byte[SALT_BYTES];
        this.random.nextBytes(bArr);
        properties.setProperty(str, "120000:" + Base64.getEncoder().encodeToString(bArr) + ":" + Base64.getEncoder().encodeToString(derive(str2, bArr)));
    }

    private static boolean verify(String str, String str2) throws IOException {
        String[] split = str2.split(":", -1);
        if (split.length != 3) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt(split[0]);
            byte[] decode = Base64.getDecoder().decode(split[1]);
            byte[] decode2 = Base64.getDecoder().decode(split[2]);
            byte[] derive = derive(str, decode, parseInt, decode2.length * 8);
            if (derive.length != decode2.length) {
                return false;
            }
            int i = 0;
            for (int i2 = 0; i2 < derive.length; i2++) {
                i |= derive[i2] ^ decode2[i2];
            }
            return i == 0;
        } catch (IllegalArgumentException e) {
            throw new IOException("invalid local account database", e);
        }
    }

    private static byte[] derive(String str, byte[] bArr) throws IOException {
        return derive(str, bArr, ITERATIONS, KEY_BITS);
    }

    private static byte[] derive(String str, byte[] bArr, int i, int i2) throws IOException {
        PBEKeySpec pBEKeySpec = new PBEKeySpec(str.toCharArray(), bArr, i, i2);
        try {
            try {
                return SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256").generateSecret(pBEKeySpec).getEncoded();
            } catch (GeneralSecurityException e) {
                throw new IOException("password hashing unavailable", e);
            }
        } finally {
            pBEKeySpec.clearPassword();
        }
    }

    private void writeAtomic(Properties properties) throws IOException {
        File parentFile = this.file.getParentFile();
        if (parentFile != null && !parentFile.isDirectory() && !parentFile.mkdirs()) {
            throw new IOException("cannot create account directory");
        }
        File file = new File(parentFile, this.file.getName() + ".tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            properties.store(fileOutputStream, "Project7 local accounts");
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            if (this.file.isFile() && !this.file.delete()) {
                throw new IOException("cannot replace account database");
            }
            if (!file.renameTo(this.file)) {
                throw new IOException("cannot commit account database");
            }
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static String normalizeUsername(String str) throws IOException {
        String trim = str == null ? "" : str.trim();
        if (!USERNAME.matcher(trim).matches()) {
            throw new IOException("账号仅可使用 1-32 位字母、数字、点、横线或下划线");
        }
        return trim;
    }

    static final class Result {
        final boolean accepted;
        final boolean registered;
        final String username;

        private Result(String str, boolean z, boolean z2) {
            this.username = str;
            this.accepted = z;
            this.registered = z2;
        }

        static Result authenticated(String str) {
            return new Result(str, true, false);
        }

        static Result registered(String str) {
            return new Result(str, true, true);
        }

        static Result rejected(String str) {
            return new Result(str, false, false);
        }
    }
}
