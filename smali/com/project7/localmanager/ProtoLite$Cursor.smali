.class final Lcom/project7/localmanager/ProtoLite$Cursor;
.super Ljava/lang/Object;
.source "ProtoLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/ProtoLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cursor"
.end annotation


# instance fields
.field private final data:[B

.field private offset:I


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->data:[B

    .line 100
    return-void
.end method


# virtual methods
.method hasRemaining()Z
    .locals 2

    .line 103
    iget v0, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    iget-object v1, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method readBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/project7/localmanager/ProtoLite$Cursor;->readVarint()I

    move-result v0

    .line 122
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->data:[B

    array-length v2, v1

    iget v3, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    .line 125
    add-int v2, v3, v0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 126
    iget v2, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    .line 127
    return-object v1

    .line 123
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid protobuf byte field"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readVarint()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    nop

    .line 108
    const/4 v0, 0x0

    move v1, v0

    .line 109
    :goto_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    iget-object v3, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->data:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 110
    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    .line 111
    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v0

    or-int/2addr v1, v3

    .line 112
    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 113
    return v1

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid protobuf varint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method skip(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/project7/localmanager/ProtoLite$Cursor;->readVarint()I

    goto :goto_0

    .line 133
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 134
    iget p1, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/project7/localmanager/ProtoLite$Cursor;->readVarint()I

    move-result p1

    .line 137
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 140
    add-int/2addr v1, p1

    iput v1, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    .line 141
    goto :goto_0

    .line 138
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "invalid protobuf skipped field"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 142
    iget p1, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    .line 146
    :goto_0
    iget p1, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->offset:I

    iget-object v0, p0, Lcom/project7/localmanager/ProtoLite$Cursor;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_4

    .line 149
    return-void

    .line 147
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "protobuf field exceeds message"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported protobuf wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
