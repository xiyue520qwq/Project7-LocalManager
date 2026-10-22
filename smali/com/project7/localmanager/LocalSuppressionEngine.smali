.class final Lcom/project7/localmanager/LocalSuppressionEngine;
.super Ljava/lang/Object;
.source "LocalSuppressionEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;
    .locals 19

    .line 38
    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    move-object/from16 v2, p5

    const-string v9, ":"

    const-string v3, "h"

    const-string v4, "s"

    const-string v10, "q7BattleReceipts"

    .line 40
    const/4 v13, 0x1

    :try_start_0
    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v14

    const-string v5, "a"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v5

    .line 41
    const-string v6, "YM"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    const-string v15, "w"

    const-string v7, "weeknum"

    if-eqz v8, :cond_0

    :try_start_1
    iget-boolean v11, v8, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    if-nez v11, :cond_0

    iget-boolean v11, v8, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-nez v11, :cond_0

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-lt v11, v13, :cond_0

    move v11, v13

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    const-string v12, "\u5f53\u524d\u5c1a\u672a\u5f00\u653e\u538b\u5236"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalSuppressionEngine;->require(ZLjava/lang/String;)V

    .line 44
    if-eqz v5, :cond_1

    invoke-static {v14}, Lcom/project7/localmanager/LocalCityProgress;->area(I)I

    move-result v11

    if-ne v11, v5, :cond_1

    move-object/from16 v11, p1

    iget-object v12, v11, Lcom/project7/localmanager/LocalEconomyCatalog;->missions:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v13, "available"

    .line 45
    invoke-static {v6, v13}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    .line 44
    :cond_1
    move-object/from16 v11, p1

    .line 45
    :cond_2
    const/4 v12, 0x0

    :goto_1
    const-string v13, "\u8be5\u5173\u5361\u4e0d\u652f\u6301\u538b\u5236"

    .line 44
    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalSuppressionEngine;->require(ZLjava/lang/String;)V

    .line 46
    const-string v12, "q7Battle"

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v12

    if-nez v12, :cond_3

    iget-boolean v12, v8, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez v12, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    const-string v13, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u6218\u6597\u6216\u5de1\u67e5"

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalSuppressionEngine;->require(ZLjava/lang/String;)V

    .line 48
    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalSuppressionEngine;->recoverHistory([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v12

    .line 49
    new-instance v13, Ljava/util/ArrayList;

    const-string v11, "alternatives"

    invoke-static {v6, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    nop

    .line 52
    const-string v11, "bs"

    invoke-static {v12, v11}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    const-string v1, "psh"

    invoke-static {v11, v1}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v11, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    check-cast v1, [B

    .line 53
    move/from16 v16, v5

    const-string v5, "0"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "1"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    const/4 v11, 0x1

    :cond_4
    move/from16 v5, v16

    move-object/from16 v1, v17

    goto :goto_3

    .line 54
    :cond_5
    move/from16 v16, v5

    const-string v1, "\u8bf7\u5148\u6b63\u5e38\u901a\u5173\u5bf9\u5e94\u5173\u5361\u518d\u4f7f\u7528\u538b\u5236"

    invoke-static {v11, v1}, Lcom/project7/localmanager/LocalSuppressionEngine;->require(ZLjava/lang/String;)V

    .line 55
    const-string v1, "YZ"

    invoke-static {v12, v7}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    const-string v11, "wl"

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v5

    const/4 v11, 0x1

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 56
    if-eqz v0, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    const-string v5, "\u7f3a\u5c11\u539f\u7248\u538b\u5236\u96be\u5ea6\u914d\u7f6e"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalSuppressionEngine;->require(ZLjava/lang/String;)V

    .line 57
    const-string v1, "score"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-string v5, "factor"

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 58
    invoke-static {v12}, Lcom/project7/localmanager/LocalIntelligenceEffects;->monsterRate([B)D

    move-result-wide v17

    add-double v17, v17, v5

    mul-double v0, v0, v17

    double-to-int v0, v0

    .line 61
    const-string v1, "q7Score"

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    const-string v1, "\u538b\u5236\u6218\u529b\u4e0d\u8db3\u6216\u5ba2\u6237\u7aef\u6821\u9a8c\u4fe1\u606f\u7f3a\u5931\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalSuppressionEngine;->require(ZLjava/lang/String;)V

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "t"

    const/4 v5, 0x0

    aput-object v1, v0, v5

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x2

    aput-object v4, v0, v1

    const/4 v1, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    new-instance v4, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v15, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 64
    invoke-static {v12, v10}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v7}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "yazhi"

    if-nez v2, :cond_8

    .line 67
    :try_start_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v11}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\u8be5\u5173\u5361\u672c\u5468\u76ee\u5df2\u7ecf\u5b8c\u6210"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalSuppressionEngine;->require(ZLjava/lang/String;)V

    .line 68
    const-string v6, "finish"

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalEconomyEngine;->apply([BLcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v0

    return-object v0

    .line 70
    :cond_8
    move/from16 v1, v16

    invoke-static {v8, v1, v12}, Lcom/project7/localmanager/LocalCityProgress;->stages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)[B

    move-result-object v1

    const-string v2, "cs"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, v14, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    const-string v2, "\u6b64\u538b\u5236\u5173\u5361\u5c1a\u672a\u5f00\u653e"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalSuppressionEngine;->require(ZLjava/lang/String;)V

    .line 71
    const-string v6, "begin"

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object v1, v7

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalEconomyEngine;->apply([BLcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v2

    .line 72
    iget-boolean v3, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    iget-object v4, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalSuppressionEngine;->require(ZLjava/lang/String;)V

    .line 73
    iget-object v2, v2, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v6, "finish"

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalEconomyEngine;->apply([BLcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v0

    .line 74
    iget-boolean v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalSuppressionEngine;->require(ZLjava/lang/String;)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v1}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v2, v10}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 77
    iget-object v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 78
    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v11, v5}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 77
    invoke-static {v3, v10, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 81
    :goto_7
    new-instance v1, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    .line 83
    iget-object v0, v1, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "m"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v1, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v4, "showMessageStr"

    invoke-direct {v2, v4, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-object v1
.end method

.method private static d([BLjava/lang/String;)[B
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static recordPass([BI)[B
    .locals 10

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    nop

    .line 13
    const-string v1, "bs"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "psh"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 14
    const-string v9, "0"

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-ne v9, p1, :cond_0

    new-array v5, v7, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    const-string v7, "1"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_1

    .line 15
    :cond_0
    new-instance v7, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v7, v6}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_1
    goto :goto_0

    .line 17
    :cond_1
    if-nez v5, :cond_2

    new-array v2, v7, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static recoverHistory([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 5

    .line 22
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 23
    const-string v1, "q7BattleReceipts"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 24
    const-string v3, "s"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/project7/localmanager/LocalCityProgress;->area(I)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_1
    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "battle"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 26
    invoke-static {v1}, Lcom/project7/localmanager/LocalCityProgress;->area(I)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    const-string v2, "bs"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "psh"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalSuppressionEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 30
    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ne v4, v0, :cond_4

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalSuppressionEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    .line 31
    :cond_5
    if-nez v1, :cond_6

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalSuppressionEngine;->recordPass([BI)[B

    move-result-object p0

    .line 32
    :cond_6
    goto :goto_2

    .line 33
    :cond_7
    return-object p0
.end method

.method private static require(ZLjava/lang/String;)V
    .locals 0

    .line 88
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
