.class final Lcom/project7/localmanager/LocalServiceEngine;
.super Ljava/lang/Object;
.source "LocalServiceEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLjava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 1

    .line 374
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/project7/localmanager/LocalServiceEngine;->apply([BLjava/lang/String;[BLcom/project7/localmanager/LocalFeatureCatalog;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p0

    return-object p0
.end method

.method static apply([BLjava/lang/String;[BLcom/project7/localmanager/LocalFeatureCatalog;)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 17

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v4, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 379
    const-string v5, "delDestroyBuilding"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 380
    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->acknowledgeDestroyed([B[B)[B

    move-result-object v0

    iput-object v0, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto/16 :goto_12

    .line 381
    :cond_0
    const-string v5, "requestRecoverJingshenli"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "r"

    const-string v7, "p"

    const/4 v10, 0x2

    if-eqz v5, :cond_9

    .line 382
    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalServiceEngine;->recover([BJ)[B

    move-result-object v0

    iput-object v0, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 383
    iget-object v0, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "city"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 384
    const-string v2, "cjsla"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    const-string v5, "jpv"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v13

    .line 385
    iget-object v14, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v15, "sma"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    const-string v8, "ltd"

    invoke-static {v14, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    .line 386
    const-string v9, "n"

    invoke-static {v14, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    const/16 v11, 0x308

    const-string v12, "pt"

    if-lt v9, v11, :cond_1

    .line 387
    invoke-static {v14, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    const/16 v9, 0x309

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v14, v12}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 388
    :goto_0
    if-nez v6, :cond_3

    if-ge v3, v10, :cond_2

    goto :goto_1

    :cond_2
    const/16 v9, 0x32

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v9, 0x0

    .line 389
    :goto_2
    const-string v11, "yuanbao"

    if-nez v6, :cond_4

    const/16 v10, 0xc

    if-ge v3, v10, :cond_5

    :cond_4
    const v10, 0x18664

    if-gt v13, v10, :cond_5

    iget-object v10, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v10

    if-lt v10, v9, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 390
    :goto_3
    if-eqz v10, :cond_7

    .line 391
    move/from16 p0, v10

    add-int/lit8 v10, v13, 0x3c

    invoke-static {v0, v5, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 392
    if-eqz v6, :cond_6

    .line 393
    const/4 v6, 0x1

    invoke-static {v14, v12, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v10

    .line 394
    iget-object v6, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v14, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 395
    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    .line 394
    invoke-static {v14, v8, v10}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v8

    invoke-static {v6, v15, v8}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v6

    iput-object v6, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 396
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v12, v8, v6

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v6

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    const-string v8, "sync777PowerTime"

    invoke-virtual {v4, v8, v6}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_4

    .line 397
    :cond_6
    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 398
    :goto_4
    iget-object v6, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 399
    iget-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v6, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    sub-int/2addr v6, v9

    invoke-static {v1, v11, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    iput-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 400
    invoke-static {v4}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    goto :goto_5

    .line 390
    :cond_7
    move/from16 p0, v10

    .line 402
    :goto_5
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v7, v1, v6

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const-string v5, "t"

    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 403
    const-string v5, "jpvt"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x3

    aput-object v0, v1, v5

    const/4 v0, 0x4

    aput-object v2, v1, v0

    const/4 v5, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    .line 402
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v5, "syncJingshenliPower"

    invoke-virtual {v4, v5, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 404
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "rs"

    const/4 v6, 0x0

    aput-object v5, v1, v6

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v1, v7

    const-string v5, "i"

    const/4 v8, 0x2

    aput-object v5, v1, v8

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    const-string v2, "rsn"

    aput-object v2, v0, v8

    .line 405
    const v2, 0x18664

    if-le v13, v2, :cond_8

    const/4 v11, 0x5

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 404
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "replyRecoverJingshenli"

    invoke-virtual {v4, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 406
    goto/16 :goto_12

    :cond_9
    const-string v5, "readPlayerNote"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string v8, "readPendingNote"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto/16 :goto_10

    .line 417
    :cond_a
    const-string v5, "id"

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 418
    const-string v8, "readPrivateMsg"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "replyPrivateMsg"

    const-string v10, "pm"

    if-nez v8, :cond_c

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_7

    :cond_b
    const-string v8, "sm"

    goto :goto_8

    :cond_c
    :goto_7
    move-object v8, v10

    .line 419
    :goto_8
    const-string v11, "sd"

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    .line 420
    if-nez v7, :cond_d

    const/4 v13, 0x0

    goto :goto_9

    :cond_d
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v13

    .line 421
    :goto_9
    if-eqz v13, :cond_16

    .line 422
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v9, "c"

    const-string v14, "syncOnePrivateMsg"

    if-eqz v1, :cond_13

    .line 423
    const-string v1, "bid"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    .line 424
    if-nez v3, :cond_e

    const/4 v2, 0x0

    goto :goto_a

    :cond_e
    const-string v2, "P"

    invoke-virtual {v3, v2, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    .line 425
    :goto_a
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v15, "rp"

    move-object/from16 v16, v6

    invoke-static {v13, v15}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {v13, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_f

    const/4 v2, 0x1

    goto :goto_c

    .line 429
    :cond_f
    if-eqz v2, :cond_11

    const-string v3, "branches"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_b

    .line 434
    :cond_10
    invoke-static {v13, v15, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v13

    goto :goto_d

    .line 430
    :cond_11
    :goto_b
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v2, 0x1

    aput-object v7, v0, v2

    const/4 v3, 0x2

    aput-object v9, v0, v3

    const/4 v5, 0x3

    aput-object v13, v0, v5

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v4, v14, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 431
    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "m"

    aput-object v3, v0, v1

    const-string v1, "\u8be5\u56de\u590d\u9009\u9879\u65e0\u6548\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v4, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 432
    return-object v4

    .line 425
    :cond_12
    const/4 v2, 0x1

    .line 426
    :goto_c
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    aput-object v7, v0, v2

    const/4 v1, 0x2

    aput-object v9, v0, v1

    const/4 v1, 0x3

    aput-object v13, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v4, v14, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 427
    return-object v4

    .line 422
    :cond_13
    move-object/from16 v16, v6

    .line 436
    :goto_d
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v6, "rd"

    goto :goto_e

    :cond_14
    move-object/from16 v6, v16

    :goto_e
    const/4 v1, 0x1

    invoke-static {v13, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 437
    nop

    .line 438
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 437
    invoke-static {v11, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    const-string v3, "sd"

    invoke-static {v0, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 439
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_f

    :cond_15
    const-string v14, "syncOneSocialMsg"

    :goto_f
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    const/4 v3, 0x2

    aput-object v9, v0, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v4, v14, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_12

    .line 440
    :cond_16
    const/4 v3, 0x2

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 441
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "m"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u8be5\u79c1\u4fe1\u5c1a\u672a\u6536\u5230\uff0c\u8bf7\u8fd4\u56de\u5217\u8868\u5237\u65b0"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v4, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_12

    .line 407
    :cond_17
    :goto_10
    const-string v3, "np"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 408
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "ppn"

    const/4 v2, 0x0

    invoke-static {v6, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v6

    goto :goto_11

    .line 410
    :cond_18
    const-string v1, "h"

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_19

    .line 412
    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 411
    invoke-static {v2, v1, v5}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    invoke-static {v6, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v6

    .line 414
    :cond_19
    :goto_11
    invoke-static {v0, v3, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 415
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "nd"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v6, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "syncAllNote"

    invoke-virtual {v4, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 416
    nop

    .line 444
    :cond_1a
    :goto_12
    return-object v4
.end method

.method private static applyRoutes(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 13

    .line 214
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "std"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 215
    const-string v2, "rt"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "q7routeEvents"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 217
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 218
    :goto_0
    nop

    .line 220
    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v8, v3

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 221
    iget-object v10, p1, Lcom/project7/localmanager/LocalEventCatalog;->routes:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 222
    if-eqz v10, :cond_1

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    .line 223
    :cond_2
    if-eqz v6, :cond_3

    if-nez v3, :cond_4

    :cond_3
    move-object v8, v10

    .line 224
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v7}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    .line 225
    goto :goto_1

    .line 226
    :cond_5
    if-nez v6, :cond_6

    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {v4, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_7

    .line 227
    :cond_6
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 228
    :cond_7
    if-eqz v8, :cond_9

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    .line 229
    :cond_8
    invoke-static {v0, v2, v8}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    .line 230
    invoke-static {p2, p1, v8}, Lcom/project7/localmanager/LocalStoryTargetEngine;->initialize([BLcom/project7/localmanager/LocalEventCatalog;Ljava/lang/String;)[B

    move-result-object p1

    .line 231
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v1, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 232
    invoke-static {p0}, Lcom/project7/localmanager/LocalServiceEngine;->syncRoute(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 233
    return-void

    .line 228
    :cond_9
    :goto_2
    return-void
.end method

.method static confirmSocial([B[BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 12

    .line 315
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 316
    invoke-static {v0, p2, p3}, Lcom/project7/localmanager/LocalServiceEngine;->reconcileSocial(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 317
    const-string p0, "id"

    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p1

    .line 318
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "sd"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v3, "sm"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    .line 320
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    iget-object p2, p2, Lcom/project7/localmanager/LocalEventCatalog;->socialEvents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    const-string p2, "e"

    invoke-static {v5, p2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    .line 325
    const-string v10, "r"

    invoke-static {v5, v10, v7}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v5

    .line 326
    invoke-static {v5, p2, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 327
    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 328
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 327
    invoke-static {v1, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v10, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 329
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v7

    const-string p0, "c"

    aput-object p0, v1, v6

    const/4 p0, 0x3

    aput-object v5, v1, p0

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    const-string p1, "syncOneSocialMsg"

    invoke-virtual {v0, p1, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 330
    if-lez v9, :cond_1

    .line 331
    iget-object p0, p3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    new-array p0, v6, [Ljava/lang/Object;

    aput-object p2, p0, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v7

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    const-string p1, "q7StartSocialEvent"

    invoke-virtual {v0, p1, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 334
    :cond_1
    return-object v0

    .line 321
    :cond_2
    :goto_0
    new-array p0, v6, [Ljava/lang/Object;

    const-string p1, "m"

    aput-object p1, p0, v8

    const-string p1, "\u8bba\u575b\u5e16\u5b50\u5c1a\u672a\u5f00\u653e"

    aput-object p1, p0, v7

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    const-string p1, "showMessageStr"

    invoke-virtual {v0, p1, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 322
    return-object v0
.end method

.method static cores([B)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    nop

    .line 17
    const-string v1, "reward"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 16
    const-string v1, "bc"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 18
    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object v0
.end method

.method static effects([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 37

    .line 25
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "money"

    const-string v11, "\u91d1\u5e01"

    const-string v12, "showMessageStr"

    new-instance v13, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v13, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 26
    if-nez v9, :cond_0

    return-object v13

    .line 27
    :cond_0
    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 28
    invoke-static {v13, v8, v9}, Lcom/project7/localmanager/LocalDiaryEngine;->prepare(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 29
    invoke-static {v13, v8, v9}, Lcom/project7/localmanager/LocalEventBattleEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 30
    invoke-static {v13, v8, v9}, Lcom/project7/localmanager/LocalServiceEngine;->applyRoutes(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 31
    sget-object v0, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_ROUTE:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    invoke-static {v0, v13, v8, v9}, Lcom/project7/localmanager/LocalStoryRuleRegistry;->apply(Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 32
    const-string v14, "q7effects"

    invoke-static {v1, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 33
    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 34
    const-string v15, "city"

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 33
    const-string v4, "hb"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 35
    nop

    .line 36
    iget-object v3, v8, Lcom/project7/localmanager/LocalEventCatalog;->buildingUnlocks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "b"

    move-object/from16 v17, v12

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 38
    move-object/from16 v18, v3

    iget-object v3, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    move-object/from16 v20, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    :goto_1
    move-object/from16 v12, v17

    move-object/from16 v3, v18

    move-object/from16 v11, v20

    goto :goto_0

    .line 41
    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v3

    or-int/2addr v5, v3

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v0, v3, v6}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 43
    move-object/from16 v12, v17

    move-object/from16 v3, v18

    move-object/from16 v11, v20

    goto :goto_0

    .line 44
    :cond_3
    move-object/from16 v20, v11

    const/4 v11, 0x2

    if-eqz v5, :cond_4

    .line 45
    iget-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v5, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 46
    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 45
    invoke-static {v5, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v2

    invoke-static {v3, v15, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 47
    iget-object v2, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    iput-object v2, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 48
    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "cd"

    aput-object v3, v2, v16

    iget-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "get_city_data_reply"

    invoke-virtual {v13, v3, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 50
    :cond_4
    invoke-static {v1, v14}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v12, 0x1

    goto :goto_2

    :cond_5
    move/from16 v12, v16

    .line 51
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalServiceEngine;->cores([B)Ljava/util/Map;

    move-result-object v6

    .line 52
    nop

    .line 53
    iget-object v2, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "np"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 54
    const-string v4, "n"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 55
    iget-object v11, v8, Lcom/project7/localmanager/LocalEventCatalog;->notes:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v21, v16

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 56
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [I

    move-object/from16 v25, v5

    const/16 v19, 0x1

    aget v5, v23, v19

    .line 58
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [I

    move-object/from16 v23, v6

    aget v6, v22, v16

    move-object/from16 v22, v7

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    if-ne v0, v5, :cond_8

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    .line 59
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    .line 63
    invoke-static {v2, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 64
    move-object v3, v0

    const/16 v21, 0x1

    .line 66
    :cond_7
    move-object/from16 v7, v22

    move-object/from16 v6, v23

    move-object/from16 v0, v24

    move-object/from16 v5, v25

    goto :goto_3

    .line 55
    :cond_8
    :goto_4
    move-object/from16 v7, v22

    move-object/from16 v6, v23

    move-object/from16 v0, v24

    move-object/from16 v5, v25

    goto :goto_3

    .line 67
    :cond_9
    move-object/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v23, v6

    move-object/from16 v22, v7

    const-string v11, "sd"

    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 68
    new-instance v3, Ljava/util/LinkedHashSet;

    iget-object v5, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-direct {v3, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 69
    iget-object v5, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 70
    iget-object v5, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 71
    new-instance v7, Ljava/util/LinkedHashSet;

    const-string v5, "q7WeekEventBaseline"

    invoke-static {v1, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 72
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move-object v5, v2

    move-object/from16 v6, v24

    move/from16 v24, v21

    move/from16 v21, v16

    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 73
    iget-object v2, v8, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    move-object/from16 v27, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/project7/localmanager/LocalEventCatalog$Effect;

    .line 74
    if-nez v4, :cond_a

    move-object/from16 v28, v5

    goto :goto_6

    .line 75
    :cond_a
    iget-object v2, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    move-object/from16 v28, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v29

    .line 76
    if-nez v29, :cond_b

    iget-object v2, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 72
    :goto_6
    move-object/from16 v4, v27

    move-object/from16 v5, v28

    goto :goto_5

    .line 79
    :cond_b
    invoke-virtual {v8, v3}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v2

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    if-nez v29, :cond_c

    if-eqz v2, :cond_d

    iget-boolean v5, v2, Lcom/project7/localmanager/LocalEventCatalog$Event;->autoStart:Z

    if-eqz v5, :cond_d

    iget v5, v2, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    if-nez v5, :cond_d

    iget-object v2, v2, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    .line 81
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const/16 v30, 0x1

    goto :goto_7

    :cond_d
    move/from16 v30, v16

    .line 82
    :goto_7
    if-eqz v30, :cond_e

    iget-object v2, v4, Lcom/project7/localmanager/LocalEventCatalog$Effect;->privateMessages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_8
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v32, "pm"

    move-object v2, v13

    move-object/from16 v33, v14

    move v14, v3

    move-object v3, v0

    move-object v0, v4

    move-object/from16 v36, v27

    move-object/from16 v27, v11

    move-object/from16 v11, v36

    move-object/from16 v4, v32

    move-object/from16 v1, v25

    move-object/from16 v34, v28

    move-object/from16 v1, v23

    move-object/from16 v23, v0

    move-object v0, v6

    move-object/from16 v6, p1

    move-object/from16 v28, v22

    move-object/from16 v22, v7

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalServiceEngine;->message(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLjava/lang/String;ILcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    move-object v6, v0

    move-object v0, v2

    move v3, v14

    move-object/from16 v7, v22

    move-object/from16 v4, v23

    move-object/from16 v22, v28

    move-object/from16 v14, v33

    move-object/from16 v28, v34

    move-object/from16 v23, v1

    move-object/from16 v1, p0

    move-object/from16 v36, v27

    move-object/from16 v27, v11

    move-object/from16 v11, v36

    goto :goto_8

    :cond_e
    move-object v2, v0

    move-object v0, v6

    move-object/from16 v33, v14

    move-object/from16 v1, v23

    move-object/from16 v34, v28

    move v14, v3

    move-object/from16 v28, v22

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v36, v27

    move-object/from16 v27, v11

    move-object/from16 v11, v36

    .line 83
    if-eqz v30, :cond_10

    iget-object v3, v7, Lcom/project7/localmanager/LocalEventCatalog$Effect;->socialMessages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move-object v3, v2

    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v4, "sm"

    move-object v2, v13

    move-object/from16 v6, p1

    move-object/from16 v31, v11

    move-object v11, v7

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalServiceEngine;->message(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLjava/lang/String;ILcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v3

    move-object v7, v11

    move-object/from16 v11, v31

    goto :goto_9

    :cond_f
    move-object/from16 v31, v11

    move-object v11, v7

    move-object v2, v3

    goto :goto_a

    :cond_10
    move-object/from16 v31, v11

    move-object v11, v7

    .line 84
    :goto_a
    const-string v3, "m"

    if-eqz v30, :cond_11

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    move-object v6, v0

    goto :goto_b

    .line 87
    :cond_11
    move-object v6, v0

    :goto_b
    if-eqz v29, :cond_24

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object/from16 v30, v2

    move-object v3, v6

    move-object v4, v8

    move-object/from16 v35, v10

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v10, v31

    move-object/from16 v20, v15

    goto/16 :goto_1b

    .line 88
    :cond_12
    iget-object v0, v8, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [I

    .line 89
    if-eqz v4, :cond_19

    if-nez v12, :cond_19

    .line 90
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v7, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v0, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 92
    :try_start_0
    aget v7, v4, v16
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v30, v2

    const/4 v2, 0x1

    if-ne v7, v2, :cond_14

    .line 93
    :try_start_1
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 94
    move-object/from16 v32, v6

    :try_start_2
    aget v6, v4, v2

    if-lt v7, v6, :cond_13

    .line 95
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    aget v35, v4, v2

    sub-int v7, v7, v35

    invoke-static {v6, v10, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 96
    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 97
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5df2\u652f\u4ed8"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v35, v10

    const/4 v7, 0x1

    :try_start_3
    aget v10, v4, v7

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v7, v20

    :try_start_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v6, v10

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v6, v17

    :try_start_5
    invoke-virtual {v0, v6, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 98
    move/from16 v17, v14

    goto :goto_c

    .line 99
    :catch_0
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_13

    :catch_1
    move-exception v0

    goto/16 :goto_12

    .line 94
    :cond_13
    move-object/from16 v35, v10

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "insufficient story money"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :catch_2
    move-exception v0

    goto/16 :goto_11

    :catch_3
    move-exception v0

    goto/16 :goto_10

    .line 98
    :cond_14
    move-object/from16 v32, v6

    move-object/from16 v35, v10

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    aget v2, v4, v16

    move/from16 v17, v14

    const/4 v10, 0x1

    aget v14, v4, v10

    invoke-static {v0, v2, v14}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    .line 103
    :goto_c
    nop

    .line 104
    const/4 v2, 0x2

    aget v3, v4, v2

    .line 105
    iget-object v2, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v2

    .line 106
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_17

    .line 107
    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v9, v3}, Lcom/project7/localmanager/LocalStoryFriendshipEngine;->current([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v10

    .line 108
    const/16 v14, 0x64

    if-lt v10, v14, :cond_15

    goto :goto_d

    :cond_15
    const/16 v20, 0x3

    aget v4, v4, v20

    invoke-static {v10, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 109
    :goto_d
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v14, "ef"

    invoke-static {v2, v14, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 110
    invoke-static {v3, v10}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v2

    const-string v4, "updateFriendlyValue"

    invoke-virtual {v0, v4, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 111
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v20, "id"

    aput-object v20, v4, v16

    .line 112
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v20

    const/16 v19, 0x1

    aput-object v20, v4, v19

    const-string v20, "av"

    const/16 v18, 0x2

    aput-object v20, v4, v18

    iget v8, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    if-ltz v8, :cond_16

    .line 113
    iget v8, v9, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    move-object/from16 v20, v15

    goto :goto_e

    :cond_16
    iget-object v8, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    move-object/from16 v20, v15

    const-string v15, "av"

    invoke-static {v8, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    .line 112
    :goto_e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x3

    aput-object v8, v4, v15

    const-string v8, "scene"

    const/4 v15, 0x4

    aput-object v8, v4, v15

    const/4 v8, 0x5

    .line 114
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v4, v8

    const/4 v8, 0x6

    const-string v15, "cf"

    aput-object v15, v4, v8

    const/4 v8, 0x7

    sget-object v15, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v15, v4, v8

    const/16 v8, 0x8

    aput-object v14, v4, v8

    const/16 v8, 0x9

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object v3

    aput-object v3, v4, v8

    .line 112
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 111
    const-string v4, "q7EconomyCommit"

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto :goto_f

    .line 106
    :cond_17
    move-object/from16 v20, v15

    .line 117
    :goto_f
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v2, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 118
    iget-object v2, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    .line 99
    :catch_4
    move-exception v0

    goto :goto_13

    :catch_5
    move-exception v0

    move-object/from16 v30, v2

    :goto_10
    move-object/from16 v32, v6

    :goto_11
    move-object/from16 v35, v10

    :goto_12
    move-object/from16 v6, v17

    move-object/from16 v7, v20

    :goto_13
    move-object/from16 v20, v15

    .line 100
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v3, v0, v16

    aget v2, v4, v16

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9ed1\u6838\u56de\u6536\u9700\u8981"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_18
    const-string v2, "\u9ed1\u6838\u56de\u6536\u9700\u8981\u8702\u871c\u86cb\u7cd5\uff0c\u8bf7\u5148\u5728\u9053\u5177\u5546\u5e97\u8d2d\u4e70"

    :goto_14
    aput-object v2, v0, v3

    .line 100
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v13, v6, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 102
    move-object/from16 v4, p1

    move-object/from16 v10, v31

    move-object/from16 v3, v32

    goto/16 :goto_1b

    .line 89
    :cond_19
    move-object/from16 v30, v2

    move-object/from16 v32, v6

    move-object/from16 v35, v10

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move/from16 v17, v14

    move-object/from16 v20, v15

    .line 120
    :goto_15
    iget-object v0, v11, Lcom/project7/localmanager/LocalEventCatalog$Effect;->cores:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 123
    if-eqz v12, :cond_1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    if-nez v2, :cond_1b

    :cond_1a
    goto :goto_16

    .line 124
    :cond_1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v2, :cond_1c

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_17
    nop

    .line 126
    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v5, v8, v16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v8, v10

    const/4 v2, 0x2

    aput-object v28, v8, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v8, v3

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v8, "updateBlackCore"

    invoke-virtual {v13, v8, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 127
    const/16 v21, 0x1

    goto :goto_16

    .line 128
    :cond_1d
    iget-object v0, v11, Lcom/project7/localmanager/LocalEventCatalog$Effect;->noteIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v2, v34

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 129
    move-object/from16 v4, p1

    iget-object v8, v4, Lcom/project7/localmanager/LocalEventCatalog;->notes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 130
    if-nez v8, :cond_1e

    goto :goto_18

    .line 131
    :cond_1e
    aget v10, v8, v16

    const/4 v11, 0x1

    if-ne v10, v11, :cond_20

    .line 132
    new-instance v8, Ljava/util/ArrayList;

    const-string v10, "pn"

    invoke-static {v2, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {v2, v10, v8}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v2

    .line 136
    const-string v3, "ppn"

    const/4 v10, 0x1

    invoke-static {v2, v3, v10}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 137
    move/from16 v19, v10

    goto :goto_19

    .line 133
    :cond_1f
    const/4 v10, 0x1

    move/from16 v19, v24

    .line 139
    :goto_19
    move-object/from16 v23, v0

    move/from16 v24, v19

    move-object/from16 v10, v31

    goto :goto_1a

    :cond_20
    move v10, v11

    aget v11, v8, v16

    const/4 v14, 0x2

    if-ne v11, v14, :cond_22

    aget v11, v8, v10

    if-lez v11, :cond_22

    .line 140
    aget v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 141
    move-object/from16 v10, v31

    invoke-static {v2, v10}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    .line 142
    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v11, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 143
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_21

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {v11, v8, v14}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v11

    invoke-static {v2, v10, v11}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 146
    const-string v11, "p"

    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    .line 147
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-static {v14, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {v14, v8, v15}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    invoke-static {v2, v11, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 150
    const/16 v24, 0x1

    goto :goto_1a

    .line 143
    :cond_21
    move-object/from16 v23, v0

    goto :goto_1a

    .line 139
    :cond_22
    move-object/from16 v23, v0

    move-object/from16 v10, v31

    .line 153
    :goto_1a
    move-object/from16 v31, v10

    move-object/from16 v0, v23

    goto/16 :goto_18

    .line 154
    :cond_23
    move-object/from16 v4, p1

    move-object/from16 v10, v31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v32

    const/4 v5, 0x1

    invoke-static {v3, v0, v5}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 155
    move-object/from16 v23, v1

    move-object v5, v2

    move-object v8, v4

    move-object/from16 v17, v6

    move-object v4, v10

    move-object/from16 v15, v20

    move-object/from16 v11, v27

    move-object/from16 v14, v33

    move-object/from16 v10, v35

    move-object/from16 v1, p0

    move-object v6, v0

    move-object/from16 v20, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v28

    move-object/from16 v0, v30

    goto/16 :goto_5

    .line 87
    :cond_24
    move-object/from16 v30, v2

    move-object v3, v6

    move-object v4, v8

    move-object/from16 v35, v10

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v10, v31

    move-object/from16 v20, v15

    .line 72
    :goto_1b
    move-object/from16 v23, v1

    move-object v8, v4

    move-object/from16 v17, v6

    move-object v4, v10

    move-object/from16 v15, v20

    move-object/from16 v11, v27

    move-object/from16 v0, v30

    move-object/from16 v14, v33

    move-object/from16 v5, v34

    move-object/from16 v10, v35

    move-object/from16 v1, p0

    move-object v6, v3

    move-object/from16 v20, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v28

    goto/16 :goto_5

    .line 156
    :cond_25
    move-object v2, v0

    move-object/from16 v34, v5

    move-object v0, v6

    move-object v4, v8

    move-object/from16 v27, v11

    move-object/from16 v33, v14

    move-object/from16 v1, v23

    if-eqz v21, :cond_27

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    aput-object v6, v7, v16

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, 0x1

    aput-object v5, v7, v6

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 159
    :cond_26
    iget-object v1, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v5, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 160
    const-string v6, "reward"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 159
    const-string v7, "bc"

    invoke-static {v5, v7, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    invoke-static {v1, v6, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 162
    :cond_27
    if-nez v24, :cond_28

    move-object/from16 v1, p0

    move-object/from16 v3, v25

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    move-object/from16 v6, v34

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_1d

    :cond_28
    move-object/from16 v1, p0

    move-object/from16 v3, v25

    move-object/from16 v6, v34

    .line 163
    :goto_1d
    iget-object v5, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 164
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "nd"

    aput-object v5, v3, v16

    const/4 v5, 0x1

    aput-object v6, v3, v5

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v5, "syncAllNote"

    invoke-virtual {v13, v5, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 166
    :cond_29
    move-object/from16 v3, v27

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2a

    iget-object v5, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 167
    :cond_2a
    sget-object v2, Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;->AFTER_CONTENT:Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;

    invoke-static {v2, v13, v4, v9}, Lcom/project7/localmanager/LocalStoryRuleRegistry;->apply(Lcom/project7/localmanager/LocalStoryRuleRegistry$Phase;Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 168
    invoke-static {v13, v4, v9}, Lcom/project7/localmanager/LocalServiceEngine;->publishCityCelebration(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 169
    invoke-static {v13, v4, v9}, Lcom/project7/localmanager/LocalServiceEngine;->publishRequiredSocial(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 170
    invoke-static {v13, v4, v9}, Lcom/project7/localmanager/LocalServiceEngine;->reconcileSocial(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 171
    move-object/from16 v2, v33

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 172
    :cond_2b
    return-object v13
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 365
    const-string v0, "requestFlashbackIncDay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dailyPureChooseHero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "requestRecoverJingshenli"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "readPendingNote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    invoke-static {p0}, Lcom/project7/localmanager/LocalStoryClueEngine;->handles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    const-string v0, "daerweilaFirstChooseAsazile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    const-string v0, "readPlayerNote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "readPrivateMsg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    const-string v0, "readSocialMsg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "replyPrivateMsg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    const-string v0, "delDestroyBuilding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "triggerSocialMsgEvent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 365
    :goto_1
    return p0
.end method

.method private static message(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLjava/lang/String;ILcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 20

    .line 248
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static/range {p1 .. p2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 249
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_0

    return-object v0

    .line 250
    :cond_0
    iget-object v5, v2, Lcom/project7/localmanager/LocalEventCatalog;->privateReplies:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 251
    const-string v6, "pm"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    iget-object v7, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 252
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v7, v10}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 253
    nop

    .line 254
    invoke-virtual/range {p4 .. p4}, Lcom/project7/localmanager/LocalEventCatalog;->triggers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    .line 255
    iget-object v11, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget v12, v10, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    .line 256
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v10, v10, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAny:Ljava/util/Set;

    .line 257
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    move v5, v8

    goto :goto_1

    .line 258
    :cond_2
    goto :goto_0

    .line 254
    :cond_3
    move v5, v9

    .line 259
    :goto_1
    if-nez v5, :cond_4

    return-object v0

    .line 261
    :cond_4
    iget-object v5, v2, Lcom/project7/localmanager/LocalEventCatalog;->socialConflicts:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 262
    const-string v7, "sm"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v5, :cond_5

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v3, v5}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_5

    return-object v0

    .line 263
    :cond_5
    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v3, v10

    .line 264
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v10, "to"

    const/16 v11, 0x8

    const/4 v13, 0x6

    const/4 v14, 0x5

    const-string v15, "rt"

    const/4 v12, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const-string v18, "id"

    if-eqz v5, :cond_6

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v18, v5, v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v8

    const-string v11, "rd"

    aput-object v11, v5, v17

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v5, v16

    const-string v11, "rp"

    aput-object v11, v5, v12

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v5, v14

    aput-object v15, v5, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x7

    aput-object v3, v5, v11

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    goto :goto_2

    .line 265
    :cond_6
    const/16 v5, 0x10

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v18, v5, v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v8

    const-string v19, "r"

    aput-object v19, v5, v17

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v5, v16

    aput-object v15, v5, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v14

    const-string v14, "ct"

    aput-object v14, v5, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v5, v14

    const-string v13, "e"

    aput-object v13, v5, v11

    const/16 v11, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v11

    const/16 v11, 0xa

    const-string v13, "a"

    aput-object v13, v5, v11

    const/16 v11, 0xb

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v5, v11

    const/16 v11, 0xc

    const-string v13, "l"

    aput-object v13, v5, v11

    const/16 v11, 0xd

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    aput-object v13, v5, v11

    const/16 v11, 0xe

    aput-object v10, v5, v11

    const/16 v11, 0xf

    const v13, 0x15180

    add-int/2addr v3, v13

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v11

    .line 265
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 267
    :goto_2
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v2, v2, Lcom/project7/localmanager/LocalEventCatalog;->permanentSocialMessages:Ljava/util/Set;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v3, v10}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v3

    .line 268
    :cond_7
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "syncOnePrivateMsg"

    goto :goto_3

    :cond_8
    const-string v2, "syncOneSocialMsg"

    :goto_3
    new-array v5, v12, [Ljava/lang/Object;

    aput-object v18, v5, v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "c"

    aput-object v6, v5, v17

    aput-object v3, v5, v16

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    move-object/from16 v6, p0

    invoke-virtual {v6, v2, v5}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 269
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static publishCityCelebration(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 9

    .line 194
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v1, v2}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "sd"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v1, "sm"

    invoke-static {v4, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 196
    const-string v3, "36"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_c

    const-string v3, "37"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    .line 198
    :cond_2
    nop

    .line 199
    iget-object v1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 200
    const/16 v7, 0x138d

    if-eq v6, v7, :cond_5

    const/16 v7, 0x179e

    if-ne v6, v7, :cond_3

    goto :goto_2

    .line 201
    :cond_3
    const/16 v7, 0x1770

    if-eq v6, v7, :cond_4

    const/16 v7, 0x1b8b

    if-eq v6, v7, :cond_4

    const/16 v7, 0x1b96

    if-ne v6, v7, :cond_6

    :cond_4
    move v5, v3

    goto :goto_3

    .line 200
    :cond_5
    :goto_2
    move v5, v0

    .line 202
    :cond_6
    :goto_3
    goto :goto_1

    .line 203
    :cond_7
    if-eqz v5, :cond_8

    const/16 v0, 0x24

    goto :goto_4

    :cond_8
    const/16 v0, 0x25

    :goto_4
    move v6, v0

    .line 204
    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog;->socialMutex:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 205
    if-eqz v0, :cond_a

    iget-object v1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v1, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 206
    invoke-static {v1, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-void

    .line 207
    :cond_a
    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog;->socialActions:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 208
    :cond_b
    const-string v5, "sm"

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lcom/project7/localmanager/LocalServiceEngine;->message(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLjava/lang/String;ILcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    .line 209
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 210
    return-void

    .line 196
    :cond_c
    :goto_5
    return-void
.end method

.method private static publishRequiredSocial(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 9

    .line 177
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "sd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 178
    iget-object v2, p1, Lcom/project7/localmanager/LocalEventCatalog;->socialEvents:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/project7/localmanager/LocalEventCatalog;->permanentSocialMessages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v3, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    iget-object v3, p1, Lcom/project7/localmanager/LocalEventCatalog;->socialConflicts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 183
    if-eqz v3, :cond_2

    iget-object v5, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v5, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 184
    :cond_2
    iget-object v3, p1, Lcom/project7/localmanager/LocalEventCatalog;->socialMutex:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 185
    if-eqz v3, :cond_3

    iget-object v5, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v5, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 186
    invoke-static {v5, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 187
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v5, "sm"

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lcom/project7/localmanager/LocalServiceEngine;->message(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLjava/lang/String;ILcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v4

    .line 188
    goto :goto_0

    .line 189
    :cond_4
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 190
    return-void
.end method

.method static reconcileSocial(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 13

    .line 274
    if-nez p2, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "sd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "sm"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 276
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 278
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    iget-object v7, p1, Lcom/project7/localmanager/LocalEventCatalog;->socialEvents:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 280
    if-nez v7, :cond_1

    goto :goto_0

    .line 281
    :cond_1
    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    .line 282
    nop

    .line 284
    iget-object v9, p1, Lcom/project7/localmanager/LocalEventCatalog;->socialActions:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 285
    const/4 v10, 0x0

    if-eqz v9, :cond_3

    .line 286
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v7

    .line 287
    if-eqz v7, :cond_2

    iget-boolean v7, v7, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v7, :cond_2

    iget-object v7, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 288
    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 289
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p1, v11}, Lcom/project7/localmanager/LocalEventCatalog;->mutex(I)Ljava/util/Set;

    move-result-object v11

    invoke-static {v7, v11}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 290
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p1, v11}, Lcom/project7/localmanager/LocalEventCatalog;->mutex(I)Ljava/util/Set;

    move-result-object v11

    invoke-static {v7, v11}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    .line 291
    :cond_2
    move v7, v10

    :goto_1
    goto :goto_3

    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 292
    invoke-virtual {p1, v9}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v11

    .line 293
    if-eqz v11, :cond_4

    iget-boolean v11, v11, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v11, :cond_4

    iget-object v11, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 294
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    move v7, v9

    goto :goto_3

    .line 295
    :cond_4
    goto :goto_2

    .line 291
    :cond_5
    move v7, v10

    .line 296
    :goto_3
    iget-object v9, p1, Lcom/project7/localmanager/LocalEventCatalog;->socialMutex:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 297
    if-eqz v9, :cond_7

    iget-object v11, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v11, v9}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 298
    invoke-static {v11, v9}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    move v7, v10

    .line 299
    :cond_7
    iget-object v9, p1, Lcom/project7/localmanager/LocalEventCatalog;->socialConflicts:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 300
    if-eqz v9, :cond_8

    iget-object v11, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v11, v9}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_8

    move v7, v10

    .line 301
    :cond_8
    const-string v9, "e"

    invoke-static {v8, v9, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v7

    .line 303
    iget-object v9, p1, Lcom/project7/localmanager/LocalEventCatalog;->permanentSocialMessages:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "to"

    invoke-static {v7, v9}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v7

    .line 304
    :cond_9
    iget-object v9, p1, Lcom/project7/localmanager/LocalEventCatalog;->autoSocialMessages:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, "a"

    invoke-static {v7, v11, v9}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v7

    .line 305
    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_a

    .line 306
    invoke-static {v3, v5, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 307
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "id"

    aput-object v8, v5, v10

    const/4 v8, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v8, "c"

    aput-object v8, v5, v6

    const/4 v6, 0x3

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    const-string v6, "syncOneSocialMsg"

    invoke-virtual {p0, v6, v5}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 309
    :cond_a
    goto/16 :goto_0

    .line 278
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 310
    :cond_b
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 311
    return-void
.end method

.method static recover([BJ)[B
    .locals 10

    .line 338
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 339
    const-string v2, "jpv"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 340
    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    long-to-int v4, v4

    .line 341
    const-string v5, "jpvt"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    .line 342
    const-string v7, "mjpv"

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    const/16 v9, 0xf0

    if-gtz v8, :cond_1

    .line 343
    invoke-static {v1, v7, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 344
    if-gtz v3, :cond_0

    move v3, v9

    .line 345
    :cond_0
    move v6, v4

    .line 347
    :cond_1
    const v7, 0x186a0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 348
    if-lez v6, :cond_4

    if-gt v6, v4, :cond_4

    if-lt v3, v9, :cond_2

    goto :goto_0

    .line 350
    :cond_2
    sub-int v8, v4, v6

    div-int/lit16 v8, v8, 0x168

    .line 351
    add-int/2addr v3, v8

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 352
    if-lt v3, v9, :cond_3

    goto :goto_0

    :cond_3
    mul-int/lit16 v8, v8, 0x168

    add-int v4, v6, v8

    .line 354
    :cond_4
    :goto_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v6, v9, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 355
    const-string p2, "q7powerDay"

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 356
    const-string v6, "cjsla"

    invoke-static {v1, v6, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 357
    invoke-static {p0, p2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 359
    :cond_5
    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 360
    invoke-static {p1, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 361
    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static syncRoute(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 13

    .line 236
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "std"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 237
    const-string v1, "rt"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    if-nez v2, :cond_0

    const-string v2, "1"

    .line 239
    :cond_0
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v2, 0x2

    const-string v5, "srt"

    aput-object v5, v3, v2

    new-instance v6, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v5, 0x3

    aput-object v6, v3, v5

    const-string v6, "i"

    const/4 v7, 0x4

    aput-object v6, v3, v7

    .line 240
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x5

    aput-object v6, v3, v8

    const-string v6, "hsd"

    const/4 v9, 0x6

    aput-object v6, v3, v9

    const/4 v6, 0x7

    new-array v10, v9, [Ljava/lang/Object;

    const-string v11, "hs"

    aput-object v11, v10, v4

    new-instance v11, Lcom/project7/localmanager/BsonLite$ArrayValue;

    const-string v12, "hsu"

    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v11, v10, v1

    const-string v11, "hsf"

    aput-object v11, v10, v2

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 241
    invoke-static {v0, v11}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v5

    const-string v11, "hst"

    aput-object v11, v10, v7

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    .line 240
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v10

    aput-object v10, v3, v6

    const/16 v6, 0x8

    const-string v10, "fbd"

    aput-object v10, v3, v6

    const/16 v6, 0x9

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "ff"

    aput-object v10, v9, v4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 242
    invoke-static {v0, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v9, v1

    const-string v1, "fd"

    aput-object v1, v9, v2

    .line 243
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v5

    const-string v1, "fv"

    aput-object v1, v9, v7

    const-string v1, "fa"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v8

    .line 242
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    aput-object v0, v3, v6

    .line 239
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "syncRoute"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 244
    return-void
.end method
