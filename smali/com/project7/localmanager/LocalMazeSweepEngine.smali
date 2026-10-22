.class final Lcom/project7/localmanager/LocalMazeSweepEngine;
.super Ljava/lang/Object;
.source "LocalMazeSweepEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 38

    .line 25
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p4

    const-string v4, "level"

    const-string v5, "sc"

    const-string v6, "mc"

    const-string v7, "acl"

    const-string v8, "ifm"

    const-string v9, "consume"

    const-string v10, "show_result"

    const-string v11, "saoDangReply"

    const-string v12, "MQ"

    const-string v13, "result"

    const-string v14, "nandu"

    const-string v15, "max_level"

    move-object/from16 v22, v11

    new-instance v11, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v11, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 26
    move-object/from16 v23, v10

    const-string v10, "n"

    move-object/from16 v24, v13

    move-object/from16 v13, p3

    invoke-static {v13, v10}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v13

    .line 28
    const/16 v25, 0x4

    const/16 v26, 0x3

    move-object/from16 v27, v10

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalMazeShopEngine;->eligible([B)V

    .line 29
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v12, v10}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    .line 30
    if-eqz v10, :cond_b

    move-object/from16 v28, v11

    const/4 v11, 0x1

    if-lt v13, v11, :cond_b

    const-string v11, "max_nandu"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-gt v13, v11, :cond_b

    invoke-static {v10, v15}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v11

    move-object/from16 v16, v4

    const/4 v4, 0x5

    if-ne v11, v4, :cond_b

    .line 31
    invoke-static {v10, v9}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_a

    .line 33
    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalMazeSweepEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->refresh([BJ)[B

    move-result-object v4

    .line 34
    invoke-static {v10, v15}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v4, v13, v11}, Lcom/project7/localmanager/LocalMazeSweepEngine;->cleared([BII)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 36
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v11

    if-nez v11, :cond_8

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v29, v8

    const-string v8, "combat"

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalMazeSweepEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    move-object/from16 v17, v9

    const-string v9, "of"

    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "q7Battle"

    .line 37
    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalMazeSweepEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "ash"

    .line 38
    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalMazeSweepEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 40
    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v11

    .line 41
    move-object/from16 v30, v5

    const-string v5, "ticket_cost"

    invoke-static {v10, v5}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v5

    move-object/from16 v31, v6

    const-string v6, "sweep_cost"

    invoke-static {v10, v6}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v6

    move-object/from16 v32, v4

    const-string v4, "limit"

    invoke-static {v10, v4}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 42
    if-ltz v8, :cond_5

    if-gt v8, v4, :cond_5

    if-ltz v9, :cond_5

    if-ltz v11, :cond_5

    if-lez v5, :cond_5

    if-ltz v6, :cond_5

    if-ltz v4, :cond_5

    .line 44
    sub-int/2addr v4, v8

    move-object/from16 v33, v7

    const/4 v7, 0x0

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v5, v4

    .line 45
    if-gt v5, v9, :cond_4

    if-gt v6, v11, :cond_4

    .line 47
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    move/from16 v34, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_6

    .line 50
    move-object/from16 v35, v14

    const/4 v14, 0x1

    :goto_0
    move/from16 v36, v11

    :try_start_1
    invoke-static {v10, v15}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-gt v14, v11, :cond_2

    .line 51
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v37, v13

    :try_start_2
    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v12, v11}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v11

    .line 52
    if-eqz v11, :cond_1

    .line 53
    move-object/from16 v13, v16

    invoke-static {v11, v13}, Lcom/project7/localmanager/LocalMazeBattleEngine;->rolls([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 54
    move-object/from16 v16, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v13

    invoke-static {v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->reward(Ljava/util/List;)[B

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    invoke-static {v10, v15}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v14, v0, :cond_0

    .line 57
    const-string v0, "passed"

    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->rolls([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 58
    const-string v11, "pass_rewards"

    invoke-static {v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->reward(Ljava/util/List;)[B

    move-result-object v12

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    :cond_0
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v12, v16

    move-object/from16 v16, v18

    move/from16 v11, v36

    move/from16 v13, v37

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u7f3a\u5c11\u539f\u7248\u65e0\u5c3d\u6311\u6218\u626b\u8361\u5956\u52b1"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    move/from16 v37, v13

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/LocalServiceEngine;->recover([BJ)[B

    move-result-object v0

    move-object/from16 v11, v28

    iput-object v0, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 63
    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v0

    neg-int v0, v0

    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 64
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const-string v10, "k"

    invoke-static {v6, v10}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v10, "i"

    .line 65
    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v19

    move-object/from16 v10, v27

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v20

    const-string v12, "q"

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v21

    .line 64
    move-object/from16 v16, v11

    move-object/from16 v17, p2

    invoke-static/range {v16 .. v21}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    move-object/from16 v27, v10

    goto :goto_1

    .line 66
    :cond_3
    move-object/from16 v10, v27

    invoke-static {v8, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    move-object/from16 v4, v32

    move-object/from16 v6, v33

    invoke-static {v4, v6, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 67
    sub-int/2addr v9, v5

    move-object/from16 v4, v31

    invoke-static {v0, v4, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 68
    sub-int v4, v36, v34

    move-object/from16 v5, v30

    invoke-static {v0, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 69
    iget-object v4, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v5, v29

    invoke-static {v4, v5, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 70
    invoke-static {v7}, Lcom/project7/localmanager/LocalMazeBattleEngine;->document(Ljava/util/Map;)[B

    move-result-object v4

    .line 71
    iget-object v5, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "q7MazeSweep"

    const/4 v7, 0x6

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v8, v7

    .line 72
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    const/4 v7, 0x2

    aput-object v24, v8, v7

    aput-object v4, v8, v26

    const-string v7, "at"

    aput-object v7, v8, v25

    const-wide/16 v9, 0x3e8

    div-long/2addr v2, v9

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v8, v3

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 71
    invoke-static {v5, v6, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 73
    invoke-static {v11}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 74
    const-string v2, "syncMazeData"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const-string v3, "d"

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v0, v5, v3

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v11, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 75
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v23, v0, v2

    const/4 v2, 0x1

    aput-object v4, v0, v2

    const/4 v2, 0x2

    aput-object v35, v0, v2

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v26

    aput-object v24, v0, v25

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v2, 0x5

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v2, v22

    :try_start_3
    invoke-virtual {v11, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 81
    goto/16 :goto_8

    .line 76
    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    move/from16 v37, v13

    goto/16 :goto_6

    .line 45
    :cond_4
    move/from16 v37, v13

    move-object/from16 v35, v14

    move-object/from16 v2, v22

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u65e0\u5c3d\u6311\u6218\u6b21\u6570\u6216\u626b\u8361\u5238\u4e0d\u8db3\uff0c\u672a\u6d88\u8017\u8d44\u6e90"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_5
    move/from16 v37, v13

    move-object/from16 v35, v14

    move-object/from16 v2, v22

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u65e0\u5c3d\u6311\u6218\u6b21\u6570\u6216\u8d39\u7528\u8bb0\u5f55\u65e0\u6548"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_6
    move/from16 v37, v13

    move-object/from16 v35, v14

    move-object/from16 v2, v22

    goto :goto_3

    .line 37
    :cond_7
    move/from16 v37, v13

    move-object/from16 v35, v14

    move-object/from16 v2, v22

    goto :goto_3

    .line 36
    :cond_8
    move/from16 v37, v13

    move-object/from16 v35, v14

    move-object/from16 v2, v22

    .line 39
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u6218\u6597\u6216\u65e0\u5c3d\u6311\u6218\uff0c\u518d\u8fdb\u884c\u626b\u8361"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_9
    move/from16 v37, v13

    move-object/from16 v35, v14

    move-object/from16 v2, v22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8bf7\u5148\u901a\u5173\u8be5\u96be\u5ea6\u7684\u65e0\u5c3d\u6311\u6218\uff1b\u626b\u8361\u4e0d\u4f1a\u8865\u901a\u5173\u8bb0\u5f55"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_a
    move/from16 v37, v13

    move-object/from16 v35, v14

    move-object/from16 v2, v22

    goto :goto_4

    .line 30
    :cond_b
    move/from16 v37, v13

    move-object/from16 v35, v14

    move-object/from16 v2, v22

    .line 32
    :goto_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u65e0\u5c3d\u6311\u6218\u626b\u8361\u96be\u5ea6\u65e0\u6548"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_4

    .line 76
    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    :goto_5
    move/from16 v37, v13

    move-object/from16 v35, v14

    :goto_6
    move-object/from16 v2, v22

    .line 77
    :goto_7
    new-instance v11, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v11, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 78
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "s"

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "gg.ui.unlock(\'saodang\')"

    const/4 v5, 0x1

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v3, "evalCode"

    invoke-virtual {v11, v3, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 79
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v23, v1, v4

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v3, v1, v5

    const/4 v3, 0x2

    aput-object v35, v1, v3

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v26

    aput-object v24, v1, v25

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v1, v6

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v11, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 80
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "m"

    aput-object v2, v1, v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v11, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 82
    :goto_8
    return-object v11
.end method

.method static cleared([BII)Z
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string p2, "acr"

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalMazeSweepEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 19
    const-string v0, "0"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 20
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static d([BLjava/lang/String;)[B
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static refresh([B)[B
    .locals 5

    .line 11
    const-string v0, "q7ShopDay"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v0

    const-string v1, "q7MazeAllDay"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalMazeSweepEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 12
    if-lez v2, :cond_0

    if-le v0, v2, :cond_0

    const/4 v3, 0x0

    const-string v4, "acl"

    invoke-static {p0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 13
    :cond_0
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
