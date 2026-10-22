.class final Lcom/project7/localmanager/ProtoLite;
.super Ljava/lang/Object;
.source "ProtoLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/ProtoLite$Cursor;,
        Lcom/project7/localmanager/ProtoLite$EntityMessage;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method static connectReply()[B
    .locals 1

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x10t
        0x1t
    .end array-data
.end method

.method static entityInfo([B[B[B)[B
    .locals 2

    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    invoke-static {p0}, Lcom/project7/localmanager/ProtoLite;->md5OrIndex([B)[B

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/ProtoLite;->writeBytes(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 24
    const/4 p0, 0x3

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/ProtoLite;->writeBytes(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 25
    const/4 p0, 0x4

    invoke-static {v0, p0, p2}, Lcom/project7/localmanager/ProtoLite;->writeBytes(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static entityMessage([B[B[B)[B
    .locals 2

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    const/4 v1, 0x2

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/ProtoLite;->writeBytes(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 32
    invoke-static {p1}, Lcom/project7/localmanager/ProtoLite;->md5OrIndex([B)[B

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {v0, p1, p0}, Lcom/project7/localmanager/ProtoLite;->writeBytes(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 33
    const/4 p0, 0x4

    invoke-static {v0, p0, p2}, Lcom/project7/localmanager/ProtoLite;->writeBytes(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static md5OrIndex([B)[B
    .locals 2

    .line 61
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/ProtoLite;->writeBytes(Ljava/io/ByteArrayOutputStream;I[B)V

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static parseEntityMessage([B)Lcom/project7/localmanager/ProtoLite$EntityMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;

    invoke-direct {v0}, Lcom/project7/localmanager/ProtoLite$EntityMessage;-><init>()V

    .line 39
    new-instance v1, Lcom/project7/localmanager/ProtoLite$Cursor;

    invoke-direct {v1, p0}, Lcom/project7/localmanager/ProtoLite$Cursor;-><init>([B)V

    .line 40
    :goto_0
    invoke-virtual {v1}, Lcom/project7/localmanager/ProtoLite$Cursor;->hasRemaining()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 41
    invoke-virtual {v1}, Lcom/project7/localmanager/ProtoLite$Cursor;->readVarint()I

    move-result p0

    .line 42
    ushr-int/lit8 v2, p0, 0x3

    .line 43
    and-int/lit8 p0, p0, 0x7

    .line 44
    const/4 v3, 0x2

    if-eq p0, v3, :cond_0

    .line 45
    invoke-virtual {v1, p0}, Lcom/project7/localmanager/ProtoLite$Cursor;->skip(I)V

    .line 46
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1}, Lcom/project7/localmanager/ProtoLite$Cursor;->readBytes()[B

    move-result-object p0

    .line 49
    if-ne v2, v3, :cond_1

    .line 50
    iput-object p0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->id:[B

    goto :goto_1

    .line 51
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 52
    invoke-static {p0}, Lcom/project7/localmanager/ProtoLite;->parseMd5([B)[B

    move-result-object p0

    iput-object p0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->methodMd5:[B

    goto :goto_1

    .line 53
    :cond_2
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 54
    iput-object p0, v0, Lcom/project7/localmanager/ProtoLite$EntityMessage;->parameters:[B

    .line 56
    :cond_3
    :goto_1
    goto :goto_0

    .line 57
    :cond_4
    return-object v0
.end method

.method private static parseMd5([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/project7/localmanager/ProtoLite$Cursor;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/ProtoLite$Cursor;-><init>([B)V

    .line 68
    :goto_0
    invoke-virtual {v0}, Lcom/project7/localmanager/ProtoLite$Cursor;->hasRemaining()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/project7/localmanager/ProtoLite$Cursor;->readVarint()I

    move-result p0

    .line 70
    ushr-int/lit8 v1, p0, 0x3

    .line 71
    and-int/lit8 p0, p0, 0x7

    .line 72
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/project7/localmanager/ProtoLite$Cursor;->readBytes()[B

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {v0, p0}, Lcom/project7/localmanager/ProtoLite$Cursor;->skip(I)V

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private static writeBytes(Ljava/io/ByteArrayOutputStream;I[B)V
    .locals 1

    .line 81
    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/project7/localmanager/ProtoLite;->writeVarint(Ljava/io/ByteArrayOutputStream;I)V

    .line 82
    array-length p1, p2

    invoke-static {p0, p1}, Lcom/project7/localmanager/ProtoLite;->writeVarint(Ljava/io/ByteArrayOutputStream;I)V

    .line 83
    array-length p1, p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 84
    return-void
.end method

.method private static writeVarint(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1

    .line 87
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    .line 88
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 89
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 92
    return-void
.end method
