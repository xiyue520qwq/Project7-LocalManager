package com.project7.localmanager;

import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.Date;
import java.util.Deque;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class LocalDiagnosticLog {
    private static final int MAX_CHARS = 131072;
    private static final int MAX_ENTRY = 8192;
    private static File file;
    private static int length;
    private static boolean pending;
    private static long revision;
    private static final Object LOCK = new Object();
    private static final Object IO_LOCK = new Object();
    private static final Deque<String> lines = new ArrayDeque();
    private static final Pattern SECRET = Pattern.compile("(?i)([\"']?(?:password|psw|passwd|token|session|sauth|authorization|secret)[\"']?\\s*[:=]\\s*)(\"(?:\\\\.|[^\"])*\"|'(?:\\\\.|[^'])*'|[^\\s,;\\}\\]]+)");
    private static final ScheduledExecutorService writer = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.project7.localmanager.LocalDiagnosticLog$$ExternalSyntheticLambda1
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return LocalDiagnosticLog.lambda$static$0(runnable);
        }
    });
    private static String diskError = "";

    LocalDiagnosticLog() {
    }

    static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "project7-diagnostic-writer");
        thread.setDaemon(true);
        return thread;
    }

    static void initialize(File file2) {
        synchronized (LOCK) {
            if (file != null) {
                return;
            }
            File file3 = new File(file2, "gateway.log");
            file = file3;
            if (!file3.isFile() || file.length() > 524288) {
                return;
            }
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), StandardCharsets.UTF_8));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        append(redact(readLine) + "\n");
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                bufferedReader.close();
            } catch (IOException e) {
                diskError = "日志读取失败：" + e.getClass().getSimpleName();
            }
        }
    }

    static String redact(String str) {
        Pattern pattern = SECRET;
        if (str == null) {
            str = "";
        }
        return pattern.matcher(str).replaceAll("$1[已隐藏]");
    }

    static void record(String str, String str2) {
        String redact = redact(str2);
        if (redact.length() > MAX_ENTRY) {
            redact = redact.substring(0, MAX_ENTRY) + "\n[过长记录已截断]";
        }
        synchronized (LOCK) {
            append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.ROOT).format(new Date()) + " " + str + " " + redact + "\n");
            revision = revision + 1;
            schedule();
        }
    }

    private static void append(String str) {
        lines.addLast(str);
        length += str.length();
        while (length > MAX_CHARS) {
            Deque<String> deque = lines;
            if (deque.isEmpty()) {
                return;
            } else {
                length -= deque.removeFirst().length();
            }
        }
    }

    private static void schedule() {
        if (file == null || pending) {
            return;
        }
        pending = true;
        writer.schedule(new Runnable() { // from class: com.project7.localmanager.LocalDiagnosticLog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LocalDiagnosticLog.lambda$schedule$1();
            }
        }, 350L, TimeUnit.MILLISECONDS);
    }

    static /* synthetic */ void lambda$schedule$1() {
        long revision2 = revision();
        flush();
        synchronized (LOCK) {
            pending = false;
            if (revision != revision2 && diskError.isEmpty()) {
                schedule();
            }
        }
    }

    static String snapshot() {
        String sb;
        synchronized (LOCK) {
            StringBuilder sb2 = new StringBuilder(length + 100);
            Iterator<String> it = lines.iterator();
            while (it.hasNext()) {
                sb2.append(it.next());
            }
            if (!diskError.isEmpty()) {
                sb2.append(diskError);
                sb2.append('\n');
            }
            sb = sb2.toString();
        }
        return sb;
    }

    static long revision() {
        long j;
        synchronized (LOCK) {
            j = revision;
        }
        return j;
    }

    static void clear() {
        synchronized (LOCK) {
            lines.clear();
            length = 0;
            diskError = "";
        }
        record("I", "日志已清空");
    }

    static void flush() {
        File file2;
        String snapshot;
        synchronized (IO_LOCK) {
            Object obj = LOCK;
            synchronized (obj) {
                file2 = file;
                snapshot = snapshot();
            }
            if (file2 == null) {
                return;
            }
            File file3 = new File(file2.getPath() + ".tmp");
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                try {
                    fileOutputStream.write(snapshot.getBytes(StandardCharsets.UTF_8));
                    fileOutputStream.getFD().sync();
                    fileOutputStream.close();
                    Files.move(file3.toPath(), file2.toPath(), StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.ATOMIC_MOVE);
                    synchronized (obj) {
                        diskError = "";
                    }
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                synchronized (LOCK) {
                    diskError = "日志保存失败：" + e.getClass().getSimpleName();
                    revision = revision + 1;
                }
            }
        }
    }

    private static int log(String str, String str2, String str3, Throwable th) {
        String str4;
        if ("heartbeat acknowledged".equals(str3)) {
            return 0;
        }
        if (th == null) {
            str4 = "";
        } else {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            str4 = "\n" + stringWriter;
        }
        record(str, str2 + " " + str3 + str4);
        try {
            String redact = redact(str3 + str4);
            if ("E".equals(str)) {
                Log.e(str2, redact);
            } else if ("W".equals(str)) {
                Log.w(str2, redact);
            } else {
                Log.i(str2, redact);
            }
        } catch (RuntimeException e) {
        }
        return 0;
    }

    /* renamed from: i */
    static int m14i(String str, String str2) {
        return log("I", str, str2, null);
    }

    /* renamed from: w */
    static int m15w(String str, String str2) {
        return log("W", str, str2, null);
    }

    /* renamed from: w */
    static int m16w(String str, String str2, Throwable th) {
        return log("W", str, str2, th);
    }

    /* renamed from: e */
    static int m12e(String str, String str2) {
        return log("E", str, str2, null);
    }

    /* renamed from: e */
    static int m13e(String str, String str2, Throwable th) {
        return log("E", str, str2, th);
    }
}
