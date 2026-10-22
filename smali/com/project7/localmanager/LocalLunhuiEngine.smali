.class final Lcom/project7/localmanager/LocalLunhuiEngine;
.super Ljava/lang/Object;
.source "LocalLunhuiEngine.java"


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
    .locals 3

    .line 11
    const-string v0, "seeLunhuizhijingUnlock"

    const-string v1, "requestLunhuizhijingAddEP"

    const-string v2, "lunhuizhijingBattleOnlineRequest"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalLunhuiEngine;->METHODS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 21

    .line 64
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-wide/from16 v4, p5

    const-string v6, "LE"

    const-string v7, "rs"

    const-string v8, "replyLunhuizhijingAddEP"

    const-string v9, "requestLunhuizhijingAddEP"

    const-string v10, "q7DailyFinish"

    const-string v11, "add"

    const-string v12, "su"

    const-string v13, "ep"

    const-string v14, "lhzj"

    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 66
    move-object/from16 v16, v8

    const/16 v17, 0x0

    :try_start_0
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v4, p2

    invoke-static {v15, v0, v4, v3}, Lcom/project7/localmanager/LocalLunhuiEngine;->finish(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[B)V

    goto/16 :goto_1

    .line 67
    :cond_0
    const-string v8, "q7DailyReset"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v15, v0, v3}, Lcom/project7/localmanager/LocalLunhuiEngine;->reset(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V

    goto/16 :goto_1

    .line 69
    :cond_1
    const-string v8, "weeknum"

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v19, v10

    :try_start_1
    const-string v10, "w"

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v8

    const/4 v10, 0x1

    if-lt v8, v10, :cond_9

    .line 71
    invoke-static {v1, v0, v4, v5}, Lcom/project7/localmanager/LocalLunhuiEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;J)[B

    move-result-object v8

    iput-object v8, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 72
    const-string v8, "q7DailyBegin"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v15, v0, v3, v4, v5}, Lcom/project7/localmanager/LocalLunhuiEngine;->begin(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[BJ)V

    goto/16 :goto_1

    .line 73
    :cond_2
    const-string v8, "seeLunhuizhijingUnlock"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v14}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    iget-object v5, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "LB:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 76
    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 77
    iget-object v8, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v10, "LB"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    invoke-static {v8, v10, v6}, Lcom/project7/localmanager/LocalLunhuiEngine;->open([B[BI)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_4
    iget-object v0, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v5, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 80
    invoke-static {v5, v14}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v12, v4}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v5

    .line 79
    invoke-static {v0, v14, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 81
    invoke-static {v15}, Lcom/project7/localmanager/LocalLunhuiEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 82
    const-string v0, "replySeeLunhuizhijingUnlock"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v12, v6, v17

    const/4 v5, 0x1

    aput-object v4, v6, v5

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v15, v0, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 83
    goto/16 :goto_1

    :cond_5
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 84
    const-string v8, "ii"

    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v8

    .line 85
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    iget-object v12, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v14}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    .line 86
    if-eqz v8, :cond_7

    if-eqz v10, :cond_7

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v20

    if-lez v20, :cond_7

    .line 88
    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    .line 89
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    const-string v6, "max"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-gt v2, v3, :cond_6

    .line 91
    const/4 v3, 0x1

    invoke-static {v15, v8, v3}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 92
    iget-object v3, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/LocalServiceEngine;->recover([BJ)[B

    move-result-object v3

    iput-object v3, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 93
    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v4, "LP"

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    const-string v4, "consume"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    invoke-static {v15, v0}, Lcom/project7/localmanager/LocalLunhuiEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 94
    iget-object v0, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v13, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    invoke-static {v0, v14, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v15, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 95
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v7, v0, v17

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    aput-object v13, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v2, v16

    :try_start_2
    invoke-virtual {v15, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 96
    nop

    .line 107
    :goto_1
    goto/16 :goto_5

    .line 90
    :cond_6
    move-object/from16 v2, v16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8f6e\u56de\u5145\u80fd\u6b21\u6570\u5df2\u8fbe\u4e0a\u9650\uff0c\u672a\u6d88\u8017\u9053\u5177"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_7
    move-object/from16 v2, v16

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8be5\u9053\u5177\u4e0d\u80fd\u7528\u4e8e\u8f6e\u56de\u5145\u80fd"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_8
    move-object/from16 v2, v16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8f6e\u56de\u8054\u7f51\u623f\u95f4\u5c1a\u672a\u63a5\u5165\uff1b\u8bf7\u4f7f\u7528\u539f\u79bb\u7ebf\u5165\u53e3\uff0c\u672a\u6263\u9664\u8d44\u6e90"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_9
    move-object/from16 v2, v16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8f6e\u56de\u4e4b\u5883\u4ece\u7b2c\u4e8c\u5468\u76ee\u5f00\u653e"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    :goto_2
    move-object/from16 v19, v10

    :goto_3
    move-object/from16 v2, v16

    .line 99
    :goto_4
    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 100
    move-object/from16 v3, p3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 101
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v13, v4, v5

    invoke-static {v1, v14}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v15, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 102
    :cond_a
    invoke-static {v15, v3}, Lcom/project7/localmanager/LocalDailyEngine;->roomFailure(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    .line 103
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

    .line 104
    move-object/from16 v1, v19

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 105
    const/16 v0, 0x10

    const-string v1, "s"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v1

    .line 106
    const-string v3, "h"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 105
    move/from16 p0, v0

    move/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v5

    invoke-static/range {p0 .. p5}, Lcom/project7/localmanager/BsonLite;->combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I[B)[B

    move-result-object v0

    const-string v1, "combatOfflineReward"

    invoke-virtual {v15, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 108
    :cond_b
    :goto_5
    return-object v15
.end method

.method private static begin(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[BJ)V
    .locals 18

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "s"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "LB"

    invoke-virtual {v1, v6, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    .line 136
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v5, v4}, Lcom/project7/localmanager/LocalLunhuiEngine;->open([B[BI)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 137
    const-string v6, "d"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    .line 138
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v8, "lunhuizhijing"

    invoke-static {v6, v8}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 139
    const-string v8, "buff_enhance"

    invoke-static {v6, v8}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 141
    const-string v6, "h"

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 142
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "min_heroes"

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-lt v7, v8, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "max_heroes"

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-gt v7, v8, :cond_7

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 143
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 144
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v8}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f7f\u7528\u5df2\u62e5\u6709\u7684\u795e\u5668\u4f7f\u51fa\u6218"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "q7DailyBattle"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    .line 147
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v9

    const-string v10, "t"

    const/16 v11, 0x10

    if-eqz v9, :cond_3

    .line 148
    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v11, :cond_2

    invoke-static {v7, v3}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 149
    invoke-static {v7, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u65e5\u5e38\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_3
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "q7Battle"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 153
    const-string v12, "combat"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    const-string v12, "of"

    invoke-static {v9, v12}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 155
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "lhzj"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    const-string v9, "ep"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v7

    const/4 v9, 0x0

    if-lez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    move v7, v9

    .line 156
    :goto_1
    const-string v13, "rewards"

    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalLunhuiEngine;->sample([BLjava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 157
    const-string v14, "bonus"

    if-eqz v7, :cond_5

    invoke-static {v5, v14}, Lcom/project7/localmanager/LocalLunhuiEngine;->sample([BLjava/lang/String;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    :cond_5
    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v16, v13

    move-wide/from16 v12, p3

    invoke-static {v15, v12, v13}, Lcom/project7/localmanager/LocalServiceEngine;->recover([BJ)[B

    move-result-object v12

    iput-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 159
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "LP"

    invoke-virtual {v1, v13, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v12

    const-string v15, "consume"

    invoke-static {v12, v15}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v12

    neg-int v12, v12

    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalLunhuiEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 160
    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v11, 0x16

    new-array v11, v11, [Ljava/lang/Object;

    const-string v17, "active"

    aput-object v17, v11, v9

    .line 161
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v11, v9

    const/4 v9, 0x2

    aput-object v10, v11, v9

    const/4 v9, 0x3

    const/16 v10, 0x10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v11, v9

    const/4 v9, 0x4

    aput-object v3, v11, v9

    const/4 v3, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v3

    const/4 v3, 0x6

    aput-object v6, v11, v3

    const/4 v3, 0x7

    aput-object v2, v11, v3

    const/16 v2, 0x8

    aput-object v14, v11, v2

    const/16 v2, 0x9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v11, v2

    const/16 v2, 0xa

    const-string v3, "grants"

    aput-object v3, v11, v2

    const/16 v2, 0xb

    aput-object v16, v11, v2

    const/16 v2, 0xc

    const-string v3, "wishCost"

    aput-object v3, v11, v2

    const/16 v2, 0xd

    .line 162
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v13, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    invoke-static {v4, v15}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v2

    const/16 v2, 0xe

    const-string v4, "wishFailCost"

    aput-object v4, v11, v2

    const/16 v2, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v13, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v4, "fail_consume"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v2

    const-string v1, "lv"

    aput-object v1, v11, v3

    const/16 v1, 0x11

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 163
    const-string v3, "level"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/16 v1, 0x12

    const-string v2, "ml"

    aput-object v2, v11, v1

    const/16 v1, 0x13

    const-string v2, "monster_level"

    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v1

    const/16 v1, 0x14

    const-string v2, "f"

    aput-object v2, v11, v1

    const/16 v1, 0x15

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    .line 160
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-static {v12, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 164
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalLunhuiEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 165
    return-void

    .line 154
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u4e3b\u7ebf\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u51fa\u6218\u961f\u4f0d\u4eba\u6570\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8f6e\u56de\u51fa\u6218\u53c2\u6570\u4e0d\u7b26\u5408\u539f\u5ba2\u6237\u7aef\u7ea6\u5b9a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u901a\u5173\u5bf9\u5e94\u8bb0\u5fc6\u6bbf\u5802\u533a\u57df\u5e76\u53d6\u5f97\u6240\u9700\u7eaa\u5ff5\u7ae0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "city"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 112
    const-string v2, "jpv"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p1

    .line 113
    if-ltz p1, :cond_0

    .line 114
    invoke-static {v0, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 116
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

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x4

    const-string v2, "cjsla"

    aput-object v2, v1, p1

    const/4 p1, 0x5

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "syncJingshenliPower"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 117
    return-void

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7cbe\u795e\u529b\u4e0d\u8db3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static day(J)J
    .locals 7

    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 31
    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 p1, 0x5

    const/4 v1, 0x7

    if-ge p0, v1, :cond_0

    const/4 p0, -0x1

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->add(II)V

    .line 32
    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2710

    mul-long/2addr v1, v3

    const/4 v3, 0x2

    .line 33
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, p0

    int-to-long v3, v3

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v1, p0

    .line 32
    return-wide v1
.end method

.method private static finish(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[B)V
    .locals 23

    .line 177
    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v7, "q7DailyBattle"

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    .line 178
    const-string v2, "s"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v10

    .line 179
    const-string v3, "h"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 180
    const-string v4, "t"

    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/16 v5, 0x10

    .line 206
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 180
    if-ne v4, v5, :cond_b

    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v10, v2, :cond_b

    .line 181
    invoke-static {v8, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 183
    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v2

    const-string v15, "combatOfflineReward"

    const-string v14, "reply"

    if-nez v2, :cond_1

    .line 184
    invoke-static {v8, v14}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v8, v14}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v15, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 185
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalLunhuiEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 186
    return-void

    .line 188
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/BsonLite;->combatWinValue([B)I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    .line 189
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 191
    const-string v2, "lhzj"

    const-string v13, "ep"

    if-eqz v16, :cond_9

    .line 192
    const-string v0, "grants"

    invoke-static {v8, v0}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 193
    const-string v1, "k"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 194
    const-string v1, "i"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v18

    const-string v1, "n"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v19

    const-string v1, "q"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v20

    .line 193
    move-object/from16 v0, p0

    const/4 v12, 0x3

    move-object/from16 v1, p2

    move-object/from16 v21, v2

    move-object/from16 v2, v17

    move-object/from16 v22, v3

    move/from16 v3, v18

    move-object v12, v4

    move/from16 v4, v19

    move-object/from16 v17, v14

    move-object v14, v5

    move/from16 v5, v20

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    move-object v4, v12

    move-object v5, v14

    move-object/from16 v14, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    goto :goto_1

    .line 195
    :cond_3
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object v12, v4

    move-object/from16 v17, v14

    move-object v14, v5

    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 196
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_4

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_3
    goto :goto_2

    .line 198
    :cond_5
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->treasureRewards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 199
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 200
    :cond_6
    move-object/from16 v2, v22

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "bonus"

    invoke-static {v8, v1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 201
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 202
    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_7

    .line 203
    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v0, v13, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto :goto_5

    .line 202
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5165\u573a\u5145\u80fd\u8bb0\u5f55\u4e0d\u4e00\u81f4\uff0c\u672a\u63d0\u4ea4\u5956\u52b1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_8
    move-object/from16 v1, v21

    .line 205
    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    goto :goto_6

    .line 206
    :cond_9
    move-object v1, v2

    move-object v2, v3

    move-object v12, v4

    move-object/from16 v17, v14

    move-object v14, v5

    const-string v3, "LP"

    invoke-virtual {v0, v3, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "consume"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    const-string v3, "fail_consume"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v0

    sub-int/2addr v4, v0

    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalLunhuiEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 207
    :goto_6
    if-eqz v16, :cond_a

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "rwds"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v9, "money"

    aput-object v9, v4, v5

    const/4 v9, 0x1

    aput-object v14, v4, v9

    const-string v9, "item"

    const/4 v14, 0x2

    aput-object v9, v4, v14

    const/4 v9, 0x3

    aput-object v12, v4, v9

    const-string v9, "treasure"

    aput-object v9, v4, v0

    const/4 v0, 0x5

    aput-object v2, v4, v0

    const/4 v0, 0x6

    const-string v2, "pendant"

    aput-object v2, v4, v0

    const/4 v0, 0x7

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    aput-object v2, v4, v0

    .line 207
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v0, "exp_info"

    const/4 v4, 0x2

    aput-object v0, v3, v4

    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v9, 0x3

    aput-object v0, v3, v9

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    move-object v14, v0

    goto :goto_7

    .line 209
    :cond_a
    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    move-object v14, v0

    .line 210
    :goto_7
    const/16 v9, 0x10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    move v0, v4

    move v3, v5

    move v4, v2

    move-object v2, v13

    move/from16 v13, v16

    move-object/from16 v5, v17

    invoke-static/range {v9 .. v14}, Lcom/project7/localmanager/BsonLite;->combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I[B)[B

    move-result-object v9

    .line 211
    const-string v10, "active"

    invoke-static {v8, v10, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v8

    .line 212
    invoke-static {v8, v5, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    .line 213
    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v7, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    iput-object v5, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 214
    new-array v5, v0, [Ljava/lang/Object;

    const-string v7, "r"

    aput-object v7, v5, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "lunhuizhijingBattleFinish"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 215
    invoke-virtual {v6, v15, v9}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 216
    return-void

    .line 182
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8f6e\u56de\u7ed3\u7b97\u4e0e\u5165\u573a\u8bb0\u5f55\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static handles([BLjava/lang/String;[B)Z
    .locals 3

    .line 16
    sget-object v0, Lcom/project7/localmanager/LocalLunhuiEngine;->METHODS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "q7DailyBegin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x10

    const-string v2, "t"

    if-eqz v0, :cond_0

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 17
    :cond_0
    const-string v0, "q7DailyFinish"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_3

    .line 18
    :cond_1
    const-string p2, "q7DailyReset"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "q7DailyBattle"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 16
    :goto_1
    return p0
.end method

.method static open([B[BI)Z
    .locals 4

    .line 21
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string v1, "weeknum"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 22
    :cond_0
    const v1, 0x497c8

    if-ne p2, v1, :cond_1

    return v2

    .line 23
    :cond_1
    const-string p2, "mpd"

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    const-string v1, "area"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v3, "ar"

    invoke-static {p2, v3, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->status([BLjava/lang/String;I)I

    move-result p2

    .line 24
    const-string v1, "badge"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result p1

    .line 25
    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    .line 26
    const-string p2, "bgd"

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string p2, "cb"

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    .line 25
    :goto_1
    return v0

    .line 21
    :cond_5
    :goto_2
    return v0
.end method

.method static refresh([BLcom/project7/localmanager/LocalFeatureCatalog;J)[B
    .locals 16

    .line 36
    move-object/from16 v0, p0

    const-string v1, "weeknum"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-object v0

    .line 37
    :cond_0
    const-string v1, "lhzj"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "LE"

    move-object/from16 v6, p1

    invoke-virtual {v6, v5, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    .line 38
    if-nez v4, :cond_1

    return-object v0

    .line 39
    :cond_1
    const-string v5, "ep"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 40
    const-string v6, "q7day"

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 41
    invoke-static/range {p2 .. p3}, Lcom/project7/localmanager/LocalLunhuiEngine;->day(J)J

    move-result-wide v8

    .line 42
    const-string v10, "add"

    if-nez v7, :cond_3

    .line 44
    if-nez v3, :cond_2

    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v3

    :cond_2
    move-object v15, v1

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v8, v11

    if-lez v11, :cond_4

    .line 46
    new-instance v11, Ljava/text/SimpleDateFormat;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v13, "yyyyMMdd"

    invoke-direct {v11, v13, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 48
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 49
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long/2addr v14, v11

    long-to-double v11, v14

    const-wide v13, 0x4194997000000000L    # 8.64E7

    div-double/2addr v11, v13

    .line 48
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    const-wide/16 v13, 0x1

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 50
    const-string v13, "max"

    invoke-static {v4, v13}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v13

    int-to-long v13, v13

    move-object v15, v1

    int-to-long v0, v3

    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v11, v3

    add-long/2addr v0, v11

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v3, v0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8f6e\u56de\u5145\u80fd\u65e5\u671f\u8bb0\u5f55\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_4
    move-object v15, v1

    .line 55
    :goto_0
    invoke-static {v2, v5, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 56
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v8, v1

    if-lez v1, :cond_6

    :cond_5
    long-to-int v1, v8

    invoke-static {v0, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 57
    :cond_6
    move-object/from16 v1, p0

    move-object v2, v15

    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static reset(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "q7DailyBattle"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 168
    const-string v2, "s"

    invoke-static {p2, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 169
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u53d6\u6d88\u8bf7\u6c42\u4e0e\u5f53\u524d\u8f6e\u56de\u6218\u6597\u4e0d\u5339\u914d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 172
    const/16 p2, 0x10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "LP"

    invoke-virtual {p1, v2, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    const-string v3, "consume"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "fail_consume"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalLunhuiEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    sget-object p2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {p1, v1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 174
    return-void
.end method

.method private static sample([BLjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 121
    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    .line 122
    nop

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 124
    :cond_0
    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    .line 125
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    long-to-double v3, v4

    mul-double/2addr v1, v3

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 127
    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v1, v4

    .line 128
    const-wide/16 v4, 0x0

    cmpg-double v4, v1, v4

    if-gez v4, :cond_1

    const-string p1, "g"

    invoke-static {v3, p1}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 129
    :cond_1
    goto :goto_2

    .line 130
    :cond_2
    :goto_3
    goto :goto_0

    .line 124
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7f3a\u5c11\u6709\u6548\u7684\u539f\u7248\u8f6e\u56de\u5956\u52b1\u6c60"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_4
    return-object v0
.end method

.method static sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 4

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ep"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "lhzj"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalLunhuiEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalLunhuiEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "syncLunhuizhijinigEnergyPoint"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 61
    return-void
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
