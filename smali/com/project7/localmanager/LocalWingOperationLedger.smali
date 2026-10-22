.class final Lcom/project7/localmanager/LocalWingOperationLedger;
.super Ljava/lang/Object;
.source "LocalWingOperationLedger.java"


# static fields
.field static final FIELDS:[Ljava/lang/String;

.field static final KEY:Ljava/lang/String; = "q7WingOps"

.field static final MARKER:Ljava/lang/String; = "operationsVersion"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    const-string v0, "byv"

    const-string v1, "ycn"

    const-string v2, "byn"

    const-string v3, "hyn"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalWingOperationLedger;->FIELDS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add([B[B)[B
    .locals 8

    .line 22
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/project7/localmanager/LocalWingOperationLedger;->FIELDS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown Wing quantity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_1
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 24
    sget-object v1, Lcom/project7/localmanager/LocalWingOperationLedger;->FIELDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    .line 25
    invoke-static {p0, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p1, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 26
    :goto_2
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 27
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->addExact(II)I

    move-result v6

    .line 28
    if-ltz v6, :cond_4

    const-string v7, "byv"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x64

    if-gt v6, v7, :cond_4

    .line 29
    :cond_3
    invoke-static {v0, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 24
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 28
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unproven Wing boundary policy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Wing quantity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_6
    return-object v0
.end method

.method static append([BLjava/lang/String;I[BILjava/lang/Integer;)[B
    .locals 17

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalWingOperationLedger;->validate([B)[B

    move-result-object v4

    .line 122
    if-eqz v4, :cond_5

    .line 123
    const-string v5, "records"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalWingOperationLedger;->values([B)[B

    move-result-object v7

    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalWingOperationLedger;->add([B[B)[B

    move-result-object v8

    .line 124
    const-string v9, "generation"

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v10

    .line 125
    if-ltz v2, :cond_4

    const-string v11, "weeknum"

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v11

    const-string v12, "d"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v11

    if-gt v2, v11, :cond_4

    const-string v11, "day"

    if-lez v10, :cond_0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v11}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v12

    if-lt v2, v12, :cond_4

    .line 127
    :cond_0
    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "id"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    if-nez v3, :cond_1

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "event:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_0
    const/4 v15, 0x1

    aput-object v13, v12, v15

    const/4 v13, 0x2

    const-string v16, "kind"

    aput-object v16, v12, v13

    const/4 v13, 0x3

    aput-object p1, v12, v13

    const/4 v13, 0x4

    aput-object v11, v12, v13

    const/4 v11, 0x5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v12, v11

    const/4 v2, 0x6

    const-string v11, "before"

    aput-object v11, v12, v2

    const/4 v2, 0x7

    aput-object v7, v12, v2

    const/16 v2, 0x8

    const-string v7, "delta"

    aput-object v7, v12, v2

    const/16 v2, 0x9

    aput-object v1, v12, v2

    const/16 v1, 0xa

    const-string v2, "after"

    aput-object v2, v12, v1

    const/16 v1, 0xb

    aput-object v8, v12, v1

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 129
    if-nez v3, :cond_2

    const-string v2, "type"

    move/from16 v3, p2

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "event"

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 130
    :goto_1
    add-int/2addr v10, v15

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v1, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 131
    const-string v2, "std"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 132
    sget-object v4, Lcom/project7/localmanager/LocalWingOperationLedger;->FIELDS:[Ljava/lang/String;

    array-length v5, v4

    :goto_2
    if-ge v14, v5, :cond_3

    aget-object v6, v4, v14

    invoke-static {v8, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v3, v6, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 133
    :cond_3
    const-string v4, "q7WingOps"

    invoke-static {v0, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 126
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nonchronological Wing operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Wing operations ledger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static drugDelta([BLjava/lang/String;I)[B
    .locals 7

    .line 38
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid original drug type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_1
    :goto_0
    if-ne p2, v1, :cond_2

    const-string v2, "byn"

    goto :goto_1

    :cond_2
    const-string v2, "hyn"

    .line 40
    :goto_1
    const-string v3, "make"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eqz v3, :cond_3

    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "ycn"

    aput-object p2, p1, v5

    const-string p2, "cost"

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result p0

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    aput-object v2, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v4

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    .line 41
    :cond_3
    const-string v3, "consume"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v6, [Ljava/lang/Object;

    const-string v3, "byv"

    aput-object v3, p1, v5

    if-ne p2, v1, :cond_4

    const-string p2, "white"

    goto :goto_2

    :cond_4
    const-string p2, "black"

    :goto_2
    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    aput-object v2, p1, v0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v4

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    .line 42
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown Wing operation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static envelope([B[B)[B
    .locals 5

    .line 136
    invoke-static {p0}, Lcom/project7/localmanager/LocalWingOperationLedger;->validate([B)[B

    move-result-object v0

    const-string v1, "std"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object p0

    .line 137
    if-eqz v0, :cond_0

    const-string v1, "d"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "schema"

    aput-object v3, p1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v2

    const-string v2, "cycle"

    aput-object v2, p1, v3

    const/4 v3, 0x3

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v3

    const/4 v2, 0x4

    const-string v3, "generation"

    aput-object v3, p1, v2

    const/4 v2, 0x5

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 v0, 0x6

    aput-object v1, p1, v0

    const/4 v0, 0x7

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 137
    :goto_0
    return-object p0
.end method

.method static migrate([BLcom/project7/localmanager/LocalEventCatalog;)[B
    .locals 33

    .line 98
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalWingOperationLedger;->present([B)Z

    move-result v1

    const-string v2, "policy"

    if-eqz v1, :cond_1

    .line 99
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalWingOperationLedger;->validate([B)[B

    move-result-object v1

    .line 100
    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalWingOperationLedger;->policy(Lcom/project7/localmanager/LocalEventCatalog;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Wing operations history"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    const-string v1, "std"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalWingOperationLedger;->policy(Lcom/project7/localmanager/LocalEventCatalog;)[B

    move-result-object v3

    .line 104
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "d"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWingStoryEngine;->envelope([B[B)[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 106
    const-string v1, "q7Wing"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalWingOperationLedger;->values([B)[B

    move-result-object v8

    const/16 v9, 0x32

    const-string v10, "byv"

    invoke-static {v8, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v8

    .line 107
    sget-object v9, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 108
    const-string v11, "receipts"

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v7

    move-object v14, v8

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0xd

    const/16 v17, 0xc

    const/16 v18, 0xb

    const/16 v19, 0xa

    const/16 v20, 0x9

    const/16 v21, 0x8

    const/16 v22, 0x7

    const/16 v23, 0x6

    const/16 v24, 0x5

    const/16 v25, 0x4

    const/16 v26, 0x3

    if-eqz v15, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 109
    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v6

    move-object/from16 v28, v11

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v10, v11, v7

    const-string v4, "delta"

    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x1

    aput-object v29, v11, v30

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v11

    invoke-static {v14, v11}, Lcom/project7/localmanager/LocalWingOperationLedger;->add([B[B)[B

    move-result-object v29

    .line 110
    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v31, v10

    const/16 v10, 0xe

    new-array v10, v10, [Ljava/lang/Object;

    const-string v27, "id"

    const/16 v30, 0x0

    aput-object v27, v10, v30

    move-object/from16 v32, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v13

    const-string v13, "event:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v10, v13

    const-string v12, "kind"

    const/4 v13, 0x2

    aput-object v12, v10, v13

    const-string v12, "event"

    aput-object v12, v10, v26

    const-string v12, "event"

    aput-object v12, v10, v25

    .line 111
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v24

    const-string v12, "day"

    aput-object v12, v10, v23

    const-string v12, "day"

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v22

    const-string v6, "before"

    aput-object v6, v10, v21

    aput-object v14, v10, v20

    aput-object v4, v10, v19

    aput-object v11, v10, v18

    const-string v4, "after"

    aput-object v4, v10, v17

    aput-object v29, v10, v16

    .line 110
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-static {v9, v7, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v9

    .line 112
    nop

    .line 113
    move/from16 v13, v27

    move-object/from16 v11, v28

    move-object/from16 v14, v29

    move-object/from16 v10, v31

    move-object/from16 v12, v32

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 114
    :cond_2
    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "version"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v6, "cycle"

    const/4 v7, 0x2

    aput-object v6, v4, v7

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v26

    const-string v6, "week"

    aput-object v6, v4, v25

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v24

    const-string v6, "generation"

    aput-object v6, v4, v23

    .line 115
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v22

    aput-object v2, v4, v21

    aput-object v3, v4, v20

    const-string v2, "initial"

    aput-object v2, v4, v19

    aput-object v8, v4, v18

    const-string v2, "records"

    aput-object v2, v4, v17

    aput-object v9, v4, v16

    .line 114
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 116
    const-string v3, "q7WingOps"

    invoke-static {v0, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "operationsVersion"

    const/4 v3, 0x1

    invoke-static {v5, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/project7/localmanager/LocalWingOperationLedger;->validate([B)[B

    move-result-object v1

    if-eqz v1, :cond_3

    .line 118
    return-object v0

    .line 117
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexplained original Wing quantities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing proven original Wing ledger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static policy(Lcom/project7/localmanager/LocalEventCatalog;)[B
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "cost"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "white"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "black"

    const/4 v3, 0x4

    aput-object v2, v0, v3

    iget-object p0, p0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :array_0
    .array-data 4
        0xa
        0x1
        0x2
        0x2
        -0x2
    .end array-data
.end method

.method static present([B)Z
    .locals 2

    .line 12
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    const-string v1, "q7WingOps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "q7Wing"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    const-string v0, "operationsVersion"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;
    .locals 21

    .line 141
    move-object/from16 v0, p0

    const-string v1, "invalid-mixed-event-chain"

    const-string v2, "receipts"

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalWingOperationLedger;->validate([B)[B

    move-result-object v3

    .line 142
    if-eqz v3, :cond_8

    const-string v4, "policy"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalWingOperationLedger;->policy(Lcom/project7/localmanager/LocalEventCatalog;)[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 143
    :cond_0
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "q7StoryPending"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 144
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "invalid-outbox"

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    return-object v6

    .line 145
    :cond_1
    const-string v5, "syncBaiyuInfos"

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 146
    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v7, v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->payload([B[B)[B

    move-result-object v3

    if-nez v3, :cond_2

    .line 147
    return-object v6

    .line 148
    :cond_2
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "q7Wing"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v3

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "q7WingOps"

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v7

    .line 149
    const-string v8, "operationsVersion"

    invoke-static {v3, v8}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v7

    .line 150
    const-string v8, "std"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v9

    const-string v10, "current"

    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v11

    const-string v12, "byv"

    invoke-static {v9, v12, v11}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v7

    .line 151
    invoke-static {v7, v4}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9, v5}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v7, v4, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 152
    new-instance v7, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v7, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 153
    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-static {v7, v4, v9}, Lcom/project7/localmanager/LocalWingStoryEngine;->apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;

    move-result-object v4

    .line 154
    const-string v9, "applied"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v13, "unchanged"

    if-nez v11, :cond_3

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    return-object v4

    .line 155
    :cond_3
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v13

    .line 157
    :cond_4
    :try_start_0
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v7, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v6}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v7

    .line 158
    invoke-static {v7, v2}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v13, v4

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v14, 0x2

    if-eqz v4, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 159
    invoke-static {v7, v2}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15, v4}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v15

    .line 160
    const-string v16, "event"

    const/16 v17, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v12, v14, v18

    move-object/from16 v19, v3

    const-string v3, "delta"

    invoke-static {v15, v3}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x1

    aput-object v3, v14, v18

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v14, "day"

    invoke-static {v15, v14}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v18

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v14, v16

    move-object/from16 p1, v7

    move-object v7, v15

    move/from16 v15, v17

    move-object/from16 v16, v3

    move/from16 v17, v18

    move-object/from16 v18, v20

    invoke-static/range {v13 .. v18}, Lcom/project7/localmanager/LocalWingOperationLedger;->append([BLjava/lang/String;I[BILjava/lang/Integer;)[B

    move-result-object v3

    .line 161
    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13, v2}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14, v4, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 162
    invoke-static {v13, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v13

    .line 163
    const-string v14, "after"

    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v7

    invoke-static {v13, v10, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v7

    const-string v13, "generation"

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v7, v13, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 164
    invoke-static {v3, v6, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 158
    :cond_5
    move-object/from16 v19, v3

    move-object/from16 p1, v7

    :goto_1
    move-object/from16 v7, p1

    move-object/from16 v3, v19

    goto/16 :goto_0

    .line 166
    :cond_6
    invoke-static {v13}, Lcom/project7/localmanager/LocalWingOperationLedger;->validate([B)[B

    move-result-object v2

    if-nez v2, :cond_7

    return-object v1

    .line 167
    :cond_7
    iput-object v13, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "d"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v13, v8}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-object v9

    .line 169
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    return-object v1

    .line 142
    :cond_8
    :goto_3
    const-string v0, "invalid-operations-ledger"

    return-object v0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static validate([B)[B
    .locals 32

    .line 45
    move-object/from16 v0, p0

    const-string v1, "event"

    const-string v2, "before"

    const-string v3, "day"

    const-string v4, "byv"

    const-string v5, "q7WingOps"

    invoke-static {v0, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "q7Wing"

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v6

    const-string v7, "weeknum"

    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v7

    .line 46
    const-string v8, "cycle"

    invoke-static {v6, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "std"

    invoke-static {v0, v10}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v10

    const-string v11, "rt"

    invoke-static {v10, v11}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 47
    const-string v11, "d"

    invoke-static {v7, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "w"

    invoke-static {v7, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v12, "generation"

    if-nez v5, :cond_0

    const/4 v14, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v5, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 48
    :goto_0
    if-nez v5, :cond_1

    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    const-string v15, "records"

    invoke-static {v5, v15}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v15

    :goto_1
    if-nez v5, :cond_2

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    const-string v13, "policy"

    invoke-static {v5, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v13

    .line 49
    :goto_2
    if-eqz v5, :cond_1a

    move-object/from16 v16, v1

    const-string v1, "version"

    move-object/from16 v17, v2

    invoke-static {v5, v1}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v2

    move-object/from16 v18, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1a

    const-string v1, "operationsVersion"

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1a

    .line 50
    invoke-static {v6, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1a

    const-string v1, "receipts"

    invoke-static {v6, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 51
    const-string v2, "week"

    invoke-static {v6, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    if-eqz v19, :cond_1a

    invoke-static {v5, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    if-eqz v19, :cond_1a

    if-eqz v9, :cond_1a

    .line 52
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1a

    invoke-static {v5, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 53
    const-string v8, "q7WeekTransition"

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v3

    move-object/from16 v20, v12

    const-string v12, "id"

    invoke-static {v3, v12}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v7, :cond_1a

    .line 54
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v9

    if-ne v3, v9, :cond_1a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v9

    if-ne v3, v9, :cond_1a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v8

    if-ne v3, v8, :cond_1a

    if-eqz v11, :cond_1a

    .line 55
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1a

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v8, 0x7

    if-gt v3, v8, :cond_1a

    if-eqz v10, :cond_1a

    const-string v3, "7"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "7-"

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_3
    if-eqz v14, :cond_1a

    if-eqz v15, :cond_1a

    .line 56
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v3, v8, :cond_1a

    if-eqz v13, :cond_1a

    .line 57
    const-string v3, "cost"

    invoke-static {v13, v3}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v3

    const/16 v8, 0xa

    if-ne v3, v8, :cond_1a

    const-string v3, "white"

    invoke-static {v13, v3}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_1a

    const-string v3, "black"

    invoke-static {v13, v3}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v3

    const/4 v9, -0x2

    if-ne v3, v9, :cond_1a

    .line 58
    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "initial"

    invoke-static {v6, v10}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_f

    .line 60
    :cond_4
    :try_start_0
    invoke-static {v5, v10}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 61
    if-eqz v9, :cond_19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    sget-object v10, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalWingOperationLedger;->add([B[B)[B

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_5

    goto/16 :goto_d

    .line 62
    :cond_5
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const/16 v21, -0x1

    .line 64
    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v8, v21

    move/from16 v24, v23

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_15

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    .line 65
    move-object/from16 v25, v5

    invoke-static {v15, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    .line 66
    const/16 v19, 0x1

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v26, v15

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez v5, :cond_6

    goto/16 :goto_a

    .line 67
    :cond_6
    invoke-static {v5, v12}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "kind"

    invoke-static {v5, v15}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 68
    move-object/from16 v27, v12

    move-object/from16 v12, v18

    invoke-static {v5, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 69
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_13

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v28

    if-ltz v28, :cond_13

    move-object/from16 v28, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v10, v8, :cond_13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v8, v10, :cond_13

    .line 70
    move-object/from16 v8, v17

    invoke-static {v5, v8}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_7

    goto/16 :goto_9

    .line 72
    :cond_7
    move-object/from16 v10, v16

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v11

    const-string v11, "after"

    move-object/from16 v29, v6

    const-string v6, "delta"

    move-object/from16 v30, v9

    const-string v9, "event:"

    if-eqz v16, :cond_e

    .line 73
    :try_start_1
    invoke-static {v5, v10}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 74
    if-eqz v15, :cond_d

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-lez v16, :cond_d

    move-object/from16 v16, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_6

    .line 75
    :cond_8
    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 76
    if-nez v0, :cond_9

    const/4 v9, 0x0

    goto :goto_4

    :cond_9
    invoke-static {v0, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 77
    :goto_4
    if-eqz v0, :cond_c

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v10

    move-object/from16 v31, v2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v10, v2, :cond_c

    const-string v2, "count"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_c

    .line 78
    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v2, v10, :cond_c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    .line 79
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v1, 0x0

    return-object v1

    .line 81
    :cond_b
    invoke-virtual {v15}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/Object;

    aput-object v4, v0, v23

    const/16 v19, 0x1

    aput-object v9, v0, v19

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 82
    move v3, v2

    goto :goto_7

    .line 78
    :cond_c
    :goto_5
    const/4 v1, 0x0

    return-object v1

    .line 74
    :cond_d
    :goto_6
    const/4 v1, 0x0

    return-object v1

    .line 83
    :cond_e
    move-object/from16 v31, v2

    move-object/from16 v16, v10

    const/4 v10, 0x2

    const/16 v19, 0x1

    const-string v2, "type"

    invoke-static {v5, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_12

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_8

    .line 85
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v13, v15, v0}, Lcom/project7/localmanager/LocalWingOperationLedger;->drugDelta([BLjava/lang/String;I)[B

    move-result-object v0

    .line 87
    :goto_7
    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v1, 0x0

    return-object v1

    .line 88
    :cond_10
    move-object/from16 v9, v30

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalWingOperationLedger;->add([B[B)[B

    move-result-object v9

    .line 89
    invoke-static {v5, v11}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v1, 0x0

    return-object v1

    .line 90
    :cond_11
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    move-object/from16 v18, v12

    move-object/from16 v11, v17

    move-object/from16 v5, v25

    move-object/from16 v15, v26

    move-object/from16 v12, v27

    move-object/from16 v10, v28

    move-object/from16 v6, v29

    move-object/from16 v2, v31

    move-object/from16 v17, v8

    move v8, v0

    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 84
    :cond_12
    :goto_8
    const/4 v1, 0x0

    return-object v1

    .line 70
    :cond_13
    :goto_9
    const/4 v1, 0x0

    return-object v1

    .line 66
    :cond_14
    :goto_a
    const/4 v1, 0x0

    return-object v1

    .line 92
    :cond_15
    move-object/from16 v25, v5

    move-object/from16 v29, v6

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object/from16 v1, v20

    move-object/from16 v0, v29

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWingOperationLedger;->v([BLjava/lang/String;)I

    move-result v1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_18

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "current"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_c

    .line 94
    :cond_16
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalWingOperationLedger;->values([B)[B

    move-result-object v0

    invoke-static {v9, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_17

    move-object/from16 v5, v25

    goto :goto_b

    :cond_17
    const/4 v5, 0x0

    :goto_b
    return-object v5

    .line 93
    :cond_18
    :goto_c
    const/4 v1, 0x0

    return-object v1

    .line 61
    :cond_19
    :goto_d
    const/4 v1, 0x0

    return-object v1

    .line 95
    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    :goto_e
    const/4 v1, 0x0

    return-object v1

    .line 58
    :cond_1a
    :goto_f
    const/4 v1, 0x0

    return-object v1
.end method

.method static values([B)[B
    .locals 6

    .line 15
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalWingOperationLedger;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 18
    sget-object v1, Lcom/project7/localmanager/LocalWingOperationLedger;->FIELDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {p0, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_1
    return-object v0
.end method
