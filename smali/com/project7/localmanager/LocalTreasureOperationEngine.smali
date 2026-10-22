.class final Lcom/project7/localmanager/LocalTreasureOperationEngine;
.super Ljava/lang/Object;
.source "LocalTreasureOperationEngine.java"


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

.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 12
    const-string v0, "decomposeTreasure"

    const-string v1, "smeltTreasure"

    const-string v2, "transferTreasure"

    const-string v3, "composeTreasure"

    const-string v4, "composeTreasureBatch"

    const-string v5, "tupoTreasure"

    const-string v6, "refreshTreasureGoldAsk"

    const-string v7, "refreshTreasureOrangeAsk"

    const-string v8, "refreshTreasureApply"

    const-string v9, "refreshTreasureApplyOrange"

    const-string v10, "upgradeTreasureExp"

    const-string v11, "upgradeTreasureClassByItem"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalTreasureOperationEngine;->METHODS:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalTreasureOperationEngine;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accept(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)V
    .locals 10

    .line 717
    const-string v0, "h"

    invoke-static {p3, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v2, "u"

    invoke-static {p3, v2}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 718
    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, p1, p3, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v3

    const-string v4, "tr"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    .line 719
    const-string v6, "refreshTreasureApplyOrange"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v7, "ro"

    goto :goto_0

    :cond_0
    const-string v7, "ri"

    .line 720
    :goto_0
    invoke-static {v5, v7}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v8

    .line 721
    if-eqz v8, :cond_2

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 722
    if-eqz v6, :cond_1

    .line 723
    const-string p1, "era"

    invoke-static {v8, p1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->values([B)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    .line 724
    const-string v5, "su"

    invoke-static {v8, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    goto :goto_1

    .line 726
    :cond_1
    const-string v6, "fa"

    const-string v9, "f"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->replaceAttrs([BLcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "ta"

    const-string v9, "t"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->replaceAttrs([BLcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 728
    :goto_1
    invoke-static {p1, v7}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object p1

    .line 729
    invoke-static {v3, v4, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->update(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Reply"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    invoke-static {p3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->id(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;

    move-result-object p3

    aput-object p3, v3, v0

    const/4 p3, 0x4

    const-string v0, "r"

    aput-object v0, v3, p3

    const/4 p3, 0x5

    aput-object p1, v3, p3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->canonical(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 731
    return-void

    .line 721
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6ca1\u6709\u5f85\u66ff\u6362\u7684\u5f71\u88c5\u5c5e\u6027"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 8

    .line 40
    sget-object v5, Lcom/project7/localmanager/LocalTreasureOperationEngine;->RANDOM:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BLjava/util/Random;J)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p0

    return-object p0
.end method

.method static apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BLjava/util/Random;J)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 12

    .line 44
    move-object v1, p0

    move-object v0, p1

    move-object v10, p2

    move-object v5, p3

    move-object/from16 v6, p4

    new-instance v11, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v11, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 46
    :try_start_0
    invoke-static {p3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->handles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 47
    const-string v2, "decomposeTreasure"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "smeltTreasure"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 49
    :cond_0
    const-string v2, "transferTreasure"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v11

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->transfer(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/util/Random;J)V

    goto/16 :goto_1

    .line 50
    :cond_1
    const-string v2, "upgradeTreasureExp"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v11, p2, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->attune(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V

    goto/16 :goto_1

    .line 51
    :cond_2
    const-string v2, "upgradeTreasureClassByItem"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p6

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->evolve(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[BJ)V

    goto :goto_1

    .line 52
    :cond_3
    const-string v2, "composeTreasure"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->compose(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BLjava/util/Random;J)V

    goto :goto_1

    .line 53
    :cond_4
    const-string v2, "tupoTreasure"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v7, p5

    invoke-static {v11, p1, p2, v6, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->breakthrough(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/util/Random;)V

    goto :goto_1

    .line 54
    :cond_5
    move-object/from16 v7, p5

    const-string v0, "refreshTreasureApply"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v11, p2, p3, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->accept(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)V

    goto :goto_1

    .line 55
    :cond_6
    move-object v2, v11

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-static/range {v2 .. v8}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->preview(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BLjava/util/Random;J)V

    goto :goto_1

    .line 48
    :cond_7
    :goto_0
    invoke-static {v11, p1, p2, p3, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->resolve(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)V

    .line 56
    :goto_1
    const/4 v0, 0x0

    invoke-static {v11, p2, v0}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->clearMismatchedBindings(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)V

    .line 61
    goto :goto_3

    .line 46
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5f71\u88c5\u64cd\u4f5c\u5c1a\u672a\u63a5\u5165"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 59
    :goto_2
    new-instance v11, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v11, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 60
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "m"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v11, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 62
    :goto_3
    return-object v11
.end method

.method private static attune(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V
    .locals 24

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "s"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v6, 0x0

    invoke-static {v5, v1, v4, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v5

    const-string v7, "tr"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    .line 140
    nop

    .line 141
    iget-object v9, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, -0x1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "i"

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "EE:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    const-string v14, "treasureId"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v13

    invoke-static {v5, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v12

    if-ne v13, v12, :cond_0

    .line 143
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    const-string v12, "totalExp"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 142
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    const-string v9, "x"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v11

    .line 145
    if-lez v10, :cond_9

    if-ltz v11, :cond_9

    if-ge v11, v10, :cond_9

    .line 146
    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v13

    const-string v14, "validHeroes"

    invoke-static {v13, v14}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    .line 148
    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    .line 149
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    const/16 v14, 0x64

    if-gt v13, v14, :cond_8

    .line 151
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 152
    const v14, 0x7fffffff

    invoke-static {v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v15

    .line 153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v16, v6

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, [B

    .line 154
    move-object/from16 v17, v2

    const-string v2, "0"

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    move-object/from16 v19, v4

    const-string v4, "1"

    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 155
    move-object/from16 v20, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v21, v7

    const-string v7, "EU"

    invoke-virtual {v1, v7, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 156
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    if-lez v4, :cond_4

    if-eqz v3, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ED"

    invoke-virtual {v1, v7, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    move-object/from16 v22, v8

    const-string v8, "type"

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v6

    const/16 v8, 0xf

    if-ne v6, v8, :cond_4

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v23, v9

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v13, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v6, "treasureList"

    invoke-static {v3, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    const-string v6, "tlExp"

    goto :goto_2

    :cond_2
    const-string v6, "normalExp"

    :goto_2
    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 161
    if-lez v3, :cond_3

    .line 162
    invoke-static {v3, v4}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v4

    move/from16 v6, v16

    invoke-static {v6, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v16

    .line 163
    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "tradeType"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 165
    move-object/from16 v2, v17

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 161
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u540c\u8c03\u7ecf\u9a8c\u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u540c\u8c03\u6750\u6599\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_5
    move-object/from16 v20, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v6, v16

    sub-int v1, v6, v14

    sub-int/2addr v10, v11

    if-ge v1, v10, :cond_7

    .line 170
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 171
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    goto :goto_3

    .line 172
    :cond_6
    invoke-static {v11, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v3, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 173
    move-object/from16 v3, v21

    invoke-static {v5, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    const-string v3, "tt"

    invoke-static {v2, v3, v15}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 174
    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->update(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 175
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    invoke-static/range {v19 .. v19}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->id(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const-string v6, "r"

    const/4 v8, 0x2

    aput-object v6, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "add"

    aput-object v6, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    const-string v1, "bExp"

    aput-object v1, v3, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v3, "upgradeTreasureExpReply"

    invoke-virtual {v0, v3, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 176
    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->canonical(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 177
    return-void

    .line 169
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u540c\u8c03\u6750\u6599\u8d85\u8fc7\u6ee1\u9636\u6240\u9700\uff0c\u8bf7\u51cf\u5c11\u6750\u6599\u6570\u91cf"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u9009\u62e9\u540c\u8c03\u6750\u6599"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u9009\u62e9\u5c1a\u672a\u6ee1\u9636\u7684\u4e13\u5c5e\u5f71\u88c5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static breakthrough(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/util/Random;)V
    .locals 23

    .line 487
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v1, "h"

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-string v5, "s"

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 488
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v2, v5, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v6

    const-string v7, "tr"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v9

    .line 489
    const-string v10, "cl"

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v11

    const/4 v12, 0x4

    if-ge v11, v12, :cond_0

    .line 490
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v7, v8

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->breakthroughLow(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[BILjava/lang/String;[B[B[B)V

    .line 491
    return-void

    .line 493
    :cond_0
    const-string v11, "d"

    const/4 v13, 0x2

    invoke-static {v3, v11, v13}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->ids([BLjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 494
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ne v14, v13, :cond_a

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_a

    const-string v5, "lv"

    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v5

    const/16 v14, 0x28

    if-lt v5, v14, :cond_a

    .line 496
    invoke-static {v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v5

    .line 497
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const-string v13, "rarity"

    const-string v12, "cost"

    move/from16 v16, v4

    const/4 v4, 0x0

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 498
    move-object/from16 v17, v14

    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14, v2, v15, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v4

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v14

    .line 499
    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v18, v1

    const/4 v1, 0x1

    invoke-static {v15, v2, v4, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->disposable([BLcom/project7/localmanager/LocalFeatureCatalog;[BZ)V

    .line 500
    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v15

    const/4 v1, 0x4

    if-ne v15, v1, :cond_1

    invoke-static {v14, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v12

    if-ne v1, v12, :cond_1

    invoke-static {v14, v13}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v12, 0x1

    if-ne v1, v12, :cond_1

    .line 502
    invoke-static {v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 503
    move/from16 v4, v16

    move-object/from16 v14, v17

    move-object/from16 v1, v18

    const/4 v12, 0x4

    const/4 v13, 0x2

    goto :goto_0

    .line 501
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7a81\u7834\u6750\u6599\u5fc5\u987b\u4e3a\u540c cost \u7684\u666e\u901a\u91d1\u8272\u5f71\u88c5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_2
    move-object/from16 v18, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "ET"

    invoke-virtual {v2, v12, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    .line 505
    move-object/from16 v12, p1

    iget-object v12, v12, Lcom/project7/localmanager/LocalResourceCatalog;->treasures:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "i"

    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ":5"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;

    .line 506
    if-eqz v1, :cond_9

    if-eqz v12, :cond_9

    .line 507
    const-string v12, "itemid"

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v12

    .line 508
    const-string v13, "itemnum"

    invoke-static {v1, v13}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 509
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v19, v5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 510
    move/from16 v5, v19

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v19, v11

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 511
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->confArray([B)[B

    move-result-object v11

    move-object/from16 p1, v12

    const-string v12, "v"

    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 512
    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 513
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v0, v11, v13}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->consumeOptions(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;I)V

    .line 514
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v20, v11

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->count([BI)I

    move-result v11

    move-object/from16 v22, v12

    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->count([BI)I

    move-result v12

    if-le v11, v12, :cond_3

    .line 515
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "ED"

    invoke-virtual {v2, v12, v11}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v11

    const-string v12, "tradeType"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 514
    :cond_3
    move-object/from16 v11, v20

    move-object/from16 v12, v22

    goto :goto_2

    .line 510
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v12, p1

    move-object/from16 v11, v19

    move-object/from16 v13, v21

    goto :goto_1

    .line 517
    :cond_5
    const-string v4, "money"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->money(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "EQ"

    invoke-virtual {v2, v4, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    .line 521
    const-string v4, "secondAttrs"

    const-string v11, "thridAttrs"

    filled-new-array {v4, v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 522
    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->map([B)Ljava/util/Map;

    move-result-object v12

    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->map([B)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_3

    .line 523
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u5f71\u88c5\u7a81\u7834\u5c5e\u6027\u53d8\u6362\u5c1a\u672a\u6838\u5b9e\uff0c\u672c\u6b21\u672a\u6263\u8d39\u6216\u6d88\u8017"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_7
    const/4 v4, 0x5

    invoke-static {v8, v10, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v8

    .line 525
    const-string v9, "extraRandomLow"

    move-object/from16 v10, p4

    const/4 v11, 0x0

    invoke-static {v2, v1, v9, v10, v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->extra(Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/util/Random;Z)[B

    move-result-object v1

    .line 526
    const-string v9, "era"

    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->values([B)Ljava/util/List;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v8

    .line 527
    const-string v9, "su"

    invoke-static {v1, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v8

    .line 528
    const-string v9, "oc"

    invoke-static {v8, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 529
    const-string v8, "ri"

    invoke-static {v1, v8}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v1

    const-string v8, "ro"

    invoke-static {v1, v8}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v1

    .line 530
    invoke-static {v6, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    const-string v6, "tt"

    invoke-static {v1, v6, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 531
    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->refund(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/util/List;)I

    move-result v2

    .line 532
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->update(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->delete(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;)V

    .line 533
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 534
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    invoke-static {v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->uuids(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v3, 0x2

    aput-object v18, v5, v3

    const/4 v3, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x4

    aput-object v14, v5, v3

    aput-object v1, v5, v4

    const/4 v3, 0x6

    const-string v4, "rm"

    aput-object v4, v5, v3

    const/4 v3, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "tupoTreasureReply"

    invoke-virtual {v0, v3, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 535
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->canonical(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 536
    return-void

    .line 509
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u539f\u7248\u7a81\u7834\u6750\u6599\u914d\u7f6e\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u7a81\u7834\u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7a81\u7834\u9700\u898140\u7ea7\u91d1\u8272\u5f71\u88c5\u548c\u4e24\u4ef6\u540c cost \u91d1\u8272\u6750\u6599"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static breakthroughLow(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[BILjava/lang/String;[B[B[B)V
    .locals 23

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    const-string v5, "cl"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v6

    const-string v7, "i"

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v8

    const-string v9, "rarity"

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v10

    .line 541
    const-string v11, "d"

    const/4 v12, 0x3

    move-object/from16 v13, p3

    invoke-static {v13, v11, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->ids([BLjava/lang/String;I)Ljava/util/List;

    move-result-object v13

    .line 542
    const/4 v14, 0x1

    if-lt v6, v14, :cond_16

    if-gt v6, v12, :cond_16

    const-string v15, "lv"

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v15

    if-lt v15, v14, :cond_16

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ne v15, v12, :cond_16

    .line 543
    move-object/from16 v15, p5

    invoke-interface {v13, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    const/16 v15, 0x447

    if-ne v8, v15, :cond_0

    if-ne v6, v14, :cond_16

    :cond_0
    if-lt v10, v14, :cond_16

    const/4 v12, 0x2

    if-gt v10, v12, :cond_16

    .line 545
    invoke-static/range {p6 .. p6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v16

    .line 546
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move/from16 v18, v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const-string v15, "\u7a00\u6709\u5f71\u88c5\u7a81\u7834\u9700\u8981\u4e00\u4ef6\u540c\u540d\u7a00\u6709\u6750\u6599\u53ca\u4e24\u4ef6\u666e\u901a\u6750\u6599"

    const-string v14, "tr"

    const-string v12, "cost"

    if-eqz v16, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v21, v11

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    .line 547
    move-object/from16 v16, v13

    iget-object v13, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v2, 0x0

    invoke-static {v13, v1, v11, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v11

    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v2

    .line 548
    iget-object v13, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v0, 0x1

    invoke-static {v13, v1, v11, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->disposable([BLcom/project7/localmanager/LocalFeatureCatalog;[BZ)V

    .line 549
    invoke-static {v11, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_7

    invoke-static {v11, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/16 v13, 0x447

    if-ne v0, v13, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne v8, v13, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-ne v0, v14, :cond_7

    .line 551
    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    .line 552
    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-ne v14, v0, :cond_3

    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_3

    goto :goto_3

    .line 553
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u666e\u901a\u5f71\u88c5\u7a81\u7834\u9700\u8981\u4e09\u4ef6\u540c cost \u666e\u901a\u6750\u6599"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_4
    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v12, 0x2

    if-ne v0, v12, :cond_5

    invoke-static {v11, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_5

    move/from16 v0, v19

    add-int/lit8 v19, v0, 0x1

    goto :goto_3

    :cond_5
    move/from16 v0, v19

    .line 555
    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v12, 0x1

    if-ne v2, v12, :cond_6

    move/from16 v2, v20

    add-int/lit8 v20, v2, 0x1

    move/from16 v19, v0

    .line 557
    :goto_3
    invoke-static {v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v0

    move/from16 v11, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 558
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move v15, v13

    move-object/from16 v13, v16

    move-object/from16 v11, v21

    goto/16 :goto_0

    .line 556
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7a81\u7834\u6750\u6599\u54c1\u7ea7\u6216\u7279\u6b8a\u5f71\u88c5\u7c7b\u578b\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_8
    move-object/from16 v21, v11

    move-object/from16 v16, v13

    move/from16 v11, v18

    move/from16 v0, v19

    move/from16 v2, v20

    const/4 v13, 0x2

    if-ne v10, v13, :cond_a

    const/4 v13, 0x1

    if-ne v0, v13, :cond_9

    const/4 v0, 0x2

    if-ne v2, v0, :cond_9

    goto :goto_4

    .line 560
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_a
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "EQ"

    invoke-virtual {v1, v15, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 562
    if-eqz v0, :cond_15

    move-object/from16 v15, p1

    iget-object v15, v15, Lcom/project7/localmanager/LocalResourceCatalog;->treasures:Ljava/util/Map;

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 563
    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ne v2, v7, :cond_15

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v2, v10, :cond_15

    .line 565
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 566
    const-string v8, "secondAttrs"

    const-string v9, "thridAttrs"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 567
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object v12, v2

    goto :goto_6

    :cond_b
    move-object v12, v7

    .line 568
    :goto_6
    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v15

    invoke-static {v0, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v18

    move-object/from16 p1, v8

    invoke-static/range {v18 .. v18}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 570
    invoke-static {v0, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 571
    move-object/from16 p5, v8

    invoke-static {v0, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    .line 572
    move-object/from16 v18, v9

    const-string v9, "0"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v19

    const-string v9, "1"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v8

    .line 573
    move/from16 v22, v11

    const/4 v11, 0x3

    if-ge v6, v11, :cond_c

    cmpl-double v8, v19, v8

    if-nez v8, :cond_d

    :cond_c
    if-ne v6, v11, :cond_e

    .line 574
    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "0"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v8

    cmpl-double v8, v8, v19

    if-nez v8, :cond_d

    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "1"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v8

    cmpl-double v8, v8, v19

    if-nez v8, :cond_d

    goto :goto_8

    .line 575
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u7a81\u7834\u5c5e\u6027\u8303\u56f4\u5c1a\u672a\u6838\u5b9e\uff0c\u672c\u6b21\u672a\u6263\u8d39"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_e
    :goto_8
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v12, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    move-object/from16 v8, p5

    move-object/from16 v9, v18

    move/from16 v11, v22

    goto :goto_7

    .line 580
    :cond_f
    move-object/from16 v18, v9

    move/from16 v22, v11

    move-object/from16 v8, p1

    goto/16 :goto_5

    .line 569
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u7a81\u7834\u5c5e\u6027\u53d8\u6362\u5c1a\u672a\u6838\u5b9e\uff0c\u672c\u6b21\u672a\u6263\u8d39"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_11
    move/from16 v22, v11

    const/16 v4, 0x8

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "fa"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->fields(Ljava/util/Map;)[B

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v8, v10

    const-string v2, "ta"

    const/4 v10, 0x2

    aput-object v2, v8, v10

    invoke-static {v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->fields(Ljava/util/Map;)[B

    move-result-object v7

    const/4 v10, 0x3

    aput-object v7, v8, v10

    const/4 v7, 0x4

    const-string v10, "ft"

    aput-object v10, v8, v7

    .line 582
    const-string v11, "fixTrick"

    invoke-static {v0, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v15, 0x5

    aput-object v12, v8, v15

    const-string v12, "ha"

    const/16 v18, 0x6

    aput-object v12, v8, v18

    const/4 v12, 0x7

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->hidden([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v19

    aput-object v19, v8, v12

    .line 581
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v8

    .line 583
    const-string v12, "f"

    invoke-static {v3, v1, v8, v9, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->replaceAttrs([BLcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    const-string v9, "t"

    invoke-static {v3, v1, v8, v2, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->replaceAttrs([BLcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 584
    invoke-static {v2, v5, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v10, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 585
    const-string v2, "ri"

    const-string v3, "ro"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    goto :goto_9

    .line 586
    :cond_12
    const/4 v2, 0x3

    if-ne v6, v2, :cond_13

    const-string v2, "ic"

    invoke-static {v0, v2, v8}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 587
    :cond_13
    const-string v2, "EC"

    const-string v3, "1:1"

    invoke-virtual {v1, v2, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "composeCost"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 588
    if-lez v2, :cond_14

    .line 589
    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->money(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 590
    move-object/from16 v2, p6

    invoke-static {v2, v14, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    const-string v2, "tt"

    move/from16 v5, v22

    invoke-static {v0, v2, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 591
    move-object/from16 v2, v16

    invoke-static {v3, v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->refund(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/util/List;)I

    move-result v1

    .line 592
    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->update(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->delete(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;)V

    .line 593
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 594
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    invoke-static {v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->uuids(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string v2, "h"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    aput-object v17, v4, v7

    aput-object v0, v4, v15

    const-string v2, "rm"

    aput-object v2, v4, v18

    const/4 v2, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "tupoTreasureReply"

    invoke-virtual {v3, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 595
    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->canonical(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 596
    return-void

    .line 588
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u4f4e\u54c1\u8d28\u7a81\u7834\u8d39\u7528"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u4f4e\u54c1\u8d28\u7a81\u7834\u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4f4e\u54c1\u8d28\u7a81\u7834\u9700\u8981\u4e09\u4ef6\u7b26\u5408\u6761\u4ef6\u7684\u540c\u54c1\u7ea7\u6750\u6599"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static canonical(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "inv"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "items"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 360
    const-string v2, "u"

    invoke-static {p1, v2}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "i"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "updateItems"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    return-void

    .line 363
    :cond_1
    return-void
.end method

.method private static compose(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BLjava/util/Random;J)V
    .locals 24

    .line 274
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const-string v0, "composeTreasureBatch"

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 275
    const/4 v9, 0x4

    if-eqz v8, :cond_0

    const/16 v0, 0x78

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    const-string v10, "s"

    move-object/from16 v1, p4

    invoke-static {v1, v10, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->ids([BLjava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 276
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v0, v9

    if-nez v0, :cond_12

    if-nez v8, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_12

    .line 278
    :cond_1
    nop

    .line 279
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    move v12, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 280
    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v7, v2, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v7, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v3

    .line 281
    iget-object v4, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v7, v2, v13}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->disposable([BLcom/project7/localmanager/LocalFeatureCatalog;[BZ)V

    .line 282
    const-string v4, "noCompound"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 283
    const-string v3, "tr"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "cl"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 284
    if-ne v12, v1, :cond_2

    move v12, v2

    .line 285
    :cond_2
    if-ne v2, v12, :cond_3

    .line 286
    goto :goto_1

    .line 285
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5f71\u88c5\u5408\u6210\u54c1\u7ea7\u5fc5\u987b\u76f8\u540c"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u5f71\u88c5\u4e0d\u80fd\u5408\u6210"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "EP"

    invoke-virtual {v7, v1, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v15

    .line 288
    if-eqz v15, :cond_11

    invoke-static {v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->map([B)Ljava/util/Map;

    move-result-object v0

    const-string v1, "sucProb"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-lt v12, v13, :cond_11

    const/4 v4, 0x5

    if-ge v12, v4, :cond_11

    .line 290
    const-string v0, "probList"

    invoke-static {v15, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->values([B)Ljava/util/List;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v13, :cond_10

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_10

    .line 292
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v16

    if-nez v0, :cond_10

    .line 294
    invoke-static {v15, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v18

    .line 295
    const-wide/16 v0, 0x0

    cmpg-double v0, v18, v0

    if-ltz v0, :cond_f

    cmpl-double v0, v18, v16

    if-gtz v0, :cond_f

    .line 296
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v5, v0, 0x4

    const-string v0, "EC"

    const-string v1, "1:1"

    invoke-virtual {v7, v0, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "composeCost"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 297
    if-lez v3, :cond_e

    .line 298
    const/16 v2, 0xc8

    const-string v1, "tcn"

    move-object/from16 v0, p0

    move v9, v3

    move v3, v5

    move/from16 v16, v4

    move v13, v5

    move-wide/from16 v4, p6

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->counter(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;IIJ)V

    .line 299
    invoke-static {v9, v13}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    invoke-static {v6, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->money(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 300
    const-string v0, "composeItems"

    invoke-static {v15, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 301
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v15, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2, v13}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    invoke-static {v6, v3, v2}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    goto :goto_2

    .line 302
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 303
    nop

    .line 304
    nop

    .line 305
    move v0, v14

    move v1, v0

    move v13, v1

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 306
    new-instance v5, Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x4

    invoke-interface {v11, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    nop

    .line 308
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v14

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    .line 309
    move-object/from16 p7, v1

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v7, v3, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v1

    .line 310
    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v14

    move/from16 v20, v4

    const-string v4, "rarity"

    invoke-static {v14, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v14, 0x2

    if-ne v4, v14, :cond_7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_7
    invoke-static {v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 312
    move-object/from16 v1, p7

    move/from16 v4, v20

    const/4 v14, 0x0

    goto :goto_4

    .line 313
    :cond_8
    move/from16 v20, v4

    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    cmpg-double v1, v3, v18

    if-gez v1, :cond_9

    const/4 v14, 0x1

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    .line 314
    :goto_5
    if-eqz v14, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_a

    goto :goto_6

    :cond_a
    move-object v0, v5

    .line 315
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v4, p5

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 316
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v1, 0x0

    invoke-static {v0, v7, v3, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v21

    .line 317
    if-eqz v14, :cond_b

    const/4 v0, 0x1

    add-int/lit8 v22, v12, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v23, v12

    move v12, v2

    move-object/from16 v2, v21

    move/from16 p6, v14

    move-object v14, v3

    move/from16 v3, v22

    move-object v4, v15

    move-object/from16 v22, v15

    move-object v15, v5

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->composed(Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[BI[BLjava/util/Random;)[B

    move-result-object v21

    goto :goto_7

    :cond_b
    move/from16 v23, v12

    move/from16 p6, v14

    move-object/from16 v22, v15

    move v12, v2

    move-object v14, v3

    move-object v15, v5

    :goto_7
    move-object/from16 v0, v21

    .line 318
    const-string v1, "tt"

    invoke-static {v0, v1, v12}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 319
    invoke-interface {v15, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    invoke-static {v6, v7, v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->refund(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/util/List;)I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v13

    .line 321
    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->delete(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;)V

    invoke-static {v6, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->update(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    invoke-static {v6, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->canonical(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 322
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    move/from16 v1, p6

    move/from16 v0, v20

    move-object/from16 v15, v22

    move/from16 v12, v23

    const/4 v14, 0x0

    goto/16 :goto_3

    .line 324
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 325
    const-string v0, "rm"

    const/4 v2, 0x6

    const-string v3, "i"

    const/4 v4, 0x3

    if-eqz v8, :cond_d

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-static {v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->uuids(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v2, 0x2

    aput-object v3, v1, v2

    aput-object v9, v1, v4

    const/4 v2, 0x4

    aput-object v0, v1, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v16

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "composeTreasureBatchReply"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_8

    .line 326
    :cond_d
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v10, v5, v7

    invoke-static {v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->uuids(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v5, v10

    const-string v8, "r"

    const/4 v10, 0x2

    aput-object v8, v5, v10

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v4

    const/4 v1, 0x4

    aput-object v3, v5, v1

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v16

    aput-object v0, v5, v2

    const/4 v0, 0x7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "composeTreasureReply"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 327
    :goto_8
    return-void

    .line 297
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u5408\u6210\u8d39\u7528"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u539f\u7248\u5408\u6210\u6982\u7387\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u672a\u6838\u5b9e\u7684\u5408\u6210\u8df3\u7ea7\u914d\u7f6e\uff0c\u672c\u6b21\u672a\u6d88\u8017"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u54c1\u7ea7\u5f71\u88c5\u4e0d\u80fd\u5408\u6210"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6bcf\u7ec4\u5408\u6210\u9700\u8981\u56db\u4ef6\u5f71\u88c5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static composed(Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[BI[BLjava/util/Random;)[B
    .locals 17

    .line 235
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "EQ"

    invoke-virtual {v0, v7, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    .line 236
    move-object/from16 v7, p1

    iget-object v7, v7, Lcom/project7/localmanager/LocalResourceCatalog;->treasures:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;

    .line 237
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 238
    sget-object v6, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 239
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    const-string v9, "hiddenProb"

    move-object/from16 v10, p4

    invoke-static {v10, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_5

    .line 240
    const-string v7, "hiddenAttrGroup"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "EH"

    invoke-virtual {v0, v8, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    const-string v8, "weights"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v7

    .line 241
    nop

    .line 242
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "1"

    if-eqz v13, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 243
    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v13

    .line 244
    cmpg-double v15, v13, v9

    if-ltz v15, :cond_0

    .line 245
    add-double/2addr v11, v13

    .line 246
    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u9690\u85cf\u5c5e\u6027\u6743\u91cd\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    invoke-static {v11, v12}, Ljava/lang/Double;->isFinite(D)Z

    move-result v8

    if-eqz v8, :cond_4

    cmpg-double v8, v11, v9

    if-lez v8, :cond_4

    .line 248
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v15

    mul-double/2addr v15, v11

    .line 249
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 250
    invoke-static {v8, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v11

    sub-double/2addr v15, v11

    .line 251
    cmpg-double v11, v15, v9

    if-gez v11, :cond_3

    .line 252
    const-string v6, "0"

    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "EV"

    invoke-virtual {v0, v7, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    .line 253
    if-eqz v6, :cond_2

    .line 254
    const-string v7, "hiddenAttrs"

    invoke-static {v0, v6, v7, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->generatedAttrs(Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/util/Random;)[B

    move-result-object v6

    goto :goto_2

    .line 253
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u9690\u85cf\u5c5e\u6027\u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_3
    goto :goto_1

    .line 247
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u9690\u85cf\u5c5e\u6027\u6c60"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_5
    :goto_2
    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "fa"

    aput-object v9, v7, v8

    const-string v8, "secondAttrsLow"

    invoke-static {v0, v4, v8, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->generatedAttrs(Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/util/Random;)[B

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const/4 v8, 0x2

    const-string v11, "ta"

    aput-object v11, v7, v8

    const/4 v8, 0x3

    .line 259
    const-string v12, "thridAttrsLow"

    invoke-static {v0, v4, v12, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->generatedAttrs(Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/util/Random;)[B

    move-result-object v12

    aput-object v12, v7, v8

    const/4 v8, 0x4

    const-string v12, "ha"

    aput-object v12, v7, v8

    const/4 v13, 0x5

    aput-object v6, v7, v13

    const/4 v6, 0x6

    const-string v14, "ft"

    aput-object v14, v7, v6

    const/4 v6, 0x7

    .line 260
    const-string v14, "fixTrick"

    invoke-static {v4, v14}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v14

    aput-object v14, v7, v6

    .line 258
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 261
    invoke-virtual {v5}, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;->data()[B

    move-result-object v5

    const-string v7, "tr"

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    const-string v15, "lv"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v14

    invoke-static {v5, v15, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 262
    const-string v14, "f"

    invoke-static {v5, v0, v6, v9, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->replaceAttrs([BLcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    const-string v9, "t"

    invoke-static {v5, v0, v6, v11, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->replaceAttrs([BLcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    const-string v9, "h"

    invoke-static {v5, v0, v6, v12, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->replaceAttrs([BLcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 263
    if-lt v2, v8, :cond_6

    const-string v8, "ic"

    invoke-static {v5, v8, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    .line 264
    :cond_6
    if-ne v2, v13, :cond_7

    .line 265
    const-string v2, "extraRandomLow"

    invoke-static {v0, v4, v2, v3, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->extra(Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/util/Random;Z)[B

    move-result-object v0

    .line 266
    const-string v2, "oc"

    invoke-static {v5, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 267
    const-string v3, "era"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->values([B)Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 268
    const-string v3, "su"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v5

    .line 270
    :cond_7
    invoke-static {v1, v7, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 237
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u5408\u6210\u4ea7\u7269\u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static confArray([B)[B
    .locals 3

    .line 597
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "v"

    aput-object v2, v0, v1

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v1, p0}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 p0, 0x1

    aput-object v1, v0, p0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private static config(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B
    .locals 2

    .line 365
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cost"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rarity"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EC"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    .line 366
    if-eqz p0, :cond_0

    .line 367
    return-object p0

    .line 366
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7f3a\u5c11\u539f\u7248\u5f71\u88c5\u6d88\u8017\u914d\u7f6e"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static consumeOptions(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalResourceEngine$Result;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 474
    if-ltz p2, :cond_5

    .line 475
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 476
    const/4 v1, 0x0

    .line 477
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "inv"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "items"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 478
    const-string v4, "i"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ne v4, v0, :cond_0

    const-string v4, "w"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    goto :goto_1

    .line 479
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 480
    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    sub-int/2addr p2, v1

    .line 481
    if-nez p2, :cond_2

    goto :goto_2

    .line 482
    :cond_2
    goto :goto_0

    .line 483
    :cond_3
    :goto_2
    if-nez p2, :cond_4

    .line 484
    return-void

    .line 483
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5f71\u88c5\u6750\u6599\u4e0d\u8db3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 474
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u539f\u7248\u6750\u6599\u914d\u7f6e\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static count([BI)I
    .locals 3

    .line 711
    nop

    .line 712
    const-string v0, "inv"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "items"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 713
    const-string v2, "i"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    goto :goto_0

    .line 714
    :cond_1
    return v0
.end method

.method private static counter(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;IIJ)V
    .locals 19

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "heromgr"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 371
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v4

    invoke-static {v4}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v4

    .line 372
    const-string v5, "q7TreasureDay"

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "updateTreasureRefreshOrangeNum"

    const-string v8, "updateTreasureRefreshGoldNum"

    const-string v9, "updateTreasureTransferNum"

    const-string v10, "updateTreasureComposeNum"

    const-string v11, "trg"

    const-string v12, "ttn"

    const-string v13, "tcn"

    const-string v15, "d"

    const/4 v14, 0x0

    .line 374
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 372
    if-eqz v6, :cond_1

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-eq v6, v4, :cond_1

    .line 373
    const-string v6, "tro"

    filled-new-array {v13, v12, v11, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v6, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    move-object/from16 v6, v18

    goto :goto_0

    .line 374
    :cond_0
    move-object/from16 v17, v2

    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v15, v2, v14

    const/16 v18, 0x1

    aput-object v16, v2, v18

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 375
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v15, v2, v14

    aput-object v16, v2, v18

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 376
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v15, v2, v14

    aput-object v16, v2, v18

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 377
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v15, v2, v14

    aput-object v16, v2, v18

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    move-object/from16 v2, v17

    .line 379
    :cond_1
    invoke-static {v2, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 380
    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    move/from16 v5, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    .line 381
    move/from16 v5, p2

    if-gt v4, v5, :cond_5

    .line 382
    invoke-static {v2, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 383
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 384
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v7, v10

    goto :goto_1

    :cond_2
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v7, v9

    goto :goto_1

    .line 385
    :cond_3
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v7, v8

    .line 386
    :cond_4
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v15, v1, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 387
    return-void

    .line 381
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4eca\u65e5\u5f71\u88c5\u64cd\u4f5c\u6b21\u6570\u5df2\u8fbe\u4e0a\u9650"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tr"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "cl"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EQ"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    .line 67
    if-eqz p0, :cond_0

    const-string v0, "c"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "w"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 69
    return-object p0

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5f71\u88c5\u6570\u636e\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static delete(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalResourceEngine$Result;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalEquipmentEngine;->removeOwned([BLjava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto :goto_0

    .line 351
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "i"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->uuids(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "deleteItems"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 352
    :cond_1
    return-void
.end method

.method private static disposable([BLcom/project7/localmanager/LocalFeatureCatalog;[BZ)V
    .locals 4

    .line 191
    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v0

    const-string v1, "tr"

    invoke-static {p2, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 192
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "f"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "noRemove"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    if-eqz p3, :cond_0

    .line 193
    const-string p3, "noCompound"

    invoke-static {v0, p3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "validHeroes"

    invoke-static {v0, p3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 195
    :cond_0
    const-string p3, "u"

    invoke-static {p2, p3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string v2, "heromgr"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v2, "hrs"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 197
    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "ti"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "items"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 198
    invoke-static {v3, p3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 199
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8bf7\u5148\u4ece\u6240\u6709\u795e\u5668\u4f7f\u5378\u4e0b\u5c06\u88ab\u6d88\u8017\u7684\u5f71\u88c5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_3
    const-string p0, "x"

    invoke-static {v1, p0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_4

    .line 202
    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->upgradeMoney(Lcom/project7/localmanager/LocalFeatureCatalog;[B)I

    .line 203
    return-void

    .line 201
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u540c\u8c03\u5f71\u88c5\u4e0d\u80fd\u4f5c\u4e3a\u6d88\u8017\u6750\u6599\uff0c\u8bf7\u4fdd\u7559\u4e13\u5c5e\u5f71\u88c5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u9501\u5b9a\u6216\u53d7\u4fdd\u62a4\u7684\u5f71\u88c5\u4e0d\u80fd\u4f5c\u4e3a\u6d88\u8017\u6750\u6599"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static evolutionActivityOpen([BJ)Z
    .locals 3

    .line 125
    const-string v0, "begin_time"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "end_time"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 126
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    :try_start_0
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    .line 130
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p1

    sget-object p2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 131
    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0, v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 132
    :catch_0
    move-exception p0

    .line 133
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u539f\u7248\u8fdb\u9636\u6d3b\u52a8\u65f6\u95f4\u914d\u7f6e\u65e0\u6548\uff0c\u672c\u6b21\u672a\u6263\u8d39"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_2
    :goto_1
    return v1
.end method

.method private static evolve(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[BJ)V
    .locals 25

    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "s"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v6, 0x0

    invoke-static {v5, v1, v4, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v5

    const-string v7, "tr"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v9

    .line 76
    const-string v10, "i"

    invoke-static {v5, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v11

    .line 77
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "EG"

    invoke-virtual {v1, v13, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ":4"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "EQ"

    invoke-virtual {v1, v15, v13}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v13

    .line 79
    const-string v15, "cl"

    invoke-static {v8, v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v6

    move-object/from16 v16, v10

    const/4 v10, 0x3

    if-ne v6, v10, :cond_c

    const-string v6, "validHeroes"

    invoke-static {v9, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_c

    if-eqz v12, :cond_c

    if-eqz v13, :cond_c

    move-object/from16 v10, p1

    iget-object v10, v10, Lcom/project7/localmanager/LocalResourceCatalog;->treasures:Ljava/util/Map;

    move-object/from16 v18, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-interface {v10, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 82
    const-string v4, "cost"

    invoke-static {v9, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-static {v13, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-string v11, "\u8be5\u4e13\u5c5e\u5f71\u88c5\u7684\u8fdb\u9636\u5c5e\u6027\u89c4\u5219\u5c1a\u672a\u6838\u5b9e\uff0c\u672c\u6b21\u672a\u6263\u8d39"

    if-ne v10, v4, :cond_b

    .line 83
    invoke-static {v9, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v13, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 84
    const-string v4, "fixTrick"

    invoke-static {v9, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v13, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 86
    const-string v4, "secondAttrs"

    const-string v6, "thridAttrs"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 87
    invoke-static {v9, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v13, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    .line 88
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v14

    move-object/from16 p1, v4

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 91
    move-object/from16 v19, v4

    invoke-static {v10, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    move-object/from16 v20, v9

    const-string v9, "0"

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v21

    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v23

    cmpg-double v4, v21, v23

    if-ltz v4, :cond_0

    .line 92
    invoke-static {v10, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const-string v9, "1"

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v21

    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v23

    cmpl-double v4, v21, v23

    if-gtz v4, :cond_0

    .line 91
    move-object/from16 v4, v19

    move-object/from16 v9, v20

    goto :goto_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u4e13\u5c5e\u5f71\u88c5\u7684\u8fdb\u9636\u5c5e\u6027\u8303\u56f4\u5c1a\u672a\u6838\u5b9e\uff0c\u672c\u6b21\u672a\u6263\u8d39"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    move-object/from16 v20, v9

    move-object/from16 v4, p1

    goto :goto_0

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_3
    const-string v4, "c"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 96
    if-eqz v4, :cond_a

    .line 97
    invoke-static {v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v6

    .line 98
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 99
    const-string v1, "catUse"

    invoke-static {v12, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "giftCoin"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 100
    if-lez v1, :cond_4

    if-lt v2, v1, :cond_4

    .line 101
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    sub-int/2addr v2, v1

    invoke-static {v9, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 102
    goto :goto_3

    .line 100
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u793c\u54c1\u5238\u4e0d\u8db3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_5
    const-string v4, "ci"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 104
    const/16 v4, 0x363

    if-ne v2, v4, :cond_6

    const-string v4, "smelt2Use"

    invoke-static {v12, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 106
    :cond_6
    if-lez v2, :cond_9

    const-string v4, "activity_item"

    invoke-static {v12, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ne v2, v4, :cond_9

    move-wide/from16 v9, p4

    invoke-static {v12, v9, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->evolutionActivityOpen([BJ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 108
    const-string v4, "activity_num"

    invoke-static {v12, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 110
    :goto_2
    if-lez v4, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "ED"

    invoke-virtual {v1, v10, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v9

    if-eqz v9, :cond_8

    .line 111
    invoke-static {v0, v2, v4}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "tradeType"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 115
    :goto_3
    const/4 v1, 0x4

    invoke-static {v8, v15, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 116
    const-string v4, "ri"

    const-string v8, "ro"

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v2

    goto :goto_4

    .line 117
    :cond_7
    invoke-static {v5, v7, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    const-string v4, "tt"

    invoke-static {v2, v4, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 118
    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->update(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 119
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 120
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static/range {v18 .. v18}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->id(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const-string v3, "r"

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v16, v3, v4

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v3, "upgradeTreasureClassByItemReply"

    invoke-virtual {v0, v3, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 121
    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->canonical(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 122
    return-void

    .line 110
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u8fdb\u9636\u6750\u6599\u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u8fdb\u9636\u6d3b\u52a8\u6750\u6599\u4e0d\u5339\u914d\u6216\u4e0d\u5728\u5f00\u653e\u65f6\u95f4\u5185"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u9009\u62e9\u8fdb\u9636\u6750\u6599"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u9009\u62e9\u53ef\u8fdb\u9636\u76843\u54c1\u7ea7\u4e13\u5c5e\u5f71\u88c5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extra(Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/util/Random;Z)[B
    .locals 25

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p1 .. p2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 603
    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v4

    const-string v6, "1"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v7

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    double-to-int v2, v4

    .line 604
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-gt v2, v5, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v5

    .line 605
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    const-string v9, "_phy_str_delta"

    const-string v10, "_mag_str_delta"

    const-string v11, "_phy_def_delta"

    const-string v12, "_mag_def_delta"

    const-string v13, "_hp_delta"

    const-string v14, "block_rate"

    const-string v15, "penetrate_rate"

    const-string v16, "bless_rate"

    const-string v17, "injure_rate"

    const-string v18, "attack_twice_rate"

    const-string v19, "avoid_rate"

    const-string v20, "cri_rate"

    const-string v21, "cd_reset_rate"

    const-string v22, "magic_shield_val"

    const-string v23, "absorb_rate"

    const-string v24, "delay_hurt_rate"

    filled-new-array/range {v9 .. v24}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 609
    invoke-static {v8, v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 610
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 611
    const/4 v10, 0x0

    move v11, v10

    :goto_1
    const/4 v12, 0x2

    if-ge v11, v7, :cond_2

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v12, v10

    div-int v13, v2, v7

    rem-int v14, v2, v7

    if-ge v11, v14, :cond_1

    move v14, v5

    goto :goto_2

    :cond_1
    move v14, v10

    :goto_2
    add-int/2addr v13, v14

    int-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 612
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 613
    if-eqz p4, :cond_8

    .line 614
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "EF"

    invoke-virtual {v0, v8, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    .line 615
    new-array v8, v12, [[Ljava/lang/String;

    const-string v11, "suitProb"

    const-string v13, "suitGroupId"

    filled-new-array {v11, v13}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const-string v11, "suitProb2"

    const-string v13, "suitGroupId2"

    filled-new-array {v11, v13}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v5

    move v11, v10

    :goto_3
    if-ge v11, v12, :cond_8

    aget-object v13, v8, v11

    .line 616
    aget-object v14, v13, v5

    move-object/from16 v15, p1

    invoke-static {v15, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v14

    .line 617
    if-eqz v14, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v16

    aget-object v13, v13, v10

    invoke-static {v7, v13}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v18

    cmpl-double v13, v16, v18

    if-ltz v13, :cond_3

    goto/16 :goto_5

    .line 618
    :cond_3
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "ES"

    invoke-virtual {v0, v14, v13}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v13

    const-string v14, "weights"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v13

    .line 619
    nop

    .line 620
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, [B

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    const/4 v4, 0x3

    goto :goto_4

    .line 621
    :cond_4
    cmpg-double v4, v18, v16

    if-lez v4, :cond_6

    .line 622
    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v20

    mul-double v20, v20, v18

    .line 623
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-static {v13, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v18

    sub-double v20, v20, v18

    cmpg-double v14, v20, v16

    if-gez v14, :cond_5

    invoke-static {v13, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 621
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u5957\u88c5\u6743\u91cd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_7
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x3

    goto/16 :goto_3

    .line 626
    :cond_8
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "era"

    aput-object v1, v0, v10

    aput-object v9, v0, v5

    const-string v1, "su"

    aput-object v1, v0, v12

    const/4 v1, 0x3

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method static fields(Ljava/util/Map;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)[B"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
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

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private static generatedAttrs(Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/util/Random;)[B
    .locals 9

    .line 223
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 224
    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 226
    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v3

    const-string v5, "1"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v5

    .line 227
    invoke-static {v3, v4}, Ljava/lang/Double;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Double;->isFinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    cmpl-double v2, v3, v5

    if-gtz v2, :cond_1

    .line 229
    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sub-double/2addr v5, v3

    invoke-virtual {p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    goto :goto_0

    .line 228
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u539f\u7248\u751f\u6210\u5c5e\u6027\u8303\u56f4\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    :cond_2
    invoke-static {p0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->fields(Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 17
    sget-object v0, Lcom/project7/localmanager/LocalTreasureOperationEngine;->METHODS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static hidden([BLcom/project7/localmanager/LocalFeatureCatalog;)[B
    .locals 8

    .line 421
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 422
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EI"

    invoke-virtual {p1, v2, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->map([B)Ljava/util/Map;

    move-result-object p1

    .line 423
    const-string v1, "attr"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 424
    const-string v2, "n"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    if-eqz v2, :cond_0

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 426
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 427
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "v"

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 428
    :cond_3
    goto :goto_0

    .line 429
    :cond_4
    invoke-static {v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->fields(Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method static id(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;
    .locals 1

    .line 21
    new-instance v0, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static ids([BLjava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    .line 330
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    if-eqz p0, :cond_3

    .line 332
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 333
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    goto :goto_0

    .line 334
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5f71\u88c5\u7f16\u53f7\u65e0\u6548\u6216\u91cd\u590d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 337
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-gt p0, p2, :cond_2

    .line 338
    return-object p1

    .line 337
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5f71\u88c5\u6570\u91cf\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 331
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5f71\u88c5\u5217\u8868\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$preview$1(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 664
    const-string v0, "ED"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    const-string v1, "tradeType"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, p2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$replaceAttrs$0(Ljava/lang/String;[B)Z
    .locals 1

    .line 433
    const-string v0, "n"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static map([B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->messagePackValue([BZ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static money(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V
    .locals 3

    .line 346
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "money"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 348
    return-void

    .line 346
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u91d1\u5e01\u4e0d\u8db3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static num([BLjava/lang/String;)D
    .locals 2

    .line 27
    const-string v0, "\u7f3a\u5c11\u539f\u7248\u5f71\u88c5\u6570\u503c\u914d\u7f6e: "

    if-eqz p0, :cond_1

    .line 28
    invoke-static {p0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->map([B)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 30
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B
    .locals 2

    .line 179
    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalEquipmentEngine;->findOwned([BLjava/lang/String;)[B

    move-result-object v0

    .line 180
    if-eqz v0, :cond_4

    .line 181
    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    .line 182
    if-eqz p3, :cond_3

    .line 183
    const/4 p1, 0x0

    .line 184
    invoke-static {p0, p3}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object p0

    const-string p3, "ti"

    invoke-static {p0, p3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string p3, "items"

    invoke-static {p0, p3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    .line 185
    const-string v1, "u"

    invoke-static {p3, v1}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 186
    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8be5\u795e\u5668\u4f7f\u672a\u88c5\u5907\u6b64\u5f71\u88c5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_3
    :goto_1
    return-object v0

    .line 180
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u672a\u62e5\u6709\u8be5\u5f71\u88c5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static preview(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BLjava/util/Random;J)V
    .locals 30

    .line 647
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const-string v0, "refreshTreasureOrangeAsk"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 648
    const-string v11, "h"

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v12

    const-string v13, "u"

    if-eqz v10, :cond_0

    const-string v0, "d"

    goto :goto_0

    :cond_0
    move-object v0, v13

    :goto_0
    invoke-static {v8, v0}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 649
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v7, v14, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v15

    const-string v4, "tr"

    invoke-static {v15, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v7, v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v3

    invoke-static {v7, v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->config(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v2

    .line 650
    const-string v1, "cl"

    invoke-static {v5, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    .line 651
    move-object/from16 p2, v3

    const/4 v3, 0x4

    if-lt v0, v3, :cond_16

    const/4 v3, 0x5

    if-eqz v10, :cond_1

    if-ne v0, v3, :cond_16

    .line 653
    :cond_1
    const-string v3, "ui"

    move-object/from16 v18, v2

    invoke-static {v8, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 654
    move/from16 v19, v2

    const-string v2, "tt"

    move-object/from16 v20, v2

    const-string v2, "crystal"

    const/16 v21, 0x3

    move-object/from16 v22, v2

    const-string v2, "cost"

    move-object/from16 v23, v2

    const/4 v2, 0x1

    if-nez v10, :cond_b

    .line 655
    invoke-static {v8, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 656
    const/16 v8, 0xc8

    const/16 v24, 0x1

    const-string v1, "trg"

    move/from16 v25, v0

    move-object/from16 v0, p0

    move v9, v2

    move-object/from16 v26, v13

    move-object/from16 v13, v18

    move/from16 v18, v12

    move/from16 v12, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v20

    move/from16 v20, v10

    move-object/from16 v10, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v23

    move v2, v8

    move-object/from16 v8, p2

    move-object/from16 v17, v3

    const/16 v16, 0x5

    move/from16 v3, v24

    move-object/from16 v28, v4

    move-object/from16 v27, v5

    move-wide/from16 v4, p5

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->counter(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;IIJ)V

    .line 657
    if-nez v12, :cond_2

    const-string v0, "goldRefreshItemid"

    invoke-static {v13, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v8, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v6, v0, v1}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    move/from16 v24, v12

    goto/16 :goto_5

    .line 658
    :cond_2
    if-ne v12, v9, :cond_9

    .line 659
    invoke-static {v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v0

    .line 660
    const-string v1, "rarity"

    invoke-static {v8, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ER"

    invoke-virtual {v7, v2, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    .line 661
    const-string v2, "refreshConsume"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 662
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 663
    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 p2, v3

    array-length v3, v9

    move/from16 v24, v12

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v3, :cond_3

    aget-object v29, v9, v12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 p3, v3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p3

    goto :goto_2

    .line 664
    :cond_3
    new-instance v3, Lcom/project7/localmanager/LocalTreasureOperationEngine$$ExternalSyntheticLambda0;

    invoke-direct {v3, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine$$ExternalSyntheticLambda0;-><init>(Lcom/project7/localmanager/LocalFeatureCatalog;)V

    invoke-interface {v5, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 665
    invoke-static {v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v3

    const/4 v9, 0x2

    if-le v3, v9, :cond_4

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 666
    :cond_4
    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 667
    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v8, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v4

    invoke-static {v6, v5, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->consumeOptions(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;I)V

    .line 668
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->count([BI)I

    move-result v9

    iget-object v12, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->count([BI)I

    move-result v12

    if-le v9, v12, :cond_5

    .line 669
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "ED"

    invoke-virtual {v7, v9, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    const-string v9, "tradeType"

    invoke-static {v5, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 668
    :cond_5
    goto :goto_3

    .line 670
    :cond_6
    move-object/from16 v3, p2

    move/from16 v12, v24

    const/4 v9, 0x1

    goto/16 :goto_1

    .line 671
    :cond_7
    move/from16 v24, v12

    const-string v2, "refreshConsume2"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 672
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v8, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v4

    invoke-static {v6, v5, v4}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    goto :goto_4

    .line 673
    :cond_8
    const-string v1, "goldRefreshCost"

    invoke-static {v13, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->money(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    const-string v1, "goldRefreshCost2"

    invoke-static {v13, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v6, v10, v1}, Lcom/project7/localmanager/LocalGiftEngine;->spend(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;I)V

    .line 674
    invoke-static {v15, v11, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v15

    .line 675
    nop

    .line 676
    :goto_5
    const/4 v9, 0x4

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "fa"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "secondAttrs"

    move-object/from16 v12, p4

    move/from16 v2, v25

    const/4 v4, 0x1

    invoke-static {v7, v8, v2, v1, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->roll(Lcom/project7/localmanager/LocalFeatureCatalog;[BILjava/lang/String;Ljava/util/Random;)[B

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "ta"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 677
    const-string v1, "thridAttrs"

    invoke-static {v7, v8, v2, v1, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->roll(Lcom/project7/localmanager/LocalFeatureCatalog;[BILjava/lang/String;Ljava/util/Random;)[B

    move-result-object v1

    aput-object v1, v0, v21

    .line 676
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalRefreshFix;->ensure([B)[B

    move-result-object v0

    move v11, v4

    move-object/from16 v1, v22

    move-object/from16 v4, v28

    goto/16 :goto_8

    .line 675
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6d17\u7ec3\u6750\u6599\u6a21\u5f0f\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u9009\u62e9\u6d17\u7ec3\u6750\u6599\u6a21\u5f0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_b
    move-object/from16 v17, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v5

    move-object/from16 v26, v13

    move-object/from16 v13, v18

    move/from16 v24, v19

    const/16 v16, 0x5

    move-object/from16 v5, p2

    move v4, v2

    move-object/from16 v19, v11

    move/from16 v18, v12

    move-object/from16 v11, v20

    move-object v12, v9

    move/from16 v20, v10

    move-object/from16 v10, v22

    const/4 v9, 0x4

    move-object/from16 v22, v14

    move-object/from16 v14, v23

    const/16 v2, 0x32

    const/4 v3, 0x1

    const-string v23, "tro"

    move-object/from16 v0, p0

    move-object v9, v1

    move-object/from16 v1, v23

    move-object v12, v5

    move-object/from16 v23, v11

    move v11, v4

    move-wide/from16 v4, p5

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->counter(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;IIJ)V

    .line 680
    const-string v0, "s"

    invoke-static {v8, v0}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_f

    const-string v1, "000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v1, v22

    move-object/from16 v4, v28

    goto :goto_6

    .line 684
    :cond_c
    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 685
    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v3, 0x0

    invoke-static {v2, v7, v0, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v7, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v3

    .line 686
    iget-object v4, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v7, v2, v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->disposable([BLcom/project7/localmanager/LocalFeatureCatalog;[BZ)V

    .line 687
    move-object/from16 v4, v28

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v5

    const/4 v8, 0x4

    if-ne v5, v8, :cond_d

    invoke-static {v3, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v12, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_d

    .line 689
    const-string v3, "orangeRefreshCost"

    invoke-static {v13, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v6, v10, v3}, Lcom/project7/localmanager/LocalGiftEngine;->spend(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;I)V

    .line 690
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v7, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->refund(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/util/List;)I

    .line 691
    invoke-static {v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v3

    invoke-static {v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v3, v23

    invoke-static {v15, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v15

    .line 692
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->delete(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;)V

    goto :goto_7

    .line 688
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u91cd\u6784\u6750\u6599\u9700\u8981\u540c cost \u7684\u91d1\u8272\u5f71\u88c5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u91cd\u6784\u4e0d\u80fd\u6d88\u8017\u76ee\u6807\u5f71\u88c5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_f
    move-object/from16 v1, v22

    move-object/from16 v4, v28

    .line 682
    :goto_6
    const-string v0, "orangeRefreshItemid"

    invoke-static {v13, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v6, v0, v11}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 694
    :goto_7
    const-string v0, "extraRandomHigh"

    move-object/from16 v2, p4

    move-object v3, v12

    invoke-static {v7, v3, v0, v2, v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->extra(Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/util/Random;Z)[B

    move-result-object v0

    .line 696
    :goto_8
    if-eqz v20, :cond_10

    const-string v2, "ro"

    goto :goto_9

    :cond_10
    const-string v2, "ri"

    :goto_9
    move-object/from16 v3, v27

    invoke-static {v3, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 697
    new-instance v3, Ljava/util/ArrayList;

    const-string v5, "rt"

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 698
    :goto_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_11

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    move/from16 v7, v20

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Math;->addExact(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-static {v2, v5, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 700
    new-instance v3, Ljava/util/ArrayList;

    const-string v5, "ol"

    const-string v8, "il"

    if-eqz v7, :cond_12

    move-object v9, v5

    goto :goto_b

    :cond_12
    move-object v9, v8

    :goto_b
    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0xc8

    if-le v9, v10, :cond_13

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v10

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v3, v12, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v9

    .line 702
    :cond_13
    if-eqz v7, :cond_14

    goto :goto_c

    :cond_14
    move-object v5, v8

    :goto_c
    invoke-static {v2, v5, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 703
    invoke-static {v15, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->update(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 704
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 705
    const/4 v3, 0x6

    const-string v4, "r"

    if-eqz v7, :cond_15

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v3, v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v11

    const/4 v5, 0x2

    aput-object v26, v3, v5

    invoke-static {v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->id(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;

    move-result-object v1

    aput-object v1, v3, v21

    const/4 v1, 0x4

    aput-object v4, v3, v1

    aput-object v0, v3, v16

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "refreshTreasureOrangeReply"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_d

    .line 706
    :cond_15
    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v19, v5, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v11

    const/4 v7, 0x2

    aput-object v26, v5, v7

    invoke-static {v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->id(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;

    move-result-object v1

    aput-object v1, v5, v21

    const/4 v1, 0x4

    aput-object v4, v5, v1

    aput-object v0, v5, v16

    const-string v0, "t"

    aput-object v0, v5, v3

    const/4 v0, 0x7

    invoke-static {v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/16 v0, 0x8

    aput-object v17, v5, v0

    const/16 v0, 0x9

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "refreshTreasureReply"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 707
    :goto_d
    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->canonical(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 708
    return-void

    .line 651
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u53ea\u80fd\u6d17\u7ec3\u91d1\u8272/\u6a59\u8272\u5f71\u88c5\uff0c\u91cd\u6784\u4ec5\u9650\u6a59\u8272"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static refreshCounters([BJ)[B
    .locals 6

    .line 389
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 390
    const-string v2, "q7TreasureDay"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 391
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result p1

    .line 392
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_0

    return-object p0

    .line 393
    :cond_0
    if-eqz v3, :cond_1

    const-string p2, "tcn"

    const-string v3, "ttn"

    const-string v4, "trg"

    const-string v5, "tro"

    filled-new-array {p2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 394
    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    goto :goto_0

    .line 395
    :cond_1
    invoke-static {v1, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static refund(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalResourceEngine$Result;",
            "Lcom/project7/localmanager/LocalFeatureCatalog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 216
    nop

    .line 217
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, p1, v2, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->upgradeMoney(Lcom/project7/localmanager/LocalFeatureCatalog;[B)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v0, "money"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->addExact(II)I

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 219
    return v1
.end method

.method private static replaceAttrs([BLcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 9

    .line 432
    const-string v0, "attr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    .line 433
    new-instance v2, Lcom/project7/localmanager/LocalTreasureOperationEngine$$ExternalSyntheticLambda1;

    invoke-direct {v2, p4}, Lcom/project7/localmanager/LocalTreasureOperationEngine$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 434
    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

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

    .line 435
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "EI"

    invoke-virtual {p1, v6, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    invoke-static {v5, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 436
    if-eqz v5, :cond_0

    .line 437
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "n"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "v"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    goto :goto_0

    .line 436
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u672a\u77e5\u5f71\u88c5\u5c5e\u6027"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 439
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method private static resolve(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)V
    .locals 7

    .line 399
    const-string v0, "t"

    const/16 v1, 0x1f4

    invoke-static {p4, v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->ids([BLjava/lang/String;I)Ljava/util/List;

    move-result-object p4

    .line 400
    nop

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 403
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, p2, v5, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v5

    .line 404
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, p2, v5, v3}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->disposable([BLcom/project7/localmanager/LocalFeatureCatalog;[BZ)V

    .line 405
    invoke-static {p2, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    const-string v6, "decomposeTreasure"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "decomposeMoney"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    goto :goto_1

    .line 407
    :cond_0
    const-string v6, "rewards"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    :goto_1
    goto :goto_0

    .line 408
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8be5\u5f71\u88c5\u4e0d\u80fd\u89e3\u6790"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 410
    :cond_2
    invoke-static {p0, p2, p4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->refund(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/util/List;)I

    move-result p2

    .line 411
    invoke-static {p0, p4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->delete(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;)V

    .line 412
    const-string v2, "money"

    if-lez v4, :cond_3

    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 413
    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v6

    .line 412
    invoke-static {v5, v2, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    iput-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 414
    :cond_3
    const-string v5, "smeltTreasure"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {p0, p1, v5, v6}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    goto :goto_2

    .line 415
    :cond_4
    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 416
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object p1

    .line 417
    if-lez v4, :cond_5

    invoke-static {p1, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 418
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Reply"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->uuids(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    aput-object p4, v1, v6

    const/4 p4, 0x2

    const-string v0, "rm"

    aput-object v0, v1, p4

    const/4 p4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p4

    const/4 p2, 0x4

    const-string p4, "r"

    aput-object p4, v1, p2

    const/4 p2, 0x5

    aput-object p1, v1, p2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 419
    return-void
.end method

.method private static roll(Lcom/project7/localmanager/LocalFeatureCatalog;[BILjava/lang/String;Ljava/util/Random;)[B
    .locals 18

    .line 630
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "rarity"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EN"

    move-object/from16 v5, p0

    invoke-virtual {v5, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 632
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 633
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 634
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    const-string v7, "0"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v6

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "1"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v8

    .line 635
    const-string v10, "mu"

    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    const-string v11, "sigma"

    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v11

    .line 636
    const/4 v13, 0x0

    .line 638
    :goto_1
    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v14

    invoke-virtual/range {p4 .. p4}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v16

    mul-double v16, v16, v11

    add-double v14, v14, v16

    .line 639
    add-int/lit8 v13, v13, 0x1

    const/16 v0, 0x2710

    if-gt v13, v0, :cond_1

    .line 640
    const-string v0, "truncLower"

    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v16

    cmpg-double v0, v14, v16

    if-ltz v0, :cond_0

    const-string v0, "truncUpper"

    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v16

    cmpl-double v0, v14, v16

    if-gtz v0, :cond_0

    .line 641
    sub-double/2addr v8, v6

    mul-double/2addr v8, v14

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    move-object/from16 v0, p1

    goto :goto_0

    .line 638
    :cond_0
    move-object/from16 v0, p1

    goto :goto_1

    .line 639
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5f71\u88c5\u5c5e\u6027\u968f\u673a\u751f\u6210\u5931\u8d25\uff0c\u672c\u6b21\u672a\u6263\u8d39"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5f71\u88c5\u5c5e\u6027\u8303\u56f4\u914d\u7f6e\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_3
    invoke-static {v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->fields(Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method private static trade([B)I
    .locals 1

    .line 709
    const-string v0, "tt"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static transfer(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[BLjava/util/Random;J)V
    .locals 19

    .line 443
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    const-string v8, "s"

    invoke-static {v0, v8}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "d"

    invoke-static {v0, v10}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 444
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v12, 0x0

    invoke-static {v0, v7, v9, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v13

    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v7, v11, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v14

    .line 445
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 446
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v7, v13, v12}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->disposable([BLcom/project7/localmanager/LocalFeatureCatalog;[BZ)V

    .line 447
    invoke-static {v7, v13}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v0

    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v1

    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->config(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object v15

    .line 448
    const-string v2, "cost"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 449
    const-string v4, "tr"

    invoke-static {v13, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->hidden([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v5

    invoke-static {v14, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->hidden([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v3

    .line 450
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 451
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v16

    invoke-static {v5, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v1

    cmpl-double v1, v16, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u76ee\u6807\u5df2\u6709\u66f4\u9ad8\u7684\u76f8\u540c\u9690\u85cf\u5c5e\u6027"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "cl"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EX"

    invoke-virtual {v7, v1, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    .line 454
    if-eqz v2, :cond_6

    .line 455
    const/16 v16, 0xc8

    const/16 v17, 0x1

    const-string v1, "ttn"

    move-object/from16 v0, p0

    move-object v12, v2

    move/from16 v2, v16

    move-object/from16 v16, v3

    move/from16 v3, v17

    move-object/from16 v17, v5

    move-object/from16 v18, v11

    move-object v11, v4

    move-wide/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->counter(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;IIJ)V

    .line 456
    const-string v0, "items"

    invoke-static {v12, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v12, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v6, v3, v2}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    goto :goto_1

    .line 457
    :cond_2
    const-string v0, "transferCost"

    invoke-static {v15, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v6, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->money(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 458
    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-string v2, "prob"

    invoke-static {v12, v2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->num([BLjava/lang/String;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 459
    :goto_2
    const-string v2, "tt"

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    .line 460
    invoke-static {v14, v11}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v12, "ha"

    const/4 v15, 0x0

    aput-object v12, v5, v15

    aput-object v17, v5, v1

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    const-string v15, "h"

    invoke-static {v4, v7, v5, v12, v15}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->replaceAttrs([BLcom/project7/localmanager/LocalFeatureCatalog;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 461
    invoke-static {v14, v11, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 462
    invoke-static {v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v5

    invoke-static {v13}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v2, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v14

    .line 463
    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->update(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 465
    :cond_4
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->refund(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/util/List;)I

    move-result v4

    .line 466
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->delete(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;)V

    .line 467
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 468
    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v5, v7

    invoke-static {v9}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->id(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;

    move-result-object v7

    aput-object v7, v5, v1

    aput-object v10, v5, v3

    const/4 v1, 0x3

    invoke-static/range {v18 .. v18}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->id(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;

    move-result-object v3

    aput-object v3, v5, v1

    const/4 v1, 0x4

    const-string v3, "t"

    aput-object v3, v5, v1

    const/4 v1, 0x5

    if-eqz v0, :cond_5

    move-object/from16 v16, v17

    :cond_5
    aput-object v16, v5, v1

    const/4 v1, 0x6

    const-string v3, "r"

    aput-object v3, v5, v1

    const/4 v1, 0x7

    .line 469
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    const/16 v0, 0x8

    const-string v1, "rm"

    aput-object v1, v5, v0

    const/16 v0, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/16 v0, 0xa

    aput-object v2, v5, v0

    const/16 v0, 0xb

    invoke-static {v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->trade([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 468
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "transferTreasureReply"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 470
    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->canonical(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 471
    return-void

    .line 454
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u8f6c\u79fb\u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6e90\u5f71\u88c5\u6ca1\u6709\u9690\u85cf\u5c5e\u6027"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8f6c\u79fb\u5f71\u88c5 cost \u5fc5\u987b\u76f8\u540c"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4e0d\u80fd\u8f6c\u79fb\u5230\u540c\u4e00\u4ef6\u5f71\u88c5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static update(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 355
    const-string v1, "u"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 354
    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalEquipmentEngine;->updateRecords([BLjava/util/Map;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 356
    return-void
.end method

.method static upgradeMoney(Lcom/project7/localmanager/LocalFeatureCatalog;[B)I
    .locals 7

    .line 205
    const-string v0, "tr"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "lv"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;[B)[B

    move-result-object p1

    const-string v1, "cost"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->v([BLjava/lang/String;)I

    move-result p1

    .line 206
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/16 v2, 0x3e8

    if-gt v0, v2, :cond_2

    .line 207
    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "U"

    invoke-virtual {p0, v5, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "costs"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 209
    if-lt p1, v1, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gt p1, v5, :cond_0

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_0

    .line 211
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7f3a\u5c11\u539f\u7248\u5f3a\u5316\u8fd4\u8fd8\u914d\u7f6e\uff0c\u672c\u6b21\u672a\u6d88\u8017"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_1
    return v2

    .line 206
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5f71\u88c5\u5f3a\u5316\u7b49\u7ea7\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static uuids(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/project7/localmanager/BsonLite$UuidValue;",
            ">;"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->id(Ljava/lang/String;)Lcom/project7/localmanager/BsonLite$UuidValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_0
    return-object v0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static values([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->messagePackValue([BZ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
