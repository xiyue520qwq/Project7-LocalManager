.class final Lcom/project7/localmanager/LocalMazeBattleEngine;
.super Ljava/lang/Object;
.source "LocalMazeBattleEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 20

    .line 35
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    const-string v0, "lmmo"

    const-string v3, "nmmo"

    const-string v7, "d"

    const-string v8, "syncMazeData"

    const-string v9, "q7DailyFinish"

    const-string v10, "refreshNewModeState"

    const-string v11, "s"

    const-string v12, "q7DailyBattle"

    const-string v13, "ifm"

    const-string v14, "saoDangRequest"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalMazeSweepEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v14, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 38
    const/16 v16, 0x0

    :try_start_0
    const-string v15, "q7DailyReset"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 39
    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 40
    invoke-static {v4, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 41
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u53d6\u6d88\u8bf7\u6c42\u4e0e\u5f53\u524d\u5de1\u903b\u4e0d\u5339\u914d"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "refund"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 44
    :cond_3
    iget-object v0, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v0, v12, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto :goto_1

    .line 45
    :cond_4
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p2

    invoke-static {v14, v0, v4, v5, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->finish(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BJ)V

    :goto_1
    goto/16 :goto_4

    .line 46
    :cond_5
    const-string v15, "q7DailyBegin"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p1

    invoke-static {v14, v0, v4, v5, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->begin(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[BJ)V

    goto/16 :goto_4

    .line 47
    :cond_6
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 48
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalMazeShopEngine;->eligible([B)V

    .line 49
    const-string v15, "at"

    invoke-static {v4, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v15
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_6

    .line 50
    move-object/from16 v17, v11

    :try_start_1
    const-string v11, "st"

    invoke-static {v4, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 51
    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v5, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->refresh([BJ)[B

    move-result-object v4

    .line 52
    const-string v5, "moml"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 53
    const/4 v6, 0x1

    if-lt v15, v6, :cond_c

    const/4 v6, 0x3

    if-gt v15, v6, :cond_c

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-ltz v18, :cond_c

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 p2, v11

    const/4 v11, 0x1

    if-gt v6, v11, :cond_c

    .line 54
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x3

    if-ne v6, v11, :cond_b

    const/4 v6, 0x1

    sub-int/2addr v15, v6

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_b

    .line 56
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v5

    if-nez v5, :cond_a

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {v4, v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    .line 60
    move-object/from16 v18, v12

    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v19, v9

    const/4 v9, 0x3

    if-ne v12, v9, :cond_9

    :try_start_3
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v9, :cond_9

    .line 62
    move/from16 v12, v16

    :goto_2
    if-ge v12, v9, :cond_8

    if-ne v12, v15, :cond_7

    move-object/from16 v9, p2

    goto :goto_3

    :cond_7
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    :goto_3
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x3

    goto :goto_2

    .line 63
    :cond_8
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v15, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v4, v3, v5}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v3

    .line 65
    invoke-static {v3, v0, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 66
    iget-object v3, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v13, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 67
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v7, v4, v16

    const/4 v3, 0x1

    aput-object v0, v4, v3

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v14, v8, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 68
    nop

    .line 82
    :goto_4
    goto/16 :goto_c

    .line 61
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u5de1\u903b\u96be\u5ea6\u8bbe\u7f6e\u683c\u5f0f\u65e0\u6548"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_5
    move-object/from16 v19, v9

    goto :goto_a

    .line 56
    :cond_a
    move-object/from16 v19, v9

    move-object/from16 v18, v12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u65e5\u5e38\u6218\u6597\uff0c\u518d\u5207\u6362\u96be\u5ea6"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_b
    move-object/from16 v19, v9

    move-object/from16 v18, v12

    goto :goto_6

    .line 53
    :cond_c
    move-object/from16 v19, v9

    move-object/from16 v18, v12

    .line 55
    :goto_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u5de1\u903b\u96be\u5ea6\u9009\u62e9\u4e0d\u6ee1\u8db3\u539f\u7248\u5f00\u653e\u6761\u4ef6"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    :goto_7
    move-object/from16 v19, v9

    goto :goto_9

    .line 68
    :cond_d
    move-object/from16 v19, v9

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8054\u7f51\u65e0\u5c3d\u6311\u6218\u5c1a\u672a\u63a5\u5165\uff0c\u672a\u6263\u9664\u7cbe\u795e\u529b"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_4

    .line 69
    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    :goto_8
    move-object/from16 v19, v9

    move-object/from16 v17, v11

    :goto_9
    move-object/from16 v18, v12

    .line 70
    :goto_a
    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v14, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 71
    invoke-static {v14, v2}, Lcom/project7/localmanager/LocalDailyEngine;->roomFailure(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 73
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v7, v4, v16

    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v14, v8, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_b

    .line 72
    :cond_e
    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 74
    :goto_b
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "m"

    aput-object v4, v3, v16

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v3, "showMessageStr"

    invoke-virtual {v14, v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 75
    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 76
    move-object/from16 v2, v18

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 77
    const/4 v1, 0x7

    move-object/from16 v2, p4

    move-object/from16 v3, v17

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 78
    const-string v4, "h"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 79
    const-string v6, "rt"

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const-string v8, "hard"

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalMazeBattleEngine;->reward(Ljava/util/List;)[B

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/LocalMazeBattleEngine;->reward(Ljava/util/List;)[B

    move-result-object v8

    .line 79
    invoke-static {v6, v0, v7, v8}, Lcom/project7/localmanager/LocalMazeBattleEngine;->result(II[B[B)[B

    move-result-object v0

    .line 77
    move/from16 p0, v1

    move/from16 p1, v3

    move-object/from16 p2, v2

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v0

    invoke-static/range {p0 .. p5}, Lcom/project7/localmanager/BsonLite;->combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I[B)[B

    move-result-object v0

    const-string v1, "combatOfflineReward"

    invoke-virtual {v14, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 83
    :cond_f
    :goto_c
    return-object v14
.end method

.method private static begin(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[BJ)V
    .locals 47

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    const-string v5, "s"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v6

    const-string v7, "d"

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "hard_level"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    const-string v11, "reward_type"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v10

    .line 137
    const-string v12, "h"

    invoke-static {v2, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 138
    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v15, "q7DailyBattle"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    .line 139
    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v15

    move-object/from16 v17, v11

    const-string v11, "rt"

    move-object/from16 v18, v9

    const-string v9, "hard"

    const-string v3, "t"

    const/4 v4, 0x7

    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 139
    if-eqz v15, :cond_1

    .line 140
    invoke-static {v14, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-static {v14, v5}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-static {v14, v9}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 141
    invoke-static {v14, v11}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-static {v14, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u65e5\u5e38\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14}, Lcom/project7/localmanager/LocalMazeShopEngine;->eligible([B)V

    .line 145
    const-string v14, "MP"

    invoke-virtual {v1, v14, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v4, "ML"

    invoke-virtual {v1, v4, v15}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v19, v2

    const-string v2, ":"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "MR"

    invoke-virtual {v1, v15, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    .line 146
    if-eqz v14, :cond_16

    const-string v15, "scene"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v15

    if-ne v6, v15, :cond_16

    if-eqz v4, :cond_16

    if-eqz v2, :cond_16

    const/4 v15, 0x1

    if-lt v10, v15, :cond_16

    const/4 v15, 0x3

    if-gt v10, v15, :cond_16

    .line 147
    move-object/from16 v15, p2

    invoke-static {v15, v7}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    move-object/from16 v21, v3

    const-string v3, "mission_mode"

    invoke-static {v15, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/16 v15, 0xc

    if-ne v3, v15, :cond_16

    .line 149
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    const/4 v15, 0x3

    if-ne v3, v15, :cond_15

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v3, v15, :cond_15

    .line 151
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v3, v22

    goto :goto_0

    .line 152
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f7f\u7528\u5df2\u62e5\u6709\u7684\u795e\u5668\u4f7f\u51fa\u6218"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_3
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v15, "q7Battle"

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 154
    move-object/from16 v22, v7

    const-string v7, "combat"

    invoke-static {v15, v7}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    const-string v15, "of"

    invoke-static {v7, v15}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 156
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v7, "ifm"

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    move-object v15, v11

    move-object/from16 v23, v12

    move-wide/from16 v11, p3

    invoke-static {v3, v11, v12}, Lcom/project7/localmanager/LocalMazeBattleEngine;->refresh([BJ)[B

    move-result-object v3

    move-object/from16 v24, v9

    const-string v9, "wd"

    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v25, v15

    const-string v15, "MW"

    invoke-virtual {v1, v15, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v9

    .line 157
    const-string v15, "moml"

    invoke-static {v3, v15}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 158
    move-object/from16 v26, v13

    iget-object v13, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move/from16 v27, v6

    const-string v6, "level"

    invoke-static {v13, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v13

    move-object/from16 v28, v6

    const-string v6, "level_limit"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-lt v13, v6, :cond_13

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    const/4 v13, 0x3

    if-ne v6, v13, :cond_13

    const/16 v6, 0xa

    if-gt v8, v6, :cond_4

    add-int/lit8 v13, v10, -0x1

    .line 159
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-gt v8, v13, :cond_13

    :cond_4
    if-le v8, v6, :cond_5

    add-int/lit8 v13, v10, -0x1

    .line 160
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v13, v6, :cond_13

    .line 162
    :cond_5
    if-le v8, v6, :cond_7

    .line 163
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "MH"

    invoke-virtual {v1, v15, v13}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v13

    .line 164
    if-eqz v13, :cond_6

    const-string v15, "badge"

    invoke-static {v13, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v15

    if-lez v15, :cond_6

    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 165
    const-string v6, "bgd"

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    const-string v15, "cb"

    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v6

    const-string v15, "badge"

    invoke-static {v13, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    .line 166
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5c1a\u672a\u83b7\u5f97\u8be5\u56f0\u96be\u5de1\u903b\u8981\u6c42\u7684\u7eaa\u5ff5\u7ae0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_7
    :goto_1
    const-string v6, "types"

    invoke-static {v9, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "ocl"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v6

    const-string v13, "limit"

    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-ge v6, v9, :cond_12

    .line 170
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v6, "MG"

    invoke-virtual {v1, v6, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    const-string v9, "layouts"

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v6

    .line 171
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    .line 172
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 173
    const-string v9, "valid_points"

    invoke-static {v6, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 174
    const-string v13, "iindex"

    invoke-static {v6, v13}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v13

    const-string v15, "oindex"

    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v6

    .line 175
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v29, v5

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v30, v3

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v31, v7

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 176
    move-object/from16 v32, v14

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 177
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v33, v10

    const-string v10, "MX"

    invoke-virtual {v1, v10, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 178
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 179
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    invoke-static {v10}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 181
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/16 v34, 0x0

    move/from16 v36, v8

    move-object/from16 v35, v9

    move/from16 v8, v34

    move v9, v8

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    const/16 v38, 0x8

    const/16 v39, 0x5

    move-object/from16 v40, v12

    if-eqz v37, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 182
    move-object/from16 v37, v10

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 183
    nop

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v41

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v42

    .line 186
    if-ne v12, v13, :cond_8

    move/from16 v43, v13

    move/from16 v12, v34

    move-object/from16 v38, v42

    const/4 v13, 0x2

    move-object/from16 v46, v41

    move/from16 v41, v6

    move-object/from16 v6, v46

    goto/16 :goto_5

    .line 187
    :cond_8
    if-ne v12, v6, :cond_9

    .line 188
    nop

    .line 189
    const-string v12, "exits"

    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v12

    .line 190
    move/from16 v41, v6

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    move/from16 v43, v13

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 191
    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    const-string v12, "list"

    aput-object v12, v13, v34

    const/4 v12, 0x1

    aput-object v6, v13, v12

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    const-string v12, "list"

    invoke-static {v6, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 192
    const-string v12, "boss"

    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalMazeBattleEngine;->rolls([BLjava/lang/String;)Ljava/util/List;

    move-result-object v42

    .line 193
    move-object/from16 v38, v42

    const/4 v12, 0x3

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_9
    move/from16 v41, v6

    move/from16 v43, v13

    const-string v6, "reward_max"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-ge v9, v6, :cond_b

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-string v6, "reward_prob"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->probability([BLjava/lang/String;)D

    move-result-wide v44

    cmpg-double v6, v12, v44

    if-gez v6, :cond_b

    .line 194
    add-int/lit8 v9, v9, 0x1

    .line 195
    if-eqz v0, :cond_a

    invoke-static {v4, v1}, Lcom/project7/localmanager/LocalMazeExtras;->coreRoom([BLjava/util/Random;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 196
    nop

    .line 197
    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalMazeExtras;->cores([B[B)[B

    move-result-object v6

    .line 198
    invoke-interface {v14, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {v6}, Lcom/project7/localmanager/LocalMazeExtras;->previews([B)[B

    move-result-object v6

    .line 200
    move/from16 v13, v38

    goto :goto_3

    :cond_a
    const-string v6, "box"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->rolls([BLjava/lang/String;)Ljava/util/List;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/project7/localmanager/LocalMazeBattleEngine;->reward(Ljava/util/List;)[B

    move-result-object v6

    move/from16 v13, v39

    :goto_3
    move-object/from16 v38, v42

    const/4 v12, 0x1

    goto :goto_5

    .line 202
    :cond_b
    nop

    .line 203
    const-string v6, "elite_max"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-ge v8, v6, :cond_c

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-string v6, "elite_prob"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->probability([BLjava/lang/String;)D

    move-result-wide v38

    cmpg-double v6, v12, v38

    if-gez v6, :cond_c

    .line 204
    add-int/lit8 v8, v8, 0x1

    const-string v6, "elite"

    const/4 v12, 0x2

    const/4 v13, 0x3

    goto :goto_4

    .line 206
    :cond_c
    const-string v6, "normal"

    const/4 v12, 0x4

    const/4 v13, 0x1

    :goto_4
    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v38

    move/from16 v39, v8

    invoke-static/range {v38 .. v38}, Lcom/project7/localmanager/LocalMazeBattleEngine;->choose(Ljava/util/List;)[B

    move-result-object v8

    move/from16 v42, v9

    const-string v9, "i"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 207
    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->rolls([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v38, v6

    move-object v6, v8

    move/from16 v8, v39

    move/from16 v9, v42

    .line 209
    :goto_5
    move/from16 v39, v8

    move/from16 v42, v9

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v34

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v13, 0x1

    aput-object v8, v9, v13

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v15, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static/range {v38 .. v38}, Lcom/project7/localmanager/LocalMazeBattleEngine;->reward(Ljava/util/List;)[B

    move-result-object v6

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v38

    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    if-eqz v0, :cond_f

    const/4 v6, 0x2

    if-eq v12, v6, :cond_e

    const/4 v6, 0x3

    if-eq v12, v6, :cond_e

    const/4 v6, 0x4

    if-ne v12, v6, :cond_d

    goto :goto_6

    :cond_d
    move-object/from16 v8, v40

    goto :goto_7

    .line 212
    :cond_e
    :goto_6
    invoke-static {v2, v0, v1}, Lcom/project7/localmanager/LocalMazeExtras;->breakables([B[BLjava/util/Random;)[B

    move-result-object v6

    .line 213
    invoke-interface {v11, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {v6}, Lcom/project7/localmanager/LocalMazeExtras;->previews([B)[B

    move-result-object v6

    move-object/from16 v8, v40

    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 211
    :cond_f
    move-object/from16 v8, v40

    .line 216
    :goto_7
    move-object v12, v8

    move-object/from16 v10, v37

    move/from16 v8, v39

    move/from16 v6, v41

    move/from16 v9, v42

    move/from16 v13, v43

    goto/16 :goto_2

    .line 217
    :cond_10
    move/from16 v41, v6

    move/from16 v43, v13

    move-object/from16 v8, v40

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "maze_type"

    aput-object v1, v0, v34

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    const/4 v1, 0x2

    aput-object v18, v0, v1

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v0, v6

    const/4 v1, 0x4

    aput-object v17, v0, v1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v39

    const/4 v1, 0x6

    const-string v6, "armor_types"

    aput-object v6, v0, v1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x7

    aput-object v1, v0, v6

    const-string v1, "valid_points"

    aput-object v1, v0, v38

    const/16 v1, 0x9

    aput-object v35, v0, v1

    const-string v1, "iindex"

    const/16 v6, 0xa

    aput-object v1, v0, v6

    const/16 v1, 0xb

    .line 218
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    const-string v1, "oindex"

    const/16 v6, 0xc

    aput-object v1, v0, v6

    const/16 v1, 0xd

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    const/16 v1, 0xe

    const-string v6, "battle_type"

    aput-object v6, v0, v1

    const/16 v1, 0xf

    invoke-static {v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->document(Ljava/util/Map;)[B

    move-result-object v6

    aput-object v6, v0, v1

    const/16 v1, 0x10

    const-string v6, "monsters"

    aput-object v6, v0, v1

    const/16 v1, 0x11

    invoke-static {v5}, Lcom/project7/localmanager/LocalMazeBattleEngine;->document(Ljava/util/Map;)[B

    move-result-object v5

    aput-object v5, v0, v1

    const/16 v1, 0x12

    const-string v5, "point_rewards"

    aput-object v5, v0, v1

    const/16 v1, 0x13

    .line 219
    invoke-static {v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->document(Ljava/util/Map;)[B

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v3, "used_heroes"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v3, v0, v1

    const/16 v1, 0x16

    const-string v3, "breakables"

    aput-object v3, v0, v1

    const/16 v1, 0x17

    invoke-static {v8}, Lcom/project7/localmanager/LocalMazeBattleEngine;->document(Ljava/util/Map;)[B

    move-result-object v3

    aput-object v3, v0, v1

    .line 217
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 220
    const-string v1, "passed"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    .line 221
    invoke-static {v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->reward(Ljava/util/List;)[B

    .line 222
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-wide/from16 v5, p3

    move-object v8, v11

    invoke-static {v3, v5, v6}, Lcom/project7/localmanager/LocalServiceEngine;->recover([BJ)[B

    move-result-object v3

    iput-object v3, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 223
    const-string v3, "consume"

    move-object/from16 v5, v32

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v6

    neg-int v6, v6

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 224
    iget-object v6, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v9, v30

    move-object/from16 v10, v31

    invoke-static {v6, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v6

    iput-object v6, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 225
    iget-object v6, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v10, 0x24

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "active"

    aput-object v11, v10, v34

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v21, v10, v11

    .line 226
    const/4 v11, 0x3

    aput-object v19, v10, v11

    const/4 v11, 0x4

    aput-object v29, v10, v11

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v39

    const/4 v11, 0x6

    aput-object v23, v10, v11

    const/4 v11, 0x7

    aput-object v26, v10, v11

    aput-object v25, v10, v38

    const/16 v11, 0x9

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    aput-object v24, v10, v11

    const/16 v11, 0xb

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const-string v11, "day"

    const/16 v12, 0xc

    aput-object v11, v10, v12

    const/16 v11, 0xd

    const-string v12, "q7MazeDay"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xe

    const-string v12, "wishCost"

    aput-object v12, v10, v11

    const/16 v11, 0xf

    .line 227
    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x10

    const-string v12, "wishFailCost"

    aput-object v12, v10, v11

    const/16 v11, 0x11

    const-string v12, "fail_consume"

    invoke-static {v5, v12}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x12

    const-string v12, "refund"

    aput-object v12, v10, v11

    const/16 v11, 0x13

    .line 228
    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v12, "fail_consume"

    invoke-static {v5, v12}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v11

    const/16 v3, 0x14

    const-string v5, "maze"

    aput-object v5, v10, v3

    const/16 v3, 0x15

    aput-object v0, v10, v3

    const/16 v0, 0x16

    const-string v3, "grants"

    aput-object v3, v10, v0

    const/16 v0, 0x17

    invoke-static {v7}, Lcom/project7/localmanager/LocalMazeBattleEngine;->document(Ljava/util/Map;)[B

    move-result-object v3

    aput-object v3, v10, v0

    const/16 v0, 0x18

    const-string v3, "coreGrants"

    aput-object v3, v10, v0

    const/16 v0, 0x19

    .line 229
    invoke-static {v14}, Lcom/project7/localmanager/LocalMazeBattleEngine;->document(Ljava/util/Map;)[B

    move-result-object v3

    aput-object v3, v10, v0

    const/16 v0, 0x1a

    const-string v3, "breakableGrants"

    aput-object v3, v10, v0

    const/16 v0, 0x1b

    invoke-static {v8}, Lcom/project7/localmanager/LocalMazeBattleEngine;->document(Ljava/util/Map;)[B

    move-result-object v3

    aput-object v3, v10, v0

    const/16 v0, 0x1c

    const-string v3, "passed"

    aput-object v3, v10, v0

    const/16 v0, 0x1d

    aput-object v1, v10, v0

    const/16 v0, 0x1e

    const-string v1, "lv"

    aput-object v1, v10, v0

    const/16 v0, 0x1f

    iget-object v1, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 230
    move-object/from16 v3, v28

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v0

    const/16 v0, 0x20

    const-string v1, "ml"

    aput-object v1, v10, v0

    const/16 v0, 0x21

    const-string v1, "monster_level"

    invoke-static {v4, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v0

    const/16 v0, 0x22

    const-string v1, "f"

    aput-object v1, v10, v0

    const/16 v0, 0x23

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 225
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v6, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 231
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v22, v0, v34

    const/4 v1, 0x1

    aput-object v9, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "syncMazeData"

    invoke-virtual {v2, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 232
    return-void

    .line 171
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u5de1\u903b\u5730\u56fe"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u7c7b\u578b\u4eca\u65e5\u672a\u5f00\u653e\u6216\u5de1\u903b\u6b21\u6570\u5df2\u7528\u5c3d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u8fbe\u5230\u7b49\u7ea7\u8981\u6c42\u5e76\u5b8c\u6210\u524d\u4e00\u6863\u5de1\u903b"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u4e3b\u7ebf\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5de1\u903b\u9700\u8981\u4e09\u540d\u4e0d\u540c\u7684\u795e\u5668\u4f7f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5de1\u903b\u573a\u666f\u3001\u96be\u5ea6\u6216\u5956\u52b1\u7c7b\u578b\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "city"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 87
    const-string v2, "jpv"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p1

    .line 88
    if-ltz p1, :cond_0

    .line 89
    invoke-static {v0, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 91
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "p"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, "t"

    aput-object v2, v1, p1

    const/4 p1, 0x3

    const-string v2, "jpvt"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x4

    const-string v2, "cjsla"

    aput-object v2, v1, p1

    const/4 p1, 0x5

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "syncJingshenliPower"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 92
    return-void

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7cbe\u795e\u529b\u4e0d\u8db3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static choose(Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 94
    nop

    .line 95
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "w"

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 96
    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 97
    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v3

    .line 98
    goto :goto_0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u5de1\u903b\u6743\u91cd\u65e0\u6548"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    .line 100
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    long-to-double v2, v3

    mul-double/2addr v0, v2

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_2

    return-object v3

    .line 102
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 99
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u7f3a\u5c11\u5de1\u903b\u968f\u673a\u6c60"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static document(Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
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

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private static finish(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BJ)V
    .locals 31

    .line 237
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "q7DailyBattle"

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    .line 238
    const-string v0, "h"

    invoke-static {v7, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 239
    const-string v1, "t"

    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_11

    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_11

    const-string v10, "s"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 240
    invoke-static {v9, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 242
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v0

    const-string v15, "combatOfflineReward"

    const-string v16, "d"

    const-string v14, "syncMazeData"

    const/4 v13, 0x2

    const-string v11, "reply"

    const-string v5, "ifm"

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 243
    invoke-static {v9, v11}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    new-array v0, v13, [Ljava/lang/Object;

    aput-object v16, v0, v4

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v6, v14, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 245
    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v15, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 247
    :cond_0
    return-void

    .line 249
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/BsonLite;->combatWinValue([B)I

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v17, v3

    goto :goto_0

    :cond_2
    move/from16 v17, v4

    .line 250
    :goto_0
    const-string v0, "e"

    invoke-static {v7, v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "maze"

    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 251
    const-string v2, "maze_type"

    const-string v3, "hard_level"

    const-string v4, "reward_type"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 252
    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ne v4, v3, :cond_4

    goto :goto_1

    .line 253
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5de1\u903b\u7ed3\u7b97\u96be\u5ea6\u6216\u7c7b\u578b\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_5
    const-string v2, "point_clear"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "valid_points"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 255
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ne v4, v13, :cond_10

    invoke-interface {v3, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v17, :cond_6

    .line 256
    const-string v3, "oindex"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 258
    :cond_6
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalMazeExtras;->collected([B[B)Ljava/util/List;

    move-result-object v0

    .line 260
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    move-object/from16 v22, v14

    move-object/from16 v21, v15

    move-wide/from16 v14, p3

    invoke-static {v1, v14, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->refresh([BJ)[B

    move-result-object v14

    .line 261
    const-string v15, "hard"

    const-string v3, "rt"

    if-eqz v17, :cond_f

    .line 262
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 p3, v1

    const-string v1, "grants"

    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v1, p3

    goto :goto_2

    .line 263
    :cond_7
    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    const-string v0, "passed"

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/util/List;

    const/16 v19, 0x0

    aput-object v13, v0, v19

    const/16 v18, 0x1

    aput-object v4, v0, v18

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 266
    const-string v1, "k"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v1, "i"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v25

    const-string v1, "n"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v26

    const-string v1, "q"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v28, v2

    move-object/from16 v2, v24

    move-object/from16 v24, v11

    move-object v11, v3

    move/from16 v30, v18

    move-object/from16 v18, v8

    move/from16 v8, v30

    move/from16 v3, v25

    move-object/from16 v19, v4

    move/from16 v4, v26

    move-object/from16 v29, v5

    move/from16 v5, v27

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    move-object v3, v11

    move-object/from16 v4, v19

    move-object/from16 v11, v24

    move/from16 v2, v28

    move-object/from16 v5, v29

    const/16 v19, 0x0

    move-object/from16 v30, v18

    move/from16 v18, v8

    move-object/from16 v8, v30

    goto :goto_4

    .line 265
    :cond_8
    move/from16 v28, v2

    move-object/from16 v19, v4

    move-object/from16 v29, v5

    move-object/from16 v24, v11

    move-object v11, v3

    move/from16 v30, v18

    move-object/from16 v18, v8

    move/from16 v8, v30

    move-object/from16 v11, v24

    const/16 v19, 0x0

    move-object/from16 v30, v18

    move/from16 v18, v8

    move-object/from16 v8, v30

    goto :goto_3

    .line 267
    :cond_9
    move/from16 v28, v2

    move-object/from16 v19, v4

    move-object/from16 v29, v5

    move-object/from16 v24, v11

    move-object v11, v3

    move/from16 v30, v18

    move-object/from16 v18, v8

    move/from16 v8, v30

    const-string v0, "q7MazeDay"

    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    const-string v1, "day"

    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 268
    const-string v0, "ocl"

    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1, v8}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    invoke-static {v14, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v14

    .line 269
    :cond_a
    const-string v0, "moml"

    const-string v1, "noml"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 270
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v14, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 272
    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v8

    .line 273
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v9, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v20

    move-object/from16 p3, v1

    add-int/lit8 v1, v20, 0x1

    const/16 v8, 0xa

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-static {v14, v2, v5}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v14

    .line 275
    move-object/from16 v1, p3

    const/4 v8, 0x1

    goto :goto_5

    .line 271
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5de1\u903b\u8fdb\u5ea6\u683c\u5f0f\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_c
    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 277
    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v4, v29

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0xa

    if-ge v2, v5, :cond_e

    .line 278
    invoke-static {v14, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v5, :cond_e

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "nmmo"

    invoke-static {v14, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_d

    .line 281
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {v14, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    move-object v14, v0

    goto :goto_6

    .line 280
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5de1\u903b\u96be\u5ea6\u63d0\u793a\u683c\u5f0f\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_e
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 285
    goto :goto_7

    :cond_f
    move-object/from16 v19, v4

    move-object v4, v5

    move-object/from16 v18, v8

    move-object/from16 v24, v11

    const/16 v28, 0x2

    move-object v11, v3

    const-string v0, "refund"

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v6, v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    :goto_7
    move-object v0, v14

    .line 286
    const/4 v1, 0x7

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 287
    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v9, v15}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v7

    invoke-static/range {v19 .. v19}, Lcom/project7/localmanager/LocalMazeBattleEngine;->reward(Ljava/util/List;)[B

    move-result-object v8

    invoke-static {v13}, Lcom/project7/localmanager/LocalMazeBattleEngine;->reward(Ljava/util/List;)[B

    move-result-object v10

    invoke-static {v5, v7, v8, v10}, Lcom/project7/localmanager/LocalMazeBattleEngine;->result(II[B[B)[B

    move-result-object v15

    .line 286
    move v10, v1

    move-object/from16 v1, v24

    move v11, v2

    move/from16 v2, v28

    move-object v13, v3

    move-object/from16 v3, v22

    move/from16 v14, v17

    move-object/from16 v5, v21

    invoke-static/range {v10 .. v15}, Lcom/project7/localmanager/BsonLite;->combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I[B)[B

    move-result-object v7

    .line 288
    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 289
    const-string v4, "active"

    const/4 v8, 0x0

    invoke-static {v9, v4, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    invoke-static {v4, v1, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 290
    iget-object v4, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v9, v18

    invoke-static {v4, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 291
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v16, v1, v8

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 292
    invoke-virtual {v6, v5, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 293
    return-void

    .line 257
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u5de1\u903b\u51fa\u53e3\u5b8c\u6210\u8bb0\u5f55"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5de1\u903b\u7ed3\u7b97\u4e0e\u5165\u573a\u8bb0\u5f55\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static handles([BLjava/lang/String;[B)Z
    .locals 3

    .line 10
    const-string v0, "mazeBattleOnlineRequest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "refreshNewModeState"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "saoDangRequest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    const-string v0, "q7DailyBegin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x7

    const-string v2, "t"

    if-nez v0, :cond_0

    const-string v0, "q7DailyFinish"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_3

    .line 12
    :cond_1
    const-string p2, "q7DailyReset"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "q7DailyBattle"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 10
    :goto_1
    return p0
.end method

.method static probability([BLjava/lang/String;)D
    .locals 1

    .line 124
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->messagePackValue([BZ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 125
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    .line 126
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7f3a\u5c11\u5de1\u903b\u623f\u95f4\u6982\u7387"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static refresh([BJ)[B
    .locals 6

    .line 15
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalMazeShopEngine;->refresh([BJ)[B

    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/project7/localmanager/LocalMazeSweepEngine;->refresh([B)[B

    move-result-object p0

    .line 17
    const-string p1, "q7ShopDay"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result p1

    .line 18
    const-string p2, "q7MazeDay"

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 18
    if-lez v0, :cond_0

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 19
    const-string v0, "ocl"

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v3, "odcd"

    invoke-static {p0, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v3, "ocdd"

    invoke-static {p0, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    .line 23
    :cond_0
    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 24
    const-string p1, "moml"

    const-string p2, "noml"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 25
    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_1

    .line 26
    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object p0

    .line 25
    :cond_1
    goto :goto_0

    .line 27
    :cond_2
    const-string p1, "nmmo"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_3

    .line 28
    new-array p2, v3, [Ljava/lang/Integer;

    aput-object v2, p2, v1

    aput-object v2, p2, v4

    aput-object v2, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object p0

    .line 29
    :cond_3
    const-string p1, "lmmo"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_4

    .line 30
    new-array p2, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, p2, v1

    aput-object v2, p2, v4

    aput-object v2, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    .line 31
    :cond_4
    return-object p0
.end method

.method static result(II[B[B)[B
    .locals 3

    .line 234
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "reward_type"

    aput-object v2, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "hard_level"

    aput-object v1, v0, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const/4 p0, 0x4

    const-string p1, "pass_rewards"

    aput-object p1, v0, p0

    const/4 p0, 0x5

    aput-object p2, v0, p0

    const/4 p0, 0x6

    const-string p1, "other_rewards"

    aput-object p1, v0, p0

    const/4 p0, 0x7

    aput-object p3, v0, p0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static reward(Ljava/util/List;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "summonCoin"

    const-string v4, "wCoin"

    const-string v5, "item"

    const-string v6, "money"

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 114
    const-string v8, "k"

    invoke-static {v2, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 115
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v9, "n"

    if-eqz v5, :cond_0

    const-string v3, "i"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 116
    :cond_0
    filled-new-array {v6, v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_1
    goto :goto_0

    .line 118
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5de1\u903b\u5956\u52b1\u7c7b\u578b\u5c1a\u672a\u652f\u6301\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_2
    const/16 p0, 0x8

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v5, p0, v7

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    aput-object v0, p0, v2

    const/4 v0, 0x2

    aput-object v6, p0, v0

    const/4 v0, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p0, v0

    const/4 v0, 0x4

    const-string v2, "wcoin"

    aput-object v2, p0, v0

    const/4 v0, 0x5

    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p0, v0

    const/4 v0, 0x6

    const-string v2, "summoncoin"

    aput-object v2, p0, v0

    const/4 v0, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    .line 120
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static rolls([BLjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 107
    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->choose(Ljava/util/List;)[B

    move-result-object p1

    const-string v1, "g"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 108
    :cond_0
    return-object v0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
