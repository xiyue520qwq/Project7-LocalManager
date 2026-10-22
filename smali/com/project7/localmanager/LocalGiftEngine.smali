.class final Lcom/project7/localmanager/LocalGiftEngine;
.super Ljava/lang/Object;
.source "LocalGiftEngine.java"


# static fields
.field private static final COUNTS:[Ljava/lang/String;

.field private static final RANDOM:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalGiftEngine;->RANDOM:Ljava/security/SecureRandom;

    .line 8
    const-string v0, "din"

    const-string v1, "win"

    const-string v2, "ton"

    const-string v3, "mon"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalGiftEngine;->COUNTS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 6

    .line 28
    invoke-static {}, Lcom/project7/localmanager/LocalGiftEngine;->now()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalGiftEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BI)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p0

    return-object p0
.end method

.method static apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BI)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 7

    .line 33
    const-string v0, "requestGetCurMonHead"

    const-string v1, "buyCardMallItem"

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v2, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 35
    int-to-long v3, p5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    :try_start_0
    invoke-static {p0, v3, v4}, Lcom/project7/localmanager/LocalCommerceEngine;->refreshStoreLimits([BJ)[B

    move-result-object v3

    invoke-static {v3, p5}, Lcom/project7/localmanager/LocalGiftEngine;->refresh([BI)[B

    move-result-object v3

    iput-object v3, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 36
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, p1, p2, p4}, Lcom/project7/localmanager/LocalGiftEngine;->buy(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V

    goto :goto_0

    .line 37
    :cond_0
    const-string v3, "buyMoney"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2, p1, p2, p4, p5}, Lcom/project7/localmanager/LocalGiftEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[BI)V

    goto :goto_0

    .line 38
    :cond_1
    const-string v3, "monthCardGetFudaiReward"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, p1, p2, p5}, Lcom/project7/localmanager/LocalGiftEngine;->chargeBox(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;I)V

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2, p2, p5}, Lcom/project7/localmanager/LocalGiftEngine;->monthHead(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;I)V

    goto :goto_0

    .line 40
    :cond_3
    const-string p2, "GiftCardClickEvent"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v2, p1}, Lcom/project7/localmanager/LocalGiftEngine;->syncCard(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    goto :goto_0

    .line 41
    :cond_4
    invoke-static {v2, p1, p4, p5}, Lcom/project7/localmanager/LocalGiftEngine;->monthReward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    goto :goto_2

    .line 42
    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 43
    :goto_1
    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v2, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "m"

    invoke-static {p1, p0}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const-string p1, "showMessageStr"

    invoke-virtual {v2, p1, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 45
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x3

    const-string p2, "i"

    const/4 p4, 0x2

    const/4 p5, 0x1

    const-string v1, "r"

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p0, :cond_5

    new-array p0, v3, [Ljava/lang/Object;

    aput-object v1, p0, v4

    .line 46
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, p0, p5

    aput-object p2, p0, p4

    sget-object v5, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v5, p0, p1

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    .line 45
    const-string v5, "replyBuyCardMallItem"

    invoke-virtual {v2, v5, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 47
    :cond_5
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-array p0, v3, [Ljava/lang/Object;

    aput-object v1, p0, v4

    .line 48
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p0, p5

    aput-object p2, p0, p4

    sget-object p2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object p2, p0, p1

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    .line 47
    const-string p1, "replyGetCurMonHead"

    invoke-virtual {v2, p1, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 50
    :cond_6
    :goto_2
    return-object v2
.end method

.method private static buy(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V
    .locals 22

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "store_id"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v4, "num"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v5

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "S"

    invoke-virtual {v1, v7, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "ldd"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    .line 102
    if-nez v6, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v9, "CS"

    invoke-virtual {v1, v9, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    .line 103
    :cond_0
    if-eqz v6, :cond_15

    .line 104
    const-string v1, "coin_type"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v1

    .line 105
    const-string v9, "product"

    invoke-static {v6, v9}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 106
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 107
    :goto_0
    const-string v13, "costCurrency"

    invoke-static {v6, v13}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 108
    const-string v14, "cost"

    const-string v15, "crystal"

    const-string v10, "yuanbao"

    const-string v11, "costItem"

    if-eqz v13, :cond_3

    if-nez v1, :cond_2

    if-nez v12, :cond_2

    invoke-static {v6, v11}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v16

    if-nez v16, :cond_2

    .line 109
    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v16

    if-nez v16, :cond_2

    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v16

    if-nez v16, :cond_2

    const-string v2, "tCoin"

    move-object/from16 v16, v4

    const-string v4, "bCoin"

    move-object/from16 v17, v9

    const-string v9, "lxtlCoin"

    filled-new-array {v2, v4, v9}, [Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_1

    .line 112
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6311\u6218\u5546\u54c1\u7684\u652f\u4ed8\u65b9\u5f0f\u65e0\u6548\uff0c\u672a\u6263\u9664\u8d44\u6e90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_3
    move-object/from16 v16, v4

    move-object/from16 v17, v9

    .line 113
    :goto_1
    if-lez v5, :cond_14

    const-string v2, "max"

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gt v5, v2, :cond_14

    const/16 v2, 0x64

    if-gt v5, v2, :cond_14

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "level"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-lt v2, v4, :cond_14

    const/4 v2, 0x4

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    const/4 v9, 0x1

    if-eq v1, v9, :cond_4

    if-eq v1, v4, :cond_4

    if-ne v1, v2, :cond_14

    :cond_4
    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    .line 115
    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-lez v9, :cond_14

    :cond_5
    if-ne v1, v4, :cond_6

    if-eqz v12, :cond_14

    :cond_6
    if-ne v1, v2, :cond_7

    .line 117
    invoke-static {v6, v11}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v9

    const/16 v4, 0x273f

    if-ne v9, v4, :cond_14

    .line 119
    :cond_7
    const-string v4, "limits"

    invoke-static {v6, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 120
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 121
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v18, v8

    sget-object v8, Lcom/project7/localmanager/LocalGiftEngine;->COUNTS:[Ljava/lang/String;

    move-object/from16 v19, v15

    array-length v15, v8

    if-ge v2, v15, :cond_b

    .line 122
    aget-object v8, v8, v2

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v8

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    :goto_3
    invoke-static {v15, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v15

    .line 124
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_a

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v15, v4, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gift purchase limit reached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v21, v4

    .line 125
    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, v18

    move-object/from16 v15, v19

    move-object/from16 v4, v21

    goto :goto_2

    .line 127
    :cond_b
    if-eqz v13, :cond_d

    .line 128
    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v1

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v13}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 129
    if-lt v2, v1, :cond_c

    .line 130
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    sub-int/2addr v2, v1

    invoke-static {v4, v13, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 131
    goto :goto_6

    .line 129
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6311\u6218\u4ee3\u5e01\u4e0d\u8db3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_d
    const/4 v2, 0x4

    if-eq v1, v2, :cond_10

    if-nez v1, :cond_e

    invoke-static {v6, v11}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_e

    goto :goto_5

    .line 133
    :cond_e
    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    if-nez v1, :cond_11

    if-nez v12, :cond_11

    .line 134
    :cond_f
    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v1

    invoke-static {v0, v10, v1}, Lcom/project7/localmanager/LocalGiftEngine;->spend(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;I)V

    .line 135
    move-object/from16 v1, v19

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalGiftEngine;->spend(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;I)V

    goto :goto_6

    .line 132
    :cond_10
    :goto_5
    invoke-static {v6, v11}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 137
    :cond_11
    :goto_6
    move-object/from16 v1, p1

    invoke-static {v0, v1, v6, v5}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 138
    const/4 v1, 0x0

    :goto_7
    sget-object v2, Lcom/project7/localmanager/LocalGiftEngine;->COUNTS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_12

    aget-object v2, v2, v1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 139
    :cond_12
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v2, v18

    invoke-static {v1, v2, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 140
    const-string v1, "d"

    if-eqz v12, :cond_13

    .line 141
    const/16 v2, 0x2e

    const/16 v4, 0x5f

    move-object/from16 v8, v17

    invoke-virtual {v8, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 142
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "eby"

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 143
    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 144
    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v11, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    .line 143
    invoke-static {v4, v2, v11}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    invoke-static {v10, v8, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 145
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalAccountFeatures;->refreshRecharge([B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 146
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "sma"

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v8, "rcd"

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v4, v8

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v4, "rookieRechargeSyncData"

    invoke-virtual {v0, v4, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 148
    :cond_13
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 149
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    const-string v2, "r"

    const/4 v8, 0x0

    aput-object v2, v4, v8

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v2

    const-string v2, "i"

    const/4 v8, 0x2

    aput-object v2, v4, v8

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v8, 0x3

    aput-object v2, v4, v8

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v4, "replyBuyCardMallItem"

    invoke-virtual {v0, v4, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 150
    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const-string v1, "w"

    const/4 v10, 0x2

    aput-object v1, v2, v10

    .line 151
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v2, v8

    const-string v1, "t"

    const/4 v4, 0x4

    aput-object v1, v2, v4

    const/4 v1, 0x5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v1, 0x6

    const-string v4, "m"

    aput-object v4, v2, v1

    const/4 v1, 0x7

    .line 152
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v1

    const/16 v1, 0x8

    const-string v4, "z"

    aput-object v4, v2, v1

    const/16 v1, 0x9

    new-instance v4, Lcom/project7/localmanager/BsonLite$ArrayValue;

    const-string v8, "zin"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v4, v2, v1

    const/16 v1, 0xa

    const-string v4, "itemid"

    aput-object v4, v2, v1

    const/16 v1, 0xb

    .line 153
    const-string v4, "item"

    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const/16 v1, 0xc

    aput-object v16, v2, v1

    const/16 v1, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const/16 v1, 0xe

    const-string v4, "result"

    aput-object v4, v2, v1

    const/16 v1, 0xf

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v4

    aput-object v4, v2, v1

    const/16 v1, 0x10

    const-string v4, "sd"

    aput-object v4, v2, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x12

    const-string v3, "silence"

    aput-object v3, v2, v1

    const/16 v1, 0x13

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 154
    const-string v5, "ext"

    move-object/from16 v6, p3

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    .line 150
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "buyCardMallItemDone"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 155
    return-void

    .line 118
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid gift purchase conditions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5546\u54c1\u672a\u63a5\u5165\uff0c\u672a\u6263\u9664\u8d44\u6e90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static charge(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[BI)V
    .locals 16

    .line 158
    move-object/from16 v6, p0

    move-object/from16 v0, p2

    const-string v7, "g"

    move-object/from16 v1, p3

    invoke-static {v1, v7}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalGiftEngine;->goods(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 159
    const-string v1, "C"

    invoke-virtual {v0, v1, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    .line 160
    const-string v0, "days"

    invoke-static {v10, v0}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v11, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-lez v0, :cond_3

    .line 161
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "gc"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 162
    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v4, "1"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 163
    invoke-static/range {p4 .. p4}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v5

    sub-int v5, v4, v5

    invoke-static {v3}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v15

    add-int/2addr v5, v15

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 164
    add-int/lit8 v15, v5, 0x1e

    const/16 v12, 0x64

    if-gt v15, v12, :cond_2

    .line 165
    new-array v12, v11, [Ljava/lang/Integer;

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v3, p4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v12, v13

    const/16 v3, 0x1e

    if-lez v5, :cond_1

    add-int/2addr v3, v4

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v12, v14

    const-string v3, "2"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v12, v3

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v9, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 166
    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto :goto_1

    .line 164
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Month card maximum is 100 days"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_3
    :goto_1
    const-string v0, "yuanbao"

    invoke-static {v10, v0}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    const/4 v3, 0x0

    invoke-static {v10, v0}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    const-string v2, "yuanbao"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 169
    :cond_4
    move-object/from16 v0, p1

    invoke-static {v6, v0, v10, v14}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 170
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "eby"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 171
    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3, v14}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-static {v0, v9, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 172
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalAccountFeatures;->refreshRecharge([B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 173
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 174
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "d"

    aput-object v0, v1, v13

    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "sma"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "rcd"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    aput-object v0, v1, v14

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "rookieRechargeSyncData"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 175
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "r"

    aput-object v1, v0, v13

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v1

    aput-object v1, v0, v14

    const/4 v1, 0x2

    aput-object v7, v0, v1

    aput-object v8, v0, v11

    const/4 v1, 0x4

    const-string v2, "i"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "onOrderYuanbao"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 176
    return-void
.end method

.method private static chargeBox(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;I)V
    .locals 11

    .line 220
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "gcd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 221
    const-string v2, "fc"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_3

    .line 222
    const-string v3, "fg"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v5

    .line 223
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    const-string v7, "MC"

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    move v6, v8

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v7, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 225
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 226
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v7, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p2

    .line 227
    if-eqz p2, :cond_1

    .line 228
    invoke-static {p0, p1, p2, v8}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 229
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {v5}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    .line 231
    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result p2

    sub-int/2addr p2, v4

    invoke-static {p1, v2, p2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 232
    invoke-static {p3}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result p2

    const-string p3, "lfrd"

    invoke-static {p1, p3, p2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 233
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v1, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 234
    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 235
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "fudai_reward_reply"

    aput-object p3, p1, p2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v8

    const/4 p2, 0x2

    const-string p3, "reward"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    invoke-virtual {p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalGiftEngine;->syncCard(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 236
    return-void

    .line 227
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown month card reward stage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Month card reward catalog unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 221
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Month card requires six successful daily claims"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V
    .locals 11

    .line 79
    if-ltz p2, :cond_7

    .line 80
    if-nez p2, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "inv"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 82
    const-string v2, "items"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 84
    nop

    .line 85
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "i"

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 86
    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-ne v8, p1, :cond_2

    if-lez p2, :cond_2

    .line 87
    const-string v8, "w"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {p2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr p2, v9

    .line 88
    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_1

    new-instance v8, Lcom/project7/localmanager/BsonLite$UuidValue;

    const-string v9, "u"

    invoke-static {v7, v9}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v8, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    if-nez p2, :cond_6

    .line 94
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 95
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p1, :cond_4

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v8, p1, v0

    aput-object v5, p1, p2

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v2, "updateItems"

    invoke-virtual {p0, v2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 96
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v8, p1, v0

    aput-object v6, p1, p2

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "deleteItems"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 97
    :cond_5
    return-void

    .line 93
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient gift tickets"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid ticket price"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static day(I)I
    .locals 1

    .line 24
    add-int/lit16 p0, p0, -0x6270

    const v0, 0x15180

    invoke-static {p0, v0}, Ljava/lang/Math;->floorDiv(II)I

    move-result p0

    return p0
.end method

.method private static goods(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 20
    if-eqz p1, :cond_2

    const-string v0, "C"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    .line 20
    :cond_2
    :goto_0
    return-object p1
.end method

.method static handles(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Z
    .locals 2

    .line 10
    const-string v0, "getGiftCardReward"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    const-string v0, "monthCardGetFudaiReward"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GiftCardClickEvent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    const-string v0, "requestGetCurMonHead"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    const-string v0, "buyMoney"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "g"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalGiftEngine;->goods(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "C"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 14
    :cond_0
    const-string v0, "buyCardMallItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "store_id"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "S"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 10
    :goto_1
    return p0
.end method

.method private static monthHead(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;I)V
    .locals 8

    .line 239
    nop

    .line 240
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "gc"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "g58_30yk_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 243
    if-lez v4, :cond_2

    invoke-static {p2}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v5

    invoke-static {v4}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 244
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {p2}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v4}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 245
    :goto_1
    goto :goto_2

    .line 247
    :cond_2
    goto :goto_0

    .line 240
    :cond_3
    move v0, v2

    .line 248
    :goto_2
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 249
    int-to-long v4, p2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 250
    const/4 p2, 0x2

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "MH"

    invoke-virtual {p1, v4, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    .line 251
    const-string v1, "frame"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v4, "item"

    invoke-static {p1, v4}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result p1

    .line 252
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "tbk"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    if-eqz v0, :cond_5

    if-lez v1, :cond_5

    if-lez p1, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 255
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v6}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v6, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 258
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "bk"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/project7/localmanager/BsonLite;->bbsSkinReplyDocument(Ljava/lang/Iterable;I)[B

    move-result-object v0

    const-string v1, "updateBbsSkin"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 259
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "r"

    aput-object v1, v0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, "i"

    aput-object v4, v0, p2

    const/4 v4, 0x3

    new-array v5, p2, [Ljava/lang/Object;

    aput-object v1, v5, v2

    new-array p2, p2, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "replyGetCurMonHead"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 260
    return-void

    .line 254
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monthly frame requires more than 30 remaining month-card days, or is already owned"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static monthReward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V
    .locals 12

    .line 179
    const-string v0, "s"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 180
    if-eqz p2, :cond_2

    .line 181
    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "gc"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 183
    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-string v5, "1"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v5

    const-string v6, "2"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 184
    const-string v6, "g58.30yk."

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-lez v4, :cond_1

    invoke-static {p3}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result p2

    invoke-static {v4}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v6

    if-lt p2, v6, :cond_1

    invoke-static {p3}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result p2

    invoke-static {v4}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v6

    add-int/2addr v6, v5

    if-ge p2, v6, :cond_1

    if-lez v3, :cond_0

    .line 185
    invoke-static {p3}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result p2

    invoke-static {v3}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v3

    if-le p2, v3, :cond_1

    .line 186
    :cond_0
    const/4 v9, 0x0

    const/16 v10, 0x64

    const/4 v11, 0x1

    const-string v8, "yuanbao"

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 187
    const/4 p1, 0x3

    new-array p2, p1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, p2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, p2, v6

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {v1, v0, p2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p2

    .line 188
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v2, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 189
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalGiftEngine;->refresh([BI)[B

    move-result-object p2

    iput-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 190
    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 191
    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "r"

    aput-object p3, p2, v4

    invoke-virtual {p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object p3

    aput-object p3, p2, v5

    const-string p3, "d"

    aput-object p3, p2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, p1

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "onGiftCardExpired"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 192
    sget-object p1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalGiftEngine;->syncCard(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 193
    return-void

    .line 185
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Month card reward unavailable or already claimed today"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing month card ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static now()I
    .locals 4

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static refresh([BI)[B
    .locals 10

    .line 196
    const-string v0, "gcd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 197
    const-string v2, "lfqd"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 198
    const/4 v4, -0x1

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 199
    :goto_0
    const-string v6, "gc"

    invoke-static {p0, v6}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "g58_30yk_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 201
    :cond_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    const-string v8, "2"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v7

    .line 202
    if-lez v7, :cond_2

    if-gt v7, p1, :cond_2

    invoke-static {v7}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 203
    :cond_2
    goto :goto_1

    .line 205
    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    if-le v5, v4, :cond_5

    .line 206
    const-string p1, "fc"

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-static {v1, p1, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 207
    invoke-static {p1, v2, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 208
    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 210
    :cond_5
    return-object p0
.end method

.method static reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V
    .locals 12

    .line 54
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_6

    const-string v1, "rewards"

    invoke-static {p2, v1}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 55
    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    .line 56
    nop

    .line 57
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "w"

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v6

    goto :goto_2

    .line 58
    :cond_0
    cmp-long v3, v6, v4

    if-lez v3, :cond_4

    .line 59
    sget-object v3, Lcom/project7/localmanager/LocalGiftEngine;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v3

    long-to-double v5, v6

    mul-double/2addr v3, v5

    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v3, v7

    const-wide/16 v7, 0x0

    cmpg-double v7, v3, v7

    if-gez v7, :cond_1

    move-object v5, v6

    .line 62
    :cond_2
    const-string v2, "g"

    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 63
    const-string v4, "k"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "i"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v8

    const-string v4, "n"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v9

    const-string v4, "q"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v10

    const-string v4, "design"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v11

    .line 62
    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v5 .. v11}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III[B)V

    goto :goto_3

    .line 64
    :cond_3
    goto/16 :goto_1

    .line 58
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid gift reward weights"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 65
    :cond_6
    return-void
.end method

.method static spend(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;I)V
    .locals 8

    .line 68
    if-ltz p2, :cond_4

    .line 69
    if-nez p2, :cond_0

    return-void

    .line 70
    :cond_0
    const-string v0, "yuanbao"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "fyuanbao"

    goto :goto_0

    :cond_1
    const-string v1, "bind_crystal"

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, p1}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "dyuanbao"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalGiftEngine;->v([BLjava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 73
    :goto_1
    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v4, v6

    int-to-long v6, v0

    sub-long/2addr v4, v6

    int-to-long v6, p2

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    .line 74
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 75
    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    sub-int/2addr v3, v0

    invoke-static {v4, v1, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    sub-int/2addr p2, v0

    sub-int/2addr v2, p2

    invoke-static {v1, p1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 76
    return-void

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient gift currency"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid gift price"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static syncCard(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 8

    .line 214
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "d"

    aput-object v3, v1, v2

    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "gcd"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    const-string v6, "ext_info"

    aput-object v6, v1, v4

    const/4 v7, 0x3

    aput-object p1, v1, v7

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v1, "monthCardSyncData"

    invoke-virtual {p0, v1, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 215
    new-array p1, v0, [Ljava/lang/Object;

    aput-object v3, p1, v2

    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v0, p1, v5

    aput-object v6, p1, v4

    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v0, p1, v7

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "monthCardSyncAttr"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 216
    return-void
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
