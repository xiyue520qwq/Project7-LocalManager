.class final Lcom/project7/localmanager/BsonLite;
.super Ljava/lang/Object;
.source "BsonLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/BsonLite$Element;,
        Lcom/project7/localmanager/BsonLite$UuidValue;,
        Lcom/project7/localmanager/BsonLite$BinaryValue;,
        Lcom/project7/localmanager/BsonLite$ArrayValue;
    }
.end annotation


# static fields
.field static final EMPTY_DOCUMENT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static addHeroDocument(I)[B
    .locals 2

    .line 697
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 698
    const-string v1, "h"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 699
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->heroDataDocument(I)[B

    move-result-object p0

    const-string v1, "d"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 700
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static allAreaInfoReplyDocument(Z)[B
    .locals 1

    .line 340
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p0

    return-object p0
.end method

.method static allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 2

    .line 345
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 346
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->areasDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p0

    const-string v1, "ais"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 347
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->cityValuesDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p0

    const-string p1, "cd"

    invoke-static {v0, p1, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 348
    const-string p0, "sm"

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 349
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B
    .locals 3

    .line 357
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    invoke-static {p2, p1}, Lcom/project7/localmanager/BsonLite;->persistedCityValues([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    const-string v2, "cd"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 358
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->persistedAreas(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object p0

    const-string p1, "ais"

    invoke-static {v0, p1, p0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static areaDocument(IZLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 1

    .line 447
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/project7/localmanager/BsonLite;->areaDocument(IZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static areaDocument(IZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B
    .locals 3

    .line 452
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    const/16 v2, 0x8

    if-gt p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 454
    :goto_0
    if-eqz p1, :cond_3

    .line 455
    if-nez p2, :cond_1

    if-ne p0, v1, :cond_2

    move v0, v1

    goto :goto_1

    .line 456
    :cond_1
    invoke-static {p2, p0, p3}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result p1

    move v0, p1

    :cond_2
    :goto_1
    goto :goto_2

    .line 458
    :cond_3
    nop

    .line 461
    :goto_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 462
    const-string v2, "0"

    invoke-static {p1, v2, v0}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 463
    const-string v0, "1"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 464
    const-string v0, "2"

    invoke-static {p1, v0, v2}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 466
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 467
    const-string v2, "id"

    invoke-static {v0, v2, p0}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 468
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p1

    const-string v2, "st"

    invoke-static {v0, v2, p1}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 469
    const-string p1, "lv"

    invoke-static {v0, p1, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 470
    sget-object p1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v1, "bd"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 471
    const-string v1, "dbd"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 472
    const/4 p1, 0x4

    const-string v1, "mbn"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 473
    invoke-static {p2, p0, p3}, Lcom/project7/localmanager/LocalCityProgress;->mapStages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)[B

    move-result-object p0

    const-string p1, "stage"

    invoke-static {v0, p1, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 474
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static areaInfoReplyDocument(IZ)[B
    .locals 1

    .line 353
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/BsonLite;->areaInfoReplyDocument(IZLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p0

    return-object p0
.end method

.method static areaInfoReplyDocument(IZLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 1

    .line 368
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 369
    nop

    .line 372
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->areaDocument(IZLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 369
    :goto_0
    const-string p1, "ai"

    invoke-static {v0, p1, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 374
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static areaInfoReplyDocument(IZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B
    .locals 3

    .line 362
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ai"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-static {v1, p2, p3}, Lcom/project7/localmanager/BsonLite;->persistedAreas(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "area_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 363
    :cond_0
    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :goto_0
    aput-object p0, v0, v1

    .line 362
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private static areaStagesDocument(ILcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 0

    .line 574
    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalCityProgress;->stages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)[B

    move-result-object p0

    return-object p0
.end method

.method static areaStagesReplyDocument(I)[B
    .locals 1

    .line 325
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->areaStagesReplyDocument(ILcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p0

    return-object p0
.end method

.method static areaStagesReplyDocument(ILcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 1

    .line 329
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/BsonLite;->areaStagesReplyDocument(ILcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static areaStagesReplyDocument(ILcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B
    .locals 2

    .line 333
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 334
    const-string v1, "ai"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 335
    invoke-static {p1, p0, p2}, Lcom/project7/localmanager/LocalCityProgress;->stages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)[B

    move-result-object p0

    const-string p1, "st"

    invoke-static {v0, p1, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 336
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static areasDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 1

    .line 422
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/BsonLite;->areasDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static areasDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B
    .locals 4

    .line 427
    if-nez p0, :cond_0

    .line 428
    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    return-object p0

    .line 430
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 431
    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "area_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-static {v1, p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->areaDocument(IZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v3

    .line 432
    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_1
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static arrayValue([BLjava/lang/String;)[B
    .locals 1

    .line 97
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->findElement([BLjava/lang/String;)Lcom/project7/localmanager/BsonLite$Element;

    move-result-object p0

    .line 98
    if-eqz p0, :cond_0

    iget p1, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static bbsSkinReplyDocument(Ljava/lang/Iterable;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;I)[B"
        }
    .end annotation

    .line 945
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 946
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->profileIntArrayBytes(Ljava/lang/Iterable;)[B

    move-result-object p0

    const-string v1, "tbk"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 947
    const-string p0, "bk"

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 948
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static binaryValue([BLjava/lang/String;)[B
    .locals 2

    .line 79
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->findElement([BLjava/lang/String;)Lcom/project7/localmanager/BsonLite$Element;

    move-result-object p0

    .line 80
    const/4 p1, 0x0

    if-eqz p0, :cond_3

    iget v0, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    array-length v0, v0

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 84
    if-nez v1, :cond_2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    new-array p1, v0, [B

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1

    .line 84
    :cond_2
    :goto_0
    return-object p1

    .line 80
    :cond_3
    :goto_1
    return-object p1
.end method

.method private static boolBytes(Z)[B
    .locals 2

    .line 1420
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method static boolValue([BLjava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 51
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->findElement([BLjava/lang/String;)Lcom/project7/localmanager/BsonLite$Element;

    move-result-object p0

    .line 52
    if-eqz p0, :cond_2

    iget p1, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    array-length p1, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    const/4 p1, 0x0

    aget-byte p0, p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 53
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static callbackDocument(I)[B
    .locals 4

    .line 1145
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1146
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1147
    const-string v1, "_r_"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1148
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1149
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1150
    const-string v1, "_cbid_"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1151
    invoke-static {v0, p0}, Lcom/project7/localmanager/BsonLite;->writeLeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 1152
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static cityAreaStatus(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I
    .locals 0

    .line 442
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result p0

    return p0
.end method

.method static cityDataReplyDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 2

    .line 491
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 492
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->cityValuesDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p0

    const-string v1, "cd"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 493
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static cityDataReplyDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B
    .locals 3

    .line 516
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "cd"

    aput-object v2, v0, v1

    invoke-static {p1, p0}, Lcom/project7/localmanager/BsonLite;->persistedCityValues([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private static cityValuesDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 3

    .line 478
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 479
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    if-ltz v1, :cond_0

    .line 480
    iget v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    .line 479
    :goto_0
    const-string v2, "av"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 481
    const/4 v1, 0x1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    add-int/2addr v1, p0

    :goto_1
    const-string p0, "pn"

    invoke-static {v0, p0, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 482
    const-string p0, "bf"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 483
    const-string p0, "dv"

    invoke-static {v0, p0, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 484
    const-string p0, "ev"

    invoke-static {v0, p0, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 485
    const-string p0, "fv"

    invoke-static {v0, p0, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 486
    const-string p0, "rv"

    invoke-static {v0, p0, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 487
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static combatDataDocument(Ljava/lang/Iterable;Ljava/lang/String;[BLcom/project7/localmanager/LocalCombatCatalog;I)[B
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/project7/localmanager/LocalCombatCatalog;",
            "I)[B"
        }
    .end annotation

    .line 197
    move-object/from16 v7, p3

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Integer;

    .line 200
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v6, p2

    invoke-static {v6, v0}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v5

    .line 204
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v5}, Lcom/project7/localmanager/BsonLite;->combatSkinDocument(I[B)[B

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v0, "sl"

    invoke-static {v5, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    const-string v1, "so"

    invoke-static {v5, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 207
    if-nez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    .line 208
    :goto_1
    if-nez v1, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    .line 209
    :goto_2
    nop

    .line 210
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 211
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0, v2, v3, v5}, Lcom/project7/localmanager/LocalCombatCatalog;->skillsFor(III[B)[[I

    move-result-object v1

    .line 212
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0, v5}, Lcom/project7/localmanager/LocalCombatCatalog;->artifactSkillsFor(I[B)[[I

    move-result-object v0

    .line 213
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v12, v0

    move-object/from16 v0, p3

    move-object v14, v1

    move/from16 v1, v16

    move v13, v4

    move-object v4, v5

    move-object v11, v5

    move/from16 v5, p4

    move-object/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/project7/localmanager/LocalCombatCatalog;->attributesFor(III[BI[B)Ljava/util/Map;

    move-result-object v0

    .line 209
    invoke-static {v13, v14, v12, v0}, Lcom/project7/localmanager/BsonLite;->heroCombatDataDocument(I[[I[[ILjava/util/Map;)[B

    move-result-object v0

    .line 214
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1, v11}, Lcom/project7/localmanager/LocalCombatCatalog;->awakeStage(I[B)I

    move-result v1

    const-string v2, "as"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 216
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, ""

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "robot_id"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v1, :cond_4

    aget-object v1, v2, v13

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 216
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x3

    goto :goto_3

    .line 219
    :cond_4
    goto/16 :goto_0

    .line 221
    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v1

    const-string v2, "heroes"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 223
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v1, "skins"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 224
    move/from16 v1, p4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "hero_lv"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 225
    const-string v1, "monster_lv"

    invoke-static {v0, v1, v3}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 226
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalIntelligenceEffects;->monsterRate([B)D

    move-result-wide v1

    .line 227
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_6

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "hurt_addition_rate"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 228
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "max_hp_addition_rate"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v3, v2

    .line 227
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "monster"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 229
    :cond_6
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method static combatOfflineReplyDocument(IILjava/lang/String;Ljava/lang/Iterable;[BLjava/lang/String;[BLcom/project7/localmanager/LocalCombatCatalog;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;[B",
            "Ljava/lang/String;",
            "[B",
            "Lcom/project7/localmanager/LocalCombatCatalog;",
            ")[B"
        }
    .end annotation

    .line 156
    nop

    .line 157
    const-string v0, "level"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 156
    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/project7/localmanager/BsonLite;->combatOfflineReplyDocument(IILjava/lang/String;Ljava/lang/Iterable;[BLjava/lang/String;[BLcom/project7/localmanager/LocalCombatCatalog;I)[B

    move-result-object v0

    return-object v0
.end method

.method static combatOfflineReplyDocument(IILjava/lang/String;Ljava/lang/Iterable;[BLjava/lang/String;[BLcom/project7/localmanager/LocalCombatCatalog;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;[B",
            "Ljava/lang/String;",
            "[B",
            "Lcom/project7/localmanager/LocalCombatCatalog;",
            "I)[B"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    const-string v1, "t"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 164
    const-string v1, "s"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 165
    if-nez p2, :cond_0

    const-string p2, "local"

    :cond_0
    const-string v1, "f"

    invoke-static {v0, v1, p2}, Lcom/project7/localmanager/BsonLite;->writeStringElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string p2, "h"

    invoke-static {v0, p2, p3}, Lcom/project7/localmanager/BsonLite;->writeIntArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 167
    if-nez p4, :cond_1

    sget-object p4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :cond_1
    const-string p2, "d"

    invoke-static {v0, p2, p4}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 168
    const-string p2, "level"

    const/4 p4, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    if-ne p0, p4, :cond_4

    .line 169
    :cond_2
    invoke-static {p6, p2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p8

    .line 170
    if-nez p8, :cond_3

    move p8, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    invoke-static {v1, p8}, Ljava/lang/Math;->max(II)I

    move-result p8

    .line 172
    :cond_4
    :goto_0
    invoke-static {p3, p5, p6, p7, p8}, Lcom/project7/localmanager/BsonLite;->combatDataDocument(Ljava/lang/Iterable;Ljava/lang/String;[BLcom/project7/localmanager/LocalCombatCatalog;I)[B

    move-result-object p3

    .line 173
    if-eq p0, v1, :cond_5

    if-ne p0, p4, :cond_b

    .line 174
    :cond_5
    const-string p5, "weeknum"

    invoke-static {p6, p5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p8

    const-string v2, "wl"

    invoke-static {p8, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p8

    .line 175
    invoke-static {p6, p2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 176
    invoke-static {p6, p5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p5

    const-string v2, "w"

    invoke-static {p5, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p5

    .line 177
    if-ne p0, p4, :cond_7

    if-eqz p7, :cond_7

    .line 178
    if-nez p5, :cond_6

    const/4 p5, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    :goto_1
    invoke-virtual {p7, p1, p5}, Lcom/project7/localmanager/LocalCombatCatalog;->storyMonsterLevel(II)I

    move-result p5

    goto :goto_2

    .line 179
    :cond_7
    if-nez p8, :cond_8

    move p5, v1

    goto :goto_2

    :cond_8
    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-static {v1, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 180
    :goto_2
    const-string p8, "monster_lv"

    invoke-static {p3, p8, p5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p3

    .line 181
    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_3
    const-string p2, "hero_lv"

    invoke-static {p3, p2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p3

    .line 182
    if-ne p0, p4, :cond_b

    if-eqz p7, :cond_b

    .line 183
    invoke-virtual {p7, p1, p6}, Lcom/project7/localmanager/LocalCombatCatalog;->wingEnhancement(I[B)[B

    move-result-object p0

    .line 184
    const-string p1, "battle_enhance"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object p2

    .line 185
    const-string p4, "reduce_fatigue"

    invoke-static {p0, p4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 186
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p5

    invoke-static {p3, p1, p5, p6}, Lcom/project7/localmanager/BsonLite;->withProfileDouble([BLjava/lang/String;D)[B

    move-result-object p1

    move-object p3, p1

    .line 187
    :cond_a
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p3, p4, p0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p3

    .line 190
    :cond_b
    const-string p0, "c"

    invoke-static {v0, p0, p3}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 191
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;I)[B"
        }
    .end annotation

    .line 309
    sget-object v5, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/BsonLite;->combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;I[B)[B"
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    const-string v1, "t"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 316
    const-string p0, "s"

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 317
    const-string p0, "h"

    invoke-static {v0, p0, p2}, Lcom/project7/localmanager/BsonLite;->writeIntArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 318
    const-string p0, "x"

    invoke-static {v0, p0, p3}, Lcom/project7/localmanager/BsonLite;->writeIntArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 319
    const-string p0, "r"

    invoke-static {v0, p0, p5}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 320
    const-string p0, "w"

    invoke-static {v0, p0, p4}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 321
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static combatSkinDocument(I[B)[B
    .locals 6

    .line 233
    const-string v0, "cs"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "sk"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p1

    .line 235
    :goto_0
    const-string v1, "i"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 236
    const-string v3, "u"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "fb"

    invoke-static {p1, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    invoke-static {p1, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 241
    :cond_1
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, p1, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    const/4 v1, 0x2

    aput-object v3, p1, v1

    const/4 v3, 0x3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%08x%016x"

    invoke-static {v4, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v3

    const/4 p0, 0x4

    const-string v1, "cd"

    aput-object v1, p1, p0

    const/4 p0, 0x5

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v1, p1, p0

    const/4 p0, 0x6

    const-string v2, "pd"

    aput-object v2, p1, p0

    const/4 p0, 0x7

    aput-object v1, p1, p0

    const/16 p0, 0x8

    const-string v1, "dn"

    aput-object v1, p1, p0

    const/16 p0, 0x9

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p0

    .line 241
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static combatWinValue([B)I
    .locals 2

    .line 70
    const-string v0, "w"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 74
    :cond_0
    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 75
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static debugDocument([B)Ljava/lang/String;
    .locals 1

    .line 1156
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->debugDocument([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static debugDocument([BI)Ljava/lang/String;
    .locals 8

    .line 1160
    const-string v0, "<invalid>"

    if-eqz p0, :cond_7

    array-length v1, p0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_7

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto/16 :goto_2

    .line 1163
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1164
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 1165
    if-lt v3, v2, :cond_6

    array-length p0, p0

    if-le v3, p0, :cond_1

    goto/16 :goto_1

    .line 1168
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1169
    const/4 v0, 0x1

    .line 1170
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_5

    .line 1171
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1172
    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->readCString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v4

    .line 1173
    if-nez v4, :cond_2

    .line 1174
    const-string p1, "<truncated>}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1176
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 1177
    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->skipValue(Ljava/nio/ByteBuffer;II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1178
    const-string p1, "<unsupported:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1180
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v5

    new-array v6, v6, [B

    .line 1181
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 1182
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 1183
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1184
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 1185
    if-nez v0, :cond_4

    .line 1186
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1188
    :cond_4
    const/4 v0, 0x0

    .line 1189
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v6, p1}, Lcom/project7/localmanager/BsonLite;->debugValue(I[BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    goto :goto_0

    .line 1191
    :cond_5
    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1166
    :cond_6
    :goto_1
    return-object v0

    .line 1161
    :cond_7
    :goto_2
    return-object v0
.end method

.method private static debugValue(I[BI)Ljava/lang/String;
    .locals 3

    .line 1195
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1196
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    .line 1221
    :pswitch_0
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    array-length p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "<type:%02x bytes:%d>"

    invoke-static {p2, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1215
    :pswitch_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1213
    :pswitch_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1211
    :pswitch_3
    const-string p0, "null"

    return-object p0

    .line 1209
    :pswitch_4
    aget-byte p0, p1, v1

    if-nez p0, :cond_0

    const-string p0, "false"

    goto :goto_0

    :cond_0
    const-string p0, "true"

    :goto_0
    return-object p0

    .line 1217
    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectId("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xc

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->hex([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1219
    :pswitch_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "<binary:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1207
    :pswitch_7
    add-int/2addr p2, v2

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->debugDocument([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1198
    :pswitch_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 1199
    if-lt p0, v2, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-le p0, p1, :cond_1

    goto :goto_1

    .line 1202
    :cond_1
    sub-int/2addr p0, v2

    new-array p0, p0, [B

    .line 1203
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1200
    :cond_2
    :goto_1
    const-string p0, "<invalid-string>"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static varargs document([Ljava/lang/Object;)[B
    .locals 4

    .line 880
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 881
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 882
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 883
    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    .line 882
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 885
    :cond_0
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0

    .line 880
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BSON key/value pairs required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static documentEntries([B)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 846
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 847
    if-eqz p0, :cond_7

    array-length v1, p0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 848
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 849
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 850
    if-lt v3, v2, :cond_6

    array-length v2, p0

    if-le v3, v2, :cond_1

    goto :goto_2

    .line 852
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_5

    .line 853
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 854
    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->readCString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v4

    .line 855
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 856
    if-eqz v4, :cond_5

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->skipValue(Ljava/nio/ByteBuffer;II)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 857
    :cond_2
    const/4 v6, 0x3

    if-eq v2, v6, :cond_3

    const/4 v6, 0x4

    if-ne v2, v6, :cond_4

    .line 858
    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {p0, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    :cond_4
    goto :goto_0

    .line 860
    :cond_5
    :goto_1
    return-object v0

    .line 850
    :cond_6
    :goto_2
    return-object v0

    .line 847
    :cond_7
    :goto_3
    return-object v0
.end method

.method static documentValue([BLjava/lang/String;)[B
    .locals 1

    .line 89
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->findElement([BLjava/lang/String;)Lcom/project7/localmanager/BsonLite$Element;

    move-result-object p0

    .line 90
    if-eqz p0, :cond_1

    iget p1, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    return-object p0

    .line 91
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static emptyEventListsDocument()[B
    .locals 1

    .line 655
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(II)[B

    move-result-object v0

    return-object v0
.end method

.method static eventDocument(I)[B
    .locals 1

    .line 704
    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method static eventListsDocument(II)[B
    .locals 0

    .line 659
    if-nez p0, :cond_0

    .line 660
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 661
    :goto_0
    if-nez p1, :cond_1

    .line 662
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 663
    :goto_1
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B

    move-result-object p0

    return-object p0
.end method

.method static eventListsDocument(Ljava/lang/Iterable;Ljava/lang/Iterable;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 670
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 671
    const-string v1, "a"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeEventAvailabilityArray(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 672
    const-string p0, "p"

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeIntArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 673
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static eventReplyDocument(II)[B
    .locals 2

    .line 677
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 678
    const-string v1, "e"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 679
    const-string p0, "r"

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 680
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static eventRewardDocument(I)[B
    .locals 3

    .line 684
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 685
    const-string v1, "e"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 686
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 687
    const/16 v2, 0x3e9

    if-ne p0, v2, :cond_0

    .line 688
    const/16 p0, 0x18

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "hero"

    invoke-static {v1, v2, p0}, Lcom/project7/localmanager/BsonLite;->writeIntArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V

    goto :goto_0

    .line 689
    :cond_0
    const/16 v2, 0x400

    if-ne p0, v2, :cond_1

    .line 690
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "cg"

    invoke-static {v1, v2, p0}, Lcom/project7/localmanager/BsonLite;->writeIntArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 692
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    const-string v1, "r"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 693
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static findElement([BLjava/lang/String;)Lcom/project7/localmanager/BsonLite$Element;
    .locals 6

    .line 1250
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    array-length v1, p0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 1253
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1254
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 1255
    if-lt v3, v2, :cond_6

    array-length p0, p0

    if-le v3, p0, :cond_1

    goto :goto_1

    .line 1258
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/lit8 v2, v3, -0x1

    if-ge p0, v2, :cond_5

    .line 1259
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    .line 1260
    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->readCString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v2

    .line 1261
    if-nez v2, :cond_2

    .line 1262
    return-object v0

    .line 1264
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 1265
    invoke-static {v1, p0, v3}, Lcom/project7/localmanager/BsonLite;->skipValue(Ljava/nio/ByteBuffer;II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1266
    return-object v0

    .line 1268
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1269
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    sub-int/2addr p1, v4

    new-array p1, p1, [B

    .line 1270
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1271
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 1272
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1273
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1274
    new-instance v0, Lcom/project7/localmanager/BsonLite$Element;

    invoke-direct {v0, p0, p1}, Lcom/project7/localmanager/BsonLite$Element;-><init>(I[B)V

    return-object v0

    .line 1276
    :cond_4
    goto :goto_0

    .line 1277
    :cond_5
    return-object v0

    .line 1256
    :cond_6
    :goto_1
    return-object v0

    .line 1251
    :cond_7
    :goto_2
    return-object v0
.end method

.method private static finishDocument(Ljava/io/ByteArrayOutputStream;)[B
    .locals 3

    .line 1349
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1350
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->writeLeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 1351
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 1352
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1353
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1354
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static friendlyRewardDocument(Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 528
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 529
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 530
    goto :goto_0

    .line 531
    :cond_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 532
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v0

    const-string v1, "fr"

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 533
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v1, "n"

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 534
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static gamePlaySwitchReplyDocument(Ljava/lang/String;ILjava/lang/String;)[B
    .locals 3

    .line 647
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 648
    const-string v1, ""

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    const-string v2, "g"

    invoke-static {v0, v2, p0}, Lcom/project7/localmanager/BsonLite;->writeStringElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string p0, "s"

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 650
    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const-string p0, "m"

    invoke-static {v0, p0, p2}, Lcom/project7/localmanager/BsonLite;->writeStringElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z
    .locals 1

    .line 578
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    const-string v0, "battle"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 579
    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static heroCombatDataDocument(I[[I[[ILjava/util/Map;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[I[[I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)[B"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    const-string v1, "0"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->writeSkillPairsElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[[I)V

    .line 261
    const-string p1, "1"

    invoke-static {v0, p1, p2}, Lcom/project7/localmanager/BsonLite;->writeSkillPairsElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[[I)V

    .line 263
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 264
    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 265
    invoke-static {p2, p1, v2}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 267
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 269
    const-string v1, "id"

    invoke-static {p1, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 270
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 272
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 273
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 274
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 275
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 276
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 277
    goto :goto_0

    .line 278
    :cond_0
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    const-string p3, "d"

    invoke-static {p1, p3, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 279
    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string p3, "a"

    invoke-static {p1, p3, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 280
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p3

    const-string v0, "s"

    invoke-static {p1, v0, p3}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 281
    const-string p3, "t"

    invoke-static {p1, p3, p0}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 282
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    const-string p2, "ai"

    invoke-static {p1, p2, p0}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 283
    const-string p0, "as"

    invoke-static {p1, p0, v2}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 284
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static heroDataDocument(I)[B
    .locals 9

    .line 1067
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-ne p0, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1068
    :goto_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1069
    const-string v4, "o"

    invoke-static {v3, v4, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1070
    const/4 v4, 0x3

    const-string v5, "ss"

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1071
    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v5, "oa"

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1072
    const-string v5, "ot"

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1073
    const-string v5, "rotc"

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1074
    const-string v4, "sl"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->writeEmptyArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1076
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1077
    const-string v6, "items"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->writeEmptyArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1078
    const/16 v6, 0x19

    const-string v7, "mc"

    invoke-static {v5, v7, v6}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1080
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v0, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v1

    const-string v7, "%08x%016x"

    invoke-static {v6, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1082
    const-string v7, "i"

    invoke-static {v6, v7, p0}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1083
    const-string v7, "u"

    invoke-static {v6, v7, v0}, Lcom/project7/localmanager/BsonLite;->writeStringElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string v7, "fb"

    invoke-static {v6, v7, v8}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 1085
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1086
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v6

    invoke-static {v7, v0, v6}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1088
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1089
    invoke-static {v0, v4, v2}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1090
    const-string v2, "so"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1091
    const/16 v1, 0x64

    const-string v2, "cf"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1092
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v1

    const-string v2, "ar"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1093
    const-string v1, "ef"

    invoke-static {v0, v1, v8}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1094
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v1

    const-string v2, "ti"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1095
    const-string v1, "cat"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->writeNullElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1096
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->objectIdBytes(I)[B

    move-result-object p0

    const-string v1, "cs"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeObjectIdElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1097
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    const-string v1, "sk"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1098
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static heroValueDocument(II)[B
    .locals 2

    .line 520
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 521
    const-string v1, "h"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 522
    const-string p0, "v"

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 523
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static hex([BI)Ljava/lang/String;
    .locals 6

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1227
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    if-ge v2, p1, :cond_0

    .line 1228
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%02x"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1230
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static intArrayBytes(Ljava/lang/Iterable;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 1424
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1425
    nop

    .line 1426
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1427
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1428
    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    move v1, v3

    .line 1430
    :cond_0
    goto :goto_0

    .line 1431
    :cond_1
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static intArrayValues([BLjava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    if-eqz p0, :cond_8

    array-length v0, p0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto/16 :goto_5

    .line 107
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 109
    if-lt v2, v1, :cond_7

    array-length p0, p0

    if-le v2, p0, :cond_1

    goto :goto_4

    .line 112
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/lit8 v1, v2, -0x1

    if-ge p0, v1, :cond_6

    .line 113
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    .line 114
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->readCString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 115
    goto :goto_3

    .line 117
    :cond_2
    const/16 v1, 0x10

    if-ne p0, v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_3

    .line 118
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :cond_3
    const/16 v1, 0x12

    if-ne p0, v1, :cond_4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v3, 0x8

    if-lt v1, v3, :cond_4

    .line 120
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 121
    const-wide/32 v5, -0x80000000

    cmp-long p0, v3, v5

    if-ltz p0, :cond_5

    const-wide/32 v5, 0x7fffffff

    cmp-long p0, v3, v5

    if-gtz p0, :cond_5

    .line 122
    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :cond_4
    invoke-static {v0, p0, v2}, Lcom/project7/localmanager/BsonLite;->skipValue(Ljava/nio/ByteBuffer;II)Z

    move-result p0

    if-nez p0, :cond_5

    .line 125
    goto :goto_3

    .line 124
    :cond_5
    :goto_1
    nop

    .line 127
    :goto_2
    goto :goto_0

    .line 128
    :cond_6
    :goto_3
    return-object p1

    .line 110
    :cond_7
    :goto_4
    return-object p1

    .line 105
    :cond_8
    :goto_5
    return-object p1
.end method

.method private static intBytes(I)[B
    .locals 1

    .line 1414
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1415
    invoke-static {v0, p0}, Lcom/project7/localmanager/BsonLite;->writeLeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 1416
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static intDocument(Ljava/lang/String;I)[B
    .locals 2

    .line 132
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    invoke-static {v0, p0}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 135
    invoke-static {v0, p1}, Lcom/project7/localmanager/BsonLite;->writeLeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 136
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static intListDocument(Ljava/lang/String;Ljava/lang/Iterable;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 708
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 709
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 710
    nop

    .line 711
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 712
    add-int/lit8 v4, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 713
    move v2, v4

    goto :goto_0

    .line 714
    :cond_0
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 715
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static intValue([BLjava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 35
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->findElement([BLjava/lang/String;)Lcom/project7/localmanager/BsonLite$Element;

    move-result-object p0

    .line 36
    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 37
    return-object p1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    iget v1, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 43
    :cond_1
    iget p0, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/16 v1, 0x12

    if-ne p0, v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_3

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 45
    const-wide/32 v2, -0x80000000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_2

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_2

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_2
    return-object p1

    .line 47
    :cond_3
    return-object p1
.end method

.method static keys([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 832
    if-eqz p0, :cond_5

    array-length v1, p0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 833
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 834
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 835
    if-lt v3, v2, :cond_4

    array-length p0, p0

    if-le v3, p0, :cond_1

    goto :goto_2

    .line 836
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/lit8 v2, v3, -0x1

    if-ge p0, v2, :cond_3

    .line 837
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    .line 838
    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->readCString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v2

    .line 839
    if-eqz v2, :cond_3

    invoke-static {v1, p0, v3}, Lcom/project7/localmanager/BsonLite;->skipValue(Ljava/nio/ByteBuffer;II)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 840
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    goto :goto_0

    .line 842
    :cond_3
    :goto_1
    return-object v0

    .line 835
    :cond_4
    :goto_2
    return-object v0

    .line 832
    :cond_5
    :goto_3
    return-object v0
.end method

.method private static listBytes(Ljava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)[B"
        }
    .end annotation

    .line 889
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 890
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 891
    :cond_0
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static loginFailureDocument(Ljava/lang/String;)[B
    .locals 3

    .line 640
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 641
    const-string v1, "e"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 642
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v1, "m"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeStringElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static luckyDrawCardReplyDocument(ZII)[B
    .locals 3

    .line 616
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 617
    const-string v1, "index"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 618
    const-string p1, "is_open"

    invoke-static {v0, p1, p0}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 619
    const/16 p1, 0x18

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "hero"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->writeIntArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 620
    const-string p1, "hero_file"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 621
    const-string p1, "get_hero"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 622
    sget-object p1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v1, "other_reward"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 623
    const-string v1, "jiaozhi"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 625
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 626
    const-string v2, "rt"

    invoke-static {v1, v2, p0}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 627
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    const-string v0, "info"

    invoke-static {v1, v0, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 628
    const-string p0, "prog"

    invoke-static {v1, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 629
    const-string p0, "t"

    invoke-static {v1, p0, p2}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 630
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static luckyDrawFileContentsReplyDocument(ZI)[B
    .locals 6

    .line 597
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 598
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 599
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 600
    const-string v4, "index"

    invoke-static {v3, v4, v2}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 601
    const-string v4, "is_open"

    invoke-static {v3, v4, v1}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 602
    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "hero"

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/BsonLite;->writeIntArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 603
    const-string v4, "hero_file"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 604
    const-string v4, "get_hero"

    invoke-static {v3, v4, v1}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 605
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 598
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 609
    const-string v2, "rt"

    invoke-static {v1, v2, p0}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 610
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    const-string v0, "info"

    invoke-static {v1, v0, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 611
    const-string p0, "t"

    invoke-static {v1, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 612
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static luckyDrawFileReplyDocument(ZI)[B
    .locals 2

    .line 583
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 584
    const-string v1, "rt"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 585
    const-string p0, "t"

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 586
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static luckyDrawQuitReplyDocument(ZI)[B
    .locals 2

    .line 590
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 591
    const-string v1, "rt"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 592
    const-string p0, "t"

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 593
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static messagePackValue([BZ)Ljava/lang/Object;
    .locals 9

    .line 782
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 783
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 784
    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->findElement([BLjava/lang/String;)Lcom/project7/localmanager/BsonLite$Element;

    move-result-object v3

    .line 785
    iget-object v4, v3, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 787
    iget v5, v3, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    .line 808
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported avatar BSON type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/project7/localmanager/BsonLite$Element;->type:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 798
    :pswitch_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_2

    .line 797
    :pswitch_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_2

    .line 796
    :pswitch_3
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 800
    :pswitch_4
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 801
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "$date"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 795
    :pswitch_5
    iget-object v3, v3, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    aget-byte v3, v3, v7

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v6, v7

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    .line 793
    :pswitch_6
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 794
    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "$oid"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 803
    :pswitch_7
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 804
    new-array v3, v3, [B

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 805
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 806
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    const-string v8, "$binary"

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    const-string v5, "%02x"

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "$type"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v4

    goto :goto_2

    .line 791
    :pswitch_8
    iget-object v3, v3, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    invoke-static {v3, v6}, Lcom/project7/localmanager/BsonLite;->messagePackValue([BZ)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 790
    :pswitch_9
    iget-object v3, v3, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    invoke-static {v3, v7}, Lcom/project7/localmanager/BsonLite;->messagePackValue([BZ)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 789
    :pswitch_a
    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 788
    :pswitch_b
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 810
    :goto_2
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    goto/16 :goto_0

    .line 812
    :cond_1
    if-eqz p1, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static numericValue([BLjava/lang/String;)Ljava/lang/Number;
    .locals 4

    .line 59
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->findElement([BLjava/lang/String;)Lcom/project7/localmanager/BsonLite$Element;

    move-result-object p0

    .line 60
    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    iget v1, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 63
    :cond_1
    iget v1, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 64
    :cond_2
    iget p0, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/16 v1, 0x12

    if-ne p0, v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    if-ne p0, v3, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 65
    :cond_3
    return-object p1
.end method

.method private static objectIdBytes(I)[B
    .locals 2

    .line 1102
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 1103
    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    .line 1104
    const/16 v1, 0xb

    aput-byte p0, v0, v1

    .line 1105
    return-object v0
.end method

.method static patrolReplyDocument(ZLjava/lang/Iterable;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 498
    const-string v1, "s"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 499
    const-string v1, "rs"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 500
    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v1, "ext"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 501
    const-string p0, "ev"

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeIntArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 502
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static persistedAreas(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B
    .locals 13

    .line 400
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->areasDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object p0

    .line 401
    invoke-static {p2}, Lcom/project7/localmanager/LocalServiceEngine;->cores([B)Ljava/util/Map;

    move-result-object p1

    .line 402
    const-string v0, "city"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "areas"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 403
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 404
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    .line 405
    const-string v5, "st"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    .line 406
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "id"

    invoke-static {v4, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "1"

    invoke-static {v6, v9, v7}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v6

    .line 407
    invoke-static {v4, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p2, v7}, Lcom/project7/localmanager/LocalChapterCityEngine;->locked([BI)Z

    move-result v7

    const-string v9, "2"

    invoke-static {v6, v9, v7}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v6

    .line 408
    const/4 v7, 0x4

    invoke-static {v4, v5, v7, v6}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v4

    .line 409
    invoke-static {p0, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 410
    if-nez v3, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    const-string v6, "stage"

    filled-new-array {v8, v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x3

    if-ge v9, v10, :cond_4

    aget-object v11, v6, v9

    .line 413
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v10, v7

    goto :goto_2

    :cond_1
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v10, 0x10

    .line 414
    :cond_2
    :goto_2
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v4, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->intBytes(I)[B

    move-result-object v12

    goto :goto_3

    :cond_3
    invoke-static {v4, v11}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v12

    .line 413
    :goto_3
    invoke-static {v3, v11, v10, v12}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v3

    .line 412
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 415
    :cond_4
    invoke-static {p0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 416
    goto/16 :goto_0

    .line 417
    :cond_5
    return-object p0
.end method

.method private static persistedCityValues([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 3

    .line 506
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p0

    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    .line 507
    if-nez p0, :cond_0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 508
    :cond_0
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->cityValuesDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    .line 509
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 510
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 511
    :cond_1
    goto :goto_0

    .line 512
    :cond_2
    return-object p0
.end method

.method static playerNameReplyDocument(ZZ)[B
    .locals 2

    .line 1138
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1139
    const-string v1, "r"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 1140
    const-string p0, "in"

    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    .line 1141
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static profileHeroDocument([BI)[B
    .locals 3

    .line 246
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    .line 247
    const-string v0, "hrs"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    .line 248
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    const-string p0, "1"

    invoke-static {v0, p0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 252
    :cond_0
    goto :goto_0

    .line 253
    :cond_1
    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    return-object p0
.end method

.method private static profileIntArrayBytes(Ljava/lang/Iterable;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 936
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 937
    nop

    .line 938
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 939
    if-eqz v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    move v1, v3

    .line 940
    :cond_0
    goto :goto_0

    .line 941
    :cond_1
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static readCString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 2

    .line 1234
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1235
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 1236
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-nez v1, :cond_0

    .line 1237
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 1238
    sub-int/2addr p1, v0

    new-array p1, p1, [B

    .line 1239
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1240
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1241
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1242
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    .line 1243
    new-instance p0, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 1246
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static replaceElement([BLjava/lang/String;I[B)[B
    .locals 10

    .line 1363
    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6

    .line 1366
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1367
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 1368
    if-lt v2, v1, :cond_5

    array-length v1, p0

    if-gt v2, v1, :cond_5

    .line 1372
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1373
    const/4 v3, 0x0

    move v4, v3

    .line 1374
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_3

    .line 1375
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 1376
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->readCString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v6

    .line 1377
    if-eqz v6, :cond_2

    .line 1380
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 1381
    invoke-static {v0, v5, v2}, Lcom/project7/localmanager/BsonLite;->skipValue(Ljava/nio/ByteBuffer;II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1384
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 1385
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1386
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1387
    invoke-static {v1, v6}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1388
    array-length v4, p3

    invoke-virtual {v1, p3, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1389
    const/4 v4, 0x1

    goto :goto_1

    .line 1391
    :cond_0
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1392
    invoke-static {v1, v6}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1393
    sub-int/2addr v8, v7

    invoke-virtual {v1, p0, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1395
    :goto_1
    goto :goto_0

    .line 1382
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unsupported BSON value type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1378
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "truncated BSON key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1396
    :cond_3
    if-nez v4, :cond_4

    .line 1397
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1398
    invoke-static {v1, p1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1399
    array-length p0, p3

    invoke-virtual {v1, p3, v3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1401
    :cond_4
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0

    .line 1369
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid BSON document length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1364
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid BSON document"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static skipCString(Ljava/nio/ByteBuffer;I)Z
    .locals 1

    .line 1340
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 1341
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    const/4 p0, 0x1

    return p0

    .line 1345
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static skipValue(Ljava/nio/ByteBuffer;II)Z
    .locals 3

    .line 1281
    nop

    .line 1282
    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 1330
    return v2

    .line 1299
    :sswitch_0
    const/16 v1, 0x10

    .line 1300
    goto :goto_1

    .line 1296
    :sswitch_1
    nop

    .line 1297
    goto :goto_1

    .line 1323
    :sswitch_2
    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->skipCString(Ljava/nio/ByteBuffer;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->skipCString(Ljava/nio/ByteBuffer;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    .line 1327
    :sswitch_3
    nop

    .line 1328
    move v1, v2

    goto :goto_1

    .line 1293
    :sswitch_4
    nop

    .line 1294
    move v1, v0

    goto :goto_1

    .line 1290
    :sswitch_5
    const/16 v1, 0xc

    .line 1291
    goto :goto_1

    .line 1317
    :sswitch_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    const/4 p2, 0x5

    if-ge p1, p2, :cond_1

    .line 1318
    return v2

    .line 1320
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    add-int/lit8 v1, p1, 0x5

    .line 1321
    goto :goto_1

    .line 1311
    :sswitch_7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-ge p1, v1, :cond_2

    .line 1312
    return v2

    .line 1314
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 1315
    goto :goto_1

    .line 1304
    :sswitch_8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-ge p1, v1, :cond_3

    .line 1305
    return v2

    .line 1307
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    add-int/2addr v1, p1

    .line 1308
    goto :goto_1

    .line 1287
    :sswitch_9
    const/16 v1, 0x8

    .line 1288
    nop

    .line 1332
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-le v1, p1, :cond_4

    .line 1333
    return v2

    .line 1335
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    .line 1336
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_9
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0xd -> :sswitch_8
        0xe -> :sswitch_8
        0x10 -> :sswitch_1
        0x11 -> :sswitch_9
        0x12 -> :sswitch_9
        0x13 -> :sswitch_0
        0x7f -> :sswitch_3
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method static statusSwitchReplyDocument(Ljava/lang/String;)[B
    .locals 3

    .line 140
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    const-string v1, "r"

    const-string v2, "ok"

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->writeStringElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "s"

    invoke-static {v0, v1, p0}, Lcom/project7/localmanager/BsonLite;->writeStringElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static stringBytes(Ljava/lang/String;)[B
    .locals 3

    .line 1405
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1406
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 1407
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->writeLeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 1408
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1409
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1410
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static stringDocument(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 634
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 635
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {v0, p0, p1}, Lcom/project7/localmanager/BsonLite;->writeStringElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static stringValue([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 20
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->findElement([BLjava/lang/String;)Lcom/project7/localmanager/BsonLite$Element;

    move-result-object p0

    .line 21
    const/4 p1, 0x0

    if-eqz p0, :cond_3

    iget v0, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    array-length v0, v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 26
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    sub-int/2addr v0, v1

    new-array p1, v0, [B

    .line 30
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 31
    new-instance p0, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 27
    :cond_2
    :goto_0
    return-object p1

    .line 22
    :cond_3
    :goto_1
    return-object p1
.end method

.method static uuidValue([BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 820
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->findElement([BLjava/lang/String;)Lcom/project7/localmanager/BsonLite$Element;

    move-result-object v0

    .line 821
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    array-length v1, v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 822
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    iget-object p1, v0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p1, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    const-string v3, "%02x"

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 824
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 826
    :cond_1
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 827
    if-eqz p0, :cond_2

    const-string p1, "[0-9a-fA-F]{24}"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method static withAccountCredentials([BLjava/lang/String;I)[B
    .locals 3

    .line 724
    nop

    .line 725
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->stringBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "an"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    .line 726
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->stringBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "account"

    invoke-static {p0, v0, v2, p1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    .line 727
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->intBytes(I)[B

    move-result-object p1

    const-string p2, "st"

    const/16 v0, 0x10

    invoke-static {p0, p2, v0, p1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static withAccountIdentity([BLjava/lang/String;I)[B
    .locals 3

    .line 719
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->stringBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "name"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    .line 720
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->withAccountCredentials([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method static withCopiedValue([BLjava/lang/String;[BLjava/lang/String;)[B
    .locals 0

    .line 753
    invoke-static {p2, p3}, Lcom/project7/localmanager/BsonLite;->findElement([BLjava/lang/String;)Lcom/project7/localmanager/BsonLite$Element;

    move-result-object p2

    .line 754
    if-eqz p2, :cond_0

    .line 755
    iget p3, p2, Lcom/project7/localmanager/BsonLite$Element;->type:I

    iget-object p2, p2, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    invoke-static {p0, p1, p3, p2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0

    .line 754
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "missing BSON source value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static withHero([BI)[B
    .locals 21

    .line 1016
    move-object/from16 v0, p0

    const-string v1, "heromgr"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 1017
    if-nez v2, :cond_0

    .line 1018
    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 1020
    :cond_0
    const-string v3, "hrs"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    .line 1021
    if-nez v4, :cond_1

    .line 1022
    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 1024
    :cond_1
    const/4 v6, 0x0

    .line 1026
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v7

    .line 1027
    const-string v8, "0"

    if-nez v7, :cond_5

    .line 1028
    nop

    .line 1036
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1037
    move/from16 v9, p1

    invoke-static {v7, v8, v9}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1038
    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/BsonLite;->heroDataDocument(I)[B

    move-result-object v8

    .line 1039
    const-string v10, "ps"

    invoke-static {v2, v10}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v11

    .line 1040
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 1041
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 1042
    const-string v13, "sk"

    invoke-static {v8, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v14

    .line 1043
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1044
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "-"

    move-object/from16 v16, v12

    const-string v12, ""

    invoke-virtual {v5, v9, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x18

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1045
    nop

    .line 1046
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    move-object v9, v13

    div-long v12, v17, v19

    .line 1045
    invoke-static {v15, v5, v12, v13}, Lcom/project7/localmanager/LocalCommerceEngine;->purchasedSkin(ILjava/lang/String;J)[B

    move-result-object v12

    invoke-static {v14, v5, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v14

    .line 1047
    move-object v13, v9

    move-object/from16 v12, v16

    move/from16 v9, p1

    goto :goto_1

    .line 1048
    :cond_2
    move-object v9, v13

    invoke-static {v8, v9, v14}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v8

    .line 1049
    nop

    .line 1050
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 1049
    invoke-static {v11, v5, v9}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v5

    invoke-static {v2, v10, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 1052
    :cond_3
    const-string v5, "1"

    invoke-static {v7, v5, v8}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1053
    nop

    .line 1055
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1057
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v6

    .line 1053
    const/4 v7, 0x4

    invoke-static {v4, v5, v7, v6}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v4

    .line 1059
    invoke-static {v2, v3, v7, v4}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v2

    .line 1060
    const-string v3, "cfs"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x3

    if-nez v4, :cond_4

    .line 1061
    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v2, v3, v5, v4}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v2

    .line 1063
    :cond_4
    invoke-static {v0, v1, v5, v2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v0

    return-object v0

    .line 1030
    :cond_5
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1031
    return-object v0

    .line 1033
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 1034
    goto/16 :goto_0
.end method

.method static withHeroDocument([BI[B)[B
    .locals 9

    .line 864
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 865
    const-string v2, "hrs"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 866
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 867
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 868
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 869
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "0"

    invoke-static {v5, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 870
    const/4 p1, 0x3

    const-string v4, "1"

    invoke-static {v5, v4, p1, p2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p1

    .line 871
    const/4 p2, 0x4

    invoke-static {v3, v6, p2, p1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p1

    .line 872
    nop

    .line 873
    invoke-static {v1, v2, p2, p1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p1

    .line 872
    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 875
    :cond_0
    goto :goto_0

    .line 876
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hero is not owned"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 9

    .line 381
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v1, 0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 385
    if-nez v1, :cond_1

    .line 386
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 388
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2, p1, p0}, Lcom/project7/localmanager/BsonLite;->persistedAreas(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v2

    const-string v3, "areas"

    const/4 v4, 0x3

    invoke-static {v1, v3, v4, v2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v1

    .line 389
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->cityValuesDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    .line 390
    const/4 v2, 0x2

    const-string v3, "av"

    const-string v5, "pn"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v6, v3, v5

    .line 391
    invoke-static {p1, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 392
    if-eqz v7, :cond_2

    .line 393
    const/16 v8, 0x10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->intBytes(I)[B

    move-result-object v7

    invoke-static {v1, v6, v8, v7}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v1

    .line 390
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 396
    :cond_3
    invoke-static {p0, v0, v4, v1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0

    .line 382
    :cond_4
    :goto_1
    return-object p0
.end method

.method static withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 16

    .line 538
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-object v0

    .line 539
    :cond_0
    iget v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->sandglassActions:I

    if-ltz v2, :cond_1

    .line 540
    const-string v2, "weeknum"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    iget v4, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->sandglassActions:I

    const-string v5, "sgw"

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 539
    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 541
    :cond_1
    const-string v2, "heromgr"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 542
    const-string v4, "hrs"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    .line 543
    const/4 v6, 0x3

    const/16 v7, 0x10

    if-eqz v5, :cond_6

    .line 544
    const/4 v8, 0x0

    .line 545
    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 546
    invoke-static {v5, v9}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v10

    .line 547
    const/4 v11, 0x4

    if-nez v10, :cond_2

    .line 560
    invoke-static {v3, v4, v11, v5}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v3

    .line 561
    invoke-static {v0, v2, v6, v3}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v0

    goto :goto_2

    .line 548
    :cond_2
    const-string v12, "0"

    invoke-static {v10, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 549
    const-string v13, "1"

    invoke-static {v10, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v14

    .line 550
    if-nez v14, :cond_3

    goto :goto_1

    .line 551
    :cond_3
    iget-object v15, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 552
    iget-object v15, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->intBytes(I)[B

    move-result-object v15

    const-string v11, "cf"

    invoke-static {v14, v11, v7, v15}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v14

    .line 554
    :cond_4
    iget-object v11, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 555
    iget-object v11, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->intBytes(I)[B

    move-result-object v11

    const-string v12, "ef"

    invoke-static {v14, v12, v7, v11}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v14

    .line 557
    :cond_5
    invoke-static {v10, v13, v6, v14}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v10

    .line 558
    const/4 v11, 0x4

    invoke-static {v5, v9, v11, v10}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v5

    .line 544
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 563
    :cond_6
    :goto_2
    iget v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    if-ltz v2, :cond_8

    .line 564
    const-string v2, "city"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 565
    if-nez v3, :cond_7

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 566
    :cond_7
    iget v4, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->intBytes(I)[B

    move-result-object v4

    const-string v5, "av"

    invoke-static {v3, v5, v7, v4}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v3

    .line 567
    iget v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->intBytes(I)[B

    move-result-object v1

    const-string v4, "pn"

    invoke-static {v3, v4, v7, v1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v1

    .line 568
    invoke-static {v0, v2, v6, v1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v0

    .line 570
    :cond_8
    return-object v0
.end method

.method static withPlayerName([BLjava/lang/String;I)[B
    .locals 2

    .line 952
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->stringBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "name"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    .line 953
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->intBytes(I)[B

    move-result-object p1

    const-string p2, "st"

    const/16 v0, 0x10

    invoke-static {p0, p2, v0, p1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static withProfileArray([BLjava/lang/String;Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)[B"
        }
    .end annotation

    .line 749
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->listBytes(Ljava/util/List;)[B

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {p0, p1, v0, p2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static withProfileBool([BLjava/lang/String;Z)[B
    .locals 1

    .line 741
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->boolBytes(Z)[B

    move-result-object p2

    const/16 v0, 0x8

    invoke-static {p0, p1, v0, p2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static withProfileDocument([BLjava/lang/String;[B)[B
    .locals 1

    .line 745
    const/4 v0, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static withProfileDouble([BLjava/lang/String;D)[B
    .locals 3

    .line 735
    invoke-static {p2, p3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    const/4 v0, 0x1

    const/16 v1, 0x8

    .line 737
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 736
    invoke-static {p0, p1, v0, p2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0

    .line 735
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "finite BSON number required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static withProfileInt([BLjava/lang/String;I)[B
    .locals 1

    .line 731
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->intBytes(I)[B

    move-result-object p2

    const/16 v0, 0x10

    invoke-static {p0, p1, v0, p2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 932
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->profileIntArrayBytes(Ljava/lang/Iterable;)[B

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {p0, p1, v0, p2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static withProfileString([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 928
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->stringBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static withProfileUuid([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 816
    new-instance v0, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v0, p2}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lcom/project7/localmanager/BsonLite$UuidValue;->bytes:[B

    const/4 v0, 0x7

    invoke-static {p0, p1, v0, p2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static withRequiredClientDefaults([B)[B
    .locals 12

    .line 957
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 958
    const-string v2, "dvc"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 959
    if-nez v1, :cond_0

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :cond_0
    invoke-static {v1, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 958
    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 960
    :cond_1
    const-string v0, "fnd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 961
    if-nez v1, :cond_2

    .line 962
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 964
    :cond_2
    const-string v2, "s"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 965
    if-nez v3, :cond_3

    .line 966
    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 968
    :cond_3
    const-string v5, "player_home"

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    if-nez v6, :cond_4

    .line 969
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 970
    const-string v7, "cur"

    const-string v8, "local_default"

    invoke-static {v6, v7, v8}, Lcom/project7/localmanager/BsonLite;->writeStringElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    nop

    .line 975
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v6

    .line 971
    const/4 v7, 0x3

    invoke-static {v3, v5, v7, v6}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v3

    .line 977
    invoke-static {v1, v2, v7, v3}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v1

    .line 978
    invoke-static {p0, v0, v7, v1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    .line 980
    :cond_4
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "hrs"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 981
    move v1, v4

    :goto_0
    if-eqz v0, :cond_b

    .line 982
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 983
    if-nez v2, :cond_5

    goto :goto_5

    .line 984
    :cond_5
    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 985
    const-string v5, "clm"

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    .line 986
    if-nez v6, :cond_6

    goto :goto_4

    .line 988
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 989
    move v8, v4

    :goto_1
    const/16 v9, 0x13

    if-ge v8, v9, :cond_9

    .line 990
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 991
    invoke-static {v6, v9}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 992
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v9}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_2

    :cond_7
    move v9, v4

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v9, 0x1

    :goto_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 994
    :cond_9
    invoke-static {v3, v5, v7}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v5

    .line 995
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2, v5}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object p0

    .line 981
    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 997
    :cond_b
    :goto_5
    return-object p0
.end method

.method static withTutorialHeroes([BLcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;)[B
    .locals 0

    .line 1005
    if-nez p1, :cond_0

    .line 1006
    return-object p0

    .line 1008
    :cond_0
    nop

    .line 1009
    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 p2, 0x3e9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1010
    const/16 p1, 0x18

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->withHero([BI)[B

    move-result-object p0

    .line 1012
    :cond_1
    return-object p0
.end method

.method static withTutorialProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 8

    .line 1112
    const-string v0, "eventTrigger"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 1113
    if-nez v1, :cond_0

    .line 1114
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 1116
    :cond_0
    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 1117
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->intArrayBytes(Ljava/lang/Iterable;)[B

    move-result-object v2

    .line 1116
    const-string v3, "ecm"

    const/4 v4, 0x4

    invoke-static {v1, v3, v4, v2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v1

    .line 1118
    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 1119
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->intArrayBytes(Ljava/lang/Iterable;)[B

    move-result-object v2

    .line 1118
    const-string v3, "pe"

    invoke-static {v1, v3, v4, v2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v1

    .line 1120
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1121
    iget-object v5, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    const-string v6, "ae"

    invoke-static {v2, v6, v5}, Lcom/project7/localmanager/BsonLite;->writeEventAvailabilityArray(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 1122
    nop

    .line 1123
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v2

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 1122
    invoke-static {v1, v6, v4, v2}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v1

    .line 1125
    const-string v2, "nbd"

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    .line 1126
    if-nez v5, :cond_1

    .line 1127
    sget-object v5, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 1129
    :cond_1
    iget-object v6, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->intArrayBytes(Ljava/lang/Iterable;)[B

    move-result-object v6

    const-string v7, "fn"

    invoke-static {v5, v7, v4, v6}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v5

    .line 1130
    iget-object v6, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->intArrayBytes(Ljava/lang/Iterable;)[B

    move-result-object v6

    invoke-static {v5, v3, v4, v6}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object v3

    .line 1131
    const/16 v4, 0x8

    iget-boolean p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->boolBytes(Z)[B

    move-result-object p1

    const-string v5, "ip"

    invoke-static {v3, v5, v4, p1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p1

    .line 1133
    const/4 v3, 0x3

    invoke-static {p0, v0, v3, v1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    .line 1134
    invoke-static {p0, v2, v3, p1}, Lcom/project7/localmanager/BsonLite;->replaceElement([BLjava/lang/String;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static withoutProfileKey([BLjava/lang/String;)[B
    .locals 6

    .line 759
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 760
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 761
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 762
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_2

    .line 763
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 764
    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->readCString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v5

    .line 765
    if-eqz v5, :cond_1

    invoke-static {v1, v4, v2}, Lcom/project7/localmanager/BsonLite;->skipValue(Ljava/nio/ByteBuffer;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 766
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, p0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 767
    :cond_0
    goto :goto_0

    .line 765
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid BSON"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 768
    :cond_2
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method private static writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V
    .locals 1

    .line 1496
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1497
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1498
    array-length p1, p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1499
    return-void
.end method

.method private static writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V
    .locals 1

    .line 1522
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1523
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1524
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1525
    return-void
.end method

.method private static writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    .line 1435
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1436
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1437
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1438
    return-void
.end method

.method private static writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V
    .locals 1

    .line 1506
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1507
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1508
    array-length p1, p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1509
    return-void
.end method

.method private static writeEmptyArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 1

    .line 1454
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1455
    return-void
.end method

.method private static writeEventAvailabilityArray(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayOutputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1462
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1463
    nop

    .line 1464
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1465
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 1466
    goto :goto_0

    .line 1468
    :cond_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1469
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "0"

    invoke-static {v4, v5, v3}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1470
    const-string v3, "1"

    invoke-static {v4, v3, v1}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 1471
    add-int/lit8 v3, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1472
    move v2, v3

    goto :goto_0

    .line 1473
    :cond_2
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1474
    return-void
.end method

.method private static writeIntArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayOutputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1481
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1482
    nop

    .line 1483
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1484
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1485
    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    move v1, v3

    .line 1487
    :cond_0
    goto :goto_0

    .line 1488
    :cond_1
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 1489
    return-void
.end method

.method private static writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V
    .locals 1

    .line 1512
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1513
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1514
    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->writeLeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 1515
    return-void
.end method

.method private static writeLeInt(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1

    .line 1546
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1547
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1548
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1549
    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1550
    return-void
.end method

.method private static writeNullElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 1

    .line 1528
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1529
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1530
    return-void
.end method

.method private static writeObjectIdElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V
    .locals 2

    .line 1537
    array-length v0, p2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1540
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1541
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1542
    const/4 p1, 0x0

    array-length v0, p2

    invoke-virtual {p0, p2, p1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1543
    return-void

    .line 1538
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ObjectId must contain 12 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeSkillPairsElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[[I)V
    .locals 6

    .line 292
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 293
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 294
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 295
    aget-object v4, p2, v2

    aget v4, v4, v1

    const-string v5, "0"

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 296
    aget-object v4, p2, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    const-string v5, "1"

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->finishDocument(Ljava/io/ByteArrayOutputStream;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    .line 300
    return-void
.end method

.method private static writeStringElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1445
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1446
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1447
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 1448
    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->writeLeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 1449
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1450
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1451
    return-void
.end method

.method private static writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 895
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->writeIntElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 896
    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 897
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 898
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 899
    const/16 p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    check-cast p2, Ljava/lang/Double;

    .line 900
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 901
    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 902
    goto/16 :goto_0

    .line 903
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->writeBoolElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Z)V

    goto :goto_0

    .line 904
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->writeStringElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 905
    :cond_3
    instance-of v0, p2, [B

    if-eqz v0, :cond_4

    check-cast p2, [B

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->writeDocumentElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    goto :goto_0

    .line 906
    :cond_4
    instance-of v0, p2, Lcom/project7/localmanager/BsonLite$BinaryValue;

    if-eqz v0, :cond_5

    .line 907
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->writeCString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 908
    check-cast p2, Lcom/project7/localmanager/BsonLite$BinaryValue;

    iget-object p1, p2, Lcom/project7/localmanager/BsonLite$BinaryValue;->bytes:[B

    .line 909
    array-length p2, p1

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->writeLeInt(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 910
    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 911
    goto :goto_0

    .line 912
    :cond_5
    instance-of v0, p2, Lcom/project7/localmanager/BsonLite$ArrayValue;

    if-eqz v0, :cond_6

    check-cast p2, Lcom/project7/localmanager/BsonLite$ArrayValue;

    iget-object p2, p2, Lcom/project7/localmanager/BsonLite$ArrayValue;->bytes:[B

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    goto :goto_0

    .line 913
    :cond_6
    instance-of v0, p2, Lcom/project7/localmanager/BsonLite$UuidValue;

    if-eqz v0, :cond_7

    check-cast p2, Lcom/project7/localmanager/BsonLite$UuidValue;

    iget-object p2, p2, Lcom/project7/localmanager/BsonLite$UuidValue;->bytes:[B

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->writeObjectIdElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    goto :goto_0

    .line 914
    :cond_7
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_8

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->listBytes(Ljava/util/List;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->writeArrayElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[B)V

    goto :goto_0

    .line 915
    :cond_8
    if-nez p2, :cond_9

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->writeNullElement(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 917
    :goto_0
    return-void

    .line 916
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported BSON value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
