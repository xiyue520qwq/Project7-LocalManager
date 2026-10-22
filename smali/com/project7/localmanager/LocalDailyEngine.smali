.class final Lcom/project7/localmanager/LocalDailyEngine;
.super Ljava/lang/Object;
.source "LocalDailyEngine.java"


# static fields
.field static final EXAM_SECONDS:I = 0x15180

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
    .locals 27

    .line 10
    const-string v0, "heroTestQuery"

    const-string v1, "heroShizhanQuery"

    const-string v2, "heroTestSelectHero"

    const-string v3, "heroTestGiveup"

    const-string v4, "heroTestGiveupManeuver"

    const-string v5, "heroTestExpire"

    const-string v6, "heroTestPickSkillTestReward"

    const-string v7, "heroTestPickHeroTestReward"

    const-string v8, "triggerHeroManeuverEvent"

    const-string v9, "battleEnterWithManeuverMode"

    const-string v10, "queryBlackGate"

    const-string v11, "getBossChoice"

    const-string v12, "memoryPalaceQuery"

    const-string v13, "memoryPalaceOpenArea"

    const-string v14, "refreshNewUIState"

    const-string v15, "refreshAreaBuff"

    const-string v16, "memoryPalaceBattleOnlineRequest"

    const-string v17, "queryMazeState"

    const-string v18, "exchangeWCoinItem"

    const-string v19, "firstEnterMaze"

    const-string v20, "updateDancengAIFlag"

    const-string v21, "mazeBattleOnlineRequest"

    const-string v22, "refreshNewModeState"

    const-string v23, "saoDangRequest"

    const-string v24, "seeLunhuizhijingUnlock"

    const-string v25, "requestLunhuizhijingAddEP"

    const-string v26, "lunhuizhijingBattleOnlineRequest"

    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalDailyEngine;->METHODS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active([B)Z
    .locals 2

    .line 40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "q7DailyBattle"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v1, "active"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 27

    .line 85
    move-object/from16 v7, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    move-object/from16 v5, p4

    move-wide/from16 v9, p5

    const-string v11, "m"

    const-string v12, "showMessageStr"

    const-string v13, "heroShizhanQuery"

    const-string v14, "Reply"

    const-string v15, "heroTestQuery"

    const-string v16, "d"

    invoke-static {v7, v8, v5}, Lcom/project7/localmanager/LocalLunhuiEngine;->handles([BLjava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static/range {p0 .. p6}, Lcom/project7/localmanager/LocalLunhuiEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v1

    return-object v1

    .line 87
    :cond_0
    invoke-static {v7, v8, v5}, Lcom/project7/localmanager/LocalMazeBattleEngine;->handles([BLjava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-static/range {p0 .. p6}, Lcom/project7/localmanager/LocalMazeBattleEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v1

    return-object v1

    .line 89
    :cond_1
    sget-object v1, Lcom/project7/localmanager/LocalMazeShopEngine;->METHODS:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-static/range {p0 .. p6}, Lcom/project7/localmanager/LocalMazeShopEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v1

    return-object v1

    .line 91
    :cond_2
    invoke-static {v7, v8, v5}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->handles([BLjava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    invoke-static/range {p0 .. p6}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v1

    return-object v1

    .line 93
    :cond_3
    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 95
    move-object/from16 v17, v14

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->defaults([B)[B

    move-result-object v1

    .line 96
    const-string v4, "q7DailyReset"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2b
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_2a

    const-string v14, "t"

    move-object/from16 v20, v12

    const-string v12, "s"

    if-eqz v4, :cond_7

    .line 97
    :try_start_1
    const-string v1, "q7DailyBattle"

    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 98
    invoke-static {v5, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ne v2, v4, :cond_4

    goto :goto_0

    .line 100
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u53d6\u6d88\u8bf7\u6c42\u4e0e\u5f53\u524d\u65e5\u5e38\u6218\u6597\u4e0d\u5339\u914d\uff0c\u672a\u9000\u8fd8\u6216\u6263\u9664\u7cbe\u795e\u529b"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_5
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1, v14}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 102
    const-string v1, "city"

    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 103
    const-string v4, "P"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "consume"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-string v5, "P"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "fail_consume"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    sub-int/2addr v4, v2

    .line 104
    const-string v2, "jpv"

    const-string v3, "jpv"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 105
    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "city"

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 106
    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalDailyEngine;->power(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 108
    :cond_6
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "q7DailyBattle"

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    move-object v1, v6

    goto/16 :goto_22

    .line 202
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object v1, v0

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    :goto_2
    move-object/from16 v4, v17

    move-object/from16 v12, v20

    :goto_3
    const/4 v5, 0x2

    goto/16 :goto_2a

    .line 109
    :cond_7
    :try_start_2
    const-string v4, "q7DailyFinish"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_28

    if-eqz v4, :cond_8

    .line 110
    :try_start_3
    invoke-static {v6, v3, v2, v5}, Lcom/project7/localmanager/LocalDailyEngine;->finish(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[B)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v6

    goto/16 :goto_22

    .line 111
    :cond_8
    :try_start_4
    invoke-static {v3, v8, v5}, Lcom/project7/localmanager/LocalDailyEngine;->shop(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_28

    if-eqz v4, :cond_a

    .line 113
    :try_start_5
    const-string v1, "CS"

    const-string v4, "store_id"

    invoke-static {v5, v4}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->eligibility([B)V

    .line 114
    :cond_9
    const-wide/16 v21, 0x3e8

    div-long v9, v9, v21
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_0

    long-to-int v6, v9

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    const/4 v10, 0x2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    :try_start_6
    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalGiftEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BI)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_2

    return-object v1

    .line 202
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_4
    move-object v1, v0

    move v5, v10

    goto :goto_6

    .line 116
    :cond_a
    const/4 v4, 0x2

    :try_start_7
    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalDailyEngine;->eligibility([BLjava/lang/String;)V

    .line 117
    invoke-static {v1, v9, v10}, Lcom/project7/localmanager/LocalDailyEngine;->expired([BJ)Z

    move-result v18
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_27
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_26

    if-eqz v18, :cond_b

    :try_start_8
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v18
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_4

    if-nez v18, :cond_b

    const/16 v18, 0x1

    goto :goto_9

    .line 202
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    move-object v1, v0

    move v5, v4

    :goto_6
    move-object/from16 v23, v11

    move-object/from16 v24, v13

    :goto_7
    move-object/from16 v25, v15

    :goto_8
    move-object/from16 v4, v17

    move-object/from16 v12, v20

    goto/16 :goto_2a

    .line 117
    :cond_b
    const/16 v18, 0x0

    .line 118
    :goto_9
    const-string v4, "heroTestSelectHero"

    if-eqz v18, :cond_f

    :try_start_9
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 119
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    goto :goto_a

    :cond_c
    move-object/from16 v9, v20

    const/4 v10, 0x0

    goto :goto_c

    .line 120
    :cond_d
    :goto_a
    invoke-static {v1}, Lcom/project7/localmanager/LocalDailyEngine;->resetExam([B)[B

    move-result-object v1

    .line 121
    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalDailyEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 122
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_0

    if-nez v14, :cond_e

    .line 123
    const/4 v14, 0x2

    :try_start_a
    new-array v2, v14, [Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_6

    const/4 v14, 0x0

    :try_start_b
    aput-object v11, v2, v14

    const-string v18, "\u8d44\u8d28\u8003\u8bd5\u768424\u5c0f\u65f6\u6709\u6548\u671f\u5df2\u7ed3\u675f\uff0c\u53ef\u4ee5\u91cd\u65b0\u62a5\u540d"

    const/16 v19, 0x1

    aput-object v18, v2, v19

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_0

    move-object/from16 v9, v20

    :try_start_c
    invoke-virtual {v6, v9, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto/16 :goto_12

    .line 202
    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    :goto_b
    move-object v1, v0

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move v5, v14

    goto :goto_7

    .line 122
    :cond_e
    move-object/from16 v9, v20

    const/4 v14, 0x0

    goto/16 :goto_12

    .line 118
    :cond_f
    move-object/from16 v9, v20

    const/4 v10, 0x0

    .line 124
    :goto_c
    if-eqz v18, :cond_11

    const-string v2, "heroTestPickSkillTestReward"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "q7DailyBegin"

    .line 125
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v5, v14}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v10, 0x3

    if-eq v2, v10, :cond_10

    invoke-static {v5, v14}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v10, 0x4

    if-ne v2, v10, :cond_11

    .line 126
    :cond_10
    invoke-static {v1}, Lcom/project7/localmanager/LocalDailyEngine;->resetExam([B)[B

    move-result-object v1

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalDailyEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 127
    const-string v1, "heroTestGiveupReply"
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_c} :catch_c

    const/4 v2, 0x2

    :try_start_d
    new-array v3, v2, [Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_d .. :try_end_d} :catch_a

    const/4 v2, 0x0

    :try_start_e
    aput-object v16, v3, v2

    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "herotest"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_e} :catch_c

    .line 128
    const/4 v1, 0x2

    :try_start_f
    new-array v2, v1, [Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_f .. :try_end_f} :catch_8

    const/4 v1, 0x0

    :try_start_10
    aput-object v11, v2, v1

    const-string v1, "\u8d44\u8d28\u8003\u8bd5\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u62a5\u540d\uff1b\u672a\u6263\u9664\u8d44\u6e90"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v6, v9, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_10 .. :try_end_10} :catch_c

    .line 129
    return-object v6

    .line 202
    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v0

    :goto_d
    move v5, v1

    move-object v12, v9

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    goto/16 :goto_1f

    :catch_a
    move-exception v0

    goto :goto_e

    :catch_b
    move-exception v0

    :goto_e
    move-object v1, v0

    move v5, v2

    move-object v12, v9

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    :goto_f
    move-object/from16 v4, v17

    goto/16 :goto_2a

    :catch_c
    move-exception v0

    goto :goto_10

    :catch_d
    move-exception v0

    :goto_10
    move-object v1, v0

    move-object v12, v9

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    :goto_11
    move-object/from16 v4, v17

    goto/16 :goto_3

    .line 131
    :cond_11
    :goto_12
    move-object v10, v1

    :try_start_11
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v1, v6

    move-object v12, v9

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    move-object/from16 v4, v17

    const/4 v5, 0x2

    goto/16 :goto_21

    .line 134
    :cond_12
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_11 .. :try_end_11} :catch_24

    const-string v2, "ts"

    const-string v4, "iti"

    const-string v14, "pt"

    move-object/from16 v20, v9

    const-string v9, "hr"

    move-object/from16 v23, v11

    const-string v11, "ex"

    move-object/from16 v24, v13

    const-string v13, "cib"

    move-object/from16 v25, v15

    const-string v15, "st"

    if-eqz v1, :cond_17

    .line 135
    :try_start_12
    const-string v1, "h"

    invoke-static {v5, v1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    .line 136
    invoke-static {v10, v15}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v8

    move-object/from16 v26, v6

    const/4 v6, 0x1

    if-ne v8, v6, :cond_16

    invoke-static {v5, v12}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_16

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "H"

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    if-eqz v5, :cond_15

    const-string v5, "Q"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    if-eqz v3, :cond_15

    .line 138
    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 139
    invoke-static {v7, v1}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v5

    invoke-static {v5, v14}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 141
    invoke-static {v10, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_17
    .catch Ljava/lang/ArithmeticException; {:try_start_12 .. :try_end_12} :catch_16

    .line 142
    const/4 v5, 0x2

    :try_start_13
    invoke-static {v3, v15, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Ljava/lang/ArithmeticException; {:try_start_13 .. :try_end_13} :catch_12

    .line 143
    const-wide/16 v5, 0x3e8

    move-wide/from16 v8, p5

    move-object/from16 v10, v20

    :try_start_14
    div-long v5, v8, v5

    long-to-int v5, v5

    invoke-static {v3, v2, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 144
    const-string v5, "srw"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    .line 145
    const-string v5, "stfc"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 146
    const-string v5, "lv"

    const-string v6, "level"

    invoke-static {v7, v6}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 147
    invoke-static {v3, v13, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    .line 149
    const/4 v4, 0x0

    invoke-static {v3, v11, v4}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v3

    .line 150
    move-object/from16 v6, v26

    invoke-static {v6, v3}, Lcom/project7/localmanager/LocalDailyEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 152
    const-string v4, "evalCode"
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_14 .. :try_end_14} :catch_10

    const/4 v5, 0x2

    :try_start_15
    new-array v8, v5, [Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_15 .. :try_end_15} :catch_e

    const/4 v5, 0x0

    :try_start_16
    aput-object v12, v8, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gg.avatar.heroTestData.startTs = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; gg.avatar.heroTestData.expired = False"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v8, v3

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 154
    const-string v2, "heroTestSelectHeroReply"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "h"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_16 .. :try_end_16} :catch_10

    const/4 v8, 0x2

    :try_start_17
    aput-object v12, v3, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 155
    move-object v1, v6

    goto/16 :goto_22

    .line 202
    :catch_e
    move-exception v0

    goto :goto_13

    :catch_f
    move-exception v0

    :goto_13
    move-object/from16 v8, p3

    move-object v1, v0

    move-object v12, v10

    goto/16 :goto_f

    :catch_10
    move-exception v0

    goto :goto_14

    :catch_11
    move-exception v0

    :goto_14
    move-object/from16 v8, p3

    move-object v1, v0

    move-object v12, v10

    goto/16 :goto_11

    :catch_12
    move-exception v0

    goto :goto_15

    :catch_13
    move-exception v0

    :goto_15
    move-object/from16 v8, p3

    move-object v1, v0

    goto/16 :goto_8

    .line 139
    :cond_13
    move-object/from16 v10, v20

    const/4 v8, 0x2

    goto :goto_16

    .line 138
    :cond_14
    move-object/from16 v10, v20

    const/4 v8, 0x2

    goto :goto_16

    .line 137
    :cond_15
    move-object/from16 v10, v20

    const/4 v8, 0x2

    goto :goto_16

    .line 136
    :cond_16
    move-object/from16 v10, v20

    const/4 v8, 0x2

    .line 140
    :goto_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5f53\u524d\u4e0d\u80fd\u62a5\u540d\u8be5\u795e\u5668\u4f7f\u7684\u8d44\u8d28\u8003\u8bd5"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_15
    .catch Ljava/lang/ArithmeticException; {:try_start_17 .. :try_end_17} :catch_14

    .line 202
    :catch_14
    move-exception v0

    goto :goto_17

    :catch_15
    move-exception v0

    :goto_17
    move-object v1, v0

    move v5, v8

    move-object v12, v10

    move-object/from16 v4, v17

    move-object/from16 v8, p3

    goto/16 :goto_2a

    :catch_16
    move-exception v0

    goto :goto_18

    :catch_17
    move-exception v0

    :goto_18
    move-object/from16 v8, p3

    move-object v1, v0

    goto/16 :goto_2

    .line 155
    :cond_17
    move-object/from16 v12, v20

    const/4 v8, 0x2

    :try_start_18
    const-string v1, "q7DailyBegin"
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_18 .. :try_end_18} :catch_20

    move-object/from16 v8, p3

    :try_start_19
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_1f
    .catch Ljava/lang/ArithmeticException; {:try_start_19 .. :try_end_19} :catch_1e

    if-eqz v1, :cond_18

    .line 156
    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const/4 v9, 0x2

    move-object v4, v10

    move-object v10, v6

    move-wide/from16 v5, p5

    :try_start_1a
    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalDailyEngine;->begin(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B[BJ)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_1a .. :try_end_1a} :catch_18

    move-object v1, v10

    goto/16 :goto_22

    .line 202
    :catch_18
    move-exception v0

    goto :goto_19

    :catch_19
    move-exception v0

    :goto_19
    move-object v1, v0

    move v5, v9

    goto/16 :goto_f

    .line 157
    :cond_18
    move-object v1, v6

    const/4 v5, 0x2

    :try_start_1b
    const-string v6, "heroTestGiveup"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_1d
    .catch Ljava/lang/ArithmeticException; {:try_start_1b .. :try_end_1b} :catch_1c

    if-nez v6, :cond_25

    :try_start_1c
    const-string v6, "heroTestExpire"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    goto/16 :goto_1c

    .line 163
    :cond_19
    const-string v6, "heroTestGiveupManeuver"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 164
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 165
    const-string v2, "heroTestGiveupManeuverReply"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto/16 :goto_22

    .line 164
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5148\u9000\u51fa\u5f53\u524d\u6218\u6597"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_1b
    const-string v6, "triggerHeroManeuverEvent"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 167
    const-string v2, "te"

    const/4 v3, 0x1

    invoke-static {v10, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalDailyEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    goto/16 :goto_22

    .line 168
    :cond_1c
    const-string v6, "heroTestPickSkillTestReward"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 169
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v10, v15}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1d

    invoke-static {v10, v15}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v6, 0x4

    if-ne v2, v6, :cond_20

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_20

    .line 171
    :cond_1d
    invoke-static {v10, v15}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_1e

    .line 172
    invoke-static {v10, v9}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalDailyEngine;->integrationPlan(Lcom/project7/localmanager/LocalFeatureCatalog;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v10, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 173
    const/4 v3, 0x1

    invoke-static {v2, v13, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 174
    const/4 v3, 0x4

    invoke-static {v2, v15, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v10

    .line 175
    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalDailyEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 177
    :cond_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-static {v10, v4}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 179
    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "0"

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const-string v9, "1"

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v6, v9

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 180
    :cond_1f
    const-string v3, "heroTestPickSkillTestRewardReply"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "i"

    const/4 v9, 0x0

    aput-object v6, v4, v9

    const/4 v6, 0x1

    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 181
    goto/16 :goto_22

    .line 170
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5148\u5b8c\u6210\u56db\u9879\u6280\u5de7\u6d4b\u8bd5"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_21
    const-string v4, "heroTestPickHeroTestReward"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 182
    invoke-static {v10, v9}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 183
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v6

    if-nez v6, :cond_22

    invoke-static {v10, v15}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v6

    const/4 v9, 0x5

    if-ne v6, v9, :cond_22

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v6

    const/16 v9, 0xb

    if-ne v6, v9, :cond_22

    .line 184
    invoke-static {v7, v4}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v6

    if-eqz v6, :cond_22

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 185
    invoke-static {v7, v4}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v9

    invoke-static {v9, v14}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 187
    const-string v6, "Q"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    move-object/from16 v6, p2

    invoke-static {v1, v6, v3}, Lcom/project7/localmanager/LocalDailyEngine;->rewards(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[B)V

    .line 188
    iget-object v3, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v6, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 189
    invoke-static {v6, v4}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v6

    const/4 v9, 0x1

    invoke-static {v6, v14, v9}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v6

    .line 188
    invoke-static {v3, v4, v6}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v3

    iput-object v3, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 191
    invoke-static {v10, v15, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 192
    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 193
    invoke-static {v2, v11, v4}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalDailyEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 194
    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 195
    const-string v2, "heroTestPickHeroTestRewardReply"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "rewards"

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 196
    goto/16 :goto_22

    .line 186
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5148\u5b8c\u6210\u5168\u90e8\u5341\u5173\u7efc\u5408\u6d4b\u8bd5\uff1b\u8003\u8bd5\u5956\u52b1\u53ea\u80fd\u9886\u53d6\u4e00\u6b21"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_23
    const-string v1, "getBossChoice"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u65f6\u7a7a\u4e71\u6d41\u5df2\u8fbe\u5230\u5f00\u653e\u6761\u4ef6\uff0c\u4f46\u6218\u6597\u6d41\u7a0b\u5c1a\u672a\u63a5\u5165\u672c\u5730\u7f51\u5173\uff1b\u672a\u6263\u9664\u8d44\u6e90"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8be5\u6311\u6218\u7684\u8054\u7f51\u6218\u6597\u5c1a\u672a\u63a5\u5165\u672c\u5730\u7f51\u5173\uff0c\u672a\u6263\u9664\u8d44\u6e90"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_1c .. :try_end_1c} :catch_1a

    .line 202
    :catch_1a
    move-exception v0

    goto :goto_1b

    :catch_1b
    move-exception v0

    :goto_1b
    move-object v1, v0

    goto/16 :goto_f

    .line 158
    :cond_25
    :goto_1c
    :try_start_1d
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v2

    if-nez v2, :cond_28

    .line 159
    const-string v2, "heroTestGiveup"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_1d
    .catch Ljava/lang/ArithmeticException; {:try_start_1d .. :try_end_1d} :catch_1c

    if-nez v2, :cond_27

    move-wide/from16 v2, p5

    :try_start_1e
    invoke-static {v10, v2, v3}, Lcom/project7/localmanager/LocalDailyEngine;->expired([BJ)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_1d

    .line 160
    :cond_26
    const/4 v2, 0x0

    invoke-static {v10, v11, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_1e .. :try_end_1e} :catch_1a

    goto :goto_1e

    .line 159
    :cond_27
    :goto_1d
    :try_start_1f
    invoke-static {v10}, Lcom/project7/localmanager/LocalDailyEngine;->resetExam([B)[B

    move-result-object v3

    .line 161
    :goto_1e
    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalDailyEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_1d
    .catch Ljava/lang/ArithmeticException; {:try_start_1f .. :try_end_1f} :catch_1c

    move-object/from16 v4, v17

    :try_start_20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v16, v6, v9

    const/4 v9, 0x1

    aput-object v3, v6, v9

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_22

    .line 158
    :cond_28
    move-object/from16 v4, v17

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5148\u9000\u51fa\u5f53\u524d\u6218\u6597"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :catch_1c
    move-exception v0

    goto :goto_1f

    :catch_1d
    move-exception v0

    :goto_1f
    move-object/from16 v4, v17

    goto/16 :goto_29

    :catch_1e
    move-exception v0

    goto/16 :goto_27

    :catch_1f
    move-exception v0

    goto/16 :goto_27

    :catch_20
    move-exception v0

    goto :goto_20

    :catch_21
    move-exception v0

    :goto_20
    move v5, v8

    move-object/from16 v4, v17

    move-object/from16 v8, p3

    goto/16 :goto_29

    .line 131
    :cond_29
    move-object v1, v6

    move-object v12, v9

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    move-object/from16 v4, v17

    const/4 v5, 0x2

    .line 132
    :goto_21
    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalDailyEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v3, v6

    const/4 v6, 0x1

    aput-object v10, v3, v6

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_23
    .catch Ljava/lang/ArithmeticException; {:try_start_20 .. :try_end_20} :catch_22

    .line 209
    :goto_22
    move-object v6, v1

    goto/16 :goto_2b

    .line 202
    :catch_22
    move-exception v0

    goto :goto_29

    :catch_23
    move-exception v0

    goto :goto_29

    :catch_24
    move-exception v0

    goto :goto_23

    :catch_25
    move-exception v0

    :goto_23
    move-object v12, v9

    goto :goto_26

    :catch_26
    move-exception v0

    goto :goto_24

    :catch_27
    move-exception v0

    :goto_24
    move v5, v4

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    move-object/from16 v4, v17

    move-object/from16 v12, v20

    goto :goto_29

    :catch_28
    move-exception v0

    goto :goto_25

    :catch_29
    move-exception v0

    :goto_25
    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    move-object/from16 v4, v17

    move-object/from16 v12, v20

    goto :goto_28

    :catch_2a
    move-exception v0

    goto :goto_26

    :catch_2b
    move-exception v0

    :goto_26
    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    :goto_27
    move-object/from16 v4, v17

    :goto_28
    const/4 v5, 0x2

    :goto_29
    move-object v1, v0

    .line 203
    :goto_2a
    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 205
    move-object/from16 v2, v25

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    move-object/from16 v2, v24

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 206
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 207
    :cond_2b
    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalDailyEngine;->roomFailure(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v6, v12, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 210
    :goto_2b
    return-object v6
.end method

.method static battleType(I)Z
    .locals 1

    .line 37
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static begin(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B[BJ)V
    .locals 26

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "t"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v5

    const-string v6, "s"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v7

    const-string v8, "d"

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "battleId"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v8

    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "B"

    invoke-virtual {v1, v11, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v9

    .line 253
    const-string v11, "h"

    invoke-static {v2, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 254
    if-eqz v9, :cond_1a

    const-string v12, "scene"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v12

    if-ne v12, v7, :cond_1a

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 255
    const-string v13, "online"

    invoke-static {v9, v13}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1a

    .line 257
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_19

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x4

    if-ne v5, v14, :cond_0

    const/4 v15, 0x3

    goto :goto_0

    :cond_0
    const/4 v15, 0x1

    :goto_0
    if-gt v12, v15, :cond_19

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 258
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v12

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ne v12, v15, :cond_19

    .line 260
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x4

    goto :goto_1

    .line 261
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f7f\u7528\u5df2\u62e5\u6709\u7684\u795e\u5668\u4f7f\u51fa\u6218"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2
    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v14, "q7DailyBattle"

    invoke-static {v12, v14}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    .line 263
    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 264
    invoke-static {v12, v4}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-static {v12, v6}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_3

    invoke-static {v12, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 265
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u65e5\u5e38\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_4
    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v15, "q7Battle"

    invoke-static {v12, v15}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_18

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 268
    const-string v13, "combat"

    invoke-static {v15, v13}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    const-string v15, "of"

    invoke-static {v13, v15}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 270
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 271
    const-string v15, "level"

    const-string v12, "consume"

    move-object/from16 v16, v14

    const-string v14, "hr"

    move-object/from16 v17, v9

    const-string v9, "st"

    move/from16 v18, v7

    const-string v7, "htmr"

    move-object/from16 v19, v6

    const-string v6, "P"

    move-object/from16 v20, v4

    const/4 v4, 0x3

    if-ne v5, v4, :cond_6

    .line 272
    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v9, 0x2

    if-ne v4, v9, :cond_5

    invoke-static {v3, v14}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ne v4, v13, :cond_5

    const-string v4, "srw"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalDailyEngine;->passed([BI)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v21, v2

    move/from16 v22, v5

    move-object/from16 v24, v11

    goto/16 :goto_5

    .line 273
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5f53\u524d\u6280\u5de7\u6d4b\u8bd5\u4e0d\u6ee1\u8db3\u8fdb\u5165\u6761\u4ef6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_6
    const/4 v4, 0x4

    if-ne v5, v4, :cond_8

    .line 275
    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-ne v9, v4, :cond_7

    const-string v4, "cib"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ne v8, v4, :cond_7

    invoke-static {v3, v14}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 276
    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalDailyEngine;->integrationInfo([BI)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v21, v2

    move/from16 v22, v5

    move-object/from16 v24, v11

    goto/16 :goto_5

    .line 277
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u6309\u987a\u5e8f\u6311\u6218\u7efc\u5408\u6d4b\u8bd5\uff0c\u5e76\u643a\u5e26\u62a5\u540d\u7684\u795e\u5668\u4f7f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_8
    const/16 v4, 0xa

    if-ne v5, v4, :cond_17

    .line 279
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v13}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v4

    .line 280
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v14, "pt"

    move-object/from16 v21, v2

    invoke-static {v4, v14}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 282
    nop

    .line 283
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "heromgr"

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v9, "hrs"

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x1

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v2, v22

    check-cast v2, [B

    .line 284
    move/from16 v22, v5

    const-string v5, "1"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 285
    move-object/from16 v24, v11

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v14}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v3, p3

    move/from16 v5, v22

    move-object/from16 v2, v23

    move-object/from16 v11, v24

    goto :goto_2

    .line 286
    :cond_9
    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 287
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v25, v2

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "0"

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_a
    move-object/from16 v2, v25

    goto :goto_3

    .line 288
    :cond_b
    move-object/from16 v3, p3

    move/from16 v5, v22

    move-object/from16 v2, v23

    move-object/from16 v11, v24

    goto :goto_2

    .line 289
    :cond_c
    move/from16 v22, v5

    move-object/from16 v24, v11

    if-gt v8, v9, :cond_15

    .line 290
    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalDailyEngine;->passed([BI)Z

    move-result v2

    .line 291
    if-eqz v2, :cond_d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v1, v3, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    goto :goto_4

    .line 292
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "R"

    invoke-virtual {v1, v3, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_14

    .line 294
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-wide/from16 v3, p4

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/LocalServiceEngine;->recover([BJ)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 295
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "city"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 296
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 297
    const-string v5, "jpv"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-lt v9, v4, :cond_13

    .line 298
    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v9

    sub-int/2addr v9, v4

    invoke-static {v2, v5, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 299
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 300
    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalDailyEngine;->power(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 301
    const-string v2, "szh"

    move-object/from16 v3, p3

    invoke-static {v3, v2, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalDailyEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 302
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v24, v4, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string v2, "i"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v4, "enterManeuverBattleReply"

    invoke-virtual {v0, v4, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 303
    nop

    .line 304
    :goto_5
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v4, 0x18

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "active"

    const/4 v9, 0x0

    aput-object v5, v4, v9

    .line 305
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x2

    aput-object v20, v4, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v4, v10

    const/4 v5, 0x4

    aput-object v19, v4, v5

    const/4 v5, 0x5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x6

    aput-object v24, v4, v5

    const/4 v5, 0x7

    aput-object v21, v4, v5

    const/16 v5, 0x8

    const-string v10, "b"

    aput-object v10, v4, v5

    const/16 v5, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v5

    const-string v5, "wishCost"

    const/16 v10, 0xa

    aput-object v5, v4, v10

    const/16 v5, 0xb

    .line 306
    move/from16 v11, v22

    if-ne v11, v10, :cond_e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v6, v14}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    invoke-static {v10, v12}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v10

    goto :goto_6

    :cond_e
    move v10, v9

    :goto_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v5

    const/16 v5, 0xc

    const-string v10, "wishFailCost"

    aput-object v10, v4, v5

    const/16 v5, 0xd

    .line 307
    const/16 v10, 0xa

    if-ne v11, v10, :cond_f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v6, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v6, "fail_consume"

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    goto :goto_7

    :cond_f
    move v1, v9

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/16 v1, 0xe

    const-string v5, "repeat"

    aput-object v5, v4, v1

    const/16 v1, 0xf

    const/16 v5, 0xa

    if-ne v11, v5, :cond_10

    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 308
    invoke-static {v5, v13}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v5

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalDailyEngine;->passed([BI)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v12, 0x1

    goto :goto_8

    :cond_10
    move v12, v9

    :goto_8
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0x10

    const-string v5, "lv"

    aput-object v5, v4, v1

    const/16 v1, 0x11

    .line 309
    const/4 v5, 0x4

    if-ne v11, v5, :cond_11

    const/16 v5, 0x1e

    goto :goto_9

    :cond_11
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0x12

    const-string v5, "ml"

    aput-object v5, v4, v1

    const/16 v1, 0x13

    const-string v5, "monster_level"

    move-object/from16 v6, v17

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v1, 0x14

    const-string v5, "info"

    aput-object v5, v4, v1

    const/16 v1, 0x15

    .line 310
    const/4 v5, 0x4

    if-ne v11, v5, :cond_12

    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalDailyEngine;->integrationInfo([BI)[B

    move-result-object v3

    goto :goto_a

    :cond_12
    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :goto_a
    aput-object v3, v4, v1

    const/16 v1, 0x16

    const-string v3, "f"

    aput-object v3, v4, v1

    const/16 v1, 0x17

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    .line 304
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    move-object/from16 v3, v16

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 311
    return-void

    .line 297
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7cbe\u795e\u529b\u4e0d\u8db3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u5956\u52b1\u5b9a\u4e49\uff0c\u672a\u5f00\u59cb\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u5b8c\u6210\u4e0a\u4e00\u5173\u5b9e\u6218\u6f14\u7ec3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u795e\u5668\u4f7f\u5c1a\u672a\u901a\u8fc7\u8d44\u8d28\u8003\u8bd5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4e0d\u652f\u6301\u7684\u65e5\u5e38\u6218\u6597\u7c7b\u578b"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u4e3b\u7ebf\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u5173\u5361\u51fa\u6218\u961f\u4f0d\u4eba\u6570\u65e0\u6548\u6216\u5b58\u5728\u91cd\u590d\u89d2\u8272"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6b64\u5173\u5361\u5c1a\u672a\u63a5\u5165\u79bb\u7ebf\u6218\u6597\uff0c\u672a\u6263\u9664\u8d44\u6e90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static combatReply(IILjava/util/List;[BLjava/lang/String;[BLcom/project7/localmanager/LocalCombatCatalog;)[B
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[B",
            "Ljava/lang/String;",
            "[B",
            "Lcom/project7/localmanager/LocalCombatCatalog;",
            ")[B"
        }
    .end annotation

    .line 314
    move/from16 v9, p0

    const-string v0, "q7DailyBattle"

    move-object/from16 v10, p5

    invoke-static {v10, v0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    .line 315
    const-string v0, "f"

    invoke-static {v11, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    const-string v12, "lv"

    const/16 v13, 0x1e

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-ne v9, v14, :cond_0

    move v8, v13

    goto :goto_0

    :cond_0
    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v8, v0

    .line 315
    :goto_0
    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v8}, Lcom/project7/localmanager/BsonLite;->combatOfflineReplyDocument(IILjava/lang/String;Ljava/lang/Iterable;[BLjava/lang/String;[BLcom/project7/localmanager/LocalCombatCatalog;I)[B

    move-result-object v0

    .line 317
    const-string v1, "c"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 319
    const-string v3, "monster"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v2

    .line 320
    if-ne v9, v14, :cond_1

    move v3, v13

    goto :goto_1

    :cond_1
    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    const-string v4, "hero_lv"

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 321
    if-ne v9, v14, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "ml"

    invoke-static {v11, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_2
    const-string v3, "monster_lv"

    invoke-static {v2, v3, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 322
    const/4 v3, 0x7

    if-ne v9, v3, :cond_3

    .line 323
    const/16 v3, 0xc

    const-string v4, "mission_mode"

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 324
    const-string v3, "maze"

    invoke-static {v11, v3}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 326
    :cond_3
    const/4 v3, 0x5

    const-string v4, "buff_enhance"

    if-ne v9, v3, :cond_4

    .line 327
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "assist"

    invoke-static {v11, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 328
    const-string v3, "stacks"

    invoke-static {v11, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v5, "buff_count"

    invoke-static {v2, v5, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 329
    const-string v3, "a"

    invoke-static {v11, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v5, "areaId"

    invoke-static {v2, v5, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 331
    :cond_4
    const/16 v3, 0x10

    if-ne v9, v3, :cond_5

    .line 332
    const-string v3, "lunhuizhijing"

    invoke-static {v2, v3, v15}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 333
    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 335
    :cond_5
    const/4 v3, 0x4

    if-ne v9, v3, :cond_6

    .line 336
    const-string v3, "b"

    invoke-static {v11, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v4, "cur_integration_test_id"

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 337
    const-string v3, "info"

    invoke-static {v11, v3}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "integration_test_battle_info"

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 338
    invoke-static/range {p5 .. p5}, Lcom/project7/localmanager/LocalDailyEngine;->defaults([B)[B

    move-result-object v3

    const-string v4, "hr"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "select_heroes"

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v2

    .line 340
    :cond_6
    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static defaults([B)[B
    .locals 6

    .line 63
    const-string v0, "herotest"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 65
    :cond_0
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "st"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "ts"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "vl"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "vl2"

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const/4 v3, 0x7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    aput-object v5, v0, v3

    const/16 v3, 0x8

    const-string v5, "hr"

    aput-object v5, v0, v3

    const/16 v3, 0x9

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    const/16 v3, 0xa

    const-string v5, "lv"

    aput-object v5, v0, v3

    const/16 v3, 0xb

    const-string v5, "level"

    invoke-static {p0, v5}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    const/16 p0, 0xc

    const-string v3, "se"

    aput-object v3, v0, p0

    const/16 p0, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, p0

    const/16 p0, 0xe

    const-string v3, "srw"

    aput-object v3, v0, p0

    const/16 p0, 0xf

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, p0

    const/16 p0, 0x10

    const-string v3, "csb"

    aput-object v3, v0, p0

    const/16 p0, 0x11

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, p0

    const/16 p0, 0x12

    const-string v3, "cib"

    aput-object v3, v0, p0

    const/16 p0, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const/16 p0, 0x14

    const-string v1, "iti"

    aput-object v1, v0, p0

    const/16 p0, 0x15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, p0

    const/16 p0, 0x16

    const-string v1, "ex"

    aput-object v1, v0, p0

    const/16 p0, 0x17

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p0

    const/16 p0, 0x18

    const-string v1, "stfc"

    aput-object v1, v0, p0

    const/16 p0, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const/16 p0, 0x1a

    const-string v1, "ps2"

    aput-object v1, v0, p0

    const/16 p0, 0x1b

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p0

    const/16 p0, 0x1c

    const-string v1, "is2"

    aput-object v1, v0, p0

    const/16 p0, 0x1d

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v1, v0, p0

    const/16 p0, 0x1e

    const-string v1, "szh"

    aput-object v1, v0, p0

    const/16 p0, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const/16 p0, 0x20

    const-string v1, "szs"

    aput-object v1, v0, p0

    const/16 p0, 0x21

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const/16 p0, 0x22

    const-string v1, "te"

    aput-object v1, v0, p0

    const/16 p0, 0x23

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p0

    .line 65
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static eligibility([B)V
    .locals 1

    .line 74
    const-string v0, "heroTestQuery"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDailyEngine;->eligibility([BLjava/lang/String;)V

    .line 75
    return-void
.end method

.method static eligibility([BLjava/lang/String;)V
    .locals 3

    .line 77
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 79
    const-string v0, "getBossChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "queryBlackGate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    move p1, v1

    .line 80
    :goto_0
    const-string v0, "w"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-lt v2, v1, :cond_3

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "d"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result p0

    if-le p0, p1, :cond_3

    .line 82
    :cond_2
    return-void

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8be5\u73a9\u6cd5\u5c1a\u672a\u8fbe\u5230\u539f\u7248\u5468\u76ee\u89e3\u9501\u6761\u4ef6"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static expired([BJ)Z
    .locals 4

    .line 44
    const-string v0, "st"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v0

    const-string v1, "ts"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result p0

    .line 46
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    if-lez p0, :cond_0

    int-to-long v0, p0

    const-wide/32 v2, 0x15180

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static finish(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[B)V
    .locals 27

    .line 359
    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v7, "q7DailyBattle"

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    .line 360
    const-string v2, "t"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v9

    const-string v3, "s"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v10

    const-string v11, "b"

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v12

    .line 361
    const-string v4, "h"

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 362
    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v2, v9, :cond_1b

    invoke-static {v8, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v2, v10, :cond_1b

    invoke-static {v8, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 364
    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v2

    const-string v15, "combatOfflineReward"

    const-string v14, "reply"

    if-nez v2, :cond_1

    .line 365
    invoke-static {v8, v14}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    invoke-virtual {v6, v15, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 367
    :cond_0
    return-void

    .line 369
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/BsonLite;->combatWinValue([B)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 370
    :goto_0
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalDailyEngine;->defaults([B)[B

    move-result-object v2

    .line 371
    const/16 v16, 0x2

    const-string v17, "r"

    const-string v1, "st"

    const/4 v5, 0x3

    if-ne v9, v5, :cond_8

    .line 372
    const-string v0, "srw"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v12, v3}, Lcom/project7/localmanager/LocalDailyEngine;->updated([BIZ)Ljava/util/List;

    move-result-object v5

    .line 373
    invoke-static {v2, v0, v5}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 374
    nop

    .line 375
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v4, v21

    check-cast v4, Ljava/util/List;

    move-object/from16 p1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v21, v14

    const/4 v14, 0x1

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    move-object/from16 v2, p1

    move-object/from16 v14, v21

    goto :goto_1

    .line 376
    :cond_4
    move-object/from16 v21, v14

    if-nez v3, :cond_5

    const-string v2, "stfc"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    const-string v4, "stfc"

    invoke-static {v0, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 377
    :cond_5
    const/4 v4, 0x4

    if-lt v5, v4, :cond_6

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 378
    :cond_6
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "p"

    const/4 v14, 0x0

    aput-object v2, v1, v14

    if-lt v5, v4, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    aput-object v17, v1, v16

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    aput-object v11, v1, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "heroTestSkillTestBattleFinish"

    invoke-virtual {v6, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 379
    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v13

    move-object/from16 v23, v15

    const/4 v2, 0x0

    move v8, v3

    goto/16 :goto_d

    :cond_8
    move-object/from16 v21, v14

    const/4 v4, 0x4

    if-ne v9, v4, :cond_e

    .line 380
    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-ne v14, v4, :cond_d

    const-string v4, "cib"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-ne v14, v12, :cond_d

    .line 382
    if-eqz v3, :cond_b

    .line 383
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "se"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v5

    move-object/from16 v23, v15

    const/4 v15, 0x1

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 384
    iget-object v14, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v15, "q7DailyStageRewards"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    .line 385
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v24, v7

    invoke-static {v14, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 386
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v15, "B"

    invoke-virtual {v0, v15, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    move-object/from16 v7, p2

    invoke-static {v6, v7, v0}, Lcom/project7/localmanager/LocalDailyEngine;->rewards(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[B)V

    .line 387
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 388
    const/4 v7, 0x1

    invoke-static {v14, v5, v7}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v5

    .line 387
    const-string v7, "q7DailyStageRewards"

    invoke-static {v0, v7, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 390
    :cond_9
    add-int/lit8 v0, v12, 0x1

    invoke-static {v2, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 391
    const/16 v2, 0xa

    if-ne v12, v2, :cond_a

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    :cond_a
    move-object v2, v0

    .line 392
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    goto :goto_3

    .line 382
    :cond_b
    move-object/from16 v24, v7

    move-object/from16 v23, v15

    .line 394
    :goto_3
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "p"

    const/4 v4, 0x0

    aput-object v1, v0, v4

    if-eqz v3, :cond_c

    const/16 v1, 0xa

    if-ne v12, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    aput-object v17, v0, v16

    .line 395
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v4, 0x4

    aput-object v11, v0, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v4, "rr"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    aput-object v4, v0, v1

    .line 394
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "heroTestIntegrationTestBattleFinish"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    move-object v0, v2

    move-object/from16 v25, v8

    move-object/from16 v26, v13

    const/4 v2, 0x0

    move v8, v3

    goto/16 :goto_d

    .line 381
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7efc\u5408\u6d4b\u8bd5\u8fdb\u5ea6\u4e0e\u5165\u573a\u8bb0\u5f55\u4e0d\u4e00\u81f4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_e
    move-object/from16 v24, v7

    move-object/from16 v23, v15

    const/4 v5, 0x3

    move-object/from16 v7, p2

    const/16 v1, 0xa

    if-ne v9, v1, :cond_1a

    .line 397
    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 398
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v15}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v1

    .line 399
    if-eqz v3, :cond_19

    .line 401
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "repeat"

    invoke-static {v8, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 402
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "M"

    goto :goto_5

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lv"

    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "R"

    :goto_5
    invoke-virtual {v0, v5, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 403
    if-eqz v0, :cond_18

    .line 404
    const-string v4, "rewards"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 405
    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    .line 406
    const-wide/16 v4, 0x0

    .line 407
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v14, v25

    check-cast v14, [B

    move-object/from16 v25, v1

    const-string v1, "w"

    invoke-static {v14, v1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    move-object v14, v2

    int-to-long v1, v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    move-object v2, v14

    move-object/from16 v1, v25

    const/4 v14, 0x0

    goto :goto_7

    .line 408
    :cond_10
    move-object/from16 v25, v1

    move-object v14, v2

    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-lez v1, :cond_16

    .line 409
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    long-to-double v4, v4

    mul-double/2addr v1, v4

    .line 410
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 411
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v5, v19

    check-cast v5, [B

    move-object/from16 v19, v0

    const-string v0, "w"

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v0

    move/from16 v26, v3

    move-object/from16 v22, v4

    int-to-double v3, v0

    sub-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_11

    move-object v4, v5

    goto :goto_9

    :cond_11
    move-object/from16 v0, v19

    move-object/from16 v4, v22

    move/from16 v3, v26

    const/4 v5, 0x1

    goto :goto_8

    :cond_12
    move/from16 v26, v3

    move-object/from16 v22, v4

    .line 412
    :goto_9
    const-string v0, "g"

    invoke-static {v4, v0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 413
    const-string v1, "k"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    const-string v1, "cg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "i"

    if-eqz v1, :cond_14

    .line 415
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "cgs"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 416
    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 417
    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "cgs"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 420
    :cond_13
    move-object/from16 v7, v25

    const/16 v20, 0x3

    move-object/from16 v25, v8

    move/from16 v8, v26

    move-object/from16 v26, v13

    const/4 v13, 0x1

    goto :goto_b

    :cond_14
    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v1, "n"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-string v1, "q"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v7, v25

    move-object/from16 v1, p2

    move-object/from16 v25, v8

    move/from16 v8, v26

    move-object/from16 v26, v13

    const/4 v13, 0x1

    const/16 v20, 0x3

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 421
    :goto_b
    move-object/from16 v13, v26

    move/from16 v26, v8

    move-object/from16 v8, v25

    move-object/from16 v25, v7

    move-object/from16 v7, p2

    goto/16 :goto_a

    .line 422
    :cond_15
    move-object/from16 v7, v25

    const/16 v20, 0x3

    move-object/from16 v25, v8

    move/from16 v8, v26

    move-object/from16 v26, v13

    const/4 v13, 0x1

    move-object v1, v7

    move v3, v8

    move-object v2, v14

    move-object/from16 v8, v25

    move-object/from16 v13, v26

    const/4 v14, 0x0

    move-object/from16 v7, p2

    goto/16 :goto_6

    .line 408
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u65e0\u6548\u7684\u6f14\u7ec3\u5956\u52b1\u6743\u91cd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_17
    move-object v7, v1

    move-object v14, v2

    move-object/from16 v25, v8

    move-object/from16 v26, v13

    const/4 v13, 0x1

    const/16 v20, 0x3

    move v8, v3

    const-string v0, "ps2"

    invoke-static {v14, v0, v13}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 424
    goto :goto_c

    .line 403
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u5956\u52b1\u5b9a\u4e49\uff0c\u672a\u7ed3\u7b97\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_19
    move-object v7, v1

    move-object v14, v2

    move/from16 v20, v5

    move-object/from16 v25, v8

    move-object/from16 v26, v13

    const/4 v13, 0x1

    move v8, v3

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "city"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 426
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "P"

    invoke-virtual {v0, v5, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    const-string v13, "consume"

    invoke-static {v4, v13}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    const-string v3, "fail_consume"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v0

    sub-int/2addr v4, v0

    .line 427
    const-string v0, "jpv"

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 428
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 429
    invoke-static {v6, v0}, Lcom/project7/localmanager/LocalDailyEngine;->power(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    move-object v2, v14

    .line 431
    :goto_c
    const-string v0, "htmr"

    invoke-static {v7, v0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v12, v8}, Lcom/project7/localmanager/LocalDailyEngine;->updated([BIZ)Ljava/util/List;

    move-result-object v0

    const-string v1, "htmr"

    invoke-static {v7, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 432
    const-string v1, "htcmb"

    invoke-static {v0, v1, v12}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 433
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v15, v0}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 434
    const-string v0, "is2"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "lastHero"

    invoke-static {v0, v1, v15}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    const-string v1, "is2"

    invoke-static {v2, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 435
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v17, v1, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    aput-object v11, v1, v16

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v20

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v3, "heroTestManeuverBattleFinish"

    invoke-virtual {v6, v3, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 436
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 437
    nop

    .line 438
    :goto_d
    invoke-static {v6, v0}, Lcom/project7/localmanager/LocalDailyEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 439
    nop

    .line 440
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v14

    .line 439
    move-object/from16 v11, v26

    move v13, v8

    move-object/from16 v0, v21

    invoke-static/range {v9 .. v14}, Lcom/project7/localmanager/BsonLite;->combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I[B)[B

    move-result-object v1

    .line 441
    const-string v3, "active"

    move-object/from16 v4, v25

    invoke-static {v4, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 442
    invoke-static {v2, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 443
    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v3, v24

    invoke-static {v2, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 444
    move-object/from16 v0, v23

    invoke-virtual {v6, v0, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 445
    return-void

    .line 437
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4e0d\u652f\u6301\u7684\u65e5\u5e38\u7ed3\u7b97\u7c7b\u578b"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u65e5\u5e38\u6218\u6597\u7ed3\u7b97\u4e0e\u5df2\u4fdd\u5b58\u7684\u5165\u573a\u8bb0\u5f55\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 18
    sget-object v0, Lcom/project7/localmanager/LocalDailyEngine;->METHODS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "q7Daily"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static integrationInfo([BI)[B
    .locals 2

    .line 244
    const-string v0, "iti"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 245
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    const-string p0, "1"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 246
    :cond_1
    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    return-object p0
.end method

.method private static integrationPlan(Lcom/project7/localmanager/LocalFeatureCatalog;I)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalFeatureCatalog;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 219
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "I"

    const-string v3, "monsters"

    invoke-virtual {v0, v2, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    const-string v4, "groups"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    const-string v3, "heroes"

    invoke-virtual {v0, v2, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    .line 221
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 222
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 223
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 224
    new-instance v4, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "E"

    invoke-virtual {v0, v6, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    invoke-static {v4}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    const/4 v5, 0x1

    move v6, v5

    :goto_0
    const/16 v7, 0xa

    if-gt v6, v7, :cond_5

    .line 230
    const-string v8, "type"

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eq v6, v7, :cond_1

    rem-int/lit8 v13, v6, 0x3

    if-nez v13, :cond_0

    goto :goto_1

    .line 237
    :cond_0
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v8, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "groupid"

    aput-object v8, v7, v11

    add-int/lit8 v8, v6, -0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    rem-int/2addr v8, v9

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    goto/16 :goto_4

    .line 231
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-lt v13, v12, :cond_2

    .line 232
    new-array v13, v12, [Ljava/lang/Integer;

    add-int/lit8 v14, v6, -0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    rem-int/2addr v14, v15

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    aput-object v14, v13, v10

    .line 233
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    rem-int v14, v6, v14

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    aput-object v14, v13, v5

    add-int/lit8 v14, v6, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    rem-int/2addr v14, v15

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    aput-object v14, v13, v11

    .line 232
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    goto :goto_2

    .line 234
    :cond_2
    new-array v13, v11, [Ljava/lang/Object;

    const-string v14, "h"

    aput-object v14, v13, v10

    add-int/lit8 v15, v6, -0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    rem-int v15, v15, v16

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v13, v5

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v13

    invoke-static {v13, v14}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 235
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v12, :cond_4

    .line 236
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v10

    if-ne v6, v7, :cond_3

    move v7, v11

    goto :goto_3

    :cond_3
    move v7, v5

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v5

    aput-object v3, v9, v11

    aput-object v13, v9, v12

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    .line 237
    nop

    .line 238
    :goto_4
    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    aput-object v7, v8, v5

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 235
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7efc\u5408\u6d4b\u8bd5\u654c\u65b9\u961f\u4f0d\u5b9a\u4e49\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_5
    return-object v0

    .line 221
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u7efc\u5408\u6d4b\u8bd5\u654c\u4eba\u76ee\u5f55"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static passed([BI)Z
    .locals 3

    .line 343
    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 344
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "1"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 345
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static power(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 3

    .line 355
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "p"

    aput-object v2, v0, v1

    const-string v1, "jpv"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "t"

    aput-object v2, v0, v1

    const-string v1, "jpvt"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "cjsla"

    aput-object v2, v0, v1

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "syncJingshenliPower"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 356
    return-void
.end method

.method static refreshExam([BJ)[B
    .locals 2

    .line 57
    const-string v0, "herotest"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 58
    invoke-static {v1, p1, p2}, Lcom/project7/localmanager/LocalDailyEngine;->expired([BJ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    invoke-static {v1}, Lcom/project7/localmanager/LocalDailyEngine;->resetExam([B)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    nop

    .line 58
    :goto_0
    return-object p0
.end method

.method static repeatableReply(Ljava/lang/String;)Z
    .locals 10

    .line 20
    const-string v0, "heroTestQuery"

    const-string v1, "heroShizhanQuery"

    const-string v2, "queryBlackGate"

    const-string v3, "getBossChoice"

    const-string v4, "memoryPalaceQuery"

    const-string v5, "queryMazeState"

    const-string v6, "battleEnterWithManeuverMode"

    const-string v7, "memoryPalaceBattleOnlineRequest"

    const-string v8, "mazeBattleOnlineRequest"

    const-string v9, "lunhuizhijingBattleOnlineRequest"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 20
    return p0
.end method

.method static resetExam([B)[B
    .locals 4

    .line 49
    const-string v0, "hr"

    const-string v1, "ts"

    const-string v2, "csb"

    const-string v3, "stfc"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    goto :goto_0

    .line 50
    :cond_0
    const-string v0, "st"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 51
    const-string v0, "cib"

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 52
    const-string v0, "ex"

    invoke-static {p0, v0, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object p0

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "srw"

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "iti"

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method private static rewards(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[B)V
    .locals 11

    .line 448
    if-eqz p2, :cond_8

    .line 449
    const-string v0, "rewards"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 450
    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    .line 451
    nop

    .line 452
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "w"

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 453
    :cond_0
    cmp-long v1, v4, v2

    if-lez v1, :cond_6

    .line 454
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    long-to-double v3, v4

    mul-double/2addr v1, v3

    .line 455
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 456
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v6

    int-to-double v8, v6

    sub-double/2addr v1, v8

    const-wide/16 v8, 0x0

    cmpg-double v6, v1, v8

    if-gez v6, :cond_1

    move-object v3, v5

    .line 457
    :cond_2
    const-string v0, "g"

    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 458
    const-string v2, "k"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 459
    const-string v2, "heroCost"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "n"

    const-string v5, "i"

    if-eqz v2, :cond_4

    .line 460
    const-string v2, "h"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 461
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v6

    if-eqz v6, :cond_3

    if-lez v3, :cond_3

    .line 463
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v2}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v6

    const-string v7, "ti"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    .line 464
    const-string v9, "mc"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-static {v10, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v8

    .line 465
    invoke-static {v6, v7, v8}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v6

    .line 466
    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v2, v6}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v6

    iput-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 467
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Integer;

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v8, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "hid"

    aput-object v6, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "c"

    aput-object v2, v1, v7

    const/4 v2, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "addTreasureMaxCost"

    invoke-virtual {p0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 469
    goto :goto_3

    .line 462
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8003\u8bd5COST\u5956\u52b1\u4e0e\u89d2\u8272\u4e0d\u5339\u914d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 469
    :cond_4
    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v9

    const-string v2, "q"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v10

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 470
    :goto_3
    goto/16 :goto_2

    .line 471
    :cond_5
    goto/16 :goto_0

    .line 453
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u65e0\u6548\u7684\u8003\u8bd5\u5956\u52b1\u6743\u91cd"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 472
    :cond_7
    return-void

    .line 448
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7f3a\u5c11\u539f\u7248\u8003\u8bd5\u5956\u52b1\u5b9a\u4e49\uff0c\u672a\u53d1\u653e\u8d44\u6e90"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static roomFailure(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V
    .locals 3

    .line 26
    nop

    .line 27
    const-string v0, "memoryPalaceBattleOnlineRequest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string p1, "gg.avatar.memoryPalaceFailed() if not gg.avatar.memoryPalaceData.inRoom() else None"

    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "mazeBattleOnlineRequest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const-string p1, "gg.avatar.pveMazeOnFailed() if not gg.avatar.infiniteMazeData.inRoom() else None"

    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "lunhuizhijingBattleOnlineRequest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    const-string p1, "gg.avatar.pveLunhuizhijingOnFailed() if not gg.avatar.lunhuizhijingData.inRoom() else None"

    goto :goto_0

    .line 33
    :cond_2
    const-string v0, "battleEnterWithManeuverMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "gg.avatar.pveHeroTestOnFailed()"

    goto :goto_0

    .line 34
    :cond_3
    const-string v0, "getBossChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "gg.ui.unlock(\'getBossChoice\')"

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 35
    :goto_0
    if-eqz p1, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "s"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "evalCode"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 36
    :cond_5
    return-void
.end method

.method static save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "herotest"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 72
    return-void
.end method

.method static shop(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Z
    .locals 2

    .line 214
    const-string v0, "buyCardMallItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "store_id"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "CS"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 214
    :goto_0
    return p0
.end method

.method static updated([BIZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIZ)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string v6, "0"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-eq v7, p1, :cond_0

    .line 350
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalDailyEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "1"

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_0
    goto :goto_0

    .line 351
    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    if-nez p2, :cond_2

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDailyEngine;->passed([BI)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    return-object v0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
