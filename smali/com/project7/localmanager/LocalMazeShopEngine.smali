.class final Lcom/project7/localmanager/LocalMazeShopEngine;
.super Ljava/lang/Object;
.source "LocalMazeShopEngine.java"


# static fields
.field static final METHODS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    const-string v0, "queryMazeState"

    const-string v1, "exchangeWCoinItem"

    const-string v2, "firstEnterMaze"

    const-string v3, "updateDancengAIFlag"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalMazeShopEngine;->METHODS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 20

    .line 48
    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    const-string v3, "wCoin"

    const-string v4, "grants"

    const-string v5, "cost"

    const-string v6, "exchangeWCoinItem"

    const-string v7, "d"

    const-string v8, "syncMazeData"

    const-string v9, "ifm"

    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 50
    const/4 v12, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalMazeShopEngine;->eligible([B)V

    .line 51
    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalMazeShopEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    move-object/from16 v16, v15

    move-wide/from16 v14, p5

    invoke-static {v10, v14, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->refresh([BJ)[B

    move-result-object v10

    .line 52
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 53
    const-string v11, "stype"

    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 54
    const-string v11, "MS"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v15, p1

    invoke-virtual {v15, v11, v14}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v11

    .line 55
    if-eqz v11, :cond_7

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v15, "valid"

    invoke-static {v11, v15}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 56
    invoke-static {v11, v5}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-lez v14, :cond_6

    invoke-static {v11, v4}, Lcom/project7/localmanager/LocalMazeShopEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 58
    const/4 v14, 0x3

    new-array v15, v14, [[Ljava/lang/String;

    const-string v14, "daily"

    const-string v13, "sd"

    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v13

    aput-object v13, v15, v12

    const-string v13, "weekly"

    const-string v14, "sw"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_10

    const/4 v14, 0x1

    :try_start_1
    aput-object v13, v15, v14
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_c

    :try_start_2
    const-string v13, "forever"

    const-string v14, "sf"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_10

    const/4 v14, 0x2

    :try_start_3
    aput-object v13, v15, v14
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_a

    move-object v13, v10

    move v10, v12

    :goto_0
    const/4 v14, 0x3

    if-ge v10, v14, :cond_3

    :try_start_4
    aget-object v18, v15, v10
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_10

    .line 59
    const/16 v17, 0x1

    :try_start_5
    aget-object v14, v18, v17
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalMazeShopEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v14
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_10

    .line 60
    :try_start_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v12, :cond_0

    :try_start_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    .line 86
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_10

    .line 60
    :cond_0
    const/4 v12, 0x0

    .line 61
    :goto_2
    move-object/from16 p4, v15

    const/16 v19, 0x0

    :try_start_9
    aget-object v15, v18, v19

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v15

    if-lez v15, :cond_2

    aget-object v15, v18, v19

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v15

    if-ge v12, v15, :cond_1

    goto :goto_3

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8be5\u5546\u54c1\u5df2\u8fbe\u5230\u5151\u6362\u4e0a\u9650"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_2

    move/from16 p5, v2

    const/4 v2, 0x1

    :try_start_a
    invoke-static {v12, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v14, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    aget-object v12, v18, v2

    invoke-static {v14}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v14

    invoke-static {v13, v12, v14}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v13

    .line 58
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v15, p4

    move/from16 v2, p5

    move/from16 v12, v19

    const/4 v14, 0x2

    goto :goto_0

    .line 86
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    :goto_4
    const/16 v19, 0x0

    :goto_5
    move/from16 v3, v19

    goto/16 :goto_10

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    :goto_6
    move v3, v12

    move/from16 v16, v17

    goto/16 :goto_b

    .line 66
    :cond_3
    move/from16 v19, v12

    const/4 v2, 0x1

    invoke-static {v11, v5}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v10

    .line 67
    if-lt v10, v5, :cond_5

    .line 68
    move-object/from16 v15, v16

    iget-object v12, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    sub-int/2addr v10, v5

    invoke-static {v12, v3, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    iput-object v3, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 69
    invoke-static {v11, v4}, Lcom/project7/localmanager/LocalMazeShopEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 70
    const-string v5, "k"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "i"

    .line 71
    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v5

    const-string v10, "n"

    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v14

    const-string v10, "q"

    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v4
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_8

    .line 70
    move-object v10, v15

    move-object/from16 v11, p2

    move-object/from16 p1, v3

    move/from16 v3, v19

    move/from16 v16, v2

    move-object v2, v13

    move v13, v5

    const/4 v5, 0x2

    move-object/from16 p5, v15

    move v15, v4

    :try_start_b
    invoke-static/range {v10 .. v15}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    move-object/from16 v15, p5

    move-object v13, v2

    move/from16 v19, v3

    move/from16 v2, v16

    move-object/from16 v3, p1

    goto :goto_7

    .line 72
    :cond_4
    move/from16 v16, v2

    move-object v2, v13

    move-object/from16 p5, v15

    move/from16 v3, v19

    const/4 v5, 0x2

    invoke-static/range {p5 .. p5}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 73
    move-object v10, v2

    goto/16 :goto_e

    .line 67
    :cond_5
    move/from16 v16, v2

    move/from16 v3, v19

    const/4 v5, 0x2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5de1\u903b\u5151\u6362\u5e01\u4e0d\u8db3"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    :goto_8
    move/from16 v16, v2

    move/from16 v3, v19

    goto :goto_b

    :catch_a
    move-exception v0

    goto :goto_9

    :catch_b
    move-exception v0

    :goto_9
    move v3, v12

    move v5, v14

    goto/16 :goto_11

    :catch_c
    move-exception v0

    goto :goto_a

    :catch_d
    move-exception v0

    :goto_a
    move v3, v12

    move/from16 v16, v14

    :goto_b
    const/4 v5, 0x2

    goto/16 :goto_12

    .line 56
    :cond_6
    move v3, v12

    const/4 v5, 0x2

    const/16 v16, 0x1

    goto :goto_c

    .line 55
    :cond_7
    move v3, v12

    const/4 v5, 0x2

    const/16 v16, 0x1

    .line 57
    :goto_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5de1\u903b\u5151\u6362\u5546\u54c1\u65e0\u6548"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_8
    move v3, v12

    move-object/from16 p5, v16

    const/4 v5, 0x2

    const/16 v16, 0x1

    const-string v4, "firstEnterMaze"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 74
    const-string v2, "fe"

    invoke-static {v10, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v10

    goto :goto_e

    .line 75
    :cond_9
    const-string v4, "updateDancengAIFlag"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 76
    const-string v4, "f"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_a

    .line 78
    const-string v4, "laf"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v10, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v10

    goto :goto_d

    .line 77
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5de1\u903b\u81ea\u52a8\u6218\u6597\u8bbe\u7f6e\u65e0\u6548"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_b
    const-string v2, "queryMazeState"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_d
    nop

    .line 82
    :goto_e
    move-object/from16 v2, p5

    iget-object v4, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 84
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v7, v4, v3

    aput-object v10, v4, v16

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 85
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "buyWMallItemDone"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "r"

    aput-object v6, v4, v3

    invoke-virtual {v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v6

    aput-object v6, v4, v16

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 90
    :cond_c
    move-object v15, v2

    goto :goto_13

    .line 80
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8be5\u5de1\u903b\u63a5\u53e3\u5c1a\u672a\u63a5\u5165"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_e

    .line 86
    :catch_e
    move-exception v0

    goto :goto_12

    :catch_f
    move-exception v0

    goto :goto_12

    :catch_10
    move-exception v0

    goto :goto_f

    :catch_11
    move-exception v0

    :goto_f
    move v3, v12

    :goto_10
    const/4 v5, 0x2

    :goto_11
    const/16 v16, 0x1

    .line 87
    :goto_12
    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 88
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v7, v2, v3

    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalMazeShopEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v2, v16

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v15, v8, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 89
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "m"

    aput-object v2, v1, v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v16

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v15, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 91
    :goto_13
    return-object v15
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static date(Ljava/util/Calendar;)I
    .locals 3

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    .line 24
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr v1, p0

    .line 23
    return v1
.end method

.method static eligible([B)V
    .locals 3

    .line 17
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMazeShopEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 18
    const-string v0, "w"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "d"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result p0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    .line 20
    :cond_0
    return-void

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u5de1\u903b\u4e0e\u65e0\u5c3d\u6311\u6218\u5c1a\u672a\u8fbe\u5230\u539f\u7248\u5468\u76ee\u5f00\u653e\u6761\u4ef6"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static refresh([BJ)[B
    .locals 5

    .line 28
    const-string v0, "sd"

    const-string v1, "sw"

    const-string v2, "sf"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 29
    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_0

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    .line 29
    :cond_0
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 32
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 33
    invoke-static {v2}, Lcom/project7/localmanager/LocalMazeShopEngine;->date(Ljava/util/Calendar;)I

    move-result p1

    const/4 p2, 0x7

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    add-int/2addr v3, v4

    rem-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    .line 34
    rsub-int/lit8 p2, v3, 0x1

    invoke-virtual {v2, v4, p2}, Ljava/util/Calendar;->add(II)V

    .line 35
    invoke-static {v2}, Lcom/project7/localmanager/LocalMazeShopEngine;->date(Ljava/util/Calendar;)I

    move-result p2

    .line 37
    const-string v2, "q7ShopDay"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-le p1, v4, :cond_2

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    .line 39
    :cond_2
    const-string v0, "q7ShopWeek"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-le p2, v4, :cond_3

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    .line 41
    :cond_3
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 42
    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMazeShopEngine;->v([BLjava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 43
    const-string p1, "wd"

    invoke-static {p0, p1, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
