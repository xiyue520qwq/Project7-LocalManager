.class final Lcom/project7/localmanager/LocalDiagnosticLog;
.super Ljava/lang/Object;
.source "LocalDiagnosticLog.java"


# static fields
.field private static final IO_LOCK:Ljava/lang/Object;

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_CHARS:I = 0x20000

.field private static final MAX_ENTRY:I = 0x2000

.field private static final SECRET:Ljava/util/regex/Pattern;

.field private static diskError:Ljava/lang/String;

.field private static file:Ljava/io/File;

.field private static length:I

.field private static final lines:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static pending:Z

.field private static revision:J

.field private static final writer:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->IO_LOCK:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->lines:Ljava/util/Deque;

    .line 16
    const-string v0, "(?i)([\"\']?(?:password|psw|passwd|token|session|sauth|authorization|secret)[\"\']?\\s*[:=]\\s*)(\"(?:\\\\.|[^\"])*\"|\'(?:\\\\.|[^\'])*\'|[^\\s,;\\}\\]]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->SECRET:Ljava/util/regex/Pattern;

    .line 19
    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalDiagnosticLog$$ExternalSyntheticLambda1;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->writer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    const-string v0, ""

    sput-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->diskError:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Ljava/lang/String;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->lines:Ljava/util/Deque;

    invoke-interface {v0, p0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 57
    sget v0, Lcom/project7/localmanager/LocalDiagnosticLog;->length:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v0, p0

    sput v0, Lcom/project7/localmanager/LocalDiagnosticLog;->length:I

    .line 58
    :goto_0
    sget p0, Lcom/project7/localmanager/LocalDiagnosticLog;->length:I

    const/high16 v0, 0x20000

    if-le p0, v0, :cond_0

    sget-object p0, Lcom/project7/localmanager/LocalDiagnosticLog;->lines:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/project7/localmanager/LocalDiagnosticLog;->length:I

    invoke-interface {p0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v0, p0

    sput v0, Lcom/project7/localmanager/LocalDiagnosticLog;->length:I

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method static clear()V
    .locals 2

    .line 86
    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/project7/localmanager/LocalDiagnosticLog;->lines:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    const/4 v1, 0x0

    sput v1, Lcom/project7/localmanager/LocalDiagnosticLog;->length:I

    const-string v1, ""

    sput-object v1, Lcom/project7/localmanager/LocalDiagnosticLog;->diskError:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const-string v0, "I"

    const-string v1, "\u65e5\u5fd7\u5df2\u6e05\u7a7a"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 133
    const-string v0, "E"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 134
    const-string v0, "E"

    invoke-static {v0, p0, p1, p2}, Lcom/project7/localmanager/LocalDiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static flush()V
    .locals 7

    .line 91
    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->IO_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/project7/localmanager/LocalDiagnosticLog;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    sget-object v2, Lcom/project7/localmanager/LocalDiagnosticLog;->file:Ljava/io/File;

    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->snapshot()Ljava/lang/String;

    move-result-object v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 95
    if-nez v2, :cond_0

    :try_start_2
    monitor-exit v0

    return-void

    .line 96
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 98
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 99
    :try_start_4
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 100
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 102
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/nio/file/CopyOption;

    const/4 v5, 0x0

    sget-object v6, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v6, v4, v5

    invoke-static {v3, v2, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 104
    monitor-enter v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    const-string v2, ""

    sput-object v2, Lcom/project7/localmanager/LocalDiagnosticLog;->diskError:Ljava/lang/String;

    monitor-exit v1

    .line 107
    goto :goto_1

    .line 104
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 98
    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 105
    :catch_0
    move-exception v1

    .line 106
    :try_start_a
    sget-object v2, Lcom/project7/localmanager/LocalDiagnosticLog;->LOCK:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65e5\u5fd7\u4fdd\u5b58\u5931\u8d25\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/project7/localmanager/LocalDiagnosticLog;->diskError:Ljava/lang/String;

    sget-wide v3, Lcom/project7/localmanager/LocalDiagnosticLog;->revision:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lcom/project7/localmanager/LocalDiagnosticLog;->revision:J

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 108
    :goto_1
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 109
    return-void

    .line 106
    :catchall_3
    move-exception v1

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 94
    :catchall_4
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v2

    .line 108
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v1
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 130
    const-string v0, "I"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static initialize(Ljava/io/File;)V
    .locals 5

    .line 31
    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/project7/localmanager/LocalDiagnosticLog;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 33
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "gateway.log"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/project7/localmanager/LocalDiagnosticLog;->file:Ljava/io/File;

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/project7/localmanager/LocalDiagnosticLog;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/32 v3, 0x80000

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    goto :goto_3

    .line 35
    :cond_1
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/project7/localmanager/LocalDiagnosticLog;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 37
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->append(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 38
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 35
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 38
    :catch_0
    move-exception p0

    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65e5\u5fd7\u8bfb\u53d6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/project7/localmanager/LocalDiagnosticLog;->diskError:Ljava/lang/String;

    .line 39
    :goto_2
    monitor-exit v0

    .line 40
    return-void

    .line 34
    :cond_3
    :goto_3
    monitor-exit v0

    return-void

    .line 39
    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method static synthetic lambda$schedule$1()V
    .locals 5

    .line 65
    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->revision()J

    move-result-wide v0

    .line 66
    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->flush()V

    .line 67
    sget-object v2, Lcom/project7/localmanager/LocalDiagnosticLog;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    const/4 v3, 0x0

    :try_start_0
    sput-boolean v3, Lcom/project7/localmanager/LocalDiagnosticLog;->pending:Z

    .line 69
    sget-wide v3, Lcom/project7/localmanager/LocalDiagnosticLog;->revision:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->diskError:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->schedule()V

    .line 70
    :cond_0
    monitor-exit v2

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "project7-diagnostic-writer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 21
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 22
    return-object v0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .line 112
    const-string v0, "heartbeat acknowledged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 113
    :cond_0
    nop

    .line 114
    if-eqz p3, :cond_1

    .line 115
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 116
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 117
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 114
    :cond_1
    const-string p3, ""

    .line 119
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->record(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/project7/localmanager/LocalDiagnosticLog;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 123
    const-string p3, "E"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    :cond_2
    const-string p3, "W"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    :cond_3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 127
    :catch_0
    move-exception p0

    :goto_1
    nop

    .line 128
    return v1
.end method

.method static record(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 45
    invoke-static {p1}, Lcom/project7/localmanager/LocalDiagnosticLog;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n[\u8fc7\u957f\u8bb0\u5f55\u5df2\u622a\u65ad]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    :cond_0
    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalDiagnosticLog;->append(Ljava/lang/String;)V

    .line 50
    sget-wide p0, Lcom/project7/localmanager/LocalDiagnosticLog;->revision:J

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    sput-wide p0, Lcom/project7/localmanager/LocalDiagnosticLog;->revision:J

    .line 51
    invoke-static {}, Lcom/project7/localmanager/LocalDiagnosticLog;->schedule()V

    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static redact(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->SECRET:Ljava/util/regex/Pattern;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "$1[\u5df2\u9690\u85cf]"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static revision()J
    .locals 3

    .line 83
    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/project7/localmanager/LocalDiagnosticLog;->revision:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static schedule()V
    .locals 5

    .line 62
    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/project7/localmanager/LocalDiagnosticLog;->pending:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/project7/localmanager/LocalDiagnosticLog;->pending:Z

    .line 64
    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->writer:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/project7/localmanager/LocalDiagnosticLog$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalDiagnosticLog$$ExternalSyntheticLambda0;

    const-wide/16 v2, 0x15e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 72
    return-void

    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method static snapshot()Ljava/lang/String;
    .locals 4

    .line 75
    sget-object v0, Lcom/project7/localmanager/LocalDiagnosticLog;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/project7/localmanager/LocalDiagnosticLog;->length:I

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    sget-object v2, Lcom/project7/localmanager/LocalDiagnosticLog;->lines:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_0
    sget-object v2, Lcom/project7/localmanager/LocalDiagnosticLog;->diskError:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/project7/localmanager/LocalDiagnosticLog;->diskError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 131
    const-string v0, "W"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 132
    const-string v0, "W"

    invoke-static {v0, p0, p1, p2}, Lcom/project7/localmanager/LocalDiagnosticLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
