.class final Lcom/project7/localmanager/LocalTreasurePlanEngine;
.super Ljava/lang/Object;
.source "LocalTreasurePlanEngine.java"


# static fields
.field static final MAX_PLANS:I = 0xa


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 21

    .line 16
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "tpi"

    const-string v5, "htp"

    const-string v6, "h"

    const-string v7, "id"

    new-instance v8, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v8, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 18
    const/4 v11, 0x2

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->handles(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 19
    invoke-static {v3, v7}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 20
    if-eqz v12, :cond_15

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->plans([B)Ljava/util/Map;

    move-result-object v13

    .line 22
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->bindings([B)Ljava/util/Map;

    move-result-object v14

    .line 23
    const-string v15, "requestSaveTreasurePlan"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x5

    const/16 v17, 0x3

    const/4 v9, 0x4

    if-eqz v15, :cond_c

    .line 24
    invoke-interface {v13, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u6700\u591a\u4fdd\u5b58 10 \u4e2a\u5f71\u88c5\u65b9\u6848"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    :goto_0
    const-string v2, "n"

    invoke-static {v3, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    const-string v4, "zc"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 28
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-gt v5, v6, :cond_b

    .line 30
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v11, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v9, :cond_a

    .line 32
    :cond_2
    const-string v5, "i"

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 33
    if-eqz v3, :cond_9

    .line 34
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 37
    nop

    .line 38
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Ljava/lang/String;

    .line 39
    invoke-static {v3, v9}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 40
    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalEquipmentEngine;->findOwned([BLjava/lang/String;)[B

    move-result-object v11

    .line 41
    if-eqz v9, :cond_5

    if-eqz v11, :cond_5

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 43
    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalEquipmentEngine;->itemCost([BLcom/project7/localmanager/LocalFeatureCatalog;)I

    move-result v10

    .line 46
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_3

    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->isExclusive([BLcom/project7/localmanager/LocalFeatureCatalog;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/4 v9, 0x4

    const/4 v11, 0x2

    goto :goto_1

    .line 47
    :cond_3
    move-object/from16 p2, v3

    new-instance v3, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v3, v9}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->isExclusive([BLcom/project7/localmanager/LocalFeatureCatalog;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v15, v10}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    move v15, v3

    .line 49
    :cond_4
    move-object/from16 v3, p2

    const/4 v9, 0x4

    const/4 v11, 0x2

    goto :goto_1

    .line 42
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u65b9\u6848\u5305\u542b\u672a\u62e5\u6709\u6216\u91cd\u590d\u7684\u5f71\u88c5"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    .line 51
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u9009\u62e9\u65b9\u6848\u4e2d\u7684\u5f71\u88c5"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_8
    :goto_2
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "name"

    const/4 v7, 0x0

    aput-object v5, v3, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const-string v2, "treasure"

    const/4 v5, 0x2

    aput-object v2, v3, v5

    aput-object v6, v3, v17

    const-string v2, "zhuanshu_cost"

    const/4 v5, 0x4

    aput-object v2, v3, v5

    aput-object v4, v3, v16

    const-string v2, "cost"

    const/4 v4, 0x6

    aput-object v2, v3, v4

    const/4 v2, 0x7

    .line 53
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 52
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 54
    invoke-interface {v13, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {v1, v13, v14}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->store([BLjava/util/Map;Ljava/util/Map;)[B

    move-result-object v3

    iput-object v3, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 56
    invoke-static {v8, v12, v2}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->saveReply(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V

    .line 57
    invoke-static {v8, v0, v12}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->clearMismatchedBindings(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)V

    .line 58
    goto/16 :goto_4

    .line 33
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5f71\u88c5\u65b9\u6848\u5217\u8868\u65e0\u6548"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u4e13\u5c5e\u5f71\u88c5\u5360\u4f4d cost \u65e0\u6548"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u8f93\u5165\u6709\u6548\u7684\u65b9\u6848\u540d\u79f0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_c
    const-string v9, "removeTreasurePlan"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "\u5f71\u88c5\u65b9\u6848\u4e0d\u5b58\u5728"

    if-eqz v9, :cond_e

    .line 59
    :try_start_1
    invoke-interface {v13, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 60
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/project7/localmanager/LocalTreasurePlanEngine$$ExternalSyntheticLambda0;

    invoke-direct {v2, v12}, Lcom/project7/localmanager/LocalTreasurePlanEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 61
    invoke-static {v1, v13, v14}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->store([BLjava/util/Map;Ljava/util/Map;)[B

    move-result-object v0

    iput-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 62
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "heromgr"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 63
    const-string v2, "replyRemoveTreasurePlan"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "idx"

    const/4 v7, 0x0

    aput-object v6, v3, v7

    new-instance v6, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v6, v12}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const/4 v6, 0x2

    aput-object v5, v3, v6

    new-instance v6, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 64
    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v6, v3, v17

    const/4 v5, 0x4

    aput-object v4, v3, v5

    new-instance v5, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 65
    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v5, v3, v16

    .line 63
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 66
    goto/16 :goto_4

    .line 59
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_e
    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 68
    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 70
    invoke-interface {v13, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 71
    const-string v4, "requestUseTreasurePlan"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 72
    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->equipped([BI)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v3, v12, v2}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->matches([BLcom/project7/localmanager/LocalFeatureCatalog;ILjava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {v1, v13, v14}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->store([BLjava/util/Map;Ljava/util/Map;)[B

    move-result-object v0

    iput-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 76
    const-string v0, "replyUseTreasurePlan"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v7, v2, v3

    new-instance v3, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v3, v12}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v17

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_4

    .line 73
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5f53\u524d\u88c5\u5907\u4e0e\u65b9\u6848\u4e0d\u4e00\u81f4\uff0c\u8bf7\u5148\u5e94\u7528\u65b9\u6848"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3

    .line 79
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8be5\u795e\u5668\u4f7f\u7ed1\u5b9a\u7684\u662f\u5176\u4ed6\u5f71\u88c5\u65b9\u6848"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_12
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {v1, v13, v14}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->store([BLjava/util/Map;Ljava/util/Map;)[B

    move-result-object v0

    iput-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 82
    const-string v0, "replyUnuseTreasurePlan"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v7, v2, v3

    new-instance v3, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v3, v12}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v17

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 88
    :goto_4
    goto :goto_6

    .line 70
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u672a\u62e5\u6709\u8be5\u795e\u5668\u4f7f"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5f71\u88c5\u65b9\u6848\u7f16\u53f7\u65e0\u6548"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5f71\u88c5\u65b9\u6848\u64cd\u4f5c\u5c1a\u672a\u5b9e\u73b0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 86
    :goto_5
    new-instance v8, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v8, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 87
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "m"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v8, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 89
    :goto_6
    return-object v8
.end method

.method static bindings([B)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 167
    const-string v1, "heromgr"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string v1, "htp"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 168
    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 169
    const-string v3, "1"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    goto :goto_0

    .line 172
    :cond_1
    return-object v0
.end method

.method static clearMismatchedBindings(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)V
    .locals 11

    .line 113
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->bindings([B)Ljava/util/Map;

    move-result-object v0

    .line 114
    nop

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 116
    if-eqz p2, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->equipped([BI)Ljava/util/List;

    move-result-object v9

    invoke-static {v6, p1, v7, v8, v9}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->matches([BLcom/project7/localmanager/LocalFeatureCatalog;ILjava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "h"

    aput-object v6, v4, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v6, 0x2

    const-string v7, "id"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/project7/localmanager/BsonLite$UuidValue;

    .line 120
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v7, v5}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    .line 119
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "replyUnuseTreasurePlan"

    invoke-virtual {p0, v5, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 121
    nop

    .line 122
    move v4, v2

    goto :goto_0

    .line 123
    :cond_2
    if-eqz v4, :cond_3

    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->plans([B)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->store([BLjava/util/Map;Ljava/util/Map;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 124
    :cond_3
    return-void
.end method

.method private static equipped([BI)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 210
    nop

    .line 211
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object p0

    .line 210
    const-string p1, "ti"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string p1, "items"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 4

    .line 10
    const-string v0, "requestSaveTreasurePlan"

    const-string v1, "removeTreasurePlan"

    const-string v2, "requestUseTreasurePlan"

    const-string v3, "requestUnuseTreasurePlan"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 10
    return p0
.end method

.method private static ids([B)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    goto :goto_0

    .line 206
    :cond_1
    return-object v0
.end method

.method private static isExclusive([BLcom/project7/localmanager/LocalFeatureCatalog;)Z
    .locals 1

    .line 215
    const-string v0, "i"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "T"

    invoke-virtual {p1, v0, p0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static matches([BLcom/project7/localmanager/LocalFeatureCatalog;ILjava/lang/String;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/project7/localmanager/LocalFeatureCatalog;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 94
    invoke-static {p0}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->plans([B)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 95
    const/4 p3, 0x0

    if-nez p0, :cond_0

    return p3

    .line 96
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "treasure"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->ids([B)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 97
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 98
    const-string v2, "zhuanshu_cost"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p0, :cond_1

    return p3

    .line 100
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move v2, p3

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 101
    if-lez p0, :cond_4

    invoke-static {v3, p1}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->isExclusive([BLcom/project7/localmanager/LocalFeatureCatalog;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    const-string v4, "tr"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "cl"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "F"

    invoke-virtual {p1, v5, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    .line 104
    const-string v5, "heroes"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    invoke-static {v3, p1}, Lcom/project7/localmanager/LocalEquipmentEngine;->itemCost([BLcom/project7/localmanager/LocalFeatureCatalog;)I

    move-result v3

    if-eq v3, p0, :cond_2

    goto :goto_1

    .line 106
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 107
    goto :goto_2

    .line 105
    :cond_3
    :goto_1
    return p3

    .line 107
    :cond_4
    const-string v4, "u"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_2
    goto :goto_0

    .line 109
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    if-eqz p0, :cond_6

    if-ne v2, p2, :cond_7

    :cond_6
    move p3, p2

    :cond_7
    return p3
.end method

.method static plans([B)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 157
    const-string v1, "heromgr"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string v1, "tp"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 158
    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    const-string v3, "1"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 160
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    goto :goto_0

    .line 162
    :cond_1
    return-object v0
.end method

.method static pruneRemoved(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)V
    .locals 11

    .line 127
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->plans([B)Ljava/util/Map;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v5, "treasure"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->ids([B)Ljava/util/List;

    move-result-object v4

    .line 131
    invoke-interface {v4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    const/4 v7, 0x0

    .line 134
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 135
    iget-object v9, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v8}, Lcom/project7/localmanager/LocalEquipmentEngine;->findOwned([BLjava/lang/String;)[B

    move-result-object v9

    .line 136
    if-nez v9, :cond_1

    goto :goto_1

    .line 137
    :cond_1
    new-instance v10, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v10, v8}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {v9, p1}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->isExclusive([BLcom/project7/localmanager/LocalFeatureCatalog;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v9, p1}, Lcom/project7/localmanager/LocalEquipmentEngine;->itemCost([BLcom/project7/localmanager/LocalFeatureCatalog;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->addExact(II)I

    move-result v7

    .line 139
    :cond_2
    goto :goto_1

    .line 140
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v4

    .line 141
    const-string v5, "cost"

    invoke-static {v4, v5, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    goto :goto_0

    .line 144
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 145
    :cond_5
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->bindings([B)Ljava/util/Map;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->store([BLjava/util/Map;Ljava/util/Map;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {p0, v1, v2}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->saveReply(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V

    goto :goto_2

    .line 147
    :cond_6
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->clearMismatchedBindings(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private static saveReply(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V
    .locals 3

    .line 151
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "idx"

    aput-object v2, v0, v1

    new-instance v1, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v1, p1}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    const-string v1, "d"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const/4 p1, 0x4

    const-string p2, "tpi"

    aput-object p2, v0, p1

    new-instance p1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 152
    const-string v2, "heromgr"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 p2, 0x5

    aput-object p1, v0, p2

    .line 151
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "replySaveTreasurePlan"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 153
    return-void
.end method

.method private static store([BLjava/util/Map;Ljava/util/Map;)[B
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 176
    move-object/from16 v0, p0

    const-string v1, "heromgr"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 179
    const-string v7, "tpi"

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    .line 180
    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const/16 v11, 0xa

    const/4 v12, 0x0

    if-ge v10, v11, :cond_2

    .line 181
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 182
    if-eqz v11, :cond_0

    move-object/from16 v13, p1

    invoke-interface {v13, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    new-instance v12, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v12, v11}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object/from16 v13, p1

    :cond_1
    :goto_1
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 184
    :cond_2
    move-object/from16 v13, p1

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x2

    const/4 v13, 0x1

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 185
    new-array v11, v11, [Ljava/lang/Object;

    new-instance v14, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-direct {v14, v15}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v14, v11, v9

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 187
    invoke-interface {v5, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 188
    if-ltz v11, :cond_3

    .line 189
    new-instance v13, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v13, v10}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v11, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 188
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5f71\u88c5\u65b9\u6848\u6570\u91cf\u8d85\u8fc7\u4e0a\u9650"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_4
    :goto_3
    goto :goto_2

    .line 192
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 193
    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v9

    new-instance v12, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v12, v8}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v12, v10, v13

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 194
    :cond_6
    const-string v6, "tp"

    invoke-static {v2, v6, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 195
    const-string v3, "htp"

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 196
    invoke-static {v2, v7, v5}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 197
    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method
