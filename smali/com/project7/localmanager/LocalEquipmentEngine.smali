.class final Lcom/project7/localmanager/LocalEquipmentEngine;
.super Ljava/lang/Object;
.source "LocalEquipmentEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 28

    .line 14
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "pi"

    const-string v6, "h"

    const-string v7, "u"

    new-instance v8, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v8, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 15
    const-string v9, "requestItemHotRankList"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "i"

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 99
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 15
    if-eqz v9, :cond_0

    .line 17
    new-array v1, v11, [Ljava/lang/Object;

    aput-object v10, v1, v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "replyItemHotRankList"

    invoke-virtual {v8, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 18
    return-object v8

    .line 21
    :cond_0
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalEquipmentEngine;->handles(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 22
    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    .line 23
    invoke-static {v4, v7}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 24
    const-string v13, "unequipTreasureAllHero"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_4

    const-string v12, "\u672a\u62e5\u6709\u8be5\u5f71\u88c5"

    const-string v11, "\u5f71\u88c5\u7f16\u53f7\u65e0\u6548"

    if-eqz v13, :cond_5

    .line 25
    if-eqz v15, :cond_4

    .line 26
    :try_start_1
    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalEquipmentEngine;->findOwned([BLjava/lang/String;)[B

    move-result-object v3

    .line 27
    if-eqz v3, :cond_3

    .line 28
    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalEquipmentEngine;->itemCost([BLcom/project7/localmanager/LocalFeatureCatalog;)I

    .line 29
    const-string v3, "heromgr"

    .line 30
    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "hrs"

    .line 29
    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 31
    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    .line 32
    const-string v6, "1"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 33
    invoke-static {v4}, Lcom/project7/localmanager/LocalEquipmentEngine;->equipped([B)Ljava/util/List;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    new-instance v10, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda0;

    invoke-direct {v10, v15}, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 35
    invoke-static {v8, v6, v9}, Lcom/project7/localmanager/LocalEquipmentEngine;->restoreDetached(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;Ljava/util/List;)[B

    move-result-object v6

    invoke-static {v6, v5, v4, v9}, Lcom/project7/localmanager/LocalEquipmentEngine;->replace([BI[BLjava/util/List;)[B

    move-result-object v4

    iput-object v4, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 36
    :cond_1
    goto :goto_0

    .line 37
    :cond_2
    const-string v3, "unequipTreasureAllHeroReply"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v5, v4

    new-instance v4, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v4, v15}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 38
    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->clearMismatchedBindings(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)V

    .line 39
    return-object v8

    .line 27
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 25
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_5
    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 42
    invoke-static {v1, v9}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v13

    .line 43
    move-object/from16 v16, v11

    invoke-static {v13}, Lcom/project7/localmanager/LocalEquipmentEngine;->equipped([B)Ljava/util/List;

    move-result-object v11

    .line 44
    move-object/from16 v17, v14

    const-string v14, "equipTreasureBatch"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/16 v18, 0x5

    const/16 v19, 0x4

    move-object/from16 v20, v15

    if-eqz v14, :cond_1a

    .line 45
    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_4

    .line 46
    const-string v14, "[0-9a-fA-F]{24}"

    if-eqz v3, :cond_7

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_7

    invoke-virtual {v3, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    goto :goto_1

    .line 47
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u5f71\u88c5\u65b9\u6848\u7f16\u53f7\u65e0\u6548"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_7
    :goto_1
    invoke-static {v4, v10}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    .line 49
    if-eqz v4, :cond_19

    .line 50
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 51
    move-object/from16 v21, v5

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 52
    nop

    .line 53
    move-object/from16 v22, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 54
    move-object/from16 v23, v8

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 55
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v24, v7

    const/4 v7, 0x0

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v17, :cond_11

    :try_start_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v25, v11

    move-object/from16 v11, v17

    check-cast v11, Ljava/lang/String;

    .line 56
    invoke-virtual {v11, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 p2, v14

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 58
    invoke-static {v4, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 59
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-ltz v17, :cond_f

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v17
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v17, :cond_8

    move-object/from16 p3, v4

    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v4, :cond_f

    goto :goto_3

    :cond_8
    move-object/from16 p3, v4

    .line 61
    :goto_3
    :try_start_5
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4, v11}, Lcom/project7/localmanager/LocalEquipmentEngine;->find([BILjava/lang/String;)[B

    move-result-object v4

    .line 62
    if-eqz v4, :cond_e

    .line 63
    move-object/from16 v17, v8

    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    .line 64
    move-object/from16 v26, v10

    const-string v10, "tr"

    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    const-string v1, "cl"

    invoke-static {v10, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    .line 65
    const-string v10, "F"

    move-object/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v27, v13

    const-string v13, ":"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    .line 66
    if-eqz v1, :cond_d

    const-string v3, "c"

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_d

    .line 68
    const-string v3, "heroes"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 69
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u4e13\u5c5e\u5f71\u88c5\u4e0e\u795e\u5668\u4f7f\u4e0d\u5339\u914d"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_a
    :goto_4
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v10, "unique"

    invoke-static {v1, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    .line 71
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8be5\u5f71\u88c5\u4e0d\u80fd\u91cd\u590d\u88c5\u5907"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_c
    :goto_5
    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalEquipmentEngine;->itemCost([BLcom/project7/localmanager/LocalFeatureCatalog;)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v7

    .line 73
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v3, v8

    const/4 v1, 0x1

    aput-object v14, v3, v1

    const/4 v1, 0x2

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    move-object/from16 v1, p0

    move-object/from16 v14, p2

    move-object/from16 v4, p3

    move-object/from16 v8, v17

    move-object/from16 v3, v20

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    move-object/from16 v13, v27

    goto/16 :goto_2

    .line 67
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8be5\u9053\u5177\u4e0d\u80fd\u88c5\u5907"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5f71\u88c5\u6765\u6e90\u65e0\u6548"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5f71\u88c5\u7f16\u53f7\u65e0\u6548\u6216\u91cd\u590d"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_11
    move-object/from16 v20, v3

    move-object/from16 v17, v8

    move-object/from16 v25, v11

    move-object/from16 v27, v13

    const-string v1, "ti"

    move-object/from16 v4, v27

    invoke-static {v4, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v3, "mc"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_12

    goto :goto_6

    :cond_12
    const/16 v1, 0x2d

    :goto_6
    if-gt v7, v1, :cond_18

    .line 78
    if-eqz v20, :cond_14

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 79
    move-object/from16 v3, v20

    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v5, p0

    :try_start_6
    invoke-static {v5, v2, v9, v1, v15}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->matches([BLcom/project7/localmanager/LocalFeatureCatalog;ILjava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_7

    .line 80
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u9009\u62e9\u7684\u5f71\u88c5\u4e0e\u65b9\u6848\u4e0d\u4e00\u81f4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_14
    move-object/from16 v5, p0

    move-object/from16 v3, v20

    .line 81
    :goto_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 83
    move-object/from16 v10, v24

    invoke-static {v8, v10}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 84
    move-object/from16 v11, v17

    invoke-interface {v11, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_15
    move-object/from16 v24, v10

    move-object/from16 v17, v11

    goto :goto_8

    .line 86
    :cond_16
    move-object/from16 v10, v24

    move-object/from16 v7, v23

    move-object/from16 v8, v25

    invoke-static {v7, v8, v15}, Lcom/project7/localmanager/LocalEquipmentEngine;->restoreDetached(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;Ljava/util/List;)[B

    move-result-object v8

    invoke-static {v8, v9, v4, v15}, Lcom/project7/localmanager/LocalEquipmentEngine;->replace([BI[BLjava/util/List;)[B

    move-result-object v4

    iput-object v4, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 87
    const-string v4, "equipTreasureBatchReply"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v22, v8, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v1, v8, v9

    const-string v1, "e"

    aput-object v1, v8, v19

    aput-object v6, v8, v18

    const/4 v1, 0x6

    aput-object v21, v8, v1

    const/4 v1, 0x7

    .line 88
    if-nez v3, :cond_17

    const-string v3, ""

    goto :goto_9

    :cond_17
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :goto_9
    aput-object v3, v8, v1

    .line 87
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v7, v4, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 89
    goto/16 :goto_c

    .line 77
    :cond_18
    move-object/from16 v5, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u88c5\u5907\u6240\u9700 cost \u8d85\u8fc7\u795e\u5668\u4f7f\u4e0a\u9650"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    :goto_a
    move-object/from16 v5, p0

    goto/16 :goto_e

    .line 49
    :cond_19
    move-object v5, v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5f71\u88c5\u5217\u8868\u65e0\u6548"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_1a
    move-object v5, v1

    move-object/from16 v22, v6

    move-object v10, v7

    move-object v7, v8

    move-object v8, v11

    move-object v4, v13

    const-string v1, "unequipTreasure"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_2

    const-string v6, "t"

    if-eqz v1, :cond_1d

    .line 90
    if-eqz v20, :cond_1c

    .line 91
    :try_start_7
    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda0;

    move-object/from16 v11, v20

    invoke-direct {v3, v11}, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    new-instance v3, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda0;

    invoke-direct {v3, v11}, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 95
    invoke-static {v7, v8, v1}, Lcom/project7/localmanager/LocalEquipmentEngine;->restoreDetached(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;Ljava/util/List;)[B

    move-result-object v3

    invoke-static {v3, v9, v4, v1}, Lcom/project7/localmanager/LocalEquipmentEngine;->replace([BI[BLjava/util/List;)[B

    move-result-object v1

    iput-object v1, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 96
    const-string v1, "unequipTreasureReply"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v3, v8

    const/4 v4, 0x2

    aput-object v10, v3, v4

    new-instance v4, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v4, v11}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    aput-object v4, v3, v8

    aput-object v6, v3, v19

    aput-object v17, v3, v18

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_b

    .line 92
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8be5\u795e\u5668\u4f7f\u672a\u88c5\u5907\u6b64\u5f71\u88c5"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1d
    const-string v1, "unequipAllTreasure"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v7, v8, v1}, Lcom/project7/localmanager/LocalEquipmentEngine;->restoreDetached(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v9, v4, v3}, Lcom/project7/localmanager/LocalEquipmentEngine;->replace([BI[BLjava/util/List;)[B

    move-result-object v1

    iput-object v1, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 99
    const-string v1, "unequipAllTreasureReply"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v3, v8

    const-string v4, "hinv"

    const/4 v8, 0x2

    aput-object v4, v3, v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    aput-object v6, v3, v19

    aput-object v17, v3, v18

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_c

    .line 97
    :cond_1e
    :goto_b
    nop

    .line 101
    :goto_c
    const/4 v1, 0x0

    invoke-static {v7, v2, v1}, Lcom/project7/localmanager/LocalTreasurePlanEngine;->clearMismatchedBindings(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;)V

    .line 105
    move-object v8, v7

    goto :goto_f

    .line 41
    :cond_1f
    move-object v5, v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u672a\u62e5\u6709\u8be5\u795e\u5668\u4f7f"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_20
    move-object v5, v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5f71\u88c5\u64cd\u4f5c\u5c1a\u672a\u5b9e\u73b0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_2

    .line 102
    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    :goto_d
    move-object v5, v1

    :goto_e
    move-object v1, v0

    .line 103
    new-instance v8, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v8, v5}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 104
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "m"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "showMessageStr"

    invoke-virtual {v8, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 106
    :goto_f
    return-object v8
.end method

.method private static equipped([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 110
    const-string v0, "ti"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "items"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static find([BILjava/lang/String;)[B
    .locals 1

    .line 228
    if-nez p1, :cond_0

    .line 229
    const-string p1, "inv"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 228
    const-string p1, "items"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalEquipmentEngine;->equipped([B)Ljava/util/List;

    move-result-object p0

    .line 230
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "u"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 231
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static findOwned([BLjava/lang/String;)[B
    .locals 4

    .line 150
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 151
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/project7/localmanager/LocalEquipmentEngine;->find([BILjava/lang/String;)[B

    move-result-object v1

    .line 152
    if-eqz v1, :cond_1

    return-object v1

    .line 153
    :cond_1
    nop

    .line 154
    const-string v1, "heromgr"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 153
    const-string v1, "hrs"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 155
    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalEquipmentEngine;->equipped([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 156
    const-string v3, "u"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 157
    :cond_3
    goto :goto_0

    .line 158
    :cond_4
    return-object v0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 5

    .line 8
    const-string v0, "equipTreasureBatch"

    const-string v1, "unequipTreasure"

    const-string v2, "unequipAllTreasure"

    const-string v3, "unequipTreasureAllHero"

    const-string v4, "requestItemHotRankList"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 8
    return p0
.end method

.method static itemCost([BLcom/project7/localmanager/LocalFeatureCatalog;)I
    .locals 7

    .line 113
    const-string v0, "i"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 114
    const-string v1, "tr"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cl"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "F"

    invoke-virtual {p1, v3, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    .line 116
    if-eqz v2, :cond_3

    const-string v3, "c"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    .line 118
    const-string p0, "cost"

    invoke-static {v2, p0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "T"

    invoke-virtual {p1, v3, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    .line 120
    if-eqz p1, :cond_2

    const-string v0, "heroes"

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    const/4 v0, -0x1

    const-string v2, "x"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    .line 122
    const-string v2, "stages"

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 123
    const-string v5, "exp"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    if-gt v5, v1, :cond_0

    const-string v5, "stage"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    if-le v6, v0, :cond_0

    .line 124
    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    const-string v3, "reduce"

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 123
    :cond_0
    goto :goto_0

    .line 126
    :cond_1
    sub-int/2addr p0, v3

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 128
    :cond_2
    return p0

    .line 117
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8be5\u9053\u5177\u4e0d\u80fd\u88c5\u5907"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$apply$0(Ljava/lang/String;[B)Z
    .locals 1

    .line 34
    const-string v0, "u"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeOwned$3(Ljava/lang/String;[B)Z
    .locals 1

    .line 211
    const-string v0, "u"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static removeOwned([BLjava/lang/String;)[B
    .locals 5

    .line 209
    const-string v0, "inv"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 210
    const-string v2, "items"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    .line 211
    new-instance v4, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1}, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 212
    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 213
    nop

    .line 214
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 213
    const-string v1, "hrs"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 215
    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    .line 216
    const-string v3, "1"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 217
    invoke-static {v1}, Lcom/project7/localmanager/LocalEquipmentEngine;->equipped([B)Ljava/util/List;

    move-result-object v3

    .line 218
    new-instance v4, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1}, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    invoke-static {p0, v2, v1, v3}, Lcom/project7/localmanager/LocalEquipmentEngine;->replace([BI[BLjava/util/List;)[B

    move-result-object p0

    .line 220
    :cond_0
    goto :goto_0

    .line 221
    :cond_1
    return-object p0
.end method

.method private static replace([BI[BLjava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[B",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 224
    const-string v0, "ti"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "items"

    invoke-static {v1, v2, p3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p3

    .line 225
    invoke-static {p2, v0, p3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static replacedItems([BLjava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 192
    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    .line 193
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 194
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "u"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 195
    if-eqz v1, :cond_0

    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    return-object p0
.end method

.method private static restoreDetached(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;Ljava/util/List;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalResourceEngine$Result;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 133
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "u"

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "inv"

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p2

    .line 135
    const-string v4, "items"

    invoke-static {p2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    .line 136
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_1
    nop

    .line 138
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 140
    invoke-static {v9, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 141
    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v10

    .line 142
    :cond_2
    goto :goto_2

    .line 143
    :cond_3
    if-eqz v8, :cond_4

    .line 144
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 145
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "i"

    aput-object p2, p1, v7

    aput-object v6, p1, v10

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "updateItems"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 147
    :cond_4
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    return-object p0
.end method

.method static updateOwned([BLjava/util/Map;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)[B"
        }
    .end annotation

    .line 162
    const-string v0, "inv"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 163
    nop

    .line 164
    const-string v2, "items"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, p1}, Lcom/project7/localmanager/LocalEquipmentEngine;->updatedItems([BLjava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 163
    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 165
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    const-string v4, "hrs"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 168
    const-string v7, "1"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    const-string v8, "ti"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 169
    nop

    .line 170
    invoke-static {v9, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10, p1}, Lcom/project7/localmanager/LocalEquipmentEngine;->updatedItems([BLjava/util/Map;)Ljava/util/List;

    move-result-object v10

    .line 169
    invoke-static {v9, v2, v10}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v7

    .line 171
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/io/Serializable;

    const/4 v9, 0x0

    const-string v10, "0"

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v7, v8, v6

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    goto :goto_0

    .line 173
    :cond_0
    invoke-static {v1, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static updateRecords([BLjava/util/Map;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)[B"
        }
    .end annotation

    .line 177
    const-string v0, "inv"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 178
    nop

    .line 179
    const-string v2, "items"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, p1}, Lcom/project7/localmanager/LocalEquipmentEngine;->replacedItems([BLjava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 178
    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 180
    nop

    .line 181
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 180
    const-string v1, "hrs"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 182
    const-string v3, "0"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 183
    const-string v4, "1"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v4, "ti"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 184
    nop

    .line 185
    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, p1}, Lcom/project7/localmanager/LocalEquipmentEngine;->replacedItems([BLjava/util/Map;)Ljava/util/List;

    move-result-object v6

    .line 184
    invoke-static {v5, v2, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 186
    invoke-static {p0, v3, v1}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object p0

    .line 187
    goto :goto_0

    .line 188
    :cond_0
    return-object p0
.end method

.method private static updatedItems([BLjava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 201
    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    .line 202
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 203
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "u"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 204
    if-eqz v2, :cond_0

    const-string v3, "tr"

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    return-object p0
.end method
