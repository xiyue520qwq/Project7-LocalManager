.class final Lcom/project7/localmanager/LocalTreasureUpgradeEngine;
.super Ljava/lang/Object;
.source "LocalTreasureUpgradeEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 36

    .line 13
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "Reply"

    const-string v5, "upgradeAllTreasureReply"

    const-string v6, "r"

    const-string v7, "changeTreasureForbidReply"

    const-string v8, "l"

    const-string v9, "f"

    const-string v10, "upgradeAllTreasure"

    const-string v11, "changeTreasureForbid"

    const-string v12, "tr"

    const-string v13, "i"

    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v14, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 14
    const-string v15, "s"

    move-object/from16 v16, v4

    invoke-static {v3, v15}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    move-object/from16 v17, v5

    const-string v5, "h"

    move-object/from16 v18, v7

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v7

    .line 17
    const/16 v19, 0x5

    move-object/from16 v20, v5

    const/16 v21, 0x3

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalTreasureUpgradeEngine;->handles(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 18
    if-eqz v7, :cond_1

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v22

    if-eqz v22, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u672a\u62e5\u6709\u8be5\u795e\u5668\u4f7f"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    :goto_0
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_27
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_26

    .line 21
    move-object/from16 v23, v6

    :try_start_1
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    nop

    .line 23
    nop

    .line 24
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_23
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_22

    const-wide/16 v25, 0x0

    move-object/from16 v27, v15

    const-string v15, "money"

    if-eqz v24, :cond_3

    .line 25
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v1, v0, v4, v3}, Lcom/project7/localmanager/LocalTreasureUpgradeEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v0

    .line 26
    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 27
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v24, v11

    :try_start_3
    invoke-static {v0, v9}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 28
    :goto_1
    invoke-static {v0, v9, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-object/from16 v33, v4

    move/from16 v34, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v12

    move-object/from16 v35, v13

    move-object/from16 v30, v14

    move-wide/from16 v10, v25

    goto/16 :goto_f

    .line 90
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    move/from16 v34, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object v9, v10

    move-object v7, v11

    move-object/from16 v32, v12

    move-object/from16 v35, v13

    goto/16 :goto_22

    .line 30
    :cond_3
    move-object/from16 v24, v11

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 31
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_20

    move-object/from16 v29, v9

    const-string v9, "lv"

    if-eqz v28, :cond_8

    .line 32
    if-eqz v7, :cond_7

    .line 33
    :try_start_4
    invoke-static {v3, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 34
    if-eqz v3, :cond_6

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_6

    .line 36
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_5

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v31, v10

    :try_start_5
    move-object/from16 v10, v30

    check-cast v10, Ljava/lang/String;

    .line 37
    move-object/from16 v30, v14

    invoke-static {v3, v10}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 38
    move-object/from16 p3, v3

    const-string v3, "[0-9a-fA-F]{24}"

    invoke-virtual {v10, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v14, :cond_4

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 39
    invoke-virtual {v10, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 41
    move-object/from16 v3, p3

    move-object/from16 v14, v30

    move-object/from16 v10, v31

    goto :goto_3

    .line 40
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u5f71\u88c5\u5f3a\u5316\u5217\u8868\u65e0\u6548"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_5
    move-object/from16 v31, v10

    move-object/from16 v30, v14

    goto :goto_6

    .line 34
    :cond_6
    move-object/from16 v31, v10

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8bf7\u9009\u62e9\u9700\u8981\u5f3a\u5316\u7684\u5f71\u88c5"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_4
    move/from16 v34, v7

    move-object/from16 v28, v8

    goto/16 :goto_1f

    .line 32
    :cond_7
    move-object/from16 v31, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8bf7\u9009\u62e9\u795e\u5668\u4f7f"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_8
    move-object/from16 v31, v10

    move-object/from16 v30, v14

    invoke-static {v1, v0, v4, v7}, Lcom/project7/localmanager/LocalTreasureUpgradeEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v10

    .line 44
    const-string v14, "upgradeTreasure"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 45
    invoke-static {v10, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    const/4 v10, 0x1

    invoke-static {v3, v10}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    goto :goto_5

    .line 46
    :cond_9
    invoke-static {v3, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 44
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 47
    if-eqz v3, :cond_16

    .line 48
    invoke-interface {v11, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_6
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide/from16 v10, v25

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1f
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_1e

    if-eqz v14, :cond_d

    :try_start_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 p3, v3

    move-object/from16 v3, v28

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v0, v3, v7}, Lcom/project7/localmanager/LocalTreasureUpgradeEngine;->owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_c

    .line 52
    move-object/from16 v28, v8

    :try_start_7
    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_a

    .line 53
    move-object/from16 v32, v12

    :try_start_8
    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v12

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_8

    move/from16 v34, v7

    :try_start_9
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_6

    .line 54
    move-object/from16 v33, v4

    const/4 v4, 0x1

    if-lt v12, v4, :cond_c

    if-le v7, v12, :cond_c

    :try_start_a
    const-string v4, "level"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    if-gt v7, v4, :cond_c

    .line 56
    const-string v4, "F"

    move/from16 v35, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cl"

    .line 57
    invoke-static {v8, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v0, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 59
    const-string v4, "cost"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 60
    move/from16 v12, v35

    :goto_8
    if-ge v12, v7, :cond_b

    .line 61
    const-string v4, "U"
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_4

    move-object/from16 v35, v13

    :try_start_b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v4, v13}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    const-string v13, "costs"

    invoke-static {v4, v13}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 62
    const/4 v13, 0x1

    if-lt v3, v13, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-gt v3, v13, :cond_a

    .line 63
    add-int/lit8 v13, v3, -0x1

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v13, v3

    int-to-long v3, v4

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    .line 60
    add-int/lit8 v12, v12, 0x1

    move v3, v13

    move-object/from16 v13, v35

    goto :goto_8

    .line 62
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u7f3a\u5c11\u8be5\u7b49\u7ea7\u7684\u539f\u7248\u5f3a\u5316\u914d\u7f6e"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_b
    move-object/from16 v35, v13

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v8, v9, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-object/from16 v3, p3

    move-object/from16 v8, v28

    move-object/from16 v12, v32

    move-object/from16 v4, v33

    move/from16 v7, v34

    move-object/from16 v13, v35

    goto/16 :goto_7

    .line 90
    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    :goto_9
    move-object/from16 v35, v13

    goto/16 :goto_1b

    .line 54
    :cond_c
    move-object/from16 v35, v13

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u5f3a\u5316\u7b49\u7ea7\u4e0d\u80fd\u8d85\u8fc7\u6307\u6325\u4f7f\u7b49\u7ea7\uff0c\u4e14\u5fc5\u987b\u9ad8\u4e8e\u5f53\u524d\u7b49\u7ea7"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    :goto_a
    move/from16 v34, v7

    goto :goto_e

    :catch_a
    move-exception v0

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    move/from16 v34, v7

    goto :goto_d

    :catch_c
    move-exception v0

    goto :goto_c

    :catch_d
    move-exception v0

    :goto_c
    move/from16 v34, v7

    move-object/from16 v28, v8

    :goto_d
    move-object/from16 v32, v12

    :goto_e
    move-object/from16 v35, v13

    move-object v8, v4

    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    move-object/from16 v7, v24

    goto/16 :goto_13

    .line 68
    :cond_d
    move-object/from16 v33, v4

    move/from16 v34, v7

    move-object/from16 v28, v8

    move-object/from16 v32, v12

    move-object/from16 v35, v13

    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    cmp-long v0, v10, v3

    if-gtz v0, :cond_15

    const/4 v3, 0x0

    .line 70
    :goto_f
    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalEquipmentEngine;->updateOwned([BLjava/util/Map;)[B

    move-result-object v0

    move-object/from16 v4, v30

    iput-object v0, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 71
    cmp-long v0, v10, v25

    if-lez v0, :cond_e

    .line 72
    iget-object v0, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v7

    long-to-int v8, v10

    sub-int/2addr v7, v8

    invoke-static {v0, v15, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    iput-object v0, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 73
    const-string v0, "updateMoney"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const-string v7, "v"

    const/4 v9, 0x0

    aput-object v7, v8, v9

    iget-object v7, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1d
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_1c

    .line 75
    :cond_e
    move-object/from16 v7, v24

    :try_start_c
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_c} :catch_1a

    if-eqz v0, :cond_f

    .line 76
    const/4 v6, 0x4

    :try_start_d
    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v27, v0, v6

    new-instance v6, Lcom/project7/localmanager/BsonLite$UuidValue;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/ArithmeticException; {:try_start_d .. :try_end_d} :catch_12

    move-object/from16 v8, v33

    :try_start_e
    invoke-direct {v6, v8}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    aput-object v6, v0, v9

    const/4 v6, 0x2

    aput-object v23, v0, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v21

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_e} :catch_10

    move-object/from16 v3, v18

    :try_start_f
    invoke-virtual {v4, v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_f .. :try_end_f} :catch_e

    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v9, v31

    goto/16 :goto_16

    .line 90
    :catch_e
    move-exception v0

    goto :goto_12

    :catch_f
    move-exception v0

    goto :goto_12

    :catch_10
    move-exception v0

    goto :goto_10

    :catch_11
    move-exception v0

    :goto_10
    move-object/from16 v3, v18

    goto :goto_12

    :catch_12
    move-exception v0

    goto :goto_11

    :catch_13
    move-exception v0

    :goto_11
    move-object/from16 v3, v18

    move-object/from16 v8, v33

    :goto_12
    move-object/from16 v11, v16

    move-object/from16 v10, v17

    :goto_13
    move-object/from16 v9, v31

    goto/16 :goto_24

    .line 77
    :cond_f
    move-object/from16 v3, v18

    move-object/from16 v8, v33

    move-object/from16 v9, v31

    :try_start_10
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_10 .. :try_end_10} :catch_18

    if-eqz v0, :cond_11

    .line 78
    :try_start_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_15
    .catch Ljava/lang/ArithmeticException; {:try_start_11 .. :try_end_11} :catch_14

    if-eqz v10, :cond_10

    :try_start_12
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_12 .. :try_end_12} :catch_18

    goto :goto_14

    .line 80
    :cond_10
    const/4 v6, 0x4

    :try_start_13
    new-array v10, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v20, v10, v6

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v6, 0x2

    aput-object v35, v10, v6

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    aput-object v0, v10, v21

    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Ljava/lang/ArithmeticException; {:try_start_13 .. :try_end_13} :catch_14

    move-object/from16 v10, v17

    :try_start_14
    invoke-virtual {v4, v10, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 81
    move-object/from16 v11, v16

    goto :goto_16

    .line 90
    :catch_14
    move-exception v0

    goto :goto_15

    :catch_15
    move-exception v0

    :goto_15
    move-object/from16 v10, v17

    goto/16 :goto_18

    .line 82
    :cond_11
    move-object/from16 v10, v17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_17
    .catch Ljava/lang/ArithmeticException; {:try_start_14 .. :try_end_14} :catch_16

    move-object/from16 v11, v16

    :try_start_15
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x6

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v20, v13, v12

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x1

    aput-object v12, v13, v14

    const/4 v12, 0x2

    aput-object v27, v13, v12

    new-instance v12, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v12, v8}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v12, v13, v21

    const/4 v12, 0x4

    aput-object v28, v13, v12

    .line 83
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v13, v19

    .line 82
    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 86
    :goto_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-object v6, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v12, "inv"

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    const-string v12, "items"

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 88
    const-string v13, "u"

    invoke-static {v12, v13}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 89
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "updateItems"

    const/4 v6, 0x2

    new-array v12, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v35, v12, v6

    const/4 v6, 0x1

    aput-object v0, v12, v6

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 102
    :cond_14
    move-object v14, v4

    goto/16 :goto_26

    .line 90
    :catch_16
    move-exception v0

    goto :goto_18

    :catch_17
    move-exception v0

    :goto_18
    move-object/from16 v11, v16

    goto/16 :goto_24

    :catch_18
    move-exception v0

    goto :goto_19

    :catch_19
    move-exception v0

    :goto_19
    move-object/from16 v11, v16

    move-object/from16 v10, v17

    goto/16 :goto_24

    :catch_1a
    move-exception v0

    goto :goto_1a

    :catch_1b
    move-exception v0

    :goto_1a
    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    goto :goto_1c

    :catch_1c
    move-exception v0

    goto :goto_1b

    :catch_1d
    move-exception v0

    :goto_1b
    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    move-object/from16 v7, v24

    :goto_1c
    move-object/from16 v9, v31

    move-object/from16 v8, v33

    goto/16 :goto_24

    .line 68
    :cond_15
    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    move-object/from16 v7, v24

    move-object/from16 v9, v31

    move-object/from16 v8, v33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "\u91d1\u5e01\u4e0d\u8db3"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_16
    move/from16 v34, v7

    move-object/from16 v28, v8

    move-object/from16 v32, v12

    move-object/from16 v35, v13

    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    move-object/from16 v7, v24

    move-object/from16 v9, v31

    move-object v8, v4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "\u5f3a\u5316\u7b49\u7ea7\u65e0\u6548"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :catch_1e
    move-exception v0

    goto :goto_1d

    :catch_1f
    move-exception v0

    :goto_1d
    move/from16 v34, v7

    move-object/from16 v28, v8

    move-object/from16 v32, v12

    move-object/from16 v35, v13

    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    move-object/from16 v7, v24

    move-object/from16 v9, v31

    goto/16 :goto_23

    :catch_20
    move-exception v0

    goto :goto_1e

    :catch_21
    move-exception v0

    :goto_1e
    move/from16 v34, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    :goto_1f
    move-object v9, v10

    move-object/from16 v32, v12

    move-object/from16 v35, v13

    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    move-object/from16 v7, v24

    goto :goto_23

    :catch_22
    move-exception v0

    goto :goto_21

    :catch_23
    move-exception v0

    goto :goto_21

    .line 17
    :cond_17
    move-object/from16 v23, v6

    move/from16 v34, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object v9, v10

    move-object v7, v11

    move-object/from16 v32, v12

    move-object/from16 v35, v13

    move-object/from16 v27, v15

    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    move-object v8, v4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "\u5f71\u88c5\u64cd\u4f5c\u5c1a\u672a\u5b9e\u73b0"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_15 .. :try_end_15} :catch_24

    .line 90
    :catch_24
    move-exception v0

    goto :goto_24

    :catch_25
    move-exception v0

    goto :goto_24

    :catch_26
    move-exception v0

    goto :goto_20

    :catch_27
    move-exception v0

    :goto_20
    move-object/from16 v23, v6

    :goto_21
    move/from16 v34, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object v9, v10

    move-object v7, v11

    move-object/from16 v32, v12

    move-object/from16 v35, v13

    move-object/from16 v27, v15

    :goto_22
    move-object/from16 v11, v16

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    :goto_23
    move-object v8, v4

    .line 91
    :goto_24
    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v14, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 92
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "m"

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v5, v4

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v4, "showMessageStr"

    invoke-virtual {v14, v4, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 93
    if-nez v8, :cond_18

    const-string v0, "000000000000000000000000"

    goto :goto_25

    :cond_18
    move-object v0, v8

    .line 94
    :goto_25
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 95
    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalEquipmentEngine;->findOwned([BLjava/lang/String;)[B

    move-result-object v1

    .line 96
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v27, v2, v4

    new-instance v4, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v4, v0}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    aput-object v23, v2, v4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 97
    move-object/from16 v4, v32

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    move-object/from16 v4, v29

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v21

    .line 96
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v14, v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 98
    goto :goto_26

    :cond_19
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 99
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v20, v0, v1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object v35, v0, v1

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v1, v0, v21

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v14, v10, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_26

    .line 100
    :cond_1a
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalTreasureUpgradeEngine;->handles(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v20, v2, v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    aput-object v27, v2, v4

    new-instance v4, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v4, v0}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v21

    const/4 v4, 0x4

    aput-object v28, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v19

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v14, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 103
    :cond_1b
    :goto_26
    return-object v14
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 4

    .line 8
    const-string v0, "changeTreasureForbid"

    const-string v1, "upgradeTreasure"

    const-string v2, "upgradeTreasureTargetLv"

    const-string v3, "upgradeAllTreasure"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 8
    return p0
.end method

.method private static owned([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;I)[B
    .locals 2

    .line 107
    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalEquipmentEngine;->findOwned([BLjava/lang/String;)[B

    move-result-object v0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalEquipmentEngine;->itemCost([BLcom/project7/localmanager/LocalFeatureCatalog;)I

    .line 110
    if-eqz p3, :cond_3

    .line 111
    const/4 p1, 0x0

    .line 112
    invoke-static {p0, p3}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object p0

    const-string p3, "ti"

    invoke-static {p0, p3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 113
    const-string p3, "items"

    invoke-static {p0, p3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

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

    .line 114
    const-string v1, "u"

    invoke-static {p3, v1}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8be5\u795e\u5668\u4f7f\u672a\u88c5\u5907\u6b64\u5f71\u88c5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_3
    :goto_1
    return-object v0

    .line 108
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u672a\u62e5\u6709\u8be5\u5f71\u88c5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
