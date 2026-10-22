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

    .line 165
    const-string v0, "aid"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v0

    const-string v1, "fi"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v2, "bi"

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result p1

    .line 166
    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    const/16 v3, 0x8

    if-gt v0, v3, :cond_2

    if-lt v1, v2, :cond_2

    if-ge p1, v2, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    const-string v2, "city"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "areas"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "area_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    const-string v7, "dbd"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    .line 170
    invoke-static {v8, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-eq v9, p1, :cond_1

    return-object p0

    .line 171
    :cond_1
    invoke-static {v8, v1}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {v6, v7, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    .line 172
    nop

    .line 173
    invoke-static {v5, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    .line 172
    invoke-static {v3, v4, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 166
    :cond_2
    :goto_0
    return-object p0
.end method

.method static apply([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;
    .locals 42

    .line 17
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, "rv"

    const-string v7, "lv"

    const-string v8, "areas"

    const-string v9, "ext"

    const-string v10, "rs"

    const-string v11, "area_"

    const-string v12, "city"

    const-string v13, "bd"

    const-string v14, "playerDestroyBuilding"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {v1, v2, v3, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->demolish([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-result-object v1

    return-object v1

    .line 18
    :cond_0
    new-instance v14, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    invoke-direct {v14, v1}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    .line 19
    const-string v15, "areaBuildRequest"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 20
    const-string v4, "aid"

    move-object/from16 v16, v9

    invoke-static {v5, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v9

    .line 21
    if-eqz v15, :cond_1

    const-string v17, "area_build_reply"

    goto :goto_0

    :cond_1
    const-string v17, "area_level_up_reply"

    :goto_0
    move-object/from16 v18, v17

    .line 23
    const/16 v17, 0x5

    move-object/from16 v19, v4

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/LocalConstructionEngine;->handles(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_e

    move-object/from16 v22, v10

    :try_start_1
    const-string v10, "\u672a\u77e5\u57ce\u5e02\u64cd\u4f5c"

    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_c

    .line 24
    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-lt v9, v4, :cond_2

    const/16 v4, 0x8

    if-gt v9, v4, :cond_2

    :try_start_2
    iget-boolean v4, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-nez v4, :cond_2

    .line 25
    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalChapterCityEngine;->locked([BI)Z

    move-result v4

    if-nez v4, :cond_2

    .line 26
    invoke-static {v3, v9, v1}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    .line 136
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object v1, v0

    move v7, v9

    :goto_2
    move-object/from16 v5, v18

    goto/16 :goto_2f

    .line 26
    :cond_2
    const/4 v4, 0x0

    :goto_3
    :try_start_3
    const-string v10, "\u8be5\u5730\u533a\u5c1a\u672a\u89e3\u653e\uff0c\u65e0\u6cd5\u5efa\u8bbe\u6216\u5f00\u53d1"

    .line 24
    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 27
    iget-object v4, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    const/16 v10, 0x14

    move-object/from16 v23, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_c

    if-nez v4, :cond_4

    if-eqz v15, :cond_3

    :try_start_4
    iget-object v4, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v4, 0x1

    :goto_5
    :try_start_5
    const-string v6, "\u8bf7\u5148\u5b8c\u6210\u5efa\u8bbe\u6307\u5f15"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 28
    const-string v4, "weeknum"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v6, "d"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v6, 0x7

    if-ge v4, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    const-string v6, "\u6700\u540e\u4e00\u5929\u65e0\u6cd5\u5efa\u8bbe\u6216\u5f00\u53d1"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 30
    iget-boolean v4, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_c

    if-nez v4, :cond_6

    :try_start_6
    const-string v4, "q7Battle"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    :goto_7
    :try_start_7
    const-string v6, "\u8bf7\u5148\u5b8c\u6210\u5f53\u524d\u6218\u6597\u6216\u5de1\u67e5"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 32
    iget-object v4, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v6, Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalConstructionEngine$$ExternalSyntheticLambda0;

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    const-string v6, "\u8bf7\u5148\u5b8c\u6210\u5f53\u524d\u5267\u60c5"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 33
    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v4

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v4

    iput-object v4, v14, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 34
    iget-object v4, v14, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 35
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 36
    move-object/from16 v24, v12

    invoke-static {v10, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v12

    move-object/from16 v25, v8

    const-string v8, "fi"

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v8

    move-object/from16 v26, v11

    const-string v11, "bi"

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v11
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_c

    .line 37
    move-object/from16 v27, v7

    const/4 v7, 0x1

    if-lt v12, v7, :cond_7

    :try_start_8
    invoke-virtual {v2, v9, v12}, Lcom/project7/localmanager/LocalConstructionCatalog;->slots(II)I

    move-result v7
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_0

    if-lez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_8

    :cond_7
    const/4 v7, 0x0

    :goto_8
    :try_start_9
    const-string v3, "\u5730\u533a\u5f00\u53d1\u6570\u636e\u65e0\u6548"

    invoke-static {v7, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_c

    .line 38
    if-eqz v15, :cond_8

    :try_start_a
    const-string v3, "B"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_0

    move-object/from16 v28, v14

    goto :goto_9

    :cond_8
    :try_start_b
    const-string v3, "U"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v28, v14

    const-string v14, ":"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 39
    :goto_9
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_c

    const/4 v14, 0x1

    xor-int/2addr v7, v14

    if-eqz v15, :cond_9

    :try_start_c
    const-string v14, "\u65e0\u6548\u5efa\u7b51"
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_a

    :cond_9
    :try_start_d
    const-string v14, "\u8be5\u5730\u533a\u5df2\u5f00\u53d1\u5230\u6700\u9ad8\u7b49\u7ea7"

    :goto_a
    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_d .. :try_end_d} :catch_c

    .line 40
    if-eqz v15, :cond_c

    .line 41
    :try_start_e
    const-string v7, "ban"

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "clientBan"

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x1

    goto :goto_b

    :cond_a
    const/4 v7, 0x0

    :goto_b
    const-string v14, "\u6b64\u5efa\u7b51\u4e0d\u80fd\u624b\u52a8\u5efa\u8bbe"

    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 42
    const/4 v7, 0x1

    if-lt v8, v7, :cond_b

    invoke-virtual {v2, v9, v12}, Lcom/project7/localmanager/LocalConstructionCatalog;->slots(II)I

    move-result v7

    if-gt v8, v7, :cond_b

    const/4 v7, 0x1

    goto :goto_c

    :cond_b
    const/4 v7, 0x0

    :goto_c
    const-string v14, "\u8be5\u5efa\u7b51\u7a7a\u4f4d\u5c1a\u672a\u89e3\u9501"

    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 43
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const-string v14, "\u8be5\u7a7a\u4f4d\u5df2\u6709\u5efa\u7b51"

    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 44
    invoke-static {v2, v4, v10, v11, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->validateBuilding(Lcom/project7/localmanager/LocalConstructionCatalog;[B[BI[B)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_e

    .line 45
    :cond_c
    :try_start_f
    const-string v7, "luv"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v7

    const/4 v14, 0x1

    if-ne v7, v14, :cond_d

    const/4 v7, 0x1

    goto :goto_d

    :cond_d
    const/4 v7, 0x0

    :goto_d
    const-string v14, "\u6bcf\u6b21\u53ea\u80fd\u5f00\u53d1\u4e00\u7ea7"

    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_f .. :try_end_f} :catch_c

    .line 46
    :goto_e
    if-eqz v15, :cond_e

    :try_start_10
    const-string v7, "ac"
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_10 .. :try_end_10} :catch_0

    goto :goto_f

    :cond_e
    :try_start_11
    const-string v7, "action_consume"

    :goto_f
    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v7
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_11 .. :try_end_11} :catch_c

    .line 47
    if-eqz v15, :cond_f

    :try_start_12
    const-string v14, "mc"
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_10

    :cond_f
    :try_start_13
    const-string v14, "money_consume"

    :goto_10
    invoke-static {v3, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v14
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_13 .. :try_end_13} :catch_c

    .line 48
    if-eqz v15, :cond_10

    :try_start_14
    const-string v29, "fc"
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_14 .. :try_end_14} :catch_0

    goto :goto_11

    :cond_10
    :try_start_15
    const-string v29, "fatigue"
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_15 .. :try_end_15} :catch_c

    :goto_11
    move/from16 v30, v9

    move-object/from16 v9, v29

    :try_start_16
    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v9
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_16 .. :try_end_16} :catch_a

    .line 49
    if-eqz v15, :cond_11

    :try_start_17
    const-string v29, "cr"
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_17 .. :try_end_17} :catch_2

    goto :goto_13

    .line 136
    :catch_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    :goto_12
    move-object v1, v0

    move-object/from16 v5, v18

    move/from16 v7, v30

    goto/16 :goto_2f

    .line 49
    :cond_11
    :try_start_18
    const-string v29, "lead_require"

    :goto_13
    move/from16 v31, v12

    move-object/from16 v12, v29

    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v12
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_18 .. :try_end_18} :catch_a

    .line 50
    if-eqz v15, :cond_12

    move/from16 v29, v12

    :try_start_19
    const-string v12, "research_require"

    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_19 .. :try_end_19} :catch_2

    goto :goto_14

    :cond_12
    move/from16 v29, v12

    const/4 v3, 0x0

    .line 51
    :goto_14
    :try_start_1a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    move/from16 v41, v29

    move-object/from16 v29, v10

    move/from16 v10, v41

    :goto_15
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_1a .. :try_end_1a} :catch_a

    const/16 v34, 0x1b

    move-object/from16 v35, v1

    const-string v1, "id"

    if-eqz v33, :cond_19

    :try_start_1b
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    move/from16 v36, v11

    move-object/from16 v11, v33

    check-cast v11, Ljava/lang/String;

    .line 53
    invoke-static {v6, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    move/from16 v33, v8

    invoke-static {v11, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    .line 54
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_16
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_18

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v39, v13

    move-object/from16 v13, v38

    check-cast v13, Ljava/lang/String;

    .line 55
    move-object/from16 v38, v6

    invoke-static {v8, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 56
    if-eqz v15, :cond_14

    move-object/from16 v40, v8

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v8

    const/16 v2, 0x14

    if-ne v8, v2, :cond_15

    .line 57
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v8, "u"

    invoke-static {v6, v8}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    add-int/lit8 v3, v3, -0x19

    const/4 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 58
    :cond_13
    const/4 v2, 0x2

    new-array v8, v2, [I

    invoke-static {v11, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/16 v20, 0x0

    aput v2, v8, v20

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v13, 0x1

    aput v2, v8, v13

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 56
    :cond_14
    move-object/from16 v40, v8

    .line 60
    :cond_15
    :goto_17
    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-eqz v15, :cond_16

    const/16 v6, 0x1c

    goto :goto_18

    :cond_16
    move/from16 v6, v34

    :goto_18
    if-ne v2, v6, :cond_17

    add-int/lit8 v10, v10, -0x3

    const/4 v2, 0x0

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1b .. :try_end_1b} :catch_2

    .line 61
    :cond_17
    move-object/from16 v2, p1

    move-object/from16 v6, v38

    move-object/from16 v13, v39

    move-object/from16 v8, v40

    goto :goto_16

    .line 62
    :cond_18
    move-object/from16 v38, v6

    move-object/from16 v39, v13

    move-object/from16 v2, p1

    move/from16 v8, v33

    move-object/from16 v1, v35

    move/from16 v11, v36

    goto/16 :goto_15

    .line 63
    :cond_19
    move-object/from16 v38, v6

    move/from16 v33, v8

    move/from16 v36, v11

    move-object/from16 v39, v13

    move-object/from16 v2, v23

    :try_start_1c
    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-lt v6, v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_19

    :cond_1a
    const/4 v3, 0x0

    :goto_19
    const-string v6, "\u57ce\u5e02\u79d1\u6280\u503c\u4e0d\u8db3"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 64
    move-object/from16 v3, v28

    iget-object v6, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    move-object/from16 v8, p2

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalEconomyEngine;->actions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v6
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_1c .. :try_end_1c} :catch_a

    .line 65
    const-string v11, "bf"

    if-ltz v7, :cond_1b

    if-lt v6, v7, :cond_1b

    if-ltz v14, :cond_1b

    :try_start_1d
    invoke-static {v4, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v6
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1d .. :try_end_1d} :catch_2

    if-lt v6, v14, :cond_1b

    const/4 v6, 0x1

    goto :goto_1a

    :cond_1b
    const/4 v6, 0x0

    :goto_1a
    :try_start_1e
    const-string v13, "\u884c\u52a8\u529b\u6216\u5efa\u8bbe\u8d44\u91d1\u4e0d\u8db3"

    invoke-static {v6, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 66
    const-string v6, "hs"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 67
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_1e .. :try_end_1e} :catch_a

    if-nez v6, :cond_1c

    :try_start_1f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v13, 0x3

    if-gt v6, v13, :cond_1c

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1f .. :try_end_1f} :catch_2

    if-ne v6, v13, :cond_1c

    const/4 v6, 0x1

    goto :goto_1b

    :cond_1c
    const/4 v6, 0x0

    :goto_1b
    :try_start_20
    const-string v13, "\u8bf7\u9009\u62e9\u4e00\u81f3\u4e09\u540d\u4e0d\u540c\u7684\u795e\u5668\u4f7f"

    invoke-static {v6, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 68
    nop

    .line 69
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v13, 0x0

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_20 .. :try_end_20} :catch_a

    move/from16 v28, v7

    const-string v7, "cf"

    if-eqz v23, :cond_1f

    :try_start_21
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    move-object/from16 p4, v6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 70
    move-object/from16 v23, v5

    iget-object v5, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v5

    .line 71
    iget-object v8, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v8

    move/from16 v32, v14

    const-string v14, "\u672a\u62e5\u6709\u9009\u4e2d\u7684\u795e\u5668\u4f7f"

    invoke-static {v8, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 72
    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-lt v7, v9, :cond_1d

    const/4 v7, 0x1

    goto :goto_1d

    :cond_1d
    const/4 v7, 0x0

    :goto_1d
    const-string v8, "\u795e\u5668\u4f7f\u75b2\u52b3\u503c\u4e0d\u8db3"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 73
    if-eqz v15, :cond_1e

    const-string v7, "construct"

    goto :goto_1e

    :cond_1e
    const-string v7, "leadership"

    :goto_1e
    move-object/from16 v8, p1

    invoke-virtual {v8, v5, v6, v7}, Lcom/project7/localmanager/LocalConstructionCatalog;->work([BILjava/lang/String;)I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v13

    .line 74
    move-object/from16 v8, p2

    move-object/from16 v6, p4

    move-object/from16 v5, v23

    move/from16 v7, v28

    move/from16 v14, v32

    goto :goto_1c

    .line 75
    :cond_1f
    move-object/from16 v8, p1

    move-object/from16 v23, v5

    move/from16 v32, v14

    if-lt v13, v10, :cond_20

    const/4 v5, 0x1

    goto :goto_1f

    :cond_20
    const/4 v5, 0x0

    :goto_1f
    if-eqz v15, :cond_21

    const-string v6, "\u795e\u5668\u4f7f\u5efa\u8bbe\u529b\u4e0d\u8db3"
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_21 .. :try_end_21} :catch_2

    goto :goto_20

    :cond_21
    :try_start_22
    const-string v6, "\u795e\u5668\u4f7f\u5f00\u53d1\u529b\u4e0d\u8db3"

    :goto_20
    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 76
    nop

    .line 77
    iget-object v5, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    move-object/from16 v6, v38

    invoke-static {v8, v6, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v5
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_22 .. :try_end_22} :catch_a

    .line 78
    const-string v10, "dbd"

    if-eqz v15, :cond_22

    .line 79
    :try_start_23
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v37, v9

    const/4 v14, 0x4

    new-array v9, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v9, v14

    .line 80
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v14, 0x1

    aput-object v1, v9, v14

    const-string v1, "uuid"

    const/4 v14, 0x2

    aput-object v1, v9, v14

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x3

    aput-object v1, v9, v14

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 79
    move-object/from16 v9, v35

    invoke-static {v9, v13, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 81
    move-object/from16 v9, v29

    move-object/from16 v13, v39

    invoke-static {v9, v13, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 82
    nop

    .line 83
    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v9

    .line 82
    invoke-static {v1, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 84
    const-string v9, "tbn"

    const-string v14, "tbn"

    invoke-static {v4, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v14

    move-object/from16 p4, v1

    const/4 v1, 0x1

    invoke-static {v14, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v14

    invoke-static {v4, v9, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 85
    const-string v4, "nbb"

    const/4 v9, 0x0

    invoke-static {v1, v4, v9}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_23 .. :try_end_23} :catch_2

    move-object v4, v1

    move-object/from16 v1, p4

    move-object/from16 p4, v7

    move/from16 v7, v30

    goto :goto_21

    .line 87
    :cond_22
    move/from16 v37, v9

    move-object/from16 v9, v29

    move-object/from16 v13, v39

    const/4 v1, 0x1

    add-int/lit8 v14, v31, 0x1

    move-object/from16 v1, v27

    :try_start_24
    invoke-static {v9, v1, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 88
    const-string v9, "mbn"
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_24 .. :try_end_24} :catch_a

    move-object/from16 p4, v7

    move/from16 v7, v30

    :try_start_25
    invoke-virtual {v8, v7, v14}, Lcom/project7/localmanager/LocalConstructionCatalog;->slots(II)I

    move-result v14

    invoke-static {v1, v9, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 89
    const-string v9, "tvn"

    const-string v14, "tvn"

    invoke-static {v4, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v14

    move-object/from16 v27, v1

    const/4 v1, 0x1

    invoke-static {v14, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v14

    invoke-static {v4, v9, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    move-object v4, v1

    move-object/from16 v1, v27

    .line 91
    :goto_21
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v26

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 92
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_25} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_25 .. :try_end_25} :catch_8

    if-eqz v12, :cond_23

    :try_start_26
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 93
    move-object/from16 v26, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v9

    const/16 v20, 0x0

    aget v9, v12, v20

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    aget v12, v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 94
    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    .line 95
    move-object/from16 v29, v14

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14, v9}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v12

    .line 96
    invoke-static {v12, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    move-object/from16 v39, v13

    const/16 v13, 0x14

    invoke-static {v14, v9, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v9

    invoke-static {v12, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v9

    .line 97
    invoke-static {v1, v4, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_26} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_26 .. :try_end_26} :catch_4

    .line 98
    move-object/from16 v4, v26

    move-object/from16 v9, v27

    move-object/from16 v14, v29

    move-object/from16 v13, v39

    goto :goto_22

    .line 136
    :catch_4
    move-exception v0

    goto :goto_23

    :catch_5
    move-exception v0

    :goto_23
    move-object v1, v0

    goto/16 :goto_2

    .line 99
    :cond_23
    move-object/from16 v26, v4

    :try_start_27
    iget-object v4, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v8, v1, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v4

    .line 100
    const-string v9, "fv"

    const-string v10, "dv"

    filled-new-array {v9, v2, v10}, [Ljava/lang/String;

    move-result-object v2
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_27} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_27 .. :try_end_27} :catch_8

    .line 101
    move-object/from16 v9, v26

    const/4 v10, 0x0

    :goto_24
    const/4 v12, 0x3

    if-ge v10, v12, :cond_24

    :try_start_28
    aget-object v12, v2, v10

    aget-object v13, v2, v10

    .line 102
    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v13

    aget v14, v4, v10

    aget v26, v5, v10

    sub-int v14, v14, v26

    invoke-static {v13, v14}, Ljava/lang/Math;->addExact(II)I

    move-result v13

    .line 101
    invoke-static {v9, v12, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    .line 103
    :cond_24
    if-eqz v15, :cond_25

    const/4 v10, 0x2

    aget v12, v4, v10

    aget v13, v5, v10

    if-le v12, v13, :cond_25

    const-string v10, "dvc"

    const-string v12, "dvc"

    .line 104
    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v12

    const/4 v13, 0x2

    aget v14, v4, v13

    aget v5, v5, v13

    sub-int/2addr v14, v5

    invoke-static {v12, v14}, Ljava/lang/Math;->addExact(II)I

    move-result v5

    .line 103
    invoke-static {v9, v10, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v9
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_28} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_28 .. :try_end_28} :catch_4

    .line 105
    :cond_25
    :try_start_29
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_29} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_29 .. :try_end_29} :catch_8

    if-eqz v10, :cond_27

    :try_start_2a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 106
    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    .line 107
    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v14, v13

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v13

    const/16 v21, 0x1

    aput-object v13, v14, v21

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v13

    iget-object v14, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v8, v13, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v13

    .line 108
    move-object/from16 p3, v5

    const/4 v14, 0x2

    new-array v5, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v5, v14

    const/4 v14, 0x1

    aput-object v12, v5, v14

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    iget-object v14, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v8, v5, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v5

    .line 109
    const/4 v14, 0x0

    :goto_26
    move-object/from16 v38, v6

    const/4 v6, 0x3

    if-ge v14, v6, :cond_26

    aget-object v6, v2, v14

    aget-object v8, v2, v14

    .line 110
    invoke-static {v12, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v8

    aget v26, v5, v14

    aget v27, v13, v14

    move-object/from16 v29, v2

    sub-int v2, v26, v27

    invoke-static {v8, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    .line 109
    invoke-static {v12, v6, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v12

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p1

    move-object/from16 v2, v29

    move-object/from16 v6, v38

    goto :goto_26

    .line 111
    :cond_26
    move-object/from16 v29, v2

    invoke-static {v1, v10, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2a} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_2a .. :try_end_2a} :catch_4

    .line 112
    move-object/from16 v8, p1

    move-object/from16 v5, p3

    move-object/from16 v2, v29

    move-object/from16 v6, v38

    goto :goto_25

    .line 113
    :cond_27
    :try_start_2b
    iget-object v2, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const-string v5, "q7DailyBuildIncome"

    const/4 v6, 0x3

    aget v4, v4, v6

    invoke-static {v2, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 114
    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v2

    sub-int v2, v2, v32

    invoke-static {v9, v11, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 115
    const-string v4, "av"

    iget-object v5, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    move-object/from16 v6, p2

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalEconomyEngine;->regularActions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 116
    move-object/from16 v4, v25

    invoke-static {v2, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 117
    iget-object v2, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    move-object/from16 v4, v24

    invoke-static {v2, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 118
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2b} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_2b .. :try_end_2b} :catch_8

    if-eqz v2, :cond_28

    :try_start_2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 119
    iget-object v5, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v5, v2}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v5

    .line 120
    move-object/from16 v8, p4

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v9

    sub-int v9, v9, v37

    .line 121
    iget-object v10, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->fatigue:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v10, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v5, v8, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    invoke-static {v10, v2, v5}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v5

    iput-object v5, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 123
    iget-object v5, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v10, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v11, "updateCurFatigueValue"

    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v2

    invoke-direct {v10, v11, v2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_2c} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_2c .. :try_end_2c} :catch_4

    .line 124
    move-object/from16 p4, v8

    goto :goto_27

    .line 125
    :cond_28
    move/from16 v1, v28

    :try_start_2d
    invoke-static {v3, v6, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->spendActions(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V

    .line 126
    iget-object v1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    if-eqz v15, :cond_29

    goto :goto_28

    :cond_29
    const/16 v34, 0x1c

    :goto_28
    move/from16 v2, v34

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Lcom/project7/localmanager/LocalNewAchievementEngine;->add([BII)[B

    move-result-object v1

    iput-object v1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 127
    iget-object v1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 128
    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->commit(Lcom/project7/localmanager/LocalEconomyEngine$Result;I)V

    .line 129
    iget-object v2, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v5, "get_all_area_info_reply"

    iget-object v8, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 130
    const/4 v9, 0x1

    invoke-static {v9, v6, v8}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v6

    const-string v8, "cd"

    invoke-static {v6, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 129
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v5, "get_city_data_reply"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const-string v6, "cd"

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v1, v8, v6

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_2d} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_2d .. :try_end_2d} :catch_8

    .line 133
    if-eqz v15, :cond_2a

    :try_start_2e
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_2e} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_2e .. :try_end_2e} :catch_4

    goto :goto_29

    :cond_2a
    const/4 v1, 0x2

    :try_start_2f
    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "reward"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v1, [Ljava/lang/Object;

    const-string v1, "money"

    aput-object v1, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 134
    :goto_29
    iget-object v2, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v5, 0x6

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v22, v6, v5

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v5

    const/4 v5, 0x2

    aput-object v19, v6, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v6, v8

    const/4 v5, 0x4

    aput-object v16, v6, v5

    aput-object v1, v6, v17

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_2f} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_2f .. :try_end_2f} :catch_8

    move-object/from16 v5, v18

    :try_start_30
    invoke-direct {v4, v5, v1}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_30} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_30 .. :try_end_30} :catch_6

    .line 141
    move-object v14, v3

    goto/16 :goto_30

    .line 136
    :catch_6
    move-exception v0

    goto :goto_2e

    :catch_7
    move-exception v0

    goto :goto_2e

    :catch_8
    move-exception v0

    goto :goto_2d

    :catch_9
    move-exception v0

    goto :goto_2d

    :catch_a
    move-exception v0

    goto :goto_2a

    :catch_b
    move-exception v0

    :goto_2a
    move-object/from16 v5, v18

    move/from16 v7, v30

    goto :goto_2e

    :catch_c
    move-exception v0

    goto :goto_2b

    :catch_d
    move-exception v0

    :goto_2b
    move v7, v9

    goto :goto_2d

    :catch_e
    move-exception v0

    goto :goto_2c

    :catch_f
    move-exception v0

    :goto_2c
    move v7, v9

    move-object/from16 v22, v10

    :goto_2d
    move-object/from16 v5, v18

    :goto_2e
    move-object v1, v0

    .line 137
    :goto_2f
    new-instance v14, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    move-object/from16 v2, p0

    invoke-direct {v14, v2}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    .line 138
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    .line 139
    iget-object v1, v14, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "m"

    const/4 v6, 0x0

    aput-object v3, v4, v6

    iget-object v3, v14, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v3, v4, v8

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v4, "showMessageStr"

    invoke-direct {v2, v4, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, v14, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v22, v3, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x2

    aput-object v19, v3, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const/4 v4, 0x4

    aput-object v16, v3, v4

    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v4, v3, v17

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_30
    return-object v14
.end method

.method private static count([BI)I
    .locals 4

    .line 146
    nop

    .line 147
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

    .line 148
    :cond_1
    return v1
.end method

.method private static countCity([BI)I
    .locals 4

    .line 315
    nop

    .line 316
    const-string v0, "areas"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 317
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

    .line 318
    :cond_0
    return v1
.end method

.method private static demolish([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)Lcom/project7/localmanager/LocalEconomyEngine$Result;
    .locals 27

    .line 245
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

    .line 247
    :try_start_0
    const-string v14, "u"

    move-object/from16 v15, p3

    invoke-static {v15, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 248
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

    .line 249
    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    .line 250
    invoke-static {v11, v14}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "get_city_data_reply"

    const-string v13, "get_all_area_info_reply"

    if-eqz v15, :cond_1

    .line 251
    :try_start_1
    iget-object v0, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v4, 0x1

    invoke-static {v4, v2, v1}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v5

    invoke-direct {v3, v13, v5}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->cityDataReplyDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v2

    invoke-direct {v3, v12, v2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z

    iput-boolean v2, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replay:Z

    return-object v10

    .line 255
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

    .line 256
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

    .line 257
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

    .line 256
    invoke-static {v12, v15}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 258
    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v12

    invoke-static {v12, v2}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v12

    .line 259
    invoke-static {v12, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v15

    move-object/from16 v16, v13

    const-string v13, "areas"

    invoke-static {v15, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v13

    .line 260
    nop

    .line 261
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

    .line 262
    move-object/from16 v24, v8

    invoke-static {v13, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    .line 263
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

    .line 264
    :cond_4
    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    const-string v6, "\u5efa\u7b51\u6807\u8bc6\u91cd\u590d\uff0c\u672a\u6267\u884c\u62c6\u9664"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 265
    invoke-static {v13, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v21

    .line 266
    move-object v3, v4

    move-object/from16 v8, v24

    move-object/from16 v6, v26

    goto :goto_4

    .line 261
    :cond_6
    move-object/from16 v26, v6

    move-object/from16 v25, v7

    move-object/from16 v8, v22

    move-object/from16 v4, v23

    goto :goto_3

    .line 267
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

    .line 268
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

    .line 269
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

    .line 270
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

    .line 271
    const/4 v4, 0x0

    invoke-static {v12, v0, v3, v7, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->removeBuilding([BLcom/project7/localmanager/LocalConstructionCatalog;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 272
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

    .line 273
    iget-object v4, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    invoke-static {v4, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 274
    iget-object v3, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v4, v6

    .line 275
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

    .line 274
    move-object/from16 v6, v20

    invoke-static {v6, v14, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    move-object/from16 v6, v18

    invoke-static {v3, v6, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 276
    iget-object v3, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v6, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    .line 277
    const/4 v8, 0x1

    invoke-static {v8, v2, v6}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v2

    move-object/from16 v6, v19

    invoke-static {v2, v6, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    move-object/from16 v8, v16

    invoke-direct {v4, v8, v2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 276
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
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

    .line 279
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

    .line 280
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->accepted:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    goto :goto_b

    .line 281
    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 282
    :goto_a
    new-instance v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    invoke-direct {v10, v1}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reason:Ljava/lang/String;

    .line 283
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

    .line 285
    :goto_b
    return-object v10
.end method

.method static destroyByIntelligence([BLcom/project7/localmanager/LocalConstructionCatalog;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .line 237
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "areas"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 238
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

    .line 239
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

    .line 240
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

    .line 152
    invoke-static {p0}, Lcom/project7/localmanager/LocalConstructionEngine;->repairDestroyedSlots([B)[B

    move-result-object p0

    .line 153
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 156
    const-string v2, "tbn"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    const/16 v5, 0x14

    .line 157
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

    .line 158
    :goto_1
    const-string v2, "nbb"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 159
    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    move v3, v4

    .line 160
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v3, :cond_3

    return-object p0

    .line 161
    :cond_3
    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static removeBuilding([BLcom/project7/localmanager/LocalConstructionCatalog;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 19

    .line 290
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

    .line 291
    const-string v9, "bd"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    .line 292
    const-string v11, "id"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v10

    .line 293
    invoke-static {v1, v7, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v11

    .line 294
    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v8, v9, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v8

    .line 295
    const-string v9, "dbd"

    if-eqz p4, :cond_0

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v3, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v3

    .line 295
    :goto_0
    invoke-static {v8, v9, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 297
    invoke-static {v7, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 298
    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v3

    .line 299
    const-string v8, "fv"

    const-string v9, "rv"

    const-string v10, "dv"

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    .line 300
    const/4 v9, 0x0

    move v10, v9

    :goto_1
    const/4 v12, 0x3

    if-ge v10, v12, :cond_1

    aget-object v12, v8, v10

    aget-object v13, v8, v10

    .line 301
    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v13

    aget v14, v3, v10

    aget v15, v11, v10

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->addExact(II)I

    move-result v13

    .line 300
    invoke-static {v5, v12, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 302
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

    .line 303
    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v13

    .line 304
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

    .line 305
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v11, v14, v9

    aput-object v13, v14, v17

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v14

    invoke-static {v1, v14, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v14

    .line 306
    nop

    :goto_3
    if-ge v9, v12, :cond_2

    aget-object v12, v8, v9

    aget-object v1, v8, v9

    .line 307
    invoke-static {v13, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v1

    aget v16, v14, v9

    aget v17, v15, v9

    move-object/from16 v18, v7

    sub-int v7, v16, v17

    invoke-static {v1, v7}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    .line 306
    invoke-static {v13, v12, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v13

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v7, v18

    const/4 v12, 0x3

    goto :goto_3

    .line 308
    :cond_2
    move-object/from16 v18, v7

    invoke-static {v2, v11, v13}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 309
    move-object/from16 v1, p1

    const/4 v9, 0x0

    const/4 v12, 0x3

    goto :goto_2

    .line 310
    :cond_3
    invoke-static {v5, v6, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 311
    const/4 v1, 0x3

    aget v1, v3, v1

    const-string v2, "q7DailyBuildIncome"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method static repairDestroyedSlots([B)[B
    .locals 17

    .line 177
    move-object/from16 v0, p0

    const-string v1, "city"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "areas"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 178
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

    .line 179
    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "bd"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    const-string v10, "dbd"

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    .line 181
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

    .line 182
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

    .line 183
    :cond_1
    move-object/from16 v16, v5

    invoke-static {v11, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 184
    invoke-static {v8, v10, v13}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    .line 183
    invoke-static {v6, v7, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v6

    .line 185
    :cond_2
    move-object/from16 v5, v16

    goto :goto_0

    .line 186
    :cond_3
    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 187
    :cond_4
    invoke-static {v2, v3, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 186
    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method static repairIncome([BLcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 4

    .line 191
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 192
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

    .line 195
    const-string p2, "q7DailyBuildIncome"

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "tbn"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 196
    const-string v2, "dvc"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_0

    const-string v3, "dv"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-le p1, v3, :cond_0

    .line 197
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 198
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

    .line 202
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

    .line 203
    const-string v5, "q7CentralBase"

    invoke-static {v0, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    .line 204
    :cond_0
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    const-string v4, "city"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 205
    invoke-static {v6, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->countCity([BI)I

    move-result v7

    if-lez v7, :cond_1

    return-object v0

    .line 206
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

    .line 207
    nop

    .line 208
    move v13, v3

    :goto_0
    const-string v14, "lv"

    invoke-static {v10, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v3, v14}, Lcom/project7/localmanager/LocalConstructionCatalog;->slots(II)I

    move-result v14

    const/4 v15, 0x0

    if-gt v13, v14, :cond_3

    .line 209
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

    .line 208
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move v13, v15

    .line 211
    :goto_1
    if-nez v13, :cond_4

    return-object v0

    .line 212
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v14, "B"

    invoke-virtual {v1, v14, v0}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 213
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

    .line 215
    invoke-static {v1, v8, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v0

    .line 216
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v17, "id"

    aput-object v17, v3, v15

    .line 217
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

    .line 216
    invoke-static {v12, v14, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 218
    invoke-static {v10, v11, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 219
    nop

    .line 220
    const-string v10, "dbd"

    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v11

    .line 219
    invoke-static {v3, v10, v11}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 221
    invoke-static {v8, v9, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v8

    .line 222
    invoke-static {v1, v8, v2}, Lcom/project7/localmanager/LocalConstructionEngine;->totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I

    move-result-object v1

    .line 223
    const-string v10, "fv"

    const-string v11, "rv"

    const-string v12, "dv"

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    .line 224
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_6

    .line 225
    aget v12, v1, v11

    aget v13, v0, v11

    sub-int/2addr v12, v13

    .line 226
    aget-object v13, v10, v11

    aget-object v14, v10, v11

    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v14

    invoke-static {v14, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v14

    invoke-static {v6, v13, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    .line 227
    aget-object v13, v10, v11

    aget-object v14, v10, v11

    invoke-static {v3, v14}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v14

    invoke-static {v14, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v12

    invoke-static {v3, v13, v12}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 224
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 231
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

    .line 232
    invoke-static {v8, v9, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v0, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 233
    invoke-static {v2, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v5, v1}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    return-object v0

    .line 203
    :cond_7
    :goto_4
    return-object v0
.end method

.method private static totals(Lcom/project7/localmanager/LocalConstructionCatalog;[B[B)[I
    .locals 18

    .line 337
    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 338
    nop

    .line 339
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

    .line 340
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

    .line 341
    :cond_0
    goto :goto_0

    .line 342
    :cond_1
    const/16 v2, 0x1e

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 343
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

    .line 344
    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    const-string v7, "bd"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    .line 345
    const-string v8, "st"

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "0"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 346
    :cond_2
    const/4 v8, 0x3

    new-array v9, v8, [I

    new-array v10, v8, [I

    .line 347
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

    .line 348
    invoke-static {v7, v12}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v3}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 349
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v14, "B"

    invoke-virtual {v0, v14, v12}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v12

    .line 350
    const-string v14, "force_val"

    const-string v15, "research_val"

    const-string v13, "dev_val"

    filled-new-array {v14, v15, v13}, [Ljava/lang/String;

    move-result-object v13

    .line 351
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v8, :cond_7

    .line 352
    aget-object v15, v13, v14

    invoke-static {v12, v15}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result v15

    .line 353
    aget v8, v9, v14

    invoke-static {v8, v15}, Ljava/lang/Math;->addExact(II)I

    move-result v8

    aput v8, v9, v14

    .line 354
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

    .line 351
    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x3

    goto :goto_3

    .line 356
    :cond_7
    const/4 v8, 0x3

    goto :goto_2

    .line 357
    :cond_8
    const/4 v8, 0x0

    :goto_5
    const/4 v11, 0x3

    if-ge v8, v11, :cond_10

    .line 358
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

    .line 359
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

    .line 360
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

    .line 361
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

    .line 362
    aget v11, v9, v8

    invoke-static {v7, v13}, Lcom/project7/localmanager/LocalConstructionEngine;->count([BI)I

    move-result v12

    invoke-static {v12, v2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    aput v11, v9, v8

    .line 363
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

    .line 364
    :cond_f
    aget v11, v1, v8

    aget v12, v9, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    aput v11, v1, v8

    .line 357
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 366
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

    .line 367
    goto/16 :goto_1

    .line 368
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

    .line 321
    const-string p0, "bd"

    invoke-static {p2, p0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p3}, Lcom/project7/localmanager/LocalConstructionEngine;->count([BI)I

    move-result v0

    invoke-static {p1, p3}, Lcom/project7/localmanager/LocalConstructionEngine;->countCity([BI)I

    move-result v1

    .line 322
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

    .line 323
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

    .line 324
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

    .line 325
    const-string v0, "area_building_require"

    invoke-static {p4, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 326
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 327
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

    .line 328
    :cond_5
    const-string p0, "\u5c1a\u672a\u6ee1\u8db3\u5730\u533a\u524d\u7f6e\u5efa\u7b51\u6761\u4ef6"

    invoke-static {v1, p0}, Lcom/project7/localmanager/LocalConstructionEngine;->require(ZLjava/lang/String;)V

    .line 329
    const-string p0, "init"

    invoke-static {p4, p0}, Lcom/project7/localmanager/LocalConstructionEngine;->v([BLjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    .line 330
    const-string p0, "pre"

    invoke-static {p4, p0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 331
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

    .line 332
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

    .line 334
    :cond_8
    return-void
.end method
