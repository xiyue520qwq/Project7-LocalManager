.class final Lcom/project7/localmanager/LocalConstructionEngine;
.super Ljava/lang/Object;
.source "LocalConstructionEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acknowledgeDestroyed([B[B)[B
    .locals 10

    .line 170
    const-string v0, "aid"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v0

    const-string v1, "fi"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v2, "bi"

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result p1

    .line 171
    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    const/16 v3, 0x8

    if-gt v0, v3, :cond_2

    if-lt v1, v2, :cond_2

    if-ge p1, v2, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    const-string v2, "city"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "areas"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "area_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    const-string v7, "dbd"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    .line 175
    invoke-static {v8, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-eq v9, p1, :cond_1

    return-object p0

    .line 176
    :cond_1
    invoke-static {v8, v1}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {v6, v7, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    .line 177
    nop

    .line 178
    invoke-static {v5, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    .line 177
    invoke-static {v3, v4, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 171
    :cond_2
    :goto_0
    return-object p0
.end method

.method static apply([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;
    .locals 41

    .line 17
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, "lv"

    const-string v7, "areas"

    const-string v8, "ext"

    const-string v9, "rs"

    const-string v10, "area_"

    const-string v11, "city"

    const-string v12, "bd"

    const-string v13, "playerDestroyBuilding"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {v1, v2, v3, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->demolish([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v1

    return-object v1

    .line 18
    :cond_0
    new-instance v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    invoke-direct {v13, v1}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    .line 19
    const-string v14, "areaBuildRequest"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 20
    const-string v15, "aid"

    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 21
    if-eqz v14, :cond_1

    const-string v16, "area_build_reply"

    goto :goto_0

    :cond_1
    const-string v16, "area_level_up_reply"

    :goto_0
    move-object/from16 v17, v16

    .line 23
    const/16 v16, 0x5

    move-object/from16 v18, v8

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/LocalConstructionEngine;->handles(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_12

    move-object/from16 v21, v15

    :try_start_1
    const-string v15, "\u672a\u77e5\u57ce\u5e02\u64cd\u4f5c"

    invoke-static {v8, v15}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_10

    .line 24
    if-eqz v3, :cond_2

    const/4 v8, 0x1

    if-lt v4, v8, :cond_2

    const/16 v8, 0x8

    if-gt v4, v8, :cond_2

    :try_start_2
    iget-boolean v8, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-nez v8, :cond_2

    .line 25
    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalChapterCityEngine;->locked([BI)Z

    move-result v8

    if-nez v8, :cond_2

    .line 26
    invoke-static {v3, v4, v1}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    .line 141
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object v1, v0

    move/from16 v29, v4

    move-object/from16 v22, v9

    :goto_2
    move-object/from16 v4, v17

    goto/16 :goto_34

    .line 26
    :cond_2
    const/4 v8, 0x0

    :goto_3
    :try_start_3
    const-string v15, "\u8be5\u5730\u533a\u5c1a\u672a\u89e3\u653e\uff0c\u65e0\u6cd5\u5efa\u8bbe\u6216\u5f00\u53d1"

    .line 24
    invoke-static {v8, v15}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 27
    iget-object v8, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_10

    const/16 v15, 0x14

    move-object/from16 v22, v9

    :try_start_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_e

    if-nez v8, :cond_4

    if-eqz v14, :cond_3

    :try_start_5
    iget-object v8, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v8, :cond_3

    goto :goto_5

    .line 141
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_4
    move-object v1, v0

    move/from16 v29, v4

    goto :goto_2

    .line 27
    :cond_3
    const/4 v8, 0x0

    goto :goto_6

    :cond_4
    :goto_5
    const/4 v8, 0x1

    :goto_6
    :try_start_6
    const-string v9, "\u8bf7\u5148\u5b8c\u6210\u5efa\u8bbe\u6307\u5f15"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 28
    const-string v8, "weeknum"

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "d"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v8

    const/4 v9, 0x7

    if-ge v8, v9, :cond_5

    const/4 v8, 0x1

    goto :goto_7

    :cond_5
    const/4 v8, 0x0

    :goto_7
    const-string v9, "\u6700\u540e\u4e00\u5929\u65e0\u6cd5\u5efa\u8bbe\u6216\u5f00\u53d1"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 30
    iget-boolean v8, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_e

    if-nez v8, :cond_6

    :try_start_7
    const-string v8, "q7Battle"

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_8

    :cond_6
    const/4 v8, 0x0

    :goto_8
    :try_start_8
    const-string v9, "\u8bf7\u5148\u5b8c\u6210\u5f53\u524d\u6218\u6597\u6216\u5de1\u67e5"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 32
    iget-object v8, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    sget-object v9, Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v8

    const-string v9, "\u8bf7\u5148\u5b8c\u6210\u5f53\u524d\u5267\u60c5"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 33
    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v8

    invoke-static {v8, v3}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v8

    iput-object v8, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 34
    iget-object v8, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 35
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v15}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 36
    move-object/from16 v23, v11

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v11

    move-object/from16 v24, v7

    const-string v7, "fi"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v7

    move-object/from16 v25, v10

    const-string v10, "bi"

    invoke-static {v5, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v10
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_e

    .line 37
    move-object/from16 v26, v6

    const/4 v6, 0x1

    if-lt v11, v6, :cond_7

    :try_start_9
    invoke-virtual {v2, v4, v11}, Lcom/project7/localmanager/LocalConstructionCatalog;->slots(II)I

    move-result v6
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_2

    if-lez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_9

    :cond_7
    const/4 v6, 0x0

    :goto_9
    :try_start_a
    const-string v3, "\u5730\u533a\u5f00\u53d1\u6570\u636e\u65e0\u6548"

    invoke-static {v6, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_e

    .line 38
    if-eqz v14, :cond_8

    :try_start_b
    const-string v3, "B"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_2

    move-object/from16 v27, v13

    goto :goto_a

    :cond_8
    :try_start_c
    const-string v3, "U"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v27, v13

    const-string v13, ":"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 39
    :goto_a
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_c} :catch_e

    const/4 v13, 0x1

    xor-int/2addr v6, v13

    if-eqz v14, :cond_9

    :try_start_d
    const-string v13, "\u65e0\u6548\u5efa\u7b51"
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_b

    :cond_9
    :try_start_e
    const-string v13, "\u8be5\u5730\u533a\u5df2\u5f00\u53d1\u5230\u6700\u9ad8\u7b49\u7ea7"

    :goto_b
    invoke-static {v6, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_e} :catch_e

    .line 40
    if-eqz v14, :cond_c

    .line 41
    :try_start_f
    const-string v6, "ban"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "clientBan"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x1

    goto :goto_c

    :cond_a
    const/4 v6, 0x0

    :goto_c
    const-string v13, "\u6b64\u5efa\u7b51\u4e0d\u80fd\u624b\u52a8\u5efa\u8bbe"

    invoke-static {v6, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 42
    const/4 v6, 0x1

    if-lt v7, v6, :cond_b

    invoke-virtual {v2, v4, v11}, Lcom/project7/localmanager/LocalConstructionCatalog;->slots(II)I

    move-result v6

    if-gt v7, v6, :cond_b

    const/4 v6, 0x1

    goto :goto_d

    :cond_b
    const/4 v6, 0x0

    :goto_d
    const-string v13, "\u8be5\u5efa\u7b51\u7a7a\u4f4d\u5c1a\u672a\u89e3\u9501"

    invoke-static {v6, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const-string v13, "\u8be5\u7a7a\u4f4d\u5df2\u6709\u5efa\u7b51"

    invoke-static {v6, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 44
    invoke-static {v2, v8, v15, v10, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->validateBuilding(Lcom/project7/localmanager/LocalConstructionCatalog;[B[BI[B)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_f

    .line 45
    :cond_c
    :try_start_10
    const-string v6, "luv"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_d

    const/4 v6, 0x1

    goto :goto_e

    :cond_d
    const/4 v6, 0x0

    :goto_e
    const-string v13, "\u6bcf\u6b21\u53ea\u80fd\u5f00\u53d1\u4e00\u7ea7"

    invoke-static {v6, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_10 .. :try_end_10} :catch_e

    .line 46
    :goto_f
    if-eqz v14, :cond_e

    :try_start_11
    const-string v6, "ac"
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_10

    :cond_e
    :try_start_12
    const-string v6, "action_consume"

    :goto_10
    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v6
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_12 .. :try_end_12} :catch_e

    .line 47
    if-eqz v14, :cond_f

    :try_start_13
    const-string v13, "mc"
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_11

    :cond_f
    :try_start_14
    const-string v13, "money_consume"

    :goto_11
    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v13
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_14 .. :try_end_14} :catch_e

    .line 48
    if-eqz v14, :cond_10

    :try_start_15
    const-string v28, "fc"
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_12

    :cond_10
    :try_start_16
    const-string v28, "fatigue"
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_16 .. :try_end_16} :catch_e

    :goto_12
    move/from16 v29, v4

    move-object/from16 v4, v28

    :try_start_17
    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v4
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_17 .. :try_end_17} :catch_c

    .line 49
    if-eqz v14, :cond_11

    :try_start_18
    const-string v28, "cr"
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_18 .. :try_end_18} :catch_4

    goto :goto_14

    .line 141
    :catch_4
    move-exception v0

    goto :goto_13

    :catch_5
    move-exception v0

    :goto_13
    move-object v1, v0

    goto/16 :goto_2

    .line 49
    :cond_11
    :try_start_19
    const-string v28, "lead_require"

    :goto_14
    move/from16 v30, v11

    move-object/from16 v11, v28

    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v11
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_19 .. :try_end_19} :catch_c

    .line 50
    if-eqz v14, :cond_12

    move/from16 v28, v11

    :try_start_1a
    const-string v11, "research_require"

    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_1a .. :try_end_1a} :catch_4

    goto :goto_15

    :cond_12
    move/from16 v28, v11

    const/4 v3, 0x0

    .line 51
    :goto_15
    :try_start_1b
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    move/from16 v40, v28

    move-object/from16 v28, v15

    move/from16 v15, v40

    :goto_16
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_1b .. :try_end_1b} :catch_c

    move-object/from16 v33, v1

    const-string v1, "id"

    if-eqz v32, :cond_19

    :try_start_1c
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move/from16 v34, v7

    move-object/from16 v7, v32

    check-cast v7, Ljava/lang/String;

    .line 53
    invoke-static {v9, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    move-object/from16 v32, v9

    invoke-static {v7, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 54
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_17
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_18

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v37, v12

    move-object/from16 v12, v36

    check-cast v12, Ljava/lang/String;

    .line 55
    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 56
    if-eqz v14, :cond_14

    move-object/from16 v36, v9

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v9

    move/from16 v38, v4

    const/16 v4, 0x14

    if-ne v9, v4, :cond_15

    .line 57
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "u"

    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    add-int/lit8 v3, v3, -0x19

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 58
    :cond_13
    const/4 v4, 0x2

    new-array v9, v4, [I

    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/16 v19, 0x0

    aput v4, v9, v19

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v12, 0x1

    aput v4, v9, v12

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 56
    :cond_14
    move/from16 v38, v4

    move-object/from16 v36, v9

    .line 60
    :cond_15
    :goto_18
    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-eqz v14, :cond_16

    const/16 v4, 0x1c

    goto :goto_19

    :cond_16
    const/16 v4, 0x1b

    :goto_19
    if-ne v2, v4, :cond_17

    add-int/lit8 v15, v15, -0x3

    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_1c .. :try_end_1c} :catch_4

    .line 61
    :cond_17
    move-object/from16 v2, p1

    move-object/from16 v9, v36

    move-object/from16 v12, v37

    move/from16 v4, v38

    goto :goto_17

    .line 62
    :cond_18
    move/from16 v38, v4

    move-object/from16 v37, v12

    move-object/from16 v2, p1

    move-object/from16 v9, v32

    move-object/from16 v1, v33

    move/from16 v7, v34

    goto/16 :goto_16

    .line 63
    :cond_19
    move/from16 v38, v4

    move/from16 v34, v7

    move-object/from16 v32, v9

    move-object/from16 v37, v12

    const-string v2, "uda"

    const-string v4, "rv"

    if-eqz v14, :cond_1b

    :try_start_1d
    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ge v7, v3, :cond_1b

    const/16 v7, 0x22

    if-lt v10, v7, :cond_1b

    const/16 v7, 0x26

    if-gt v10, v7, :cond_1b

    move-object/from16 v7, v27

    iget-object v9, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 64
    move-object/from16 v12, p2

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v9

    if-eqz v9, :cond_1a

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    move-object/from16 v27, v11

    invoke-static {v8, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_1d .. :try_end_1d} :catch_4

    if-nez v9, :cond_1c

    const/4 v9, 0x1

    goto :goto_1b

    .line 64
    :cond_1a
    move-object/from16 v27, v11

    goto :goto_1a

    .line 63
    :cond_1b
    move-object/from16 v12, p2

    move-object/from16 v7, v27

    move-object/from16 v27, v11

    .line 65
    :cond_1c
    :goto_1a
    const/4 v9, 0x0

    .line 66
    :goto_1b
    :try_start_1e
    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-ge v11, v3, :cond_1e

    if-eqz v9, :cond_1d

    goto :goto_1c

    :cond_1d
    const/4 v3, 0x0

    goto :goto_1d

    :cond_1e
    :goto_1c
    const/4 v3, 0x1

    :goto_1d
    const-string v11, "\u57ce\u5e02\u79d1\u6280\u503c\u4e0d\u8db3"

    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 67
    iget-object v3, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalEconomyEngine;->actions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v3
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_1e .. :try_end_1e} :catch_c

    .line 68
    const-string v11, "bf"

    if-ltz v6, :cond_1f

    if-lt v3, v6, :cond_1f

    if-ltz v13, :cond_1f

    :try_start_1f
    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_1f .. :try_end_1f} :catch_4

    if-lt v3, v13, :cond_1f

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1f
    const/4 v3, 0x0

    :goto_1e
    move/from16 v31, v6

    :try_start_20
    const-string v6, "\u884c\u52a8\u529b\u6216\u5efa\u8bbe\u8d44\u91d1\u4e0d\u8db3"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 69
    const-string v3, "hs"

    invoke-static {v5, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 70
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_20 .. :try_end_20} :catch_c

    if-nez v5, :cond_20

    :try_start_21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_20

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_21 .. :try_end_21} :catch_4

    if-ne v5, v6, :cond_20

    const/4 v5, 0x1

    goto :goto_1f

    :cond_20
    const/4 v5, 0x0

    :goto_1f
    :try_start_22
    const-string v6, "\u8bf7\u9009\u62e9\u4e00\u81f3\u4e09\u540d\u4e0d\u540c\u7684\u795e\u5668\u4f7f"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 71
    nop

    .line 72
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v35
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_22 .. :try_end_22} :catch_c

    move-object/from16 p4, v3

    const-string v3, "cf"

    if-eqz v35, :cond_23

    :try_start_23
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    move-object/from16 v36, v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 73
    move-object/from16 v35, v2

    iget-object v2, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v2

    .line 74
    move/from16 v39, v9

    iget-object v9, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v9, v5}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v9

    const-string v12, "\u672a\u62e5\u6709\u9009\u4e2d\u7684\u795e\u5668\u4f7f"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 75
    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3

    move/from16 v9, v38

    if-lt v3, v9, :cond_21

    const/4 v3, 0x1

    goto :goto_21

    :cond_21
    const/4 v3, 0x0

    :goto_21
    const-string v12, "\u795e\u5668\u4f7f\u75b2\u52b3\u503c\u4e0d\u8db3"

    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 76
    if-eqz v14, :cond_22

    const-string v3, "construct"

    goto :goto_22

    :cond_22
    const-string v3, "leadership"

    :goto_22
    move-object/from16 v12, p1

    invoke-virtual {v12, v2, v5, v3}, Lcom/project7/localmanager/LocalConstructionCatalog;->work([BILjava/lang/String;)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v6

    .line 77
    move-object/from16 v12, p2

    move-object/from16 v3, p4

    move/from16 v38, v9

    move-object/from16 v2, v35

    move-object/from16 v5, v36

    move/from16 v9, v39

    goto :goto_20

    .line 78
    :cond_23
    move-object/from16 v12, p1

    move-object/from16 v35, v2

    move/from16 v39, v9

    move/from16 v9, v38

    if-lt v6, v15, :cond_24

    const/4 v2, 0x1

    goto :goto_23

    :cond_24
    const/4 v2, 0x0

    :goto_23
    if-eqz v14, :cond_25

    const-string v5, "\u795e\u5668\u4f7f\u5efa\u8bbe\u529b\u4e0d\u8db3"
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_23 .. :try_end_23} :catch_4

    goto :goto_24

    :cond_25
    :try_start_24
    const-string v5, "\u795e\u5668\u4f7f\u5f00\u53d1\u529b\u4e0d\u8db3"

    :goto_24
    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 79
    nop

    .line 80
    iget-object v2, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    move-object/from16 v5, v32

    invoke-static {v12, v5, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_24 .. :try_end_24} :catch_c

    .line 81
    const-string v6, "dbd"

    if-eqz v14, :cond_26

    .line 82
    :try_start_25
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v32, v3

    move/from16 v38, v9

    const/4 v9, 0x4

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v3, v9

    .line 83
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v9, 0x1

    aput-object v1, v3, v9

    const-string v1, "uuid"

    const/4 v9, 0x2

    aput-object v1, v3, v9

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x3

    aput-object v1, v3, v9

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 82
    move-object/from16 v3, v33

    invoke-static {v3, v15, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 84
    move-object/from16 v3, v28

    move-object/from16 v9, v37

    invoke-static {v3, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 85
    nop

    .line 86
    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v3

    .line 85
    invoke-static {v1, v6, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 87
    const-string v3, "tbn"

    const-string v10, "tbn"

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v10

    const/4 v15, 0x1

    invoke-static {v10, v15}, Ljava/lang/Math;->addExact(II)I

    move-result v10

    invoke-static {v8, v3, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 88
    const-string v8, "nbb"

    const/4 v10, 0x0

    invoke-static {v3, v8, v10}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_25} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_25 .. :try_end_25} :catch_4

    move/from16 v15, v29

    goto :goto_25

    .line 90
    :cond_26
    move-object/from16 v32, v3

    move/from16 v38, v9

    move-object/from16 v3, v28

    move-object/from16 v9, v37

    const/4 v1, 0x1

    add-int/lit8 v10, v30, 0x1

    move-object/from16 v1, v26

    :try_start_26
    invoke-static {v3, v1, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 91
    const-string v3, "mbn"
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_26} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_26 .. :try_end_26} :catch_c

    move/from16 v15, v29

    :try_start_27
    invoke-virtual {v12, v15, v10}, Lcom/project7/localmanager/LocalConstructionCatalog;->slots(II)I

    move-result v10

    invoke-static {v1, v3, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 92
    const-string v3, "tvn"

    const-string v10, "tvn"

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v10

    move-object/from16 v26, v1

    const/4 v1, 0x1

    invoke-static {v10, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v10

    invoke-static {v8, v3, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    move-object/from16 v1, v26

    .line 94
    :goto_25
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v25

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 95
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_27} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_27 .. :try_end_27} :catch_a

    if-eqz v25, :cond_27

    :try_start_28
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [I

    .line 96
    move-object/from16 v26, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v8

    const/16 v19, 0x0

    aget v8, v25, v19

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    aget v25, v25, v8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 97
    move-object/from16 v25, v10

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_28} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_28 .. :try_end_28} :catch_6

    .line 98
    move/from16 v29, v15

    :try_start_29
    invoke-static {v10, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15, v8}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v10, v9, v15}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v10

    .line 99
    invoke-static {v10, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v15

    move-object/from16 v37, v9

    const/16 v9, 0x14

    invoke-static {v15, v8, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v8

    invoke-static {v10, v6, v8}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v8

    .line 100
    invoke-static {v1, v3, v8}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_29} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_29 .. :try_end_29} :catch_4

    .line 101
    move-object/from16 v10, v25

    move-object/from16 v3, v26

    move-object/from16 v8, v27

    move/from16 v15, v29

    move-object/from16 v9, v37

    goto :goto_26

    .line 141
    :catch_6
    move-exception v0

    goto :goto_27

    :catch_7
    move-exception v0

    :goto_27
    move/from16 v29, v15

    goto/16 :goto_13

    .line 102
    :cond_27
    move-object/from16 v26, v3

    move/from16 v29, v15

    :try_start_2a
    iget-object v3, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v12, v1, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v3

    .line 103
    const-string v6, "fv"

    const-string v8, "dv"

    filled-new-array {v6, v4, v8}, [Ljava/lang/String;

    move-result-object v4
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2a} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_2a .. :try_end_2a} :catch_c

    .line 104
    move-object/from16 v6, v26

    const/4 v8, 0x0

    :goto_28
    const/4 v9, 0x3

    if-ge v8, v9, :cond_28

    :try_start_2b
    aget-object v9, v4, v8

    aget-object v10, v4, v8

    .line 105
    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v10

    aget v15, v3, v8

    aget v25, v2, v8

    sub-int v15, v15, v25

    invoke-static {v10, v15}, Ljava/lang/Math;->addExact(II)I

    move-result v10

    .line 104
    invoke-static {v6, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 106
    :cond_28
    if-eqz v14, :cond_29

    const/4 v8, 0x2

    aget v9, v3, v8

    aget v10, v2, v8

    if-le v9, v10, :cond_29

    const-string v8, "dvc"

    const-string v9, "dvc"

    .line 107
    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    aget v15, v3, v10

    aget v2, v2, v10

    sub-int/2addr v15, v2

    invoke-static {v9, v15}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    .line 106
    invoke-static {v6, v8, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2b} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_2b .. :try_end_2b} :catch_4

    .line 108
    :cond_29
    :try_start_2c
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_2c} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_2c .. :try_end_2c} :catch_c

    if-eqz v8, :cond_2b

    :try_start_2d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 109
    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 110
    const/4 v10, 0x2

    new-array v15, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v15, v10

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    const/16 v20, 0x1

    aput-object v10, v15, v20

    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v10

    iget-object v15, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v12, v10, v15}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v10

    .line 111
    move-object/from16 p3, v2

    const/4 v15, 0x2

    new-array v2, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v2, v15

    const/4 v15, 0x1

    aput-object v9, v2, v15

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    iget-object v15, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v12, v2, v15}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v2

    .line 112
    const/4 v15, 0x0

    :goto_2a
    move-object/from16 v25, v5

    const/4 v5, 0x3

    if-ge v15, v5, :cond_2a

    aget-object v5, v4, v15

    aget-object v12, v4, v15

    .line 113
    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v12

    aget v26, v2, v15

    aget v27, v10, v15

    move-object/from16 v28, v2

    sub-int v2, v26, v27

    invoke-static {v12, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    .line 112
    invoke-static {v9, v5, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v9

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, p1

    move-object/from16 v5, v25

    move-object/from16 v2, v28

    goto :goto_2a

    .line 114
    :cond_2a
    invoke-static {v1, v8, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_2d} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_2d .. :try_end_2d} :catch_4

    .line 115
    move-object/from16 v12, p1

    move-object/from16 v2, p3

    move-object/from16 v5, v25

    goto :goto_29

    .line 116
    :cond_2b
    :try_start_2e
    iget-object v2, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v4, "q7DailyBuildIncome"

    const/4 v5, 0x3

    aget v3, v3, v5

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    iput-object v2, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 117
    invoke-static {v6, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v13

    invoke-static {v6, v11, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 118
    const-string v3, "av"

    iget-object v4, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    move-object/from16 v5, p2

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalEconomyEngine;->regularActions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 119
    move-object/from16 v3, v24

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_2e} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_2e .. :try_end_2e} :catch_c

    .line 120
    if-eqz v39, :cond_2c

    move-object/from16 v2, v35

    const/4 v3, 0x1

    :try_start_2f
    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_2f} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_2f .. :try_end_2f} :catch_4

    .line 121
    :cond_2c
    :try_start_30
    iget-object v2, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    move-object/from16 v3, v23

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 122
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_30} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_30 .. :try_end_30} :catch_c

    if-eqz v2, :cond_2d

    :try_start_31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 123
    iget-object v4, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v2}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v4

    .line 124
    move-object/from16 v6, v32

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v8

    sub-int v8, v8, v38

    .line 125
    iget-object v9, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->fatigue:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v9, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v6, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    invoke-static {v9, v2, v4}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v4

    iput-object v4, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 127
    iget-object v4, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v9, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v10, "updateCurFatigueValue"

    invoke-static {v2, v8}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v2

    invoke-direct {v9, v10, v2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_31} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_31 .. :try_end_31} :catch_4

    .line 128
    move-object/from16 v32, v6

    goto :goto_2b

    .line 129
    :cond_2d
    move/from16 v1, v31

    :try_start_32
    invoke-static {v7, v5, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->spendActions(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V

    .line 130
    iget-object v1, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    if-eqz v14, :cond_2e

    const/16 v2, 0x1b

    goto :goto_2c

    :cond_2e
    const/16 v2, 0x1c

    :goto_2c
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/project7/localmanager/LocalNewAchievementEngine;->add([BII)[B

    move-result-object v1

    iput-object v1, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 131
    iget-object v1, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 132
    const/4 v2, 0x0

    invoke-static {v7, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->commit(Lcom/project7/localmanager/LocalEconomyEngine$Result;I)V

    .line 133
    iget-object v2, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v4, "get_all_area_info_reply"

    iget-object v6, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 134
    const/4 v8, 0x1

    invoke-static {v8, v5, v6}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v5

    const-string v6, "cd"

    invoke-static {v5, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 133
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v4, "get_city_data_reply"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v5, "cd"

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const/4 v5, 0x1

    aput-object v1, v6, v5

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_32} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_32 .. :try_end_32} :catch_c

    .line 136
    if-eqz v39, :cond_2f

    :try_start_33
    iget-object v1, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v3, "syncDaerweilaAbility"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "u"

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_2f
    if-eqz v14, :cond_30

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_33} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_33 .. :try_end_33} :catch_4

    goto :goto_2d

    :cond_30
    const/4 v1, 0x2

    :try_start_34
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "reward"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "money"

    aput-object v1, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 139
    :goto_2d
    iget-object v2, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v4, 0x6

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v22, v5, v4

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    aput-object v21, v5, v4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v5, v6

    const/4 v4, 0x4

    aput-object v18, v5, v4

    aput-object v1, v5, v16

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_34} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_34 .. :try_end_34} :catch_c

    move-object/from16 v4, v17

    :try_start_35
    invoke-direct {v3, v4, v1}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z
    :try_end_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_35} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_35 .. :try_end_35} :catch_8

    .line 146
    move-object v13, v7

    goto/16 :goto_35

    .line 141
    :catch_8
    move-exception v0

    goto :goto_33

    :catch_9
    move-exception v0

    goto :goto_33

    :catch_a
    move-exception v0

    goto :goto_2e

    :catch_b
    move-exception v0

    :goto_2e
    move/from16 v29, v15

    goto :goto_32

    :catch_c
    move-exception v0

    goto :goto_32

    :catch_d
    move-exception v0

    goto :goto_32

    :catch_e
    move-exception v0

    goto :goto_2f

    :catch_f
    move-exception v0

    :goto_2f
    move/from16 v29, v4

    goto :goto_32

    :catch_10
    move-exception v0

    goto :goto_30

    :catch_11
    move-exception v0

    :goto_30
    move/from16 v29, v4

    move-object/from16 v22, v9

    goto :goto_32

    :catch_12
    move-exception v0

    goto :goto_31

    :catch_13
    move-exception v0

    :goto_31
    move/from16 v29, v4

    move-object/from16 v22, v9

    move-object/from16 v21, v15

    :goto_32
    move-object/from16 v4, v17

    :goto_33
    move-object v1, v0

    .line 142
    :goto_34
    new-instance v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-object/from16 v2, p0

    invoke-direct {v13, v2}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    .line 143
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    .line 144
    iget-object v1, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const-string v3, "m"

    const/4 v6, 0x0

    aput-object v3, v5, v6

    iget-object v3, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v3, v5, v7

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v5, "showMessageStr"

    invoke-direct {v2, v5, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, v13, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v22, v3, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v7

    const/4 v5, 0x2

    aput-object v21, v3, v5

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v3, v6

    const/4 v5, 0x4

    aput-object v18, v3, v5

    sget-object v5, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v5, v3, v16

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :goto_35
    return-object v13
.end method

.method private static count([BI)I
    .locals 4

    .line 151
    nop

    .line 152
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    return v1
.end method

.method private static countCity([BI)I
    .locals 4

    .line 320
    nop

    .line 321
    const-string v0, "areas"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 322
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "bd"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, p1}, Lcom/project7/localmanager/LocalConstructionEngine;->count([BI)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 323
    :cond_0
    return v1
.end method

.method private static demolish([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;
    .locals 27

    .line 250
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "cd"

    const-string v4, "aid"

    const-string v5, "id"

    const-string v6, "bd"

    const-string v7, "q7BuildingRemovals"

    const-string v8, "city"

    const-string v9, "rbn"

    new-instance v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    invoke-direct {v10, v1}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    .line 252
    :try_start_0
    const-string v14, "u"

    move-object/from16 v15, p3

    invoke-static {v15, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 253
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    const-string v11, "\u5efa\u7b51\u6807\u8bc6\u65e0\u6548"

    invoke-static {v15, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 254
    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    .line 255
    invoke-static {v11, v14}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "get_city_data_reply"

    const-string v13, "get_all_area_info_reply"

    if-eqz v15, :cond_1

    .line 256
    :try_start_1
    iget-object v0, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v4, 0x1

    invoke-static {v4, v2, v1}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v5

    invoke-direct {v3, v13, v5}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->cityDataReplyDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v2

    invoke-direct {v3, v12, v2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    iput-boolean v2, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    return-object v10

    .line 260
    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v15, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-nez v15, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    move-object/from16 p3, v12

    const-string v12, "\u5f53\u524d\u4e0d\u80fd\u62c6\u9664\u5efa\u7b51"

    invoke-static {v15, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 261
    iget-boolean v12, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez v12, :cond_3

    const-string v12, "q7Battle"

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 262
    invoke-interface {v12}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    sget-object v15, Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;

    invoke-interface {v12, v15}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    const-string v15, "\u8bf7\u5148\u5b8c\u6210\u5f53\u524d\u5267\u60c5\u3001\u6218\u6597\u6216\u5de1\u67e5"

    .line 261
    invoke-static {v12, v15}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 263
    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v12

    invoke-static {v12, v2}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v12

    .line 264
    invoke-static {v12, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v15

    move-object/from16 v16, v13

    const-string v13, "areas"

    invoke-static {v15, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v13

    .line 265
    nop

    .line 266
    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v11

    move-object/from16 v3, v18

    const/4 v11, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v7

    move-object v7, v3

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v4

    move-object/from16 v4, v22

    check-cast v4, Ljava/lang/String;

    move-object/from16 v22, v8

    invoke-static {v13, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v7

    move-object/from16 v7, v24

    check-cast v7, Ljava/lang/String;

    .line 267
    move-object/from16 v24, v8

    invoke-static {v13, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    .line 268
    move-object/from16 v26, v6

    const-string v6, "uuid"

    invoke-static {v8, v6}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v8, v24

    move-object/from16 v7, v25

    move-object/from16 v6, v26

    goto :goto_4

    .line 269
    :cond_4
    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    const-string v6, "\u5efa\u7b51\u6807\u8bc6\u91cd\u590d\uff0c\u672a\u6267\u884c\u62c6\u9664"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 270
    invoke-static {v13, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v21

    .line 271
    move-object v3, v4

    move-object/from16 v8, v24

    move-object/from16 v6, v26

    goto :goto_4

    .line 266
    :cond_6
    move-object/from16 v26, v6

    move-object/from16 v25, v7

    move-object/from16 v8, v22

    move-object/from16 v4, v23

    goto :goto_3

    .line 272
    :cond_7
    move-object/from16 v23, v4

    move-object/from16 v22, v8

    if-eqz v3, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    const-string v5, "\u5efa\u7b51\u4e0d\u5b58\u5728\u6216\u5df2\u79fb\u9664"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 273
    invoke-static {v2, v11, v1}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    const-string v5, "\u8be5\u5730\u533a\u5c1a\u672a\u89e3\u653e\uff0c\u65e0\u6cd5\u62c6\u9664\u5efa\u7b51"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 274
    const-string v4, "B"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "can_remove"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    const/4 v4, 0x1

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    :goto_8
    const-string v5, "\u8be5\u5efa\u7b51\u4e0d\u80fd\u62c6\u9664"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 275
    invoke-static {v15, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ltz v4, :cond_b

    invoke-static {v15, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ge v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    :goto_9
    const-string v6, "\u672c\u5468\u76ee\u62c6\u9664\u6b21\u6570\u5df2\u7528\u5c3d"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 276
    const/4 v4, 0x0

    invoke-static {v12, v0, v3, v7, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->removeBuilding([BLcom/project7/localmanager/LocalConstructionCatalog;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 277
    iget-object v0, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    move-object/from16 v3, v22

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v15, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-static {v0, v9, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 278
    iget-object v4, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 279
    iget-object v3, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v4, v6

    .line 280
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v4, v8

    const-string v6, "fi"

    const/4 v8, 0x2

    aput-object v6, v4, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v6, "bi"

    const/4 v7, 0x4

    aput-object v6, v4, v7

    const/4 v6, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    .line 279
    move-object/from16 v6, v20

    invoke-static {v6, v14, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    move-object/from16 v6, v18

    invoke-static {v3, v6, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 281
    iget-object v3, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v6, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 282
    const/4 v8, 0x1

    invoke-static {v8, v2, v6}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v2

    move-object/from16 v6, v19

    invoke-static {v2, v6, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    move-object/from16 v8, v16

    invoke-direct {v4, v8, v2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 281
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v2, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v8, v4

    const/4 v4, 0x1

    aput-object v0, v8, v4

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    move-object/from16 v4, p3

    invoke-direct {v3, v4, v0}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v3, "area_building_destroy"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v4, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const-string v6, "bid"

    const/4 v7, 0x2

    aput-object v6, v4, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    goto :goto_b

    .line 286
    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 287
    :goto_a
    new-instance v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    invoke-direct {v10, v1}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    .line 288
    iget-object v0, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "m"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "showMessageStr"

    invoke-direct {v1, v3, v2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :goto_b
    return-object v10
.end method

.method static destroyByIntelligence([BLcom/project7/localmanager/LocalConstructionCatalog;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .line 242
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "areas"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 243
    const-string v1, "bd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p3}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {p1, v1, v0}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v0

    .line 244
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "\u60c5\u62a5\u635f\u6bc1\u76ee\u6807\u4e0d\u662f\u539f\u666e\u901a\u5efa\u7b51"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 245
    invoke-static {p0, p1, p2, p3, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->removeBuilding([BLcom/project7/localmanager/LocalConstructionCatalog;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method private static doc([BLjava/lang/String;)[B
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 8
    const-string v0, "areaBuildRequest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "areaLevelUpRequest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    const-string v0, "playerDestroyBuilding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 8
    :goto_1
    return p0
.end method

.method static synthetic lambda$apply$0(Ljava/lang/Integer;)Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static refreshGuideState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 6

    .line 157
    invoke-static {p0}, Lcom/project7/localmanager/LocalConstructionEngine;->repairDestroyedSlots([B)[B

    move-result-object p0

    .line 158
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 161
    const-string v2, "tbn"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    const/16 v5, 0x14

    .line 162
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    .line 163
    :goto_1
    const-string v2, "nbb"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 164
    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    move v3, v4

    .line 165
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v3, :cond_3

    return-object p0

    .line 166
    :cond_3
    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static removeBuilding([BLcom/project7/localmanager/LocalConstructionCatalog;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 19

    .line 295
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "city"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "areas"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    .line 296
    const-string v9, "bd"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    .line 297
    const-string v11, "id"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v10

    .line 298
    invoke-static {v1, v7, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v11

    .line 299
    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v8, v9, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v8

    .line 300
    const-string v9, "dbd"

    if-eqz p4, :cond_0

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v3, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    goto :goto_0

    .line 301
    :cond_0
    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v3

    .line 300
    :goto_0
    invoke-static {v8, v9, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 302
    invoke-static {v7, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 303
    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v3

    .line 304
    const-string v8, "fv"

    const-string v9, "rv"

    const-string v10, "dv"

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    .line 305
    const/4 v9, 0x0

    move v10, v9

    :goto_1
    const/4 v12, 0x3

    if-ge v10, v12, :cond_1

    aget-object v12, v8, v10

    aget-object v13, v8, v10

    .line 306
    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v13

    aget v14, v3, v10

    aget v15, v11, v10

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->addExact(II)I

    move-result v13

    .line 305
    invoke-static {v5, v12, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 307
    :cond_1
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 308
    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v13

    .line 309
    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v11, v15, v9

    invoke-static {v7, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v15

    invoke-static {v1, v15, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v15

    .line 310
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v11, v14, v9

    aput-object v13, v14, v17

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v14

    invoke-static {v1, v14, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v14

    .line 311
    nop

    :goto_3
    if-ge v9, v12, :cond_2

    aget-object v12, v8, v9

    aget-object v1, v8, v9

    .line 312
    invoke-static {v13, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v1

    aget v16, v14, v9

    aget v17, v15, v9

    move-object/from16 v18, v7

    sub-int v7, v16, v17

    invoke-static {v1, v7}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    .line 311
    invoke-static {v13, v12, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v13

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v7, v18

    const/4 v12, 0x3

    goto :goto_3

    .line 313
    :cond_2
    move-object/from16 v18, v7

    invoke-static {v2, v11, v13}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 314
    move-object/from16 v1, p1

    const/4 v9, 0x0

    const/4 v12, 0x3

    goto :goto_2

    .line 315
    :cond_3
    invoke-static {v5, v6, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 316
    const/4 v1, 0x3

    aget v1, v3, v1

    const-string v2, "q7DailyBuildIncome"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method static repairDestroyedSlots([B)[B
    .locals 17

    .line 182
    move-object/from16 v0, p0

    const-string v1, "city"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "areas"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 183
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 184
    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "bd"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    const-string v10, "dbd"

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    .line 186
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v11

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 187
    invoke-static {v9, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v15

    move-object/from16 v16, v5

    const-string v5, "id"

    invoke-static {v15, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    invoke-static {v13, v14}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v13

    :cond_0
    move-object/from16 v5, v16

    goto :goto_1

    .line 188
    :cond_1
    move-object/from16 v16, v5

    invoke-static {v11, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 189
    invoke-static {v8, v10, v13}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    .line 188
    invoke-static {v6, v7, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v6

    .line 190
    :cond_2
    move-object/from16 v5, v16

    goto :goto_0

    .line 191
    :cond_3
    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 192
    :cond_4
    invoke-static {v2, v3, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 191
    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method static repairIncome([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 4

    .line 196
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 197
    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p2

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object p2

    const-string v2, "areas"

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object p1

    const/4 p2, 0x3

    aget p1, p1, p2

    .line 200
    const-string p2, "q7DailyBuildIncome"

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "tbn"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 201
    const-string v2, "dvc"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_0

    const-string v3, "dv"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-le p1, v3, :cond_0

    .line 202
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 203
    :cond_0
    invoke-static {p0, p2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static require(ZLjava/lang/String;)V
    .locals 0

    .line 13
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static restoreCentralBase([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 19

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_7

    iget-boolean v3, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-nez v3, :cond_7

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 208
    const-string v5, "q7CentralBase"

    invoke-static {v0, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    .line 209
    :cond_0
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    const-string v4, "city"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 210
    invoke-static {v6, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->countCity([BI)I

    move-result v7

    if-lez v7, :cond_1

    return-object v0

    .line 211
    :cond_1
    const-string v7, "areas"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "area_1"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    const-string v11, "bd"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    .line 212
    nop

    .line 213
    move v13, v3

    :goto_0
    const-string v14, "lv"

    invoke-static {v10, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v3, v14}, Lcom/project7/localmanager/LocalConstructionCatalog;->slots(II)I

    move-result v14

    const/4 v15, 0x0

    if-gt v13, v14, :cond_3

    .line 214
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_1

    .line 213
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move v13, v15

    .line 216
    :goto_1
    if-nez v13, :cond_4

    return-object v0

    .line 217
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "B"

    invoke-virtual {v1, v14, v0}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 218
    const-string v14, "clientBan"

    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-ne v14, v3, :cond_5

    const-string v14, "can_remove"

    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "ml"

    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v15

    :goto_2
    const-string v14, "\u539f\u4e2d\u592e\u5ead\u57fa\u5730\u914d\u7f6e\u4e0d\u5b8c\u6574"

    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 220
    invoke-static {v1, v8, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v0

    .line 221
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v17, "id"

    aput-object v17, v3, v15

    .line 222
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v3, v16

    const-string v17, "uuid"

    const/16 v18, 0x2

    aput-object v17, v3, v18

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x3

    aput-object v17, v3, v15

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 221
    invoke-static {v12, v14, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 223
    invoke-static {v10, v11, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 224
    nop

    .line 225
    const-string v10, "dbd"

    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v11

    .line 224
    invoke-static {v3, v10, v11}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 226
    invoke-static {v8, v9, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v8

    .line 227
    invoke-static {v1, v8, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v1

    .line 228
    const-string v10, "fv"

    const-string v11, "rv"

    const-string v12, "dv"

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    .line 229
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_6

    .line 230
    aget v12, v1, v11

    aget v13, v0, v11

    sub-int/2addr v12, v13

    .line 231
    aget-object v13, v10, v11

    aget-object v14, v10, v11

    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v14

    invoke-static {v14, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v14

    invoke-static {v6, v13, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    .line 232
    aget-object v13, v10, v11

    aget-object v14, v10, v11

    invoke-static {v3, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v14

    invoke-static {v14, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v12

    invoke-static {v3, v13, v12}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 229
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 236
    :cond_6
    const-string v10, "dvc"

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v11

    aget v1, v1, v18

    aget v0, v0, v18

    sub-int/2addr v1, v0

    invoke-static {v11, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    invoke-static {v6, v10, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 237
    invoke-static {v8, v9, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v0, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 238
    invoke-static {v2, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v5, v1}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    return-object v0

    .line 208
    :cond_7
    :goto_4
    return-object v0
.end method

.method private static totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I
    .locals 18

    .line 342
    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 343
    nop

    .line 344
    const-string v2, "heromgr"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "hrs"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 345
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "1"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    const-string v7, "cfd"

    invoke-static {v5, v7}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 346
    :cond_0
    goto :goto_0

    .line 347
    :cond_1
    const/16 v2, 0x1e

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 348
    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 349
    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    const-string v7, "bd"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    .line 350
    const-string v8, "st"

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "0"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 351
    :cond_2
    const/4 v8, 0x3

    new-array v9, v8, [I

    new-array v10, v8, [I

    .line 352
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v3, "id"

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 353
    invoke-static {v7, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 354
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v14, "B"

    invoke-virtual {v0, v14, v12}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v12

    .line 355
    const-string v14, "force_val"

    const-string v15, "research_val"

    const-string v13, "dev_val"

    filled-new-array {v14, v15, v13}, [Ljava/lang/String;

    move-result-object v13

    .line 356
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v8, :cond_7

    .line 357
    aget-object v15, v13, v14

    invoke-static {v12, v15}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v15

    .line 358
    aget v8, v9, v14

    invoke-static {v8, v15}, Ljava/lang/Math;->addExact(II)I

    move-result v8

    aput v8, v9, v14

    .line 359
    if-gtz v15, :cond_5

    if-nez v14, :cond_3

    const/4 v8, 0x6

    goto :goto_4

    :cond_3
    const/4 v8, 0x1

    if-ne v14, v8, :cond_4

    const/16 v8, 0xb

    goto :goto_4

    :cond_4
    const/16 v8, 0x10

    :goto_4
    if-ne v3, v8, :cond_6

    :cond_5
    aget v8, v10, v14

    const/4 v15, 0x1

    add-int/2addr v8, v15

    aput v8, v10, v14

    .line 356
    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x3

    goto :goto_3

    .line 361
    :cond_7
    const/4 v8, 0x3

    goto :goto_2

    .line 362
    :cond_8
    const/4 v8, 0x0

    :goto_5
    const/4 v11, 0x3

    if-ge v8, v11, :cond_10

    .line 363
    if-nez v8, :cond_9

    const/4 v11, 0x3

    goto :goto_6

    :cond_9
    const/4 v11, 0x1

    if-ne v8, v11, :cond_a

    const/16 v11, 0x8

    goto :goto_6

    :cond_a
    const/16 v11, 0xd

    .line 364
    :goto_6
    const/4 v12, 0x1

    if-nez v8, :cond_b

    const/4 v13, 0x6

    goto :goto_7

    :cond_b
    if-ne v8, v12, :cond_c

    const/16 v13, 0xb

    goto :goto_7

    :cond_c
    const/16 v13, 0x10

    .line 365
    :goto_7
    if-nez v8, :cond_d

    const/4 v14, 0x5

    goto :goto_8

    :cond_d
    if-ne v8, v12, :cond_e

    const/16 v14, 0xa

    goto :goto_8

    :cond_e
    const/16 v14, 0xf

    .line 366
    :goto_8
    aget v15, v9, v8

    invoke-static {v7, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->count([BI)I

    move-result v11

    aget v12, v10, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v11

    invoke-static {v15, v11}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    aput v11, v9, v8

    .line 367
    aget v11, v9, v8

    invoke-static {v7, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->count([BI)I

    move-result v12

    invoke-static {v12, v2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    aput v11, v9, v8

    .line 368
    const/4 v11, 0x0

    :goto_9
    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->count([BI)I

    move-result v12

    if-ge v11, v12, :cond_f

    aget v12, v9, v8

    int-to-long v12, v12

    const-wide/16 v16, 0x3

    mul-long v12, v12, v16

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    const-wide/16 v16, 0x2

    div-long v12, v12, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->toIntExact(J)I

    move-result v12

    aput v12, v9, v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 369
    :cond_f
    aget v11, v1, v8

    aget v12, v9, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    aput v11, v1, v8

    .line 362
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 371
    :cond_10
    const/4 v7, 0x3

    aget v8, v1, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "lv"

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "U"

    invoke-virtual {v0, v5, v3}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    const-string v5, "money_output"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    const/4 v5, 0x3

    aput v3, v1, v5

    .line 372
    goto/16 :goto_1

    .line 373
    :cond_11
    return-object v1
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static validateBuilding(Lcom/project7/localmanager/LocalConstructionCatalog;[B[BI[B)V
    .locals 8

    .line 326
    const-string p0, "bd"

    invoke-static {p2, p0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p3}, Lcom/project7/localmanager/LocalConstructionEngine;->count([BI)I

    move-result v0

    invoke-static {p1, p3}, Lcom/project7/localmanager/LocalConstructionEngine;->countCity([BI)I

    move-result v1

    .line 327
    const-string v2, "al"

    invoke-static {p4, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "id"

    invoke-static {p2, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 328
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    const-string v2, "\u8be5\u5730\u533a\u7684\u540c\u7c7b\u5efa\u7b51\u5df2\u8fbe\u4e0a\u9650"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 329
    const-string v0, "ml"

    invoke-static {p4, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p4, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ge v1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v4

    :goto_3
    const-string v1, "\u57ce\u5e02\u540c\u7c7b\u5efa\u7b51\u5df2\u8fbe\u4e0a\u9650"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 330
    const-string v0, "area_building_require"

    invoke-static {p4, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 331
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 332
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->count([BI)I

    move-result v6

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-lt v6, v5, :cond_4

    move v5, v4

    goto :goto_5

    :cond_4
    move v5, v3

    :goto_5
    or-int/2addr v1, v5

    goto :goto_4

    .line 333
    :cond_5
    const-string p0, "\u5c1a\u672a\u6ee1\u8db3\u5730\u533a\u524d\u7f6e\u5efa\u7b51\u6761\u4ef6"

    invoke-static {v1, p0}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 334
    const-string p0, "init"

    invoke-static {p4, p0}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    .line 335
    const-string p0, "pre"

    invoke-static {p4, p0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 336
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "hb"

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "\u6b64\u7279\u6b8a\u5efa\u7b51\u5c1a\u672a\u89e3\u9501"

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 337
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalConstructionEngine;->countCity([BI)I

    move-result p2

    if-lez p2, :cond_7

    move p2, v4

    goto :goto_7

    :cond_7
    move p2, v3

    :goto_7
    const-string p3, "\u5c1a\u672a\u6ee1\u8db3\u57ce\u5e02\u524d\u7f6e\u5efa\u7b51\u6761\u4ef6"

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    goto :goto_6

    .line 339
    :cond_8
    return-void
.end method
