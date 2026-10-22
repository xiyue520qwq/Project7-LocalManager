.class final Lcom/project7/localmanager/LocalHeroGrowthEngine;
.super Ljava/lang/Object;
.source "LocalHeroGrowthEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 22

    .line 10
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "so"

    const-string v4, "sl"

    const-string v5, "artifact"

    const-string v6, "incHeroStarOrder"

    const-string v7, ":"

    const-string v8, "h"

    new-instance v9, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v9, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 12
    :try_start_0
    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v15

    .line 13
    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 14
    invoke-static {v1, v15}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v10

    const-string v11, "D"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v11

    .line 15
    invoke-static {v10, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v12

    invoke-static {v10, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v14

    .line 16
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v17, v6

    :try_start_1
    const-string v6, "special"

    invoke-static {v11, v6}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    .line 17
    if-eqz v6, :cond_0

    const/4 v13, 0x5

    goto :goto_0

    :cond_0
    const/4 v13, 0x4

    .line 18
    :goto_0
    if-ne v12, v13, :cond_1

    move-object/from16 v18, v5

    const/4 v5, 0x4

    if-ne v14, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v18, v5

    :cond_2
    const/4 v5, 0x0

    .line 19
    :goto_1
    if-eqz v11, :cond_12

    move-object/from16 v19, v8

    const/4 v8, 0x1

    if-lt v12, v8, :cond_13

    if-gt v12, v13, :cond_13

    if-lt v14, v8, :cond_13

    const/4 v8, 0x4

    if-gt v14, v8, :cond_13

    const-string v8, "oa"

    if-eqz v5, :cond_5

    if-nez v6, :cond_4

    :try_start_2
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    invoke-static {v10, v8}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v2, v17

    goto/16 :goto_a

    .line 19
    :cond_4
    move-object/from16 v2, v17

    goto/16 :goto_a

    .line 22
    :cond_5
    :goto_2
    if-eqz v5, :cond_7

    const-string v10, "level"

    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v10

    const/16 v13, 0x1e

    if-le v10, v13, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u6307\u6325\u4f7f\u7b49\u7ea7\u9700\u8d85\u8fc7 30 \u7ea7\u624d\u80fd\u5f00\u542f\u795e\u5668"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_7
    :goto_3
    const-string v10, "G"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v10, v13}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    const-string v13, "K"

    move-object/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    if-eqz v10, :cond_11

    if-eqz v3, :cond_11

    .line 26
    const-string v7, "fragment"

    if-eqz v6, :cond_8

    :try_start_3
    const-string v13, "yjt_fragment"

    goto :goto_4

    :cond_8
    move-object v13, v7

    :goto_4
    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v13

    .line 27
    invoke-static {v11, v7}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v7

    if-eqz v6, :cond_9

    const/16 v11, 0x33e0

    goto :goto_5

    :cond_9
    const/16 v11, 0x18

    .line 28
    :goto_5
    if-ne v7, v11, :cond_a

    move-object/from16 v21, v4

    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    move-object/from16 v21, v4

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalHeroGrowthEngine;->count([BI)I

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 29
    :goto_6
    if-lez v4, :cond_b

    invoke-static {v9, v7, v4}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 30
    :cond_b
    sub-int/2addr v13, v4

    invoke-static {v9, v11, v13}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 31
    if-nez v6, :cond_d

    .line 32
    const-string v4, "itemid"

    invoke-static {v10, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    .line 33
    if-lez v4, :cond_c

    const-string v6, "itemnum"

    invoke-static {v10, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v9, v4, v6}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 34
    :cond_c
    const-string v4, "items"

    invoke-static {v10, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 35
    const-string v7, "0"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v7

    const-string v10, "1"

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    invoke-static {v9, v7, v6}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    goto :goto_7

    .line 37
    :cond_d
    invoke-static {v9, v0, v3, v2}, Lcom/project7/localmanager/LocalHeroGrowthEngine;->consumeTreasure(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B[B)V

    .line 39
    iget-object v0, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v15}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v0

    .line 40
    if-eqz v5, :cond_e

    const/4 v2, 0x1

    invoke-static {v0, v8, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalArtifactFix;->fix([B)[B

    move-result-object v0

    goto :goto_9

    .line 42
    :cond_e
    const/4 v2, 0x4

    if-ne v14, v2, :cond_f

    add-int/lit8 v12, v12, 0x1

    :cond_f
    move-object/from16 v2, v21

    invoke-static {v0, v2, v12}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 43
    const/4 v2, 0x4

    if-ne v14, v2, :cond_10

    const/4 v3, 0x1

    goto :goto_8

    :cond_10
    const/4 v2, 0x1

    add-int/lit8 v3, v14, 0x1

    :goto_8
    move-object/from16 v2, v20

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 45
    :goto_9
    iget-object v2, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v15, v0}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v0

    iput-object v0, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 46
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v19, v0, v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object v18, v0, v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v2, v17

    :try_start_4
    invoke-virtual {v9, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 52
    goto/16 :goto_f

    .line 25
    :cond_11
    move-object/from16 v2, v17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u7f3a\u5c11\u8be5\u9636\u6bb5\u7684\u5347\u661f\u914d\u7f6e"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_c

    .line 19
    :cond_12
    move-object/from16 v19, v8

    :cond_13
    move-object/from16 v2, v17

    .line 21
    :goto_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8be5\u795e\u5668\u4f7f\u5df2\u8fbe\u5230\u5f53\u524d\u5347\u661f\u4e0a\u9650"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    :goto_b
    move-object/from16 v18, v5

    move-object/from16 v19, v8

    :goto_c
    move-object/from16 v2, v17

    goto :goto_e

    .line 13
    :cond_14
    move-object/from16 v18, v5

    move-object v2, v6

    move-object/from16 v19, v8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u672a\u62e5\u6709\u8be5\u795e\u5668\u4f7f"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_4

    .line 47
    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    :goto_d
    move-object/from16 v18, v5

    move-object v2, v6

    move-object/from16 v19, v8

    .line 48
    :goto_e
    new-instance v9, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v9, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 49
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "m"

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v3, "showMessageStr"

    invoke-virtual {v9, v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 51
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v19, v0, v4

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v18, v0, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 53
    :goto_f
    return-object v9
.end method

.method private static consumeTreasure(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B[B)V
    .locals 8

    .line 65
    const-string v0, "needTreasureId"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    const-string v1, "fkt"

    invoke-static {p3, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    .line 66
    const-string v2, "cost"

    invoke-static {p3, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p3

    .line 67
    invoke-static {p3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    .line 68
    if-nez v0, :cond_1

    .line 69
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v1, :cond_0

    .line 70
    return-void

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8be5\u9636\u6bb5\u4e0d\u9700\u8981\u5f71\u88c5\u6750\u6599"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_1
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 73
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "fakeTreasureId"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p1

    if-ne v1, p1, :cond_2

    .line 75
    invoke-static {p0, v1, v3}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 76
    return-void

    .line 74
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5347\u661f\u66ff\u4ee3\u6750\u6599\u4e0d\u5339\u914d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 79
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p3, v2}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 80
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, p3}, Lcom/project7/localmanager/LocalEquipmentEngine;->findOwned([BLjava/lang/String;)[B

    move-result-object v2

    .line 81
    if-eqz p3, :cond_b

    if-eqz v2, :cond_b

    .line 82
    const-string v4, "i"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    .line 83
    const-string v6, "tr"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 84
    if-eq v5, v0, :cond_4

    const-string v0, "otherNeedTreasure"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 85
    :cond_4
    const-string v0, "needTreasureClass"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 86
    const-string v5, "cl"

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_5

    goto :goto_0

    .line 87
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5347\u661f\u5f71\u88c5\u7c7b\u578b\u6216\u54c1\u8d28\u4e0d\u5339\u914d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_6
    :goto_0
    nop

    .line 89
    const-string v0, "st"

    invoke-static {v6, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_1

    .line 90
    :cond_7
    const-string v0, "needTreasureStars"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p2

    if-ne v5, p2, :cond_8

    goto :goto_2

    .line 91
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5347\u661f\u5f71\u88c5\u661f\u6570\u4e0d\u5339\u914d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_9
    :goto_2
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "f"

    invoke-static {v6, v0}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "c"

    invoke-static {v2, p2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_a

    .line 94
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalEquipmentEngine;->removeOwned([BLjava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 95
    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/Object;

    const-string v2, "u"

    aput-object v2, v0, v1

    new-instance v2, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v2, p3}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v2, "unequipTreasureAllHeroReply"

    invoke-virtual {p0, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 96
    new-array p2, p2, [Ljava/lang/Object;

    aput-object v4, p2, v1

    new-instance v0, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v0, p3}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p2

    const-string v0, "deleteItems"

    invoke-virtual {p0, v0, p2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 97
    invoke-static {p0, p1, p3}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->pruneRemoved(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)V

    .line 98
    return-void

    .line 93
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8bf7\u5148\u89e3\u9501\u5f71\u88c5\u6750\u6599"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u672a\u62e5\u6709\u8be5\u5347\u661f\u5f71\u88c5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8bf7\u9009\u62e9\u6240\u9700\u7684\u5347\u661f\u5f71\u88c5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static count([BI)I
    .locals 3

    .line 57
    nop

    .line 58
    nop

    .line 59
    const-string v0, "inv"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 58
    const-string v0, "items"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 60
    const-string v2, "i"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    goto :goto_0

    .line 61
    :cond_1
    return v0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 7
    const-string v0, "incHeroStarOrder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
