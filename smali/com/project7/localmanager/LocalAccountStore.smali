.class final Lcom/project7/localmanager/LocalAccountStore;
.super Ljava/lang/Object;
.source "LocalAccountStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalAccountStore$Result;
    }
.end annotation


# static fields
.field private static final FILE_LOCK:Ljava/lang/Object;

.field private static final ITERATIONS:I = 0x1d4c0

.field private static final KEY_BITS:I = 0x100

.field private static final SALT_BYTES:I = 0x10

.field private static final TEST_RECOVERY_PASSWORD:Ljava/lang/String; = "123456"

.field private static final USERNAME:Ljava/util/regex/Pattern;


# instance fields
.field private final file:Ljava/io/File;

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "[A-Za-z0-9_.-]{1,32}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalAccountStore;->USERNAME:Ljava/util/regex/Pattern;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalAccountStore;->FILE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "accounts.properties"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/project7/localmanager/LocalAccountStore;-><init>(Ljava/io/File;)V

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalAccountStore;->random:Ljava/security/SecureRandom;

    .line 40
    iput-object p1, p0, Lcom/project7/localmanager/LocalAccountStore;->file:Ljava/io/File;

    .line 41
    sget-object v0, Lcom/project7/localmanager/LocalAccountStore;->FILE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 44
    const-string v1, "hakopania"

    const-string v2, "123456"

    invoke-direct {p0, p1, v1, v2}, Lcom/project7/localmanager/LocalAccountStore;->put(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalAccountStore;->writeAtomic(Ljava/util/Properties;)V

    .line 47
    :cond_0
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static derive(Ljava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    const v0, 0x1d4c0

    const/16 v1, 0x100

    invoke-static {p0, p1, v0, v1}, Lcom/project7/localmanager/LocalAccountStore;->derive(Ljava/lang/String;[BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static derive(Ljava/lang/String;[BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 188
    :try_start_0
    const-string p0, "PBKDF2WithHmacSHA256"

    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 189
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 190
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    .line 188
    return-object p0

    .line 194
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 191
    :catch_0
    move-exception p0

    .line 192
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "password hashing unavailable"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :goto_0
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V

    .line 195
    throw p0
.end method

.method static normalizeUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 218
    :goto_0
    sget-object v0, Lcom/project7/localmanager/LocalAccountStore;->USERNAME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    return-object p0

    .line 219
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u8d26\u53f7\u4ec5\u53ef\u4f7f\u7528 1-32 \u4f4d\u5b57\u6bcd\u3001\u6570\u5b57\u3001\u70b9\u3001\u6a2a\u7ebf\u6216\u4e0b\u5212\u7ebf"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private put(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 147
    iget-object v1, p0, Lcom/project7/localmanager/LocalAccountStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 148
    invoke-static {p3, v0}, Lcom/project7/localmanager/LocalAccountStore;->derive(Ljava/lang/String;[B)[B

    move-result-object p3

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "120000:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 149
    invoke-virtual {p1, p2, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method private read()Ljava/util/Properties;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/project7/localmanager/LocalAccountStore;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/project7/localmanager/LocalAccountStore;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 139
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    .line 142
    :cond_0
    :goto_1
    return-object v0
.end method

.method private static verify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const-string v0, ":"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 159
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 160
    return v1

    .line 163
    :cond_0
    :try_start_0
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 164
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 165
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object p1, p1, v5

    invoke-virtual {v4, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 166
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x8

    invoke-static {p0, v2, v0, v4}, Lcom/project7/localmanager/LocalAccountStore;->derive(Ljava/lang/String;[BII)[B

    move-result-object p0

    .line 167
    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    .line 168
    return v1

    .line 170
    :cond_1
    nop

    .line 171
    move v0, v1

    move v2, v0

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 172
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_2
    if-nez v2, :cond_3

    move v1, v3

    :cond_3
    return v1

    .line 175
    :catch_0
    move-exception p0

    .line 176
    new-instance p1, Ljava/io/IOException;

    const-string v0, "invalid local account database"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private writeAtomic(Ljava/util/Properties;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/project7/localmanager/LocalAccountStore;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "cannot create account directory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/project7/localmanager/LocalAccountStore;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 205
    :try_start_0
    const-string v2, "Project7 local accounts"

    invoke-virtual {p1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 208
    iget-object p1, p0, Lcom/project7/localmanager/LocalAccountStore;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/project7/localmanager/LocalAccountStore;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 209
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "cannot replace account database"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/project7/localmanager/LocalAccountStore;->file:Ljava/io/File;

    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 214
    return-void

    .line 212
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "cannot commit account database"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method


# virtual methods
.method authenticate(Ljava/lang/String;Ljava/lang/String;)Lcom/project7/localmanager/LocalAccountStore$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    goto :goto_2

    .line 57
    :cond_0
    sget-object v0, Lcom/project7/localmanager/LocalAccountStore;->FILE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/project7/localmanager/LocalAccountStore;->read()Ljava/util/Properties;

    move-result-object v1

    .line 59
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    if-nez v2, :cond_1

    .line 61
    invoke-direct {p0, v1, p1, p2}, Lcom/project7/localmanager/LocalAccountStore;->put(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v1}, Lcom/project7/localmanager/LocalAccountStore;->writeAtomic(Ljava/util/Properties;)V

    .line 63
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore$Result;->registered(Ljava/lang/String;)Lcom/project7/localmanager/LocalAccountStore$Result;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 65
    :cond_1
    const-string v1, "123456"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalAccountStore;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore$Result;->rejected(Ljava/lang/String;)Lcom/project7/localmanager/LocalAccountStore$Result;

    move-result-object p1

    goto :goto_1

    .line 66
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore$Result;->authenticated(Ljava/lang/String;)Lcom/project7/localmanager/LocalAccountStore$Result;

    move-result-object p1

    .line 67
    :goto_1
    monitor-exit v0

    .line 65
    return-object p1

    .line 68
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 54
    :cond_4
    :goto_2
    invoke-static {p1}, Lcom/project7/localmanager/LocalAccountStore$Result;->rejected(Ljava/lang/String;)Lcom/project7/localmanager/LocalAccountStore$Result;

    move-result-object p1

    return-object p1
.end method

.method deleteAccounts(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 112
    if-eqz p1, :cond_1

    .line 113
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    invoke-static {v1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "hakopania"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    goto :goto_0

    .line 120
    :cond_1
    sget-object p1, Lcom/project7/localmanager/LocalAccountStore;->FILE_LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/project7/localmanager/LocalAccountStore;->read()Ljava/util/Properties;

    move-result-object v1

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    invoke-virtual {v1, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 125
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    goto :goto_1

    .line 128
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 129
    invoke-direct {p0, v1}, Lcom/project7/localmanager/LocalAccountStore;->writeAtomic(Ljava/util/Properties;)V

    .line 131
    :cond_4
    monitor-exit p1

    return-object v2

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method listAccounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/project7/localmanager/LocalAccountStore;->FILE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/project7/localmanager/LocalAccountStore;->read()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 74
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 75
    monitor-exit v0

    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerBatch(Ljava/util/Collection;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_5

    .line 84
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    invoke-static {v1}, Lcom/project7/localmanager/LocalAccountStore;->normalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 93
    sget-object p1, Lcom/project7/localmanager/LocalAccountStore;->FILE_LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/project7/localmanager/LocalAccountStore;->read()Ljava/util/Properties;

    move-result-object v1

    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v3}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    goto :goto_1

    .line 100
    :cond_1
    invoke-direct {p0, v1, v3, p2}, Lcom/project7/localmanager/LocalAccountStore;->put(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    if-lez v2, :cond_3

    .line 104
    invoke-direct {p0, v1}, Lcom/project7/localmanager/LocalAccountStore;->writeAtomic(Ljava/util/Properties;)V

    .line 106
    :cond_3
    monitor-exit p1

    return v2

    .line 107
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 91
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u6ca1\u6709\u53ef\u6ce8\u518c\u7684\u8d26\u53f7"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\u5bc6\u7801\u957f\u5ea6\u5fc5\u987b\u4e3a 1-128 \u4f4d"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
