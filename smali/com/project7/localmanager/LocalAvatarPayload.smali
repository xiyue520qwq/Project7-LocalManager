.class final Lcom/project7/localmanager/LocalAvatarPayload;
.super Ljava/lang/Object;
.source "LocalAvatarPayload.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static container(Ljava/io/ByteArrayOutputStream;IIII)V
    .locals 1

    .line 47
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 48
    :cond_0
    const p2, 0xffff

    if-gt p1, p2, :cond_1

    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-long p1, p1

    const/4 p3, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/project7/localmanager/LocalAvatarPayload;->number(Ljava/io/ByteArrayOutputStream;JI)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-long p1, p1

    const/4 p3, 0x4

    invoke-static {p0, p1, p2, p3}, Lcom/project7/localmanager/LocalAvatarPayload;->number(Ljava/io/ByteArrayOutputStream;JI)V

    .line 50
    :goto_0
    return-void
.end method

.method static encode([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->messagePackValue([BZ)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalAvatarPayload;->write(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 15
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 17
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private static number(Ljava/io/ByteArrayOutputStream;JI)V
    .locals 2

    .line 53
    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_0

    mul-int/lit8 v0, p3, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method private static write(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 7

    .line 21
    if-nez p1, :cond_0

    const/16 p1, 0xc0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_6

    .line 22
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xc3

    goto :goto_0

    :cond_1
    const/16 p1, 0xc2

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_6

    .line 23
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-nez v0, :cond_c

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 28
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, v0, v1, v2}, Lcom/project7/localmanager/LocalAvatarPayload;->number(Ljava/io/ByteArrayOutputStream;JI)V

    goto/16 :goto_6

    .line 29
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 30
    check-cast p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 31
    array-length v0, p1

    const/16 v2, 0x20

    if-ge v0, v2, :cond_5

    array-length v0, p1

    or-int/lit16 v0, v0, 0xa0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 32
    :cond_5
    array-length v0, p1

    const v2, 0xffff

    if-gt v0, v2, :cond_6

    const/16 v0, 0xda

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v0, p1

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/project7/localmanager/LocalAvatarPayload;->number(Ljava/io/ByteArrayOutputStream;JI)V

    goto :goto_1

    .line 33
    :cond_6
    const/16 v0, 0xdb

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v0, p1

    int-to-long v2, v0

    invoke-static {p0, v2, v3, v1}, Lcom/project7/localmanager/LocalAvatarPayload;->number(Ljava/io/ByteArrayOutputStream;JI)V

    .line 34
    :goto_1
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 35
    goto/16 :goto_6

    :cond_7
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 36
    check-cast p1, Ljava/util/List;

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x90

    const/16 v2, 0xdc

    const/16 v3, 0xdd

    invoke-static {p0, v0, v1, v2, v3}, Lcom/project7/localmanager/LocalAvatarPayload;->container(Ljava/io/ByteArrayOutputStream;IIII)V

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalAvatarPayload;->write(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_2

    .line 39
    :cond_8
    goto/16 :goto_6

    :cond_9
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 40
    check-cast p1, Ljava/util/Map;

    .line 41
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x80

    const/16 v2, 0xde

    const/16 v3, 0xdf

    invoke-static {p0, v0, v1, v2, v3}, Lcom/project7/localmanager/LocalAvatarPayload;->container(Ljava/io/ByteArrayOutputStream;IIII)V

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalAvatarPayload;->write(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalAvatarPayload;->write(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_3

    .line 43
    :cond_a
    goto :goto_6

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported MessagePack value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_c
    :goto_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 25
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_d

    const-wide/16 v5, 0x7f

    cmp-long v0, v3, v5

    if-lez v0, :cond_e

    :cond_d
    const-wide/16 v5, -0x20

    cmp-long v0, v3, v5

    if-ltz v0, :cond_f

    if-gez p1, :cond_f

    :cond_e
    long-to-int p1, v3

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 26
    :cond_f
    const-wide/32 v5, -0x80000000

    cmp-long p1, v3, v5

    if-ltz p1, :cond_10

    const-wide/32 v5, 0x7fffffff

    cmp-long p1, v3, v5

    if-gtz p1, :cond_10

    const/16 p1, 0xd2

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0, v3, v4, v1}, Lcom/project7/localmanager/LocalAvatarPayload;->number(Ljava/io/ByteArrayOutputStream;JI)V

    goto :goto_5

    .line 27
    :cond_10
    const/16 p1, 0xd3

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0, v3, v4, v2}, Lcom/project7/localmanager/LocalAvatarPayload;->number(Ljava/io/ByteArrayOutputStream;JI)V

    .line 28
    :goto_5
    nop

    .line 44
    :goto_6
    return-void
.end method
