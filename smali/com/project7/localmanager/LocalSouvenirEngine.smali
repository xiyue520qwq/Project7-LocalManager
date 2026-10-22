.class final Lcom/project7/localmanager/LocalSouvenirEngine;
.super Ljava/lang/Object;
.source "LocalSouvenirEngine.java"


# static fields
.field private static final COUNTS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    const-string v0, "din"

    const-string v1, "win"

    const-string v2, "ton"

    const-string v3, "mon"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalSouvenirEngine;->COUNTS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 18

    .line 61
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "dialogue"

    const-string v6, "reward"

    const-string v7, "cgs"

    const-string v8, "ssl"

    const-string v9, "day"

    const-string v10, "q7ActionSupply"

    const-string v11, "ldd"

    new-instance v12, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v12, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 64
    nop

    .line 65
    const/16 v16, 0x0

    :try_start_0
    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v14

    move-object/from16 v17, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 64
    move-object/from16 v15, v17

    invoke-static {v15, v13, v14}, Lcom/project7/localmanager/LocalCommerceEngine;->refreshStoreLimits([BJ)[B

    move-result-object v13

    invoke-static {v13, v2, v3}, Lcom/project7/localmanager/LocalSouvenirEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v13

    iput-object v13, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 66
    const-string v13, "actionRewardRequest"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 67
    iget-object v7, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7}, Lcom/project7/localmanager/LocalSouvenirEngine;->day([B)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "clearActionReward"

    const-string v11, "cd"

    const-string v13, "get_city_data_reply"

    const-string v14, "city"

    if-eqz v7, :cond_0

    .line 68
    const/4 v2, 0x2

    :try_start_1
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v11, v0, v16

    iget-object v2, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 69
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-virtual {v12, v8, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 70
    return-object v12

    .line 72
    :cond_0
    iget-object v7, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v2, v3}, Lcom/project7/localmanager/LocalSouvenirEngine;->supply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v7

    .line 73
    if-eqz v7, :cond_1

    iget-object v15, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15, v14}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    const-string v1, "acr"

    invoke-static {v15, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const/4 v1, 0x1

    invoke-static {v12, v0, v7, v1}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 76
    iget-object v0, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v1, 0x4

    new-array v15, v1, [Ljava/lang/Object;

    aput-object v9, v15, v16

    iget-object v1, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalSouvenirEngine;->day([B)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    aput-object v1, v15, v9

    const/4 v1, 0x2

    aput-object v6, v15, v1

    invoke-virtual {v12}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v1

    const/4 v9, 0x3

    aput-object v1, v15, v9

    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-static {v0, v10, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 77
    iget-object v0, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/LocalSouvenirEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    iput-object v0, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 78
    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 79
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v11, v0, v16

    iget-object v1, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v14}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 80
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-virtual {v12, v8, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 81
    const-string v0, "actionRewardReply"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v6, v2, v16

    invoke-virtual {v12}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v5, v2, v1

    invoke-static {v7, v5}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 82
    goto/16 :goto_2

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5f53\u5929\u884c\u52a8\u5c1a\u672a\u8017\u5c3d\uff0c\u6682\u65e0\u53ef\u9886\u53d6\u7684\u8865\u7ed9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    const-string v1, "updateSouvenirLevel"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    iget-object v0, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v0

    .line 84
    const-string v1, "SL"

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    .line 85
    if-eqz v1, :cond_4

    .line 86
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 88
    iget-object v0, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v1, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v8, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v11, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v12, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move v0, v3

    goto :goto_0

    .line 87
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u89e3\u9501\u7684CG\u6570\u91cf\u5c1a\u672a\u8fbe\u5230\u7eaa\u5ff5\u5546\u5e97\u5347\u7ea7\u6761\u4ef6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_4
    :goto_0
    const-string v1, "syncSouvenirLevel"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "l"

    aput-object v2, v3, v16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_1

    .line 91
    :cond_5
    move-object/from16 v1, p5

    invoke-static {v12, v0, v2, v1}, Lcom/project7/localmanager/LocalSouvenirEngine;->buy(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    nop

    .line 96
    :goto_2
    goto :goto_4

    .line 92
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 93
    :goto_3
    new-instance v12, Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-object/from16 v1, p0

    invoke-direct {v12, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 94
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v1, "m"

    aput-object v1, v2, v16

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v12, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 95
    const-string v0, "buyCardMallItem"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "r"

    aput-object v1, v0, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "i"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "replyBuyCardMallItem"

    invoke-virtual {v12, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 97
    :cond_6
    :goto_4
    return-object v12
.end method

.method private static buy(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V
    .locals 19

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "store_id"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v4, "num"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v5

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "SS"

    invoke-virtual {v1, v7, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "ldd"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    .line 103
    if-eqz v6, :cond_b

    if-lez v5, :cond_b

    const/16 v9, 0x64

    const-string v10, "max"

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-gt v5, v9, :cond_b

    .line 104
    const-string v9, "coin_type"

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v10, "level"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v9

    const-string v12, "playerLevel"

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v12

    if-lt v9, v12, :cond_b

    .line 105
    const-string v9, "ssl"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v12

    if-lt v9, v12, :cond_b

    .line 106
    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "SL"

    invoke-virtual {v1, v10, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    .line 107
    if-eqz v1, :cond_a

    new-instance v9, Ljava/util/HashSet;

    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v12, "cgs"

    invoke-static {v10, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-lt v9, v1, :cond_a

    .line 109
    const-string v1, "limits"

    invoke-static {v6, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 110
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 111
    const/4 v10, 0x0

    move v12, v10

    :goto_0
    sget-object v13, Lcom/project7/localmanager/LocalSouvenirEngine;->COUNTS:[Ljava/lang/String;

    array-length v14, v13

    if-ge v12, v14, :cond_2

    .line 112
    aget-object v13, v13, v12

    invoke-static {v7, v13}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v13

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v14

    .line 114
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lez v15, :cond_1

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-gt v14, v15, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5546\u54c1\u5df2\u8fbe\u5230\u9650\u8d2d\u6b21\u6570"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 117
    :cond_2
    const-string v1, "cost"

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v1

    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v13, "souvenir"

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v12

    .line 118
    if-ltz v1, :cond_9

    if-gt v1, v12, :cond_9

    .line 119
    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    sub-int/2addr v12, v1

    invoke-static {v14, v13, v12}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 120
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 121
    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v13, "inv"

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    const-string v14, "items"

    invoke-static {v12, v14}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const-string v11, "u"

    if-eqz v15, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    invoke-static {v15, v11}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    goto :goto_2

    .line 122
    :cond_3
    move-object/from16 v12, p1

    invoke-static {v0, v12, v6, v5}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 123
    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v14}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v12

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 124
    nop

    :goto_3
    move-object/from16 v16, v7

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    if-ge v10, v7, :cond_6

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7, v11}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object/from16 v17, v1

    const-string v1, "tr"

    invoke-static {v7, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 125
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v7, "trade"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v7

    move-object/from16 v18, v11

    const-string v11, "tt"

    invoke-static {v1, v11, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 126
    invoke-interface {v12, v10, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 124
    :cond_4
    move-object/from16 v17, v1

    :cond_5
    move-object/from16 v18, v11

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v11, v18

    goto :goto_3

    .line 128
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v7, "i"

    const/4 v10, 0x2

    if-nez v1, :cond_7

    .line 129
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v13}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11, v14, v12}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v11

    invoke-static {v1, v13, v11}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 130
    new-array v1, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v1, v11

    const/4 v11, 0x1

    aput-object v15, v1, v11

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v11, "updateItems"

    invoke-virtual {v0, v11, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 132
    :cond_7
    move-object/from16 v11, v16

    const/4 v1, 0x0

    :goto_5
    sget-object v12, Lcom/project7/localmanager/LocalSouvenirEngine;->COUNTS:[Ljava/lang/String;

    array-length v13, v12

    if-ge v1, v13, :cond_8

    aget-object v12, v12, v1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-static {v13}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 133
    :cond_8
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v8, v11}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 134
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 135
    const/4 v1, 0x4

    new-array v8, v1, [Ljava/lang/Object;

    const-string v12, "r"

    const/4 v13, 0x0

    aput-object v12, v8, v13

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v8, v12

    aput-object v7, v8, v10

    sget-object v7, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v12, 0x3

    aput-object v7, v8, v12

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    const-string v8, "replyBuyCardMallItem"

    invoke-virtual {v0, v8, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 136
    const/16 v7, 0x14

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "d"

    const/4 v13, 0x0

    aput-object v8, v7, v13

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-static {v8}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    const/4 v13, 0x1

    aput-object v8, v7, v13

    const-string v8, "w"

    aput-object v8, v7, v10

    .line 137
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-static {v8}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    aput-object v8, v7, v12

    const-string v8, "t"

    aput-object v8, v7, v1

    const/4 v1, 0x5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-static {v8}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x6

    const-string v8, "m"

    aput-object v8, v7, v1

    const/4 v1, 0x7

    .line 138
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-static {v8}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    aput-object v8, v7, v1

    const/16 v1, 0x8

    const-string v8, "z"

    aput-object v8, v7, v1

    const/16 v1, 0x9

    new-instance v8, Lcom/project7/localmanager/BsonLite$ArrayValue;

    const-string v9, "zin"

    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v8, v7, v1

    const/16 v1, 0xa

    const-string v8, "itemid"

    aput-object v8, v7, v1

    const/16 v1, 0xb

    .line 139
    const-string v8, "item"

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v1

    const/16 v1, 0xc

    aput-object v4, v7, v1

    const/16 v1, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    const/16 v1, 0xe

    const-string v4, "result"

    aput-object v4, v7, v1

    const/16 v1, 0xf

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v4

    aput-object v4, v7, v1

    const/16 v1, 0x10

    const-string v4, "sd"

    aput-object v4, v7, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    const/16 v1, 0x12

    const-string v3, "silence"

    aput-object v3, v7, v1

    const/16 v1, 0x13

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 140
    const-string v5, "ext"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v1

    .line 136
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "buyCardMallItemDone"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 141
    return-void

    .line 118
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7eaa\u5ff5\u5238\u4e0d\u8db3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u89e3\u9501\u7684CG\u6570\u91cf\u4e0d\u8db3\uff0c\u672a\u6263\u9664\u7eaa\u5ff5\u5238"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8d2d\u4e70\u6570\u91cf\u6216\u7eaa\u5ff5\u5546\u5e97\u7b49\u7ea7\u4e0d\u7b26\u5408\u6761\u4ef6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d([BLjava/lang/String;)[B
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static day([B)Ljava/lang/String;
    .locals 4

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weeknum"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "w"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v1, "d"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static handles(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Z
    .locals 1

    .line 13
    const-string v0, "actionRewardRequest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "updateSouvenirLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    const-string v0, "buyCardMallItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "store_id"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "SS"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method static recoverShopUnlock([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 4

    .line 38
    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    const/16 v1, 0xbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 41
    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    return-void

    .line 44
    :cond_1
    iget-boolean v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-nez v0, :cond_7

    iget-boolean v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v2, 0x417

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 45
    :cond_2
    const-string v0, "q7ActionSupply"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 46
    const-string v0, "day"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_6

    const-string v2, "[0-9]+:[0-9]+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 50
    :cond_3
    const-string v0, "reward"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "item"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 51
    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/16 v3, 0x149

    if-ne v2, v3, :cond_4

    const-string v2, "1"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 52
    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    return-void

    .line 56
    :cond_4
    goto :goto_0

    .line 57
    :cond_5
    return-void

    .line 47
    :cond_6
    :goto_1
    return-void

    .line 44
    :cond_7
    :goto_2
    return-void

    .line 38
    :cond_8
    :goto_3
    return-void
.end method

.method static refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 3

    .line 26
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalSouvenirEngine;->supply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/project7/localmanager/LocalSouvenirEngine;->day([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "q7ActionSupply"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "day"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "ids"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 29
    :goto_1
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 30
    const-string v2, "acr"

    if-eqz p2, :cond_2

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_4

    .line 31
    :cond_3
    invoke-static {v1, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 32
    :cond_4
    const-string p1, "ldd"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    .line 33
    const-string v0, "ssl"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_5

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 34
    :cond_5
    return-object p0
.end method

.method private static supply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 3

    .line 18
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v1, 0x417

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v1, 0x3ec

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalEconomyEngine;->actions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    const-string p2, "weeknum"

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "w"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalSouvenirEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string p2, "d"

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalSouvenirEngine;->v([BLjava/lang/String;)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x7

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":24"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AR"

    invoke-virtual {p1, v1, p2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p2

    .line 22
    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-1:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p2

    :cond_2
    return-object p2

    .line 19
    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
