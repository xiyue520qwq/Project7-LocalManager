.class final Lcom/project7/localmanager/LocalStoryEnvironment;
.super Ljava/lang/Object;
.source "LocalStoryEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalStoryEnvironment$Scope;,
        Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;
    }
.end annotation


# static fields
.field private static final FIXTURE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalStoryEnvironment;->FIXTURE:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .line 8
    sget-object v0, Lcom/project7/localmanager/LocalStoryEnvironment;->FIXTURE:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static fixture(JJ)Lcom/project7/localmanager/LocalStoryEnvironment$Scope;
    .locals 2

    .line 26
    new-instance v0, Lcom/project7/localmanager/LocalStoryEnvironment$Scope;

    new-instance v1, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;-><init>(JJ)V

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalStoryEnvironment$Scope;-><init>(Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;)V

    return-object v0
.end method

.method static identity()Ljava/lang/String;
    .locals 8

    .line 33
    sget-object v0, Lcom/project7/localmanager/LocalStoryEnvironment;->FIXTURE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;

    .line 34
    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;->seed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;->sequence:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;->sequence:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    move v3, v1

    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static nextInt(I)I
    .locals 1

    .line 29
    sget-object v0, Lcom/project7/localmanager/LocalStoryEnvironment;->FIXTURE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;

    .line 30
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;->random:Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method static now()J
    .locals 2

    .line 27
    sget-object v0, Lcom/project7/localmanager/LocalStoryEnvironment;->FIXTURE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lcom/project7/localmanager/LocalStoryEnvironment$Fixture;->time:J

    :goto_0
    return-wide v0
.end method
