.class final Lcom/project7/localmanager/LocalEconomyEngine;
.super Ljava/lang/Object;
.source "LocalEconomyEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalEconomyEngine$Result;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static actions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I
    .locals 1

    .line 83
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->regularActions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v0

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->sandglass([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->addExact(II)I

    move-result p0

    return p0
.end method

.method static addExperience(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;I)V
    .locals 9

    .line 249
    iget-object v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalEconomyEngine;->playerLevel([B)I

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v2, "exp"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 251
    invoke-static {v1, p2}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    move v5, v0

    .line 252
    :goto_0
    const/16 v6, 0x6e

    if-ge v5, v6, :cond_0

    iget-object v7, p1, Lcom/project7/localmanager/LocalEconomyCatalog;->levels:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v3

    if-lt v4, v7, :cond_0

    .line 253
    iget-object v6, p1, Lcom/project7/localmanager/LocalEconomyCatalog;->levels:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v6, v6, v3

    sub-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 255
    :cond_0
    if-ne v5, v6, :cond_1

    iget-object p1, p1, Lcom/project7/localmanager/LocalEconomyCatalog;->levels:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    aget p1, p1, v3

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 256
    :cond_1
    iget-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {p1, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    const-string v6, "level"

    invoke-static {p1, v6, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 257
    iget-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    invoke-static {p1, v2, p2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 258
    iget-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    const-string p2, "oe"

    invoke-static {p1, p2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 259
    iget-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    const-string p2, "ol"

    invoke-static {p1, p2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 260
    iget-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    const-string p2, "ce"

    invoke-static {p1, p2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    const-string p2, "cl"

    invoke-static {p1, p2, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 261
    iget-object p0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance p1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "e"

    aput-object v0, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    const-string v1, "lv"

    aput-object v1, p2, v0

    const/4 v0, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p2

    const-string v0, "updateExpAndLevel"

    invoke-direct {p1, v0, p2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method private static advanceDay(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 21

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v4, "weeknum"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 377
    const-string v5, "d"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v6

    const-string v7, "w"

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v7

    .line 378
    iget-object v8, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->nextDayBlocker([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;

    move-result-object v8

    .line 379
    if-nez v8, :cond_5

    .line 380
    iget-object v8, v1, Lcom/project7/localmanager/LocalEconomyCatalog;->dailyFatigue:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, v1, Lcom/project7/localmanager/LocalEconomyCatalog;->dailyFatigue:Ljava/util/Map;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-interface {v8, v7, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 381
    if-eqz v1, :cond_4

    .line 382
    iget-object v7, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v8, "city"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    .line 383
    invoke-static {v7}, Lcom/project7/localmanager/LocalEconomyEngine;->dailyValues([B)[B

    move-result-object v9

    .line 384
    iget-object v10, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v11, "q7DailyPrevious"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    .line 385
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v10, v9

    .line 386
    :cond_0
    const/4 v12, 0x1

    add-int/2addr v6, v12

    invoke-static {v3, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 387
    const-string v13, "sgnt"

    const/4 v14, 0x0

    invoke-static {v3, v13, v14}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v3

    .line 388
    const-string v13, "sgw"

    invoke-static {v3, v13, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 389
    iput v14, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingSandglass:I

    .line 390
    const-string v13, "c"

    invoke-static {v3, v13, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    const-string v15, "l"

    invoke-static {v3, v15, v10}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 391
    iget-object v12, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v12, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 392
    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v3, v11, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 393
    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v4, "q7DailyBuildIncome"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 394
    if-ltz v3, :cond_3

    .line 395
    const-string v4, "bf"

    invoke-static {v7, v4}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v11, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-static {v7, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 396
    const-string v4, "dv"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-string v7, "dvc"

    invoke-static {v3, v7, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 397
    iget-object v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v7, "intelligence"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 398
    iget-object v11, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v12, "rd"

    invoke-static {v4, v12, v14}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    invoke-static {v11, v7, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 400
    const/16 v4, 0x18

    iput v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    .line 401
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->resetPatrolCount:Z

    .line 402
    const-string v12, "av"

    invoke-static {v3, v12, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    const-string v4, "uc"

    invoke-static {v3, v4, v14}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v3

    .line 404
    const-string v4, "pn"

    invoke-static {v3, v4, v11}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 405
    iget-object v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v8, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 406
    iget-object v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->effective([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 407
    const-string v4, "heromgr"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v8, "hrs"

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 408
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 409
    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    .line 410
    const-string v12, "0"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v12

    .line 411
    iget-object v14, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v14, v12}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v14

    .line 412
    move-object/from16 p2, v2

    const-string v2, "1"

    move-object/from16 v17, v8

    invoke-static {v11, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    move-object/from16 v18, v10

    const-string v10, "cf"

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v8

    .line 414
    move-object/from16 v19, v15

    const/16 v15, 0x64

    move-object/from16 v20, v9

    if-lt v8, v15, :cond_1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    aget v9, v1, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->addExact(II)I

    move-result v8

    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 415
    :goto_1
    invoke-static {v11, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v9, "ef"

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 416
    invoke-static {v14, v9, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v9

    .line 417
    iget-object v11, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v9, v10, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v9

    invoke-static {v11, v12, v9}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v9

    iput-object v9, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 418
    iget-object v9, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->fatigue:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v9, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->friendly:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v9, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-static {v12, v8}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v8

    const-string v10, "updateCurFatigueValue"

    invoke-direct {v9, v10, v8}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    move-object/from16 v2, p2

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    move-object/from16 v15, v19

    move-object/from16 v9, v20

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 422
    :cond_2
    move-object/from16 v20, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v15

    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalHeroGiftEngine;->reset([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 423
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    iget-object v10, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v10, v4}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v9, "syncHeroMgrData"

    invoke-direct {v2, v9, v4}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v9, "cd"

    const/4 v11, 0x0

    aput-object v9, v4, v11

    aput-object v3, v4, v10

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v4, "get_city_data_reply"

    invoke-direct {v2, v4, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "is"

    aput-object v4, v3, v11

    iget-object v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v4, "syncAllIntelligence"

    invoke-direct {v2, v4, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v4, "updateDay"

    invoke-direct {v2, v4, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const/4 v4, 0x1

    aput-object v20, v3, v4

    aput-object v19, v3, v8

    const/4 v5, 0x3

    aput-object v18, v3, v5

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v5, "showDailySettlement"

    invoke-direct {v2, v5, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iput-boolean v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    .line 429
    return-void

    .line 394
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u57ce\u5e02\u6bcf\u65e5\u5efa\u8bbe\u8d44\u91d1\u6536\u76ca\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u6bcf\u65e5\u75b2\u52b3\u6062\u590d\u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static apply([BLcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;
    .locals 9

    .line 28
    const-string v0, "incDayWhenNoActionVal"

    const-string v1, "zhaiRequest"

    const-string v2, "weeknum"

    new-instance v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    invoke-direct {v3, p0}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    .line 30
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "begin"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "finish"

    const-string v8, "s"

    if-eqz v6, :cond_0

    :try_start_1
    invoke-static {v3, p1, p3, p5}, Lcom/project7/localmanager/LocalEconomyEngine;->begin(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)V

    goto/16 :goto_2

    .line 31
    :cond_0
    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v3, p1, p2, p3, p5}, Lcom/project7/localmanager/LocalEconomyEngine;->finish(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)V

    goto/16 :goto_2

    .line 32
    :cond_1
    const-string p2, "reset"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 33
    invoke-static {p5, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 34
    const-string p2, "q7Battle"

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object p2

    .line 35
    if-eqz p1, :cond_3

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, v8}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u53d6\u6d88\u8bf7\u6c42\u4e0e\u5f53\u524d\u6218\u6597\u4e0d\u5339\u914d\uff0c\u672a\u4fee\u6539\u6218\u6597\u8fdb\u5ea6"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/project7/localmanager/LocalEconomyEngine;->clearBattle([B)[B

    move-result-object p1

    iput-object p1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 38
    iput-boolean v4, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    goto :goto_1

    .line 39
    :cond_4
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {v3, p1, p3}, Lcom/project7/localmanager/LocalEconomyEngine;->rest(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    :goto_1
    goto :goto_2

    .line 40
    :cond_5
    const-string p2, "canteenRequest"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {v3, p1, p3, p5}, Lcom/project7/localmanager/LocalEconomyEngine;->canteen(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)V

    goto :goto_2

    .line 41
    :cond_6
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {v3, p1, p3}, Lcom/project7/localmanager/LocalEconomyEngine;->advanceDay(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    goto :goto_2

    .line 42
    :cond_7
    const-string p1, "clearCurDailySettlement"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 43
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    .line 44
    const-string p2, "c"

    sget-object p3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {p1, p2, p3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    .line 45
    const-string p2, "l"

    sget-object p3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {p1, p2, p3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    .line 46
    invoke-static {p0, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 47
    iput-boolean v4, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    .line 48
    nop

    .line 50
    :goto_2
    iget p1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    if-ltz p1, :cond_9

    .line 51
    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->win:I

    if-eqz p1, :cond_8

    invoke-static {p5, v8}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_8
    move p1, v5

    :goto_3
    invoke-static {v3, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->commit(Lcom/project7/localmanager/LocalEconomyEngine$Result;I)V

    .line 62
    :cond_9
    goto :goto_5

    .line 49
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported economy method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 54
    :goto_4
    new-instance v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    invoke-direct {v3, p0}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    .line 55
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    .line 56
    iget-object p1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance p2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object p3, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    const-string p5, "m"

    invoke-static {p5, p3}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    const-string p5, "showMessageStr"

    invoke-direct {p2, p5, p3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance p2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    const-string p5, "rs"

    aput-object p5, p3, v5

    .line 58
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p3, v4

    const/4 p5, 0x2

    const-string v1, "reward"

    aput-object v1, p3, p5

    const/4 p5, 0x3

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v1, p3, p5

    invoke-static {p3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p3

    const-string p5, "zhaiReply"

    invoke-direct {p2, p5, p3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 57
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_b
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance p2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 61
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string p3, "d"

    invoke-static {p0, p3}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {p3, p0}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object p0

    const-string p3, "updateDay"

    invoke-direct {p2, p3, p0}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 60
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_c
    :goto_5
    return-object v3
.end method

.method private static begin(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)V
    .locals 16

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "s"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v5

    .line 124
    iget-object v6, v1, Lcom/project7/localmanager/LocalEconomyCatalog;->missions:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 125
    const-string v7, "t"

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    if-eqz v6, :cond_f

    .line 126
    invoke-static {v5}, Lcom/project7/localmanager/LocalArkCityEngine;->area(I)I

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v2, :cond_0

    iget v7, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    iget-object v9, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v10, "weeknum"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    const-string v10, "w"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-ne v7, v9, :cond_0

    iget-object v7, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 127
    invoke-static {v7}, Lcom/project7/localmanager/LocalArkCityEngine;->active([B)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u672c\u5468\u7a81\u88ad\u5267\u60c5\u8fdb\u5ea6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    :goto_0
    const-string v7, "h"

    invoke-static {v3, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 129
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x4

    aget v11, v6, v10

    if-lt v9, v11, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x5

    aget v12, v6, v11

    if-gt v9, v12, :cond_e

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 130
    invoke-virtual {v9}, Ljava/util/LinkedHashSet;->size()I

    move-result v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ne v9, v12, :cond_e

    .line 131
    iget-object v9, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v12, "q7Battle"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 132
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 133
    invoke-static {v9, v4}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v5, v1, :cond_2

    invoke-static {v9, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iput-boolean v8, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    iput-boolean v8, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    return-void

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4e0a\u4e00\u573a\u6218\u6597\u5c1a\u672a\u7ed3\u7b97\u6216\u9000\u51fa"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_3
    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v13, "q7BattleReceipts"

    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    iget-object v13, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v13, v5}, Lcom/project7/localmanager/LocalEconomyEngine;->key([BI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 140
    const/16 v9, 0x65

    const/4 v13, 0x0

    if-eq v5, v9, :cond_8

    if-eqz v2, :cond_8

    .line 141
    invoke-static {v5}, Lcom/project7/localmanager/LocalCityProgress;->area(I)I

    move-result v9

    .line 142
    iget-object v14, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v2, v9, v14}, Lcom/project7/localmanager/LocalCityProgress;->stages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)[B

    move-result-object v9

    const-string v14, "cs"

    invoke-static {v9, v14}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-ne v9, v5, :cond_7

    .line 143
    iget-object v1, v1, Lcom/project7/localmanager/LocalEconomyCatalog;->missionGates:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 144
    if-eqz v1, :cond_8

    .line 145
    aget v9, v1, v13

    if-eqz v9, :cond_5

    iget-object v9, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    aget v14, v1, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    .line 146
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u5b8c\u6210\u8be5\u5730\u533a\u7684\u524d\u7f6e\u5267\u60c5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_5
    :goto_1
    move v9, v8

    :goto_2
    array-length v14, v1

    if-ge v9, v14, :cond_8

    aget v14, v1, v9

    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v14

    if-eqz v14, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 148
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u5b8c\u6210\u8be5\u5730\u533a\u7684\u524d\u7f6e\u5173\u5361"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6b64\u5173\u5361\u5c1a\u672a\u5f00\u653e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_8
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v9, "city"

    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v9, "fv"

    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalStageCostRules;->normal([II)Lcom/project7/localmanager/LocalStageCostRules$Cost;

    move-result-object v1

    .line 152
    iget v6, v1, Lcom/project7/localmanager/LocalStageCostRules$Cost;->fatigue:I

    .line 153
    iget-object v9, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v9, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->effective([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v9

    .line 154
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 155
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 156
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v9, v11}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v11

    const-string v15, "cf"

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-lt v11, v6, :cond_9

    .line 157
    const/4 v11, 0x5

    goto :goto_3

    .line 156
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f16\u961f\u89d2\u8272\u75b2\u52b3\u503c\u4e0d\u8db3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u672a\u62e5\u6709\u7f16\u961f\u4e2d\u7684\u89d2\u8272"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_b
    iget-object v9, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v9, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->actions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v2

    iget v1, v1, Lcom/project7/localmanager/LocalStageCostRules$Cost;->actions:I

    if-lt v2, v1, :cond_c

    .line 159
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x2

    aput-object v7, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const-string v2, "k"

    aput-object v2, v1, v10

    iget-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalEconomyEngine;->key([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    const/4 v2, 0x6

    const-string v4, "f"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    .line 160
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "fatigue"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 159
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 161
    iget-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v2, v12, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 162
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v2, "combat"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v4, "of"

    invoke-static {v1, v4, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v1

    .line 163
    const-string v4, "sc"

    invoke-static {v1, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    const-string v4, "bt"

    invoke-static {v1, v4, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 164
    const-string v4, "hr"

    invoke-static {v1, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    .line 165
    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v3, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 166
    iput-boolean v8, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    .line 167
    return-void

    .line 158
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u884c\u52a8\u529b\u4e0d\u8db3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u4e3b\u7ebf\u5173\u5361\u5df2\u5b8c\u6210\uff0c\u8bf7\u9009\u62e9\u5f53\u524d\u5173\u5361"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6218\u6597\u7f16\u961f\u4eba\u6570\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6b64\u6218\u6597\u6a21\u5f0f\u5c1a\u672a\u63a5\u5165\u4e3b\u7ebf\u5956\u52b1\u7cfb\u7edf"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static canteen(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)V
    .locals 17

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "h"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 298
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_8

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v4, v6, :cond_8

    .line 300
    iget-object v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->actions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v6, "q7Battle"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 302
    iget-object v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v6, "weeknum"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "w"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "d"

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 304
    iget-object v8, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v9, "q7Canteen"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    .line 305
    const-string v10, "day"

    invoke-static {v8, v10}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "city"

    const-string v13, "cd"

    const-string v14, "get_city_data_reply"

    const-string v15, "heroes"

    const/4 v5, 0x1

    if-eqz v11, :cond_1

    .line 306
    invoke-static {v8, v15}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalEconomyEngine;->refreshCanteen([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 309
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    iget-object v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-direct {v2, v14, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iput-boolean v5, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    iput-boolean v5, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    return-void

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4eca\u5929\u5df2\u7ecf\u7528\u9910\uff0c\u4e0d\u80fd\u518d\u6b21\u6062\u590d\u75b2\u52b3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v5, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    .line 313
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u672a\u62e5\u6709\u6240\u9009\u795e\u5668\u4f7f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_3
    iget-object v5, v1, Lcom/project7/localmanager/LocalEconomyCatalog;->dailyFatigue:Ljava/util/Map;

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v1, Lcom/project7/localmanager/LocalEconomyCatalog;->dailyFatigue:Ljava/util/Map;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 315
    if-eqz v1, :cond_6

    .line 316
    iget-object v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->effective([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    .line 317
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 318
    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v7

    const-string v8, "cf"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v7

    .line 319
    const/16 v11, 0x64

    move-object/from16 p1, v2

    if-lt v7, v11, :cond_4

    goto :goto_2

    :cond_4
    const/16 v16, 0x1

    aget v2, v1, v16

    invoke-static {v7, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 320
    :goto_2
    iget-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    iget-object v11, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 321
    invoke-static {v11, v5}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v11

    .line 320
    invoke-static {v11, v8, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v8

    invoke-static {v2, v5, v8}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 322
    iget-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->fatigue:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-static {v5, v7}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v5

    const-string v7, "updateCurFatigueValue"

    invoke-direct {v8, v7, v5}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    move-object/from16 v2, p1

    goto :goto_1

    .line 325
    :cond_5
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v2, v4

    const/4 v4, 0x1

    aput-object v6, v2, v4

    const/4 v4, 0x2

    aput-object v15, v2, v4

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v1, v9, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 326
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalEconomyEngine;->refreshCanteen([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 327
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    iget-object v5, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v5, v12}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-direct {v2, v14, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iput v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    .line 329
    iput-boolean v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    .line 330
    return-void

    .line 315
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u6df1\u591c\u98df\u5802\u6062\u590d\u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u7ed3\u675f\u5f53\u5929\u7684\u884c\u52a8\u6216\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u9009\u62e9\u4e00\u81f3\u4e09\u540d\u4e0d\u540c\u7684\u795e\u5668\u4f7f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static clearBattle([B)[B
    .locals 4

    .line 118
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v1, "q7Battle"

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 119
    const-string v0, "combat"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "of"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static clearEmptyDailySettlement([B)[B
    .locals 4

    .line 361
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 362
    const-string v2, "c"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/project7/localmanager/LocalEconomyEngine;->hasDailySettlement([B)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 364
    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 363
    const-string v3, "l"

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 362
    :cond_1
    :goto_0
    return-object p0
.end method

.method static commit(Lcom/project7/localmanager/LocalEconomyEngine$Result;I)V
    .locals 5

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, "av"

    aput-object v3, v0, v1

    iget v1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v3, "scene"

    aput-object v3, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    .line 68
    iget v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingSandglass:I

    const-string v1, "sgw"

    if-ltz v0, :cond_0

    .line 69
    iget v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingSandglass:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v3, "weeknum"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v0

    .line 68
    :goto_0
    invoke-static {p1, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 70
    iget-boolean v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->resetPatrolCount:Z

    if-eqz v0, :cond_1

    const-string v0, "pn"

    invoke-static {p1, v0, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 71
    :cond_1
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 72
    iget-object v2, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->fatigue:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    goto :goto_1

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->friendly:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    goto :goto_2

    .line 76
    :cond_3
    const-string v2, "cf"

    invoke-static {p1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    const-string v0, "ef"

    invoke-static {p1, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v1, "q7EconomyCommit"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 78
    return-void
.end method

.method private static dailyValues([B)[B
    .locals 3

    .line 293
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "rsv"

    aput-object v2, v0, v1

    const-string v1, "rv"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "dvv"

    aput-object v2, v0, v1

    const-string v1, "dv"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "frv"

    aput-object v2, v0, v1

    const-string v1, "fv"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private static doc([BLjava/lang/String;)[B
    .locals 0

    .line 81
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static effective([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 0

    .line 108
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p0

    return-object p0
.end method

.method private static finish(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)V
    .locals 22

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "s"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v5

    .line 172
    const-string v6, "t"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    iget-object v6, v1, Lcom/project7/localmanager/LocalEconomyCatalog;->missions:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 173
    iget-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v8, "q7BattleReceipts"

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 174
    iget-object v9, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v9, v5}, Lcom/project7/localmanager/LocalEconomyEngine;->key([BI)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 175
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    const-string v11, "sid"

    const-string v12, "reward"

    const-string v13, "h"

    if-nez v10, :cond_1

    .line 176
    invoke-static {v9, v13}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v13}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iput-boolean v7, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    iput-boolean v7, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    iput v7, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->win:I

    .line 179
    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v11, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 180
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6218\u6597\u7f16\u961f\u4e0e\u7ed3\u7b97\u8bb0\u5f55\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    iget-object v9, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v10, "q7Battle"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 183
    invoke-static {v9, v4}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v10

    if-ne v5, v10, :cond_c

    iget-object v10, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v10, v5}, Lcom/project7/localmanager/LocalEconomyEngine;->key([BI)Ljava/lang/String;

    move-result-object v10

    const-string v14, "k"

    invoke-static {v9, v14}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 184
    invoke-static {v9, v13}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-static {v3, v13}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 186
    iput-boolean v7, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    .line 187
    invoke-static/range {p4 .. p4}, Lcom/project7/localmanager/BsonLite;->combatWinValue([B)I

    move-result v3

    iput v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->win:I

    .line 188
    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalEconomyEngine;->clearBattle([B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 189
    iget v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->win:I

    if-nez v3, :cond_2

    return-void

    .line 190
    :cond_2
    iget-object v3, v1, Lcom/project7/localmanager/LocalEconomyCatalog;->missions:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 191
    iget-object v10, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v10, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->actions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v10

    .line 192
    const/4 v14, 0x0

    aget v15, v3, v14

    if-lt v10, v15, :cond_b

    .line 193
    iget-object v10, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v10}, Lcom/project7/localmanager/LocalEconomyEngine;->playerLevel([B)I

    move-result v10

    .line 194
    iget-object v15, v1, Lcom/project7/localmanager/LocalEconomyCatalog;->levels:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 195
    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v14, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-direct {v15, v14}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 196
    const/4 v14, 0x6

    aget v16, v3, v14

    const/4 v14, 0x2

    if-eqz v16, :cond_3

    .line 197
    const/16 v19, 0x0

    aget v20, v7, v14

    const/16 v21, 0x1

    const-string v18, "money"

    move-object/from16 v16, v15

    move-object/from16 v17, p2

    invoke-static/range {v16 .. v21}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 199
    const-string v14, "f"

    invoke-static {v9, v14}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 200
    move-object/from16 v17, v8

    new-instance v8, Ljava/util/Random;

    move-object/from16 v18, v6

    const/16 v6, 0xc

    move-object/from16 v19, v12

    const/4 v12, 0x0

    invoke-virtual {v14, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0x10

    move-object v14, v13

    invoke-static {v6, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    invoke-direct {v8, v12, v13}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v6, p2

    invoke-virtual {v1, v15, v6, v10, v8}, Lcom/project7/localmanager/LocalEconomyCatalog;->grantDrops(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;ILjava/util/Random;)V

    goto :goto_0

    .line 196
    :cond_3
    move-object/from16 v18, v6

    move-object/from16 v17, v8

    move-object/from16 v19, v12

    move-object v14, v13

    .line 202
    :goto_0
    iget-object v6, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 203
    iget-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    iget-object v8, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    invoke-virtual {v15}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v6

    iput-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 206
    iget-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    invoke-static {v6, v11, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    iput-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 207
    iget-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    const/4 v8, 0x6

    aget v10, v3, v8

    if-eqz v10, :cond_4

    const/4 v8, 0x2

    aget v10, v7, v8

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    const-string v8, "money"

    invoke-static {v6, v8, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    iput-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 209
    iget-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const-string v10, "item"

    invoke-static {v6, v10, v8}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v6

    iput-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 210
    const/4 v6, 0x6

    aget v8, v3, v6

    if-eqz v8, :cond_5

    const/4 v6, 0x1

    aget v8, v7, v6

    invoke-static {v0, v1, v8}, Lcom/project7/localmanager/LocalEconomyEngine;->addExperience(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;I)V

    .line 211
    :cond_5
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->effective([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    .line 212
    move-object v6, v14

    invoke-static {v9, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v12, "ef"

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 213
    iget-object v13, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v13, v14}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v13

    .line 214
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v1, v14}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v14

    .line 215
    const-string v15, "cf"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v20

    const-string v11, "fatigue"

    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v11

    sub-int v11, v20, v11

    move-object/from16 p2, v8

    const/4 v8, 0x0

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 216
    invoke-static {v14, v12}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v8

    .line 217
    const/16 v14, 0x64

    if-lt v8, v14, :cond_6

    goto :goto_4

    .line 218
    :cond_6
    const/16 v20, 0x6

    aget v21, v3, v20

    if-eqz v21, :cond_7

    const/16 v20, 0x3

    aget v20, v7, v20

    move/from16 v14, v20

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    :goto_3
    invoke-static {v8, v14}, Ljava/lang/Math;->addExact(II)I

    move-result v8

    .line 217
    const/16 v14, 0x64

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 219
    :goto_4
    invoke-static {v13, v15, v11}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v13

    invoke-static {v13, v12, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v12

    .line 220
    iget-object v13, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v13, v14, v12}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v12

    iput-object v12, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 221
    iget-object v12, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v13, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14, v11}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v14

    const-string v15, "updateCurFatigueValue"

    invoke-direct {v13, v15, v14}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v12, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v13, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14, v8}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v14

    const-string v15, "updateFriendlyValue"

    invoke-direct {v13, v15, v14}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v12, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->fatigue:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->friendly:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    move-object/from16 v8, p2

    goto/16 :goto_2

    .line 225
    :cond_8
    sget-object v7, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 226
    sget-object v8, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 227
    invoke-static {v9, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 228
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->friendly:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v1, v11}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v11

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v11

    sub-int/2addr v14, v11

    .line 227
    invoke-static {v7, v13, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v7

    goto :goto_5

    .line 229
    :cond_9
    invoke-static {v9, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 230
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Integer;

    invoke-static {v1, v11}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v14

    invoke-static {v14, v12}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v20, 0x0

    aput-object v14, v15, v20

    iget-object v14, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->friendly:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    const/4 v14, 0x1

    aput-object v11, v15, v14

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 229
    invoke-static {v8, v13, v11}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v8

    goto :goto_6

    .line 231
    :cond_a
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    const-string v10, "fr"

    invoke-static {v1, v10, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 233
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    const-string v7, "fri"

    invoke-static {v1, v7, v8}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 234
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    invoke-static {v9, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "hs"

    invoke-static {v1, v8, v7}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 235
    const/4 v1, 0x0

    aget v3, v3, v1

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/LocalEconomyEngine;->spendActions(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V

    .line 236
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v6, v2, v1

    invoke-static {v9, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v1, 0x4

    const-string v3, "av"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    iget v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    .line 237
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "sgw"

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v1, 0x7

    iget v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingSandglass:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x8

    aput-object v19, v2, v1

    const/16 v1, 0x9

    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    aput-object v3, v2, v1

    .line 236
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 238
    iget-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 239
    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalEconomyEngine;->key([BI)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-static {v4, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 238
    move-object/from16 v4, v17

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 240
    iget-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v3, "q7BattleLast"

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 241
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalSuppressionEngine;->recordPass([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 242
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "psh"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v5, Lcom/project7/localmanager/BsonLite$ArrayValue;

    iget-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 243
    const-string v7, "bs"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v4, 0x1

    aput-object v5, v3, v4

    .line 242
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v4, "battleStageSyncPassHistory"

    invoke-direct {v2, v4, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 245
    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    iget-object v0, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    iget-object v1, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    return-void

    .line 192
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u884c\u52a8\u529b\u5df2\u53d8\u5316\uff0c\u65e0\u6cd5\u7ed3\u7b97\u672c\u6b21\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6ca1\u6709\u4e0e\u672c\u6b21\u7ed3\u7b97\u5bf9\u5e94\u7684\u5df2\u5f00\u59cb\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6b64\u6218\u6597\u6a21\u5f0f\u5c1a\u672a\u63a5\u5165\u4e3b\u7ebf\u5956\u52b1\u7cfb\u7edf"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static hasDailySettlement([B)Z
    .locals 6

    .line 345
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "c"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 346
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 348
    :cond_0
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 349
    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 350
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 351
    :cond_1
    goto :goto_0

    .line 350
    :cond_2
    :goto_1
    return v5

    .line 352
    :cond_3
    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "l"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 353
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 356
    :cond_4
    goto :goto_2

    .line 355
    :cond_5
    :goto_3
    return v5

    .line 357
    :cond_6
    return v3
.end method

.method private static key([BI)Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weeknum"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string v1, "w"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$rest$0(Ljava/lang/Integer;)Z
    .locals 1

    .line 265
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static nextDayBlocker([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;
    .locals 3

    .line 333
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 334
    const-string v1, "d"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v0

    .line 335
    if-eqz p1, :cond_5

    iget-boolean v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v2, 0x417

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    iget-boolean v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 336
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/project7/localmanager/LocalEconomyEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalEconomyEngine$$ExternalSyntheticLambda0;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 337
    const-string v1, "q7Battle"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 339
    :cond_1
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->actions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\u884c\u52a8\u529b\u5c1a\u672a\u8017\u5c3d\uff0c\u4e0d\u80fd\u8fdb\u5165\u4e0b\u4e00\u5929"

    return-object p0

    .line 340
    :cond_2
    if-ltz v0, :cond_4

    const/4 p0, 0x7

    if-lt v0, p0, :cond_3

    goto :goto_0

    .line 341
    :cond_3
    const/4 p0, 0x0

    return-object p0

    .line 340
    :cond_4
    :goto_0
    const-string p0, "\u8bf7\u5148\u5b8c\u6210\u6700\u540e\u4e00\u5929\u7684\u7ed3\u5c40\u5267\u60c5\uff0c\u518d\u9009\u62e9\u4e0b\u4e00\u5468\u76ee"

    return-object p0

    .line 338
    :cond_5
    :goto_1
    const-string p0, "\u8bf7\u5148\u5b8c\u6210\u5f53\u524d\u5f15\u5bfc\u3001\u5267\u60c5\u3001\u5de1\u67e5\u6216\u6218\u6597\uff0c\u518d\u8fdb\u5165\u4e0b\u4e00\u5929"

    return-object p0
.end method

.method private static playerLevel([B)I
    .locals 1

    .line 112
    const-string v0, "level"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 113
    const/16 v0, 0x6e

    if-gt p0, v0, :cond_0

    .line 114
    return p0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8d26\u53f7\u7b49\u7ea7\u8d85\u51fa\u539f\u7248\u8303\u56f4\uff0c\u672a\u4fee\u6539\u7ecf\u9a8c\u548c\u7b49\u7ea7"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static reconcile([BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEconomyEngine$Result;)V
    .locals 0

    .line 432
    if-eqz p1, :cond_1

    iget-boolean p2, p2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 434
    return-void

    .line 432
    :cond_1
    :goto_0
    return-void
.end method

.method static recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 7

    .line 437
    if-nez p1, :cond_0

    return-void

    .line 438
    :cond_0
    const-string v0, "q7EconomyCommit"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 439
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_7

    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->economyCommit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 442
    :cond_1
    const-string v2, "av"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    .line 443
    const-string v2, "sgw"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->sandglassActions:I

    .line 444
    :cond_2
    const-string v2, "pn"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 445
    if-eqz v2, :cond_3

    .line 446
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    .line 447
    invoke-static {p0}, Lcom/project7/localmanager/LocalPatrolEngine;->dayKey([B)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    .line 449
    :cond_3
    const-string p0, "cf"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v3}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 450
    :cond_4
    const-string p0, "ef"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v3}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 451
    :cond_5
    const-string p0, "scene"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result p0

    .line 452
    if-lez p0, :cond_6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "battle"

    invoke-virtual {p1, v0, p0}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 453
    :cond_6
    iput-object v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->economyCommit:Ljava/lang/String;

    .line 454
    return-void

    .line 440
    :cond_7
    :goto_2
    return-void
.end method

.method static refreshCanteen([B)[B
    .locals 5

    .line 368
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "d"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    const-string v1, "q7Canteen"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "day"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 371
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "city"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "uc"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 372
    :cond_0
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static regularActions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I
    .locals 1

    .line 86
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    if-ltz v0, :cond_0

    iget p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    goto :goto_0

    :cond_0
    const-string p1, "city"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string p1, "av"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static rest(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 16

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/project7/localmanager/LocalEconomyEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalEconomyEngine$$ExternalSyntheticLambda0;

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 267
    :goto_0
    if-eqz v2, :cond_4

    iget-boolean v6, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-nez v6, :cond_4

    if-nez v5, :cond_4

    iget-boolean v5, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 268
    const-string v6, "q7Battle"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 269
    iget-object v5, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->actions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v5

    .line 270
    iget-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v6}, Lcom/project7/localmanager/LocalEconomyEngine;->playerLevel([B)I

    move-result v6

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v9, "weeknum"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    const-string v10, "w"

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v10, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    const-string v10, "d"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 272
    iget-object v9, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v10, "q7Rest"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 273
    const-string v11, "day"

    const/4 v12, 0x4

    const-string v13, "reward"

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-nez v5, :cond_1

    invoke-static {v9, v11}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    iput-boolean v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    iput-boolean v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 276
    :cond_1
    iget-object v3, v1, Lcom/project7/localmanager/LocalEconomyCatalog;->rest:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 277
    if-eqz v3, :cond_3

    .line 278
    aget v6, v3, v14

    if-nez v6, :cond_2

    .line 280
    iget-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    iget-object v8, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v9, "money"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v8

    aget v14, v3, v15

    invoke-static {v8, v14}, Ljava/lang/Math;->addExact(II)I

    move-result v8

    invoke-static {v6, v9, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    iput-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 281
    new-array v6, v12, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v9, v6, v8

    aget v14, v3, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v6, v4

    const-string v14, "fatigue"

    aput-object v14, v6, v15

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v8, 0x3

    aput-object v14, v6, v8

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    iput-object v6, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 282
    aget v3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/project7/localmanager/LocalEconomyEngine;->addExperience(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;I)V

    .line 283
    invoke-static {v0, v2, v5}, Lcom/project7/localmanager/LocalEconomyEngine;->spendActions(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V

    .line 284
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    new-array v2, v12, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    aput-object v7, v2, v4

    aput-object v13, v2, v15

    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    const/4 v5, 0x3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v1, v10, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 285
    iget-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v5, "v"

    invoke-static {v5, v3}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v5, "updateMoney"

    invoke-direct {v2, v5, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iput-boolean v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    .line 287
    const/4 v1, 0x0

    iput v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    .line 289
    :goto_1
    iget-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "rs"

    aput-object v6, v5, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v4

    aput-object v13, v5, v15

    iget-object v0, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "zhaiReply"

    invoke-direct {v3, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    return-void

    .line 278
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6b64\u7b49\u7ea7\u7684\u7279\u6b8a\u4f11\u606f\u75b2\u52b3\u89c4\u5219\u5c1a\u672a\u5b9e\u73b0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6ca1\u6709\u53ef\u7528\u4e8e\u4f11\u606f\u7684\u884c\u52a8\u529b"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u5b8c\u6210\u5f53\u524d\u5267\u60c5\u3001\u5de1\u67e5\u6216\u6218\u6597\uff0c\u518d\u4f11\u606f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sandglass([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I
    .locals 1

    .line 89
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->sandglassActions:I

    if-ltz v0, :cond_0

    iget p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->sandglassActions:I

    goto :goto_0

    :cond_0
    const-string p1, "weeknum"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string p1, "sgw"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->v([BLjava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method static spendActions(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->regularActions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v0

    iget-object v1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->sandglass([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result p1

    .line 93
    if-ltz p2, :cond_3

    invoke-static {v0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    if-gt p2, v1, :cond_3

    .line 94
    sub-int v1, v0, p2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    .line 95
    sub-int/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int p2, p1, p2

    iput p2, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingSandglass:I

    .line 96
    iget-object p2, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    iget-object v0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 97
    const-string v1, "city"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    iget v3, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    const-string v4, "av"

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 96
    invoke-static {p2, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 98
    iget-object p2, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v0, "weeknum"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object p2

    const-string v1, "sgw"

    invoke-static {p2, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    iget-object v3, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 100
    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    iget v4, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingSandglass:I

    invoke-static {v3, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 99
    invoke-static {p2, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 101
    :cond_1
    iget p2, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingSandglass:I

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance p2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "v"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget p0, p0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingSandglass:I

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    const-string v0, "syncSandglass"

    invoke-direct {p2, v0, p0}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 101
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    return-void

    .line 93
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u884c\u52a8\u529b\u4e0d\u8db3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 80
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
