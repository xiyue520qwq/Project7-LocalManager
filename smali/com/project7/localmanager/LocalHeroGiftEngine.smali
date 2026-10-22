.class final Lcom/project7/localmanager/LocalHeroGiftEngine;
.super Ljava/lang/Object;
.source "LocalHeroGiftEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 27

    .line 13
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "cf"

    const-string v5, "ef"

    const-string v6, "gt"

    const-string v7, "r"

    const-string v8, "ret"

    const-string v9, "giftToHeroReply"

    const-string v10, "i"

    const-string v11, "h"

    const-string v12, "heromgr"

    const-string v13, "hg"

    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v14, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 15
    const/16 v16, 0x3

    :try_start_0
    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v15

    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_c

    .line 16
    move-object/from16 v18, v9

    :try_start_1
    const-string v9, "HG"
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_a

    move-object/from16 v19, v7

    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    const-string v9, "GH"
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_8

    move-object/from16 v20, v8

    :try_start_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    .line 17
    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    move-object/from16 v21, v11

    const/16 v11, 0x198

    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalHeroGiftEngine;->require(ZI)V

    .line 18
    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalHeroGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    .line 19
    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_1

    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v11

    move-object/from16 v22, v10

    const/16 v10, 0x1e

    if-ge v11, v10, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v22, v10

    :cond_2
    const/4 v10, 0x0

    :goto_1
    const/16 v11, 0x141

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalHeroGiftEngine;->require(ZI)V

    .line 20
    const-string v10, "showlock"

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "c"

    invoke-static {v9, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x1

    :goto_3
    const/16 v11, 0x150

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalHeroGiftEngine;->require(ZI)V

    .line 21
    const-string v10, "std"

    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalHeroGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    const-string v11, "rt"

    invoke-static {v10, v11}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 22
    const-string v11, "6"

    const-string v0, "6-1"

    move-object/from16 v23, v12

    const-string v12, "6-2"

    move-object/from16 p3, v9

    const-string v9, "6-3"

    filled-new-array {v11, v0, v12, v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_6

    .line 23
    const-string v9, "nFriendlyValue"

    if-eqz v0, :cond_6

    :try_start_4
    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v10, "dailyBlocked"

    .line 24
    invoke-static {v8, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :goto_5
    const/16 v10, 0x2aa

    .line 23
    invoke-static {v0, v10}, Lcom/project7/localmanager/LocalHeroGiftEngine;->require(ZI)V

    .line 25
    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    .line 26
    invoke-static {v0, v15}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v0

    .line 27
    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v12
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_6

    .line 28
    if-ltz v10, :cond_7

    if-ltz v11, :cond_7

    if-ltz v12, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x198

    :try_start_5
    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHeroGiftEngine;->require(ZI)V

    .line 29
    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v9, "nFatigueValue"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v9

    .line 30
    const-string v2, "sFriendly"

    invoke-static {v7, v2, v15, v1}, Lcom/project7/localmanager/LocalHeroGiftEngine;->preferred([BLjava/lang/String;II)I

    move-result v2

    .line 31
    move/from16 v24, v2

    const-string v2, "sFatigue"

    invoke-static {v7, v2, v15, v9}, Lcom/project7/localmanager/LocalHeroGiftEngine;->preferred([BLjava/lang/String;II)I

    move-result v2

    .line 32
    const/4 v7, 0x5

    if-ge v10, v7, :cond_8

    move/from16 v7, v24

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    move/from16 v25, v2

    const/16 v2, 0x64

    invoke-static {v11, v7, v2}, Lcom/project7/localmanager/LocalHeroGiftEngine;->increase(III)I

    move-result v2

    .line 33
    const/4 v7, 0x5

    if-ge v10, v7, :cond_9

    move/from16 v7, v25

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    move/from16 v26, v9

    const-string v9, "fatigue"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v12, v7, v8}, Lcom/project7/localmanager/LocalHeroGiftEngine;->increase(III)I

    move-result v7

    .line 34
    const/4 v8, 0x1

    invoke-static {v14, v3, v8}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 35
    invoke-static {v0, v5, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0, v4, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 36
    const/4 v4, 0x1

    invoke-static {v10, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v5

    .line 35
    invoke-static {v0, v6, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 37
    iget-object v4, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v15, v0}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v0

    iput-object v0, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 38
    move-object/from16 v0, p3

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    .line 39
    iget-object v4, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v5, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 40
    move-object/from16 v6, v23

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHeroGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v13, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 39
    invoke-static {v4, v6, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 41
    new-instance v4, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    iget-object v5, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v4, v5}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_4

    .line 42
    const/16 v8, 0x198

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    :try_start_6
    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalEconomyEngine;->regularActions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v9

    iput v9, v4, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    .line 43
    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalEconomyEngine;->sandglass([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v6

    iput v6, v4, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingSandglass:I

    .line 44
    iget-object v6, v4, Lcom/project7/localmanager/LocalEconomyEngine$Result;->fatigue:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v4, Lcom/project7/localmanager/LocalEconomyEngine$Result;->friendly:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalEconomyEngine;->commit(Lcom/project7/localmanager/LocalEconomyEngine$Result;I)V

    .line 46
    iget-object v4, v4, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    iput-object v4, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 47
    iget-object v4, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "gift"

    const/4 v9, 0x6

    new-array v10, v9, [Ljava/lang/Object;

    const-string v13, "hero_id"

    const/16 v17, 0x0

    aput-object v13, v10, v17

    .line 48
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v17, 0x1

    aput-object v13, v10, v17

    const-string v13, "itemId"

    const/16 v17, 0x2

    aput-object v13, v10, v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v16

    const-string v13, "fri"

    const/16 v17, 0x4

    aput-object v13, v10, v17

    sub-int v13, v2, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v17, 0x5

    aput-object v13, v10, v17

    .line 47
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v10

    move-object/from16 v13, p1

    invoke-static {v4, v13, v6, v10}, Lcom/project7/localmanager/LocalAchievementEngine;->record([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 49
    nop

    .line 50
    iget-object v4, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "inv"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalHeroGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const-string v6, "items"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalHeroGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x1

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 51
    move-object/from16 v13, v22

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-ne v8, v3, :cond_a

    const-string v8, "w"

    invoke-static {v10, v8}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-lez v8, :cond_a

    const/4 v6, 0x0

    :cond_a
    move-object/from16 v22, v13

    const/16 v8, 0x198

    goto :goto_9

    .line 52
    :cond_b
    const/16 v3, 0x16

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v21, v3, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v3, v8

    const-string v4, "nFri"

    const/4 v8, 0x2

    aput-object v4, v3, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v16

    const-string v1, "aFri"

    const/4 v4, 0x4

    aput-object v1, v3, v4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v3, v4

    const-string v1, "sFri"

    aput-object v1, v3, v9

    const/4 v1, 0x7

    .line 53
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x8

    const-string v4, "eFri"

    aput-object v4, v3, v1

    const/16 v1, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0xa

    const-string v2, "nFat"

    aput-object v2, v3, v1

    const/16 v1, 0xb

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0xc

    const-string v2, "aFat"

    aput-object v2, v3, v1

    const/16 v1, 0xd

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0xe

    const-string v2, "sFat"

    aput-object v2, v3, v1

    const/16 v1, 0xf

    .line 54
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x10

    const-string v2, "eFat"

    aput-object v2, v3, v1

    const/16 v1, 0x11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x12

    const-string v2, "fgn"

    aput-object v2, v3, v1

    const/16 v1, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/16 v0, 0x14

    const-string v1, "nomore"

    aput-object v1, v3, v0

    const/16 v0, 0x15

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    .line 52
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 55
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v20, v2, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v19, v2, v1

    aput-object v0, v2, v16

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v1, v18

    :try_start_7
    invoke-virtual {v14, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_0

    .line 62
    goto/16 :goto_13

    .line 56
    :catch_0
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    :goto_a
    move-object/from16 v5, p0

    goto :goto_f

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    :goto_b
    move-object v5, v1

    goto :goto_f

    :catch_8
    move-exception v0

    goto :goto_c

    :catch_9
    move-exception v0

    :goto_c
    move-object v5, v1

    goto :goto_e

    :catch_a
    move-exception v0

    goto :goto_d

    :catch_b
    move-exception v0

    :goto_d
    move-object v5, v1

    move-object/from16 v19, v7

    :goto_e
    move-object/from16 v20, v8

    :goto_f
    move-object/from16 v1, v18

    goto :goto_11

    :catch_c
    move-exception v0

    goto :goto_10

    :catch_d
    move-exception v0

    :goto_10
    move-object v5, v1

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object v1, v9

    .line 57
    :goto_11
    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v14, v5}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 59
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    .line 60
    goto :goto_12

    :catch_e
    move-exception v0

    const/16 v15, 0x198

    .line 61
    :goto_12
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v20, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    aput-object v19, v0, v3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "e"

    aput-object v5, v3, v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    aput-object v2, v0, v16

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v14, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 63
    :goto_13
    return-object v14
.end method

.method private static d([BLjava/lang/String;)[B
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 7
    const-string v0, "tryGiftToHero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static increase(III)I
    .locals 0

    .line 77
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 78
    if-lt p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    return p0

    .line 77
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "408"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static preferred([BLjava/lang/String;II)I
    .locals 7

    .line 67
    nop

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Heroes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHeroGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 69
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "g"

    aput-object v5, v4, v1

    new-instance v6, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v6, v3}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v3, 0x1

    aput-object v6, v4, v3

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Value"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHeroGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0

    .line 71
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return p3
.end method

.method private static require(ZI)V
    .locals 0

    .line 92
    if-eqz p0, :cond_0

    .line 93
    return-void

    .line 92
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static reset([B)[B
    .locals 6

    .line 82
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHeroGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "hrs"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHeroGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 83
    const-string v4, "0"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHeroGiftEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 84
    nop

    .line 85
    const-string v5, "1"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalHeroGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v5, "gt"

    invoke-static {v2, v5, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 84
    invoke-static {p0, v4, v2}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object p0

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    nop

    .line 88
    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHeroGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "hg"

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 87
    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
