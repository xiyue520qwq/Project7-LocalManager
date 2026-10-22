.class final Lcom/project7/localmanager/LocalWingDrugEngine;
.super Ljava/lang/Object;
.source "LocalWingDrugEngine.java"


# static fields
.field static final METHODS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    const-string v0, "makeYumiDrug"

    const-string v1, "consumeYumiDrag"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalWingDrugEngine;->METHODS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 19

    .line 14
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const-string v3, "std"

    const-string v4, "d"

    const-string v5, "t"

    move-object/from16 v6, p4

    invoke-static {v6, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 15
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/LocalWingDrugEngine;->handles(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_e

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_e

    :cond_0
    iget-object v6, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    if-nez v6, :cond_1

    goto/16 :goto_7

    .line 17
    :cond_1
    :try_start_0
    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v6, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 18
    move-object/from16 v9, p2

    invoke-static {v6, v0, v9}, Lcom/project7/localmanager/LocalWingStoryEngine;->apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;

    move-result-object v9

    .line 19
    const-string v10, "unchanged"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "applied"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    iget-object v9, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9}, Lcom/project7/localmanager/LocalWingGardenEngine;->receipt([B)[B

    move-result-object v9

    if-nez v9, :cond_4

    .line 20
    :cond_3
    invoke-static {v1, v2, v5, v7}, Lcom/project7/localmanager/LocalWingDrugEngine;->failure([BLjava/lang/String;Ljava/lang/Integer;I)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    return-object v0

    .line 21
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalWingOperationLedger;->policy(Lcom/project7/localmanager/LocalEventCatalog;)[B

    move-result-object v9

    iget-object v10, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v3}, Lcom/project7/localmanager/LocalWingDrugEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    .line 22
    sget-object v11, Lcom/project7/localmanager/LocalWingDrugEngine;->METHODS:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 23
    if-eqz v11, :cond_5

    const-string v13, "ycn"

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v7, :cond_6

    const-string v13, "byn"

    goto :goto_0

    :cond_6
    const-string v13, "hyn"

    :goto_0
    invoke-static {v10, v13}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 24
    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v11, :cond_7

    iget-object v14, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    aget v14, v14, v12

    goto :goto_1

    :cond_7
    move v14, v7

    :goto_1
    if-ge v13, v14, :cond_8

    goto/16 :goto_5

    .line 25
    :cond_8
    const-string v13, "byv"

    invoke-static {v10, v13}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 26
    iget-object v13, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v13, v0}, Lcom/project7/localmanager/LocalWingOperationLedger;->migrate([BLcom/project7/localmanager/LocalEventCatalog;)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 27
    iget-object v13, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "make"

    const-string v14, "consume"

    if-eqz v11, :cond_9

    move-object v15, v0

    goto :goto_2

    :cond_9
    move-object v15, v14

    :goto_2
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 28
    if-eqz v11, :cond_a

    goto :goto_3

    :cond_a
    move-object v0, v14

    :goto_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v9, v0, v14}, Lcom/project7/localmanager/LocalWingOperationLedger;->drugDelta([BLjava/lang/String;I)[B

    move-result-object v0

    iget-object v9, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v14, "weeknum"

    .line 29
    invoke-static {v9, v14}, Lcom/project7/localmanager/LocalWingDrugEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x0

    .line 27
    move-object v14, v15

    move/from16 v15, v16

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v18}, Lcom/project7/localmanager/LocalWingOperationLedger;->append([BLjava/lang/String;I[BILjava/lang/Integer;)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 30
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalWingOperationLedger;->validate([B)[B

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {v1, v2, v5, v7}, Lcom/project7/localmanager/LocalWingDrugEngine;->failure([BLjava/lang/String;Ljava/lang/Integer;I)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    return-object v0

    .line 31
    :cond_b
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWingDrugEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object v0

    .line 32
    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    sget-object v9, Lcom/project7/localmanager/LocalWingDrugEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalWingDrugEngine$$ExternalSyntheticLambda0;

    invoke-interface {v3, v9}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Reply"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x4

    new-array v13, v9, [Ljava/lang/Object;

    const-string v14, "rs"

    aput-object v14, v13, v12

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "i"

    aput-object v14, v13, v8

    const/4 v14, 0x3

    if-eqz v11, :cond_c

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v4, v9, v12

    aput-object v0, v9, v7

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v9

    goto :goto_4

    :cond_c
    new-array v9, v9, [Ljava/lang/Object;

    const-string v11, "b"

    aput-object v11, v9, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    aput-object v4, v9, v8

    aput-object v0, v9, v14

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v9

    :goto_4
    aput-object v9, v13, v14

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 34
    const-string v3, "syncBaiyuInfos"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v12

    aput-object v0, v8, v7

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 35
    invoke-static {v6}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->capture(Lcom/project7/localmanager/LocalResourceEngine$Result;)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 36
    return-object v6

    .line 24
    :cond_d
    :goto_5
    invoke-static {v1, v2, v5, v8}, Lcom/project7/localmanager/LocalWingDrugEngine;->failure([BLjava/lang/String;Ljava/lang/Integer;I)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 37
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_6
    invoke-static {v1, v2, v5, v7}, Lcom/project7/localmanager/LocalWingDrugEngine;->failure([BLjava/lang/String;Ljava/lang/Integer;I)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    return-object v0

    .line 15
    :cond_e
    :goto_7
    invoke-static {v1, v2, v5, v7}, Lcom/project7/localmanager/LocalWingDrugEngine;->failure([BLjava/lang/String;Ljava/lang/Integer;I)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    return-object v0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static failure([BLjava/lang/String;Ljava/lang/Integer;I)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 6

    .line 9
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Reply"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    new-array v1, p1, [Ljava/lang/Object;

    const-string v2, "rs"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "i"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "rsn"

    aput-object v2, p1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v4

    const-string p3, "_type"

    aput-object p3, p1, v5

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    aput-object p1, v1, p3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 11
    return-object v0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 6
    sget-object v0, Lcom/project7/localmanager/LocalWingDrugEngine;->METHODS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$apply$0(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Z
    .locals 1

    .line 32
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v0, "syncBaiyuInfos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
