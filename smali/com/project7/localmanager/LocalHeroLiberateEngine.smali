.class final Lcom/project7/localmanager/LocalHeroLiberateEngine;
.super Ljava/lang/Object;
.source "LocalHeroLiberateEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 27

    .line 30
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "mc"

    const-string v5, "ti"

    const-string v6, "ls"

    const-string v7, "c"

    const-string v8, "s"

    const-string v9, "tupoLiberateStageReply"

    const-string v10, "liberateChange"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v2, p2

    invoke-static {v1, v0, v2, v3}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->convert([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    return-object v0

    .line 31
    :cond_0
    new-instance v10, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v10, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 32
    const-string v11, "updateWanwufadian"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "wwfd"

    const-string v13, "heromgr"

    if-eqz v11, :cond_2

    .line 33
    const-string v0, "f"

    invoke-static {v3, v0}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, v12, v0}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 34
    invoke-static {v1, v13, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 36
    :cond_1
    return-object v10

    .line 38
    :cond_2
    const-string v11, "upgradeLiberate"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, v0, v3}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->train([BLcom/project7/localmanager/LocalFeatureCatalog;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    return-object v0

    .line 39
    :cond_3
    const-string v2, "h"

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 41
    const/16 v16, 0x0

    :try_start_0
    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 42
    invoke-static {v1, v0, v3}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->normalize([BLcom/project7/localmanager/LocalFeatureCatalog;I)[B

    move-result-object v15

    iput-object v15, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 43
    iget-object v15, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15, v3}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v15

    .line 44
    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v18

    .line 45
    const-string v14, "LB"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_a

    move-object/from16 v19, v9

    :try_start_1
    const-string v9, ":"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v18, 0x1

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v14, v11}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v11

    .line 46
    if-ltz v18, :cond_11

    if-eqz v11, :cond_11

    const-string v14, "is_release"

    invoke-static {v11, v14}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v14
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v18, v7

    const/4 v7, 0x1

    if-ne v14, v7, :cond_10

    .line 48
    :try_start_2
    const-string v7, "lv_max"

    invoke-static {v11, v7}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v7

    .line 49
    if-lez v7, :cond_f

    const-string v14, "level"

    invoke-static {v1, v14}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v14
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v20, v8

    :try_start_3
    const-string v8, "lv_require"

    invoke-static {v11, v8}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-lt v14, v8, :cond_e

    .line 51
    const-string v8, "lh"

    const-string v14, "la"
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v21, v2

    :try_start_4
    const-string v2, "ld"

    filled-new-array {v8, v14, v2}, [Ljava/lang/String;

    move-result-object v2

    move/from16 v8, v16

    :goto_0
    const/4 v14, 0x3

    if-ge v8, v14, :cond_5

    aget-object v14, v2, v8

    .line 52
    invoke-static {v15, v14}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v14

    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->level(Lcom/project7/localmanager/LocalFeatureCatalog;I)I

    move-result v14

    if-lt v14, v7, :cond_4

    .line 51
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 52
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5148\u5c06\u4e09\u9879\u7075\u89e3\u8bad\u7ec3\u63d0\u5347\u81f3\u5f53\u524d\u4e0a\u9650"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_5
    const-string v2, "itemids"

    invoke-static {v11, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v7, "itemnums"

    invoke-static {v11, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 54
    const-string v8, "spe_item"

    invoke-static {v11, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    const-string v14, "instead_item"

    invoke-static {v11, v14}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v22, v3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_d

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_d

    .line 57
    nop

    .line 58
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v12}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    move/from16 v3, v16

    move v12, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_b

    .line 60
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 61
    if-lez v13, :cond_a

    if-ltz v23, :cond_a

    .line 62
    move-object/from16 v24, v2

    move/from16 v2, v23

    move-object/from16 v23, v7

    move/from16 v7, v16

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_7

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v13, :cond_6

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_6

    .line 63
    iget-object v1, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    move-object/from16 v26, v14

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v1, v14}, Lcom/project7/localmanager/LocalHeroGrowthEngine;->count([BI)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 64
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v10, v14, v1}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    sub-int/2addr v2, v1

    goto :goto_3

    .line 62
    :cond_6
    move-object/from16 v26, v14

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v14, v26

    goto :goto_2

    .line 66
    :cond_7
    move-object/from16 v26, v14

    iget-object v1, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalHeroGrowthEngine;->count([BI)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 67
    invoke-static {v10, v13, v1}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    sub-int/2addr v2, v1

    .line 68
    if-lez v2, :cond_9

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7a81\u7834\u6750\u6599\u4e0d\u8db3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_9
    :goto_4
    invoke-static {v12, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v12

    .line 59
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, v23

    move-object/from16 v2, v24

    move-object/from16 v14, v26

    goto/16 :goto_1

    .line 61
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7a81\u7834\u6750\u6599\u914d\u7f6e\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_b
    const/16 v0, 0x1220

    invoke-static {v10, v0, v12}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 72
    const-string v0, "crystal"

    const-string v1, "jingchen"

    invoke-static {v11, v1}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v10, v0, v1}, Lcom/project7/localmanager/LocalGiftEngine;->spend(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;I)V

    .line 73
    const-string v0, "cost"

    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v0

    .line 74
    if-ltz v0, :cond_c

    .line 75
    invoke-static {v15, v6, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 76
    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 77
    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    invoke-static {v1, v5, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 78
    iget-object v2, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move/from16 v3, v22

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v1

    iput-object v1, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 79
    invoke-static {v10}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 80
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v21, v2, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v1, 0x2

    aput-object v20, v2, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v2, v4

    const/4 v1, 0x4

    aput-object v18, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v1, v19

    :try_start_5
    invoke-virtual {v10, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 81
    move-object/from16 v0, p1

    const/4 v2, 0x1

    invoke-static {v10, v0, v3, v2}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;IZ)V

    .line 86
    goto/16 :goto_e

    .line 74
    :cond_c
    move-object/from16 v1, v19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u7a81\u7834cost\u914d\u7f6e\u65e0\u6548"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_d
    move-object/from16 v1, v19

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u7f3a\u5c11\u539f\u7248\u7a81\u7834\u6750\u6599\u914d\u7f6e"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_b

    .line 49
    :cond_e
    move-object/from16 v21, v2

    goto :goto_6

    .line 82
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_5
    move-object/from16 v21, v2

    goto :goto_b

    .line 49
    :cond_f
    move-object/from16 v21, v2

    move-object/from16 v20, v8

    :goto_6
    move-object/from16 v1, v19

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u6307\u6325\u4f7f\u7b49\u7ea7\u672a\u8fbe\u5230\u7a81\u7834\u8981\u6c42"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    :goto_7
    move-object/from16 v21, v2

    goto :goto_a

    .line 46
    :cond_10
    move-object/from16 v21, v2

    goto :goto_8

    :cond_11
    move-object/from16 v21, v2

    move-object/from16 v18, v7

    :goto_8
    move-object/from16 v20, v8

    move-object/from16 v1, v19

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5df2\u8fbe\u5230\u539f\u7248\u5f00\u653e\u7684\u7a81\u7834\u4e0a\u9650"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    :goto_9
    move-object/from16 v21, v2

    move-object/from16 v18, v7

    :goto_a
    move-object/from16 v20, v8

    :goto_b
    move-object/from16 v1, v19

    goto :goto_d

    .line 41
    :cond_12
    move-object/from16 v21, v2

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object v1, v9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u672a\u62e5\u6709\u8be5\u795e\u5668\u4f7f"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_8

    .line 82
    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_d

    :catch_a
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    move-object/from16 v21, v2

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move-object v1, v9

    .line 83
    :goto_d
    new-instance v10, Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-object/from16 v2, p0

    invoke-direct {v10, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 84
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "m"

    aput-object v2, v3, v16

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v3, "showMessageStr"

    invoke-virtual {v10, v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 85
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v21, v0, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v20, v0, v2

    const/16 v2, 0x261

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object v18, v0, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 87
    :goto_e
    return-object v10
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 1

    .line 26
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p0

    return-object p0
.end method

.method private static convert([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 30

    .line 91
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const-string v3, "b"

    const-string v4, "l"

    const-string v5, "defend"

    const-string v6, "attack"

    const-string v7, "hp"

    const-string v8, "i"

    const-string v9, "r"

    const-string v10, "replyLiberateChange"

    const-string v11, "m"

    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 93
    const/16 v18, 0x0

    :try_start_0
    const-string v14, "c"

    invoke-static {v2, v14}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 94
    filled-new-array {v7, v6, v5}, [Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    if-eqz p2, :cond_c

    .line 96
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v13, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v13

    move-object/from16 v13, v21

    check-cast v13, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_c

    move-object/from16 v21, v10

    :try_start_1
    const-string v10, "LI:"

    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v10, v14}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v10

    move-object/from16 v23, v14

    const/4 v14, 0x1

    if-ne v10, v14, :cond_1

    .line 98
    iget-object v10, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 99
    invoke-static {v10, v7}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v13

    invoke-static {v10, v6}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v10, v5}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v14

    add-int/2addr v13, v14

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_0
    move-object/from16 v23, v14

    :cond_1
    :goto_1
    move-object/from16 v10, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    goto :goto_0

    .line 101
    :cond_2
    move-object/from16 v21, v10

    sget-object v0, Lcom/project7/localmanager/LocalHeroLiberateEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalHeroLiberateEngine$$ExternalSyntheticLambda0;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 102
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_b

    .line 103
    new-array v0, v5, [I

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v5

    aput v5, v0, v18

    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_8

    const/4 v6, 0x1

    :try_start_2
    aput v5, v0, v6
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aput v5, v0, v6

    const/4 v5, 0x3

    new-array v6, v5, [I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_8

    const/4 v5, 0x1

    :try_start_4
    aput v5, v6, v18

    const/16 v7, 0xa

    aput v7, v6, v5

    const/16 v7, 0x64

    const/4 v10, 0x2

    aput v7, v6, v10

    .line 104
    nop

    .line 105
    const/4 v13, 0x3

    new-array v14, v13, [I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    new-array v5, v13, [I

    .line 106
    const-wide/16 v22, 0x0

    move/from16 v10, v18

    move-wide/from16 v24, v22

    :goto_2
    if-ge v10, v13, :cond_5

    .line 107
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    const-string v7, "item"

    invoke-static {v13, v7}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v7

    aput v7, v14, v10

    .line 108
    aget v7, v14, v10

    if-lez v7, :cond_4

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    const-string v13, "base"

    invoke-static {v7, v13}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v7

    aget v13, v6, v10

    const/16 v26, 0x64

    mul-int/lit8 v13, v13, 0x64

    if-ne v7, v13, :cond_4

    .line 110
    filled-new-array {v4, v11, v3}, [Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    invoke-static {v2, v7}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v7

    .line 111
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v27

    aget v7, v0, v10

    move-object v13, v3

    move-object/from16 v29, v4

    int-to-double v3, v7

    cmpl-double v3, v27, v3

    if-nez v3, :cond_3

    aget v3, v0, v10

    if-ltz v3, :cond_3

    .line 113
    aget v3, v14, v10

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalHeroGrowthEngine;->count([BI)I

    move-result v3

    aput v3, v5, v10

    .line 114
    aget v3, v5, v10

    int-to-long v3, v3

    aget v7, v6, v10

    move-object/from16 v27, v12

    move-object/from16 p1, v13

    int-to-long v12, v7

    mul-long/2addr v3, v12

    add-long v22, v22, v3

    aget v3, v0, v10

    int-to-long v3, v3

    aget v7, v6, v10

    int-to-long v12, v7

    mul-long/2addr v3, v12

    add-long v24, v24, v3

    .line 106
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p1

    move/from16 v7, v26

    move-object/from16 v12, v27

    move-object/from16 v4, v29

    const/4 v13, 0x3

    goto :goto_2

    .line 112
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u4f59\u70ec\u6570\u91cf\u65e0\u6548"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u4f59\u70ec\u8c03\u914d\u914d\u7f6e\u65e0\u6548"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_5
    cmp-long v3, v22, v24

    if-nez v3, :cond_a

    .line 117
    move/from16 v3, v18

    :goto_3
    const/4 v4, 0x3

    if-ge v3, v4, :cond_7

    aget v4, v5, v3

    aget v6, v0, v3

    if-le v4, v6, :cond_6

    aget v4, v14, v3

    aget v6, v5, v3

    aget v7, v0, v3

    sub-int/2addr v6, v7

    invoke-static {v15, v4, v6}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 118
    :cond_7
    move/from16 v3, v18

    :goto_4
    const/4 v4, 0x3

    if-ge v3, v4, :cond_9

    :try_start_6
    aget v6, v0, v3

    aget v7, v5, v3

    if-le v6, v7, :cond_8

    const-string v6, "item"

    aget v7, v14, v3

    aget v10, v0, v3

    aget v12, v5, v3
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_0

    sub-int/2addr v10, v12

    const/16 v20, 0x1

    move-object v12, v15

    const/4 v4, 0x2

    const/16 v19, 0x1

    move-object/from16 v13, p2

    move-object/from16 v22, v14

    const/4 v4, 0x4

    move-object v14, v6

    move-object v6, v15

    move v15, v7

    move/from16 v16, v10

    move/from16 v17, v20

    :try_start_7
    invoke-static/range {v12 .. v17}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    goto :goto_5

    :cond_8
    move-object/from16 v22, v14

    move-object v6, v15

    const/4 v4, 0x4

    const/16 v19, 0x1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object v15, v6

    move-object/from16 v14, v22

    goto :goto_4

    .line 120
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_6
    const/4 v4, 0x4

    const/16 v19, 0x1

    :goto_7
    move-object/from16 v2, v21

    goto/16 :goto_e

    .line 119
    :cond_9
    move-object v6, v15

    const/4 v4, 0x4

    const/16 v19, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v9, v0, v18

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v19

    const/4 v3, 0x2

    aput-object v8, v0, v3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v2, v21

    :try_start_8
    invoke-virtual {v6, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 124
    move-object v15, v6

    goto/16 :goto_f

    .line 120
    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_7

    .line 116
    :cond_a
    move-object/from16 v2, v21

    const/4 v4, 0x4

    const/16 v19, 0x1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u4f59\u70ec\u8c03\u914d\u603b\u91cf\u4e0d\u4e00\u81f4\uff0c\u8bf7\u5237\u65b0\u540e\u91cd\u8bd5"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_8
    move/from16 v19, v5

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    :goto_9
    move/from16 v19, v6

    :goto_a
    move-object/from16 v2, v21

    const/4 v4, 0x4

    goto :goto_e

    .line 102
    :cond_b
    move-object/from16 v2, v21

    const/4 v4, 0x4

    const/16 v19, 0x1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u7f3a\u5c11\u539f\u7248\u4f59\u70ec\u8c03\u914d\u914d\u7f6e"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :catch_8
    move-exception v0

    goto :goto_b

    :catch_9
    move-exception v0

    :goto_b
    move-object/from16 v2, v21

    goto :goto_d

    .line 94
    :cond_c
    move-object v2, v10

    const/4 v4, 0x4

    const/16 v19, 0x1

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u4f59\u70ec\u8c03\u914d\u7c7b\u578b\u65e0\u6548"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_a

    .line 120
    :catch_a
    move-exception v0

    goto :goto_e

    :catch_b
    move-exception v0

    goto :goto_e

    :catch_c
    move-exception v0

    goto :goto_c

    :catch_d
    move-exception v0

    :goto_c
    move-object v2, v10

    :goto_d
    const/4 v4, 0x4

    const/16 v19, 0x1

    .line 121
    :goto_e
    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 122
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v11, v3, v18

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v19

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v15, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 123
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v9, v0, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v19

    const/4 v1, 0x2

    aput-object v8, v0, v1

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v3, 0x3

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v15, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 125
    :goto_f
    return-object v15
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 8
    const-string v0, "tupoLiberateStage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "upgradeLiberate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    const-string v0, "updateWanwufadian"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "liberateChange"

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

    .line 8
    :goto_1
    return p0
.end method

.method static synthetic lambda$convert$0([B)I
    .locals 1

    .line 101
    const-string v0, "base"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static level(Lcom/project7/localmanager/LocalFeatureCatalog;I)I
    .locals 7

    .line 14
    int-to-long v0, p1

    .line 15
    nop

    .line 16
    const/4 p1, 0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-gt p1, v3, :cond_1

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LE"

    invoke-virtual {p0, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 18
    const-string v4, "exp"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 19
    if-eqz v3, :cond_1

    if-lez v4, :cond_1

    int-to-long v3, v4

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    sub-long/2addr v0, v3

    .line 16
    add-int/lit8 v2, p1, 0x1

    move v6, v2

    move v2, p1

    move p1, v6

    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    return v2
.end method

.method private static train([BLcom/project7/localmanager/LocalFeatureCatalog;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 30

    .line 128
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "base"

    const-string v4, "ls"

    const-string v5, "LB"

    const-string v6, "attack"

    const-string v7, "hp"

    const-string v8, "r"

    const-string v9, "upgradeLiberateReply"

    const-string v10, "m"

    new-instance v11, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v11, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 129
    const-string v12, "h"

    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v13

    .line 131
    const/16 v16, 0x0

    :try_start_0
    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 132
    const-string v15, "t"

    invoke-static {v2, v15}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 133
    const-string v14, "defend"

    filled-new-array {v7, v6, v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 134
    invoke-static {v1, v0, v13}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->normalize([BLcom/project7/localmanager/LocalFeatureCatalog;I)[B

    move-result-object v14

    iput-object v14, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 135
    iget-object v14, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14, v13}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_8

    move-object/from16 v19, v9

    :try_start_1
    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v4}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v9

    const/16 v18, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    .line 136
    if-nez v1, :cond_0

    invoke-static {v14, v4}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v9, 0x4

    if-ne v4, v9, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":1"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v1, 0x64

    goto :goto_0

    :cond_0
    const-string v4, "lv_max"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v1

    .line 137
    :goto_0
    if-lez v1, :cond_10

    .line 138
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_4

    const-string v5, "la"

    const-string v7, "ld"

    const-string v9, "lh"

    if-eqz v4, :cond_1

    move-object v4, v9

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_1

    :cond_2
    move-object v4, v7

    .line 139
    :goto_1
    invoke-static {v14, v4}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->level(Lcom/project7/localmanager/LocalFeatureCatalog;I)I

    move-result v6

    if-ge v6, v1, :cond_f

    .line 140
    const-string v1, "i"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v6, 0xa

    if-gt v2, v6, :cond_e

    .line 142
    nop

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v2, v16

    move v6, v2

    const/16 v20, 0x1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v1

    move-object/from16 v1, v21

    check-cast v1, [B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_4

    .line 144
    move-object/from16 v21, v10

    :try_start_3
    const-string v10, "0"

    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v10

    move-object/from16 v23, v7

    const-string v7, "1"

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v1

    .line 145
    const-string v7, "LI"

    move-object/from16 v24, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    .line 146
    if-lez v1, :cond_c

    const/16 v7, 0x3e8

    if-gt v1, v7, :cond_c

    if-eqz v5, :cond_c

    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v7

    move-object/from16 v26, v15

    const/4 v15, 0x1

    if-ne v7, v15, :cond_c

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-lez v7, :cond_c

    .line 148
    invoke-static {v2, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    .line 149
    const/16 v7, 0x3e8

    if-gt v2, v7, :cond_b

    .line 150
    const-string v7, "multiRate"

    invoke-static {v5, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v15, "multi"

    invoke-static {v5, v15}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 151
    move/from16 v25, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v27, v9

    const-string v9, "\u7075\u89e3\u500d\u7387\u914d\u7f6e\u65e0\u6548"

    if-ne v2, v0, :cond_a

    :try_start_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v0, :cond_a

    .line 152
    nop

    .line 153
    move/from16 v0, v16

    move v2, v0

    :goto_3
    move-object/from16 v28, v8

    :try_start_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 154
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_4

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_3

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_4

    .line 156
    :cond_3
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    .line 153
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v28

    goto :goto_3

    .line 155
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_5
    if-lez v2, :cond_9

    .line 159
    invoke-static {v11, v10, v1}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 160
    move/from16 v8, v16

    move/from16 v0, v20

    :goto_4
    if-ge v8, v1, :cond_8

    .line 161
    invoke-static {v2}, Lcom/project7/localmanager/LocalStoryEnvironment;->nextInt(I)I

    move-result v9

    .line 162
    move/from16 v10, v16

    :goto_5
    move/from16 v29, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_7

    .line 163
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v9, v1

    .line 164
    if-gez v9, :cond_6

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_6

    .line 162
    :cond_6
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v29

    goto :goto_5

    :cond_7
    move/from16 v1, v16

    .line 166
    :goto_6
    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v9, v1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->addExact(II)I

    move-result v6

    .line 167
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 160
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v29

    goto :goto_4

    .line 169
    :cond_8
    move/from16 v20, v0

    move-object/from16 v10, v21

    move-object/from16 v1, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move/from16 v2, v25

    move-object/from16 v15, v26

    move-object/from16 v9, v27

    move-object/from16 v8, v28

    move-object/from16 v0, p1

    goto/16 :goto_2

    .line 158
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_a
    move-object/from16 v28, v8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_b
    move-object/from16 v28, v8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5355\u6b21\u7075\u89e3\u6750\u6599\u8fc7\u591a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_c
    move-object/from16 v28, v8

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7075\u89e3\u6750\u6599\u4e0e\u8bad\u7ec3\u7c7b\u578b\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_7
    move-object/from16 v28, v8

    goto/16 :goto_9

    .line 170
    :cond_d
    move-object/from16 v24, v5

    move-object/from16 v23, v7

    move-object/from16 v28, v8

    move-object/from16 v27, v9

    move-object/from16 v21, v10

    move-object/from16 v26, v15

    invoke-static {v14, v4}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    invoke-static {v14, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 171
    iget-object v1, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v13, v0}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v1

    iput-object v1, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 172
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v12, v2, v16

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v28, v2, v1

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v27, v1, v16

    .line 173
    move-object/from16 v3, v27

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    aput-object v24, v1, v3

    move-object/from16 v3, v24

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const/4 v3, 0x4

    aput-object v23, v1, v3

    const/4 v3, 0x5

    move-object/from16 v4, v23

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalHeroLiberateEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const/4 v0, 0x6

    const-string v3, "ad"

    aput-object v3, v1, v0

    const/4 v0, 0x7

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v26, v4, v16

    .line 174
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    aput-object v3, v1, v0

    const/16 v0, 0x8

    aput-object v21, v1, v0

    const/16 v0, 0x9

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v26, v4, v16

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 172
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v1, v19

    :try_start_6
    invoke-virtual {v11, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 175
    move-object/from16 v0, p1

    const/4 v2, 0x1

    invoke-static {v11, v0, v13, v2}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;IZ)V

    .line 180
    goto/16 :goto_c

    .line 176
    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_9

    .line 141
    :cond_e
    move-object/from16 v28, v8

    move-object/from16 v21, v10

    move-object/from16 v1, v19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u9009\u62e9\u7075\u89e3\u6750\u6599"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_f
    move-object/from16 v28, v8

    move-object/from16 v21, v10

    move-object/from16 v1, v19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5148\u7a81\u7834\u5f53\u524d\u7075\u89e3\u9636\u6bb5"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_10
    move-object/from16 v28, v8

    move-object/from16 v21, v10

    move-object/from16 v1, v19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u7f3a\u5c11\u539f\u7248\u7075\u89e3\u914d\u7f6e"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_8
    move-object/from16 v28, v8

    move-object/from16 v21, v10

    :goto_9
    move-object/from16 v1, v19

    goto :goto_b

    .line 133
    :cond_11
    move-object/from16 v28, v8

    move-object v1, v9

    move-object/from16 v21, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u7075\u89e3\u8bad\u7ec3\u7c7b\u578b\u65e0\u6548"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_12
    move-object/from16 v28, v8

    move-object v1, v9

    move-object/from16 v21, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u672a\u62e5\u6709\u8be5\u795e\u5668\u4f7f"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_6

    .line 176
    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    :goto_a
    move-object/from16 v28, v8

    move-object v1, v9

    move-object/from16 v21, v10

    .line 177
    :goto_b
    new-instance v11, Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-object/from16 v2, p0

    invoke-direct {v11, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 178
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v21, v3, v16

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v3, "showMessageStr"

    invoke-virtual {v11, v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 179
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v12, v0, v16

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x2

    aput-object v28, v0, v3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "errId"

    aput-object v4, v3, v16

    const/16 v4, 0x261

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 181
    :goto_c
    return-object v11
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
