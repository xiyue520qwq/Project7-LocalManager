.class final Lcom/project7/localmanager/LocalHeroAwakeEngine;
.super Ljava/lang/Object;
.source "LocalHeroAwakeEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 21

    .line 39
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "lncs"

    const-string v5, "cs"

    const-string v6, "ss"

    const-string v7, "sak"

    const-string v8, "aao"

    const-string v9, "ar"

    const-string v10, "hid"

    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 41
    const/16 v17, 0x0

    const/4 v13, 0x1

    :try_start_0
    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v12

    invoke-static {v1, v0, v12}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;I)[B

    move-result-object v11

    .line 42
    const-string v14, "seeAwakeSkillChanged"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 43
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v7}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {v11, v7, v13}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    invoke-static {v1, v12, v0}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v0

    iput-object v0, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object v2, v15

    goto/16 :goto_12

    .line 43
    :cond_0
    move-object v2, v15

    goto/16 :goto_12

    .line 45
    :cond_1
    const-string v7, "upgradeAwakeStage"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v18, 0x3

    const-string v14, "awake_skin"

    const-string v7, ":"

    const-string v13, "AW"

    move-object/from16 v19, v4

    const-string v4, "as"

    if-eqz v2, :cond_9

    .line 46
    :try_start_1
    invoke-static {v11, v4}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 47
    if-ltz v2, :cond_2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move/from16 v3, v17

    :goto_0
    const-string v5, "\u5df2\u8fbe\u5230\u89c9\u9192\u4e0a\u9650"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    add-int/2addr v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move/from16 v3, v17

    :goto_1
    const-string v6, "\u7f3a\u5c11\u539f\u7248\u89c9\u9192\u914d\u7f6e"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 50
    const-string v3, "update_consume_item"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v6, "prior_consume_item"

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v6

    const-string v7, "update_consume_num"

    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v7

    .line 51
    if-lez v3, :cond_4

    if-lez v7, :cond_4

    if-eq v6, v3, :cond_4

    move v13, v5

    goto :goto_2

    :cond_4
    move/from16 v13, v17

    :goto_2
    const-string v5, "\u89c9\u9192\u6750\u6599\u914d\u7f6e\u65e0\u6548"

    invoke-static {v13, v5}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 52
    if-lez v6, :cond_5

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalHeroGrowthEngine;->count([BI)I

    move-result v5

    goto :goto_3

    :cond_5
    move/from16 v5, v17

    .line 53
    :goto_3
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 54
    invoke-static {v15, v6, v5}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 55
    sub-int/2addr v7, v5

    invoke-static {v15, v3, v7}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 56
    const-string v3, "artifact_level_up"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 57
    if-ltz v3, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    move/from16 v5, v17

    :goto_4
    const-string v6, "\u89c9\u9192\u795e\u5668\u914d\u7f6e\u65e0\u6548"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 58
    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    .line 59
    invoke-static {v11, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 60
    invoke-static {v5, v9}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v8, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    invoke-static {v5, v9, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    .line 61
    iget-object v6, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v12, v5}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v5

    iput-object v5, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 62
    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v14

    .line 63
    if-lez v14, :cond_8

    .line 64
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceCatalog;->skins:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalResourceCatalog$Skin;

    .line 65
    if-eqz v5, :cond_7

    iget v5, v5, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    if-ne v5, v12, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    move/from16 v5, v17

    :goto_5
    const-string v6, "\u7f3a\u5c11\u539f\u7248\u89c9\u9192\u65f6\u88c5\u914d\u7f6e"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 66
    const-string v13, "skin"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v11, v15

    move v9, v12

    move-object/from16 v12, p2

    const/4 v7, 0x1

    const/4 v0, 0x6

    move-object/from16 v20, v15

    move v15, v5

    move/from16 v16, v6

    invoke-static/range {v11 .. v16}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    goto :goto_6

    .line 63
    :cond_8
    move v9, v12

    move-object/from16 v20, v15

    const/4 v0, 0x6

    const/4 v7, 0x1

    .line 68
    :goto_6
    const-string v5, "replyUpgradeAwakeStage"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v10, v0, v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v7

    const/4 v12, 0x2

    aput-object v4, v0, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v18

    const/4 v2, 0x4

    aput-object v8, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    move-object/from16 v2, v20

    invoke-virtual {v2, v5, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 69
    goto/16 :goto_12

    .line 70
    :cond_9
    move v9, v12

    move-object v2, v15

    const/4 v8, 0x6

    const/4 v12, 0x2

    const/4 v15, 0x1

    invoke-static {v3, v6}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 71
    if-eqz v3, :cond_a

    move v8, v15

    goto :goto_7

    :cond_a
    move/from16 v8, v17

    :goto_7
    const-string v12, "\u89c9\u9192\u65f6\u88c5\u72b6\u6001\u65e0\u6548"

    invoke-static {v8, v12}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 72
    invoke-static {v11, v4}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v13, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    .line 73
    if-eqz v8, :cond_b

    const-string v12, "has_skin"

    invoke-static {v8, v12}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-ne v8, v15, :cond_b

    move v8, v15

    goto :goto_8

    :cond_b
    move/from16 v8, v17

    :goto_8
    const-string v12, "\u5c1a\u672a\u89e3\u9501\u89c9\u9192\u65f6\u88c5"

    invoke-static {v8, v12}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 74
    invoke-static {v11, v5}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v12, v19

    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    const-string v15, "sk"

    if-eqz v8, :cond_c

    move-object/from16 v19, v6

    :try_start_2
    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v8}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_9

    :cond_c
    move-object/from16 v19, v6

    :cond_d
    move/from16 v6, v17

    :goto_9
    move-object/from16 v20, v10

    const-string v10, "\u5f53\u524d\u65f6\u88c5\u4e0d\u5b58\u5728"

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v10, "ass"

    if-eqz v6, :cond_12

    .line 77
    nop

    .line 78
    move/from16 v15, v17

    const/4 v6, 0x1

    :goto_a
    if-gt v6, v4, :cond_f

    .line 79
    move/from16 p2, v4

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v13, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    invoke-static {v4, v14}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_e

    move v15, v4

    .line 78
    :cond_e
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, p2

    goto :goto_a

    .line 81
    :cond_f
    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->skinUuid([BI)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_10

    const/4 v13, 0x1

    goto :goto_b

    :cond_10
    move/from16 v13, v17

    :goto_b
    const-string v4, "\u89c9\u9192\u65f6\u88c5\u672a\u9886\u53d6"

    invoke-static {v13, v4}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 83
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v16, v8

    .line 84
    :cond_11
    move-object/from16 v4, v16

    goto :goto_e

    .line 85
    :cond_12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object/from16 v0, v16

    goto :goto_c

    :cond_13
    move-object v0, v8

    .line 86
    :goto_c
    if-eqz v0, :cond_14

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_14

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 87
    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v0}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    const-string v7, "fb"

    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->skinUuid([BI)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_15
    if-eqz v0, :cond_16

    const/4 v13, 0x1

    goto :goto_d

    :cond_16
    move/from16 v13, v17

    :goto_d
    const-string v4, "\u539f\u59cb\u65f6\u88c5\u4e0d\u5b58\u5728"

    invoke-static {v13, v4}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    move-object/from16 v4, v16

    .line 90
    :goto_e
    invoke-static {v11, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_f

    :cond_17
    move/from16 v13, v17

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v13, 0x1

    .line 91
    :goto_10
    invoke-static {v11, v5, v0}, Lcom/project7/localmanager/BsonLite;->withProfileUuid([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v10, v6}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v5

    .line 92
    if-eqz v4, :cond_19

    invoke-static {v5, v12, v4}, Lcom/project7/localmanager/BsonLite;->withProfileUuid([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 93
    :cond_19
    invoke-static {v1, v9, v5}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v5

    iput-object v5, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 94
    const-string v5, "replyChangeAwakeSkinStyle"

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v20, v6, v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    aput-object v19, v6, v7

    aput-object v3, v6, v18

    const-string v3, "oldsi"

    const/4 v7, 0x4

    aput-object v3, v6, v7

    new-instance v3, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v3, v8}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x5

    aput-object v3, v6, v7

    const-string v3, "newsi"

    const/4 v7, 0x6

    aput-object v3, v6, v7

    const/4 v3, 0x7

    new-instance v7, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v7, v0}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v3

    const/16 v0, 0x8

    const-string v3, "lcs"

    aput-object v3, v6, v0

    const/16 v0, 0x9

    .line 96
    if-nez v4, :cond_1a

    const/4 v3, 0x0

    goto :goto_11

    :cond_1a
    new-instance v3, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v3, v4}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    :goto_11
    aput-object v3, v6, v0

    const/16 v0, 0xa

    const-string v3, "st"

    aput-object v3, v6, v0

    const/16 v0, 0xb

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v0

    .line 94
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_0

    .line 102
    :goto_12
    move-object v15, v2

    goto :goto_14

    .line 98
    :catch_0
    move-exception v0

    goto :goto_13

    :catch_1
    move-exception v0

    .line 99
    :goto_13
    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 100
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "m"

    aput-object v2, v1, v17

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v15, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 103
    :goto_14
    return-object v15
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 3

    .line 8
    const-string v0, "upgradeAwakeStage"

    const-string v1, "changeAwakeSkinStyle"

    const-string v2, "seeAwakeSkillChanged"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static owned([BLcom/project7/localmanager/LocalFeatureCatalog;I)[B
    .locals 2

    .line 26
    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v0

    const-string v1, "\u672a\u62e5\u6709\u8be5\u795e\u5668\u4f7f"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 27
    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object p0

    .line 28
    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->released(Lcom/project7/localmanager/LocalFeatureCatalog;IJ)Z

    move-result p1

    const-string p2, "\u8be5\u795e\u5668\u4f7f\u5c1a\u672a\u5f00\u653e\u89c9\u9192"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 29
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "oa"

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "\u8bf7\u5148\u5f00\u542f\u795e\u5668"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->require(ZLjava/lang/String;)V

    .line 30
    return-object p0
.end method

.method static released(Lcom/project7/localmanager/LocalFeatureCatalog;IJ)Z
    .locals 10

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "AH"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    .line 15
    const/4 p1, 0x0

    if-eqz p0, :cond_4

    const-string v0, "open"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "special"

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "time"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    return p1

    .line 19
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 21
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v2, 0x4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v2, 0x5

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v3, v0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 22
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, p2, v2

    if-ltz p0, :cond_3

    move p1, v1

    :cond_3
    return p1

    .line 23
    :catch_0
    move-exception p0

    return p1

    .line 15
    :cond_4
    :goto_0
    return p1
.end method

.method static require(ZLjava/lang/String;)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    return-void
.end method

.method static skinUuid([BI)Ljava/lang/String;
    .locals 6

    .line 33
    const-string v0, "sk"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

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

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "i"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalHeroAwakeEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "fb"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    .line 33
    :cond_0
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
