.class final Lcom/project7/localmanager/LocalDrawEngine;
.super Ljava/lang/Object;
.source "LocalDrawEngine.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalDrawEngine;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 1

    .line 22
    sget-object v0, Lcom/project7/localmanager/LocalDrawEngine;->RANDOM:Ljava/util/Random;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/project7/localmanager/LocalDrawEngine;->apply([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BLjava/util/Random;)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p0

    return-object p0
.end method

.method static apply([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BLjava/util/Random;)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 38

    .line 26
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v10, "ffs"

    const-string v11, "replyFile"

    const-string v12, "requestFile"

    const-string v13, "trwd"

    const-string v14, "prog"

    const-string v15, "info"

    const-string v7, "q7File"

    const-string v16, "rt"

    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v6, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 27
    const-string v5, "t"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    .line 28
    move-object/from16 v17, v10

    const/4 v10, 0x1

    .line 48
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 28
    if-nez v4, :cond_0

    move v4, v10

    .line 29
    :cond_0
    const-string v10, "setChooseHeroes"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v1, v8, v2, v4}, Lcom/project7/localmanager/LocalDrawEngine;->choose([BLcom/project7/localmanager/LocalResourceCatalog;[BI)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object v1

    return-object v1

    .line 31
    :cond_1
    const/16 v19, 0x7

    const/16 v20, 0x5

    const/16 v21, 0x3

    :try_start_0
    iget-object v10, v8, Lcom/project7/localmanager/LocalResourceCatalog;->pools:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1e

    move-object/from16 v22, v13

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/project7/localmanager/LocalResourceCatalog$Pool;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1c

    .line 32
    const/4 v13, 0x1

    if-eq v4, v13, :cond_3

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u8be5\u6d3b\u52a8\u5361\u6c60\u6682\u672a\u5b9e\u73b0\uff0c\u8bf7\u9009\u62e9\u5e38\u9a7b\u767d\u591c\u9986\u6216\u7279\u522b\u63a8\u8350"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object v1, v0

    move-object/from16 v30, v5

    move-object/from16 p4, v11

    move-object/from16 v27, v12

    move-object/from16 v24, v14

    :goto_1
    move-object/from16 v23, v15

    goto/16 :goto_2a

    .line 33
    :cond_3
    :goto_2
    :try_start_3
    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalDrawEngine;->state([BI)[B

    move-result-object v13

    .line 34
    invoke-static {v13, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 35
    nop

    .line 36
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_1c

    move-object/from16 v24, v14

    move-object v14, v1

    :goto_3
    :try_start_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v25
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_1a

    if-eqz v25, :cond_4

    :try_start_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v2, v25

    check-cast v2, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_4

    .line 37
    move-object/from16 v25, v11

    :try_start_6
    invoke-static {v14, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    .line 38
    invoke-static {v11, v8}, Lcom/project7/localmanager/LocalDrawEngine;->normalizeCard([BLcom/project7/localmanager/LocalResourceCatalog;)[B

    move-result-object v11

    invoke-static {v14, v2, v11}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v14
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_2

    .line 39
    move-object/from16 v2, p3

    move-object/from16 v11, v25

    goto :goto_3

    .line 140
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_4
    move-object v1, v0

    move-object/from16 v30, v5

    move-object/from16 v27, v12

    move-object/from16 v23, v15

    :goto_5
    move-object/from16 p4, v25

    goto/16 :goto_2a

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    :goto_6
    move-object v1, v0

    move-object/from16 v30, v5

    move-object/from16 p4, v11

    move-object/from16 v27, v12

    goto :goto_1

    .line 40
    :cond_4
    move-object/from16 v25, v11

    :try_start_7
    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_18

    if-nez v1, :cond_5

    .line 41
    :try_start_8
    invoke-static {v13, v7, v14}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v13

    .line 42
    invoke-static {v6, v13, v4}, Lcom/project7/localmanager/LocalDrawEngine;->saveState(Lcom/project7/localmanager/LocalResourceEngine$Result;[BI)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_2

    .line 44
    :cond_5
    :try_start_9
    const-string v1, "requestQuitFile"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_18

    const-string v2, "iof"

    if-eqz v1, :cond_6

    .line 45
    const/4 v1, 0x0

    :try_start_a
    invoke-static {v13, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 46
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v2, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 47
    invoke-static {v6, v1, v4}, Lcom/project7/localmanager/LocalDrawEngine;->saveState(Lcom/project7/localmanager/LocalResourceEngine$Result;[BI)V

    .line 48
    const-string v1, "replyQuitFile"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v16, v3, v2

    const/4 v2, 0x1

    aput-object v18, v3, v2

    const/4 v2, 0x2

    aput-object v5, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v21

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 49
    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalDrawEngine;->syncActivity(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 50
    return-object v6

    .line 52
    :cond_6
    if-eqz v10, :cond_8

    const/4 v1, 0x1

    invoke-static {v13, v1}, Lcom/project7/localmanager/LocalDrawEngine;->selected([BI)I

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_7

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5148\u9009\u62e9\u7279\u522b\u63a8\u8350\u7684S\u7ea7\u548cA\u7ea7\u795e\u5668\u4f7f"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_2

    .line 53
    :cond_8
    :goto_7
    :try_start_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v13, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 54
    const-string v11, "requestLuckyDrawFileAndOpenAll"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_18

    .line 55
    move-object/from16 v23, v15

    :try_start_c
    const-string v15, "requestLuckyDrawFile"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_17
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_c} :catch_16

    const-string v9, "ct"

    if-nez v15, :cond_b

    if-eqz v11, :cond_9

    goto :goto_8

    .line 71
    :cond_9
    if-eqz v1, :cond_a

    :try_start_d
    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_e

    .line 72
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5148\u5f00\u542f\u788e\u7247"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_b
    :goto_8
    if-eqz v11, :cond_d

    if-nez v1, :cond_c

    goto :goto_a

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5148\u9886\u53d6\u6216\u5173\u95ed\u5f53\u524d\u788e\u7247\uff0c\u518d\u5f00\u542f\u65b0\u7684\u788e\u7247"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    :goto_9
    move-object v1, v0

    move-object/from16 v30, v5

    move-object/from16 v27, v12

    goto/16 :goto_5

    .line 57
    :cond_d
    :goto_a
    if-nez v1, :cond_11

    .line 58
    const/4 v1, 0x1

    if-ne v4, v1, :cond_e

    iget-object v14, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14, v1}, Lcom/project7/localmanager/LocalDrawEngine;->state([BI)[B

    move-result-object v14

    invoke-static {v14, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_b

    :cond_e
    const/4 v1, 0x0

    .line 59
    :goto_b
    if-eqz v1, :cond_f

    const/4 v14, 0x0

    goto :goto_c

    :cond_f
    move/from16 v14, v19

    :goto_c
    invoke-static {v6, v14, v10}, Lcom/project7/localmanager/LocalDrawEngine;->spend(Lcom/project7/localmanager/LocalResourceEngine$Result;ILcom/project7/localmanager/LocalResourceCatalog$Pool;)V

    .line 60
    if-nez v10, :cond_10

    invoke-static {v8, v3, v1}, Lcom/project7/localmanager/LocalDrawEngine;->makeFile(Lcom/project7/localmanager/LocalResourceCatalog;Ljava/util/Random;Z)[B

    move-result-object v1

    goto :goto_d

    :cond_10
    invoke-static {v8, v10, v13, v3}, Lcom/project7/localmanager/LocalDrawEngine;->makeActivityFile(Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalResourceCatalog$Pool;[BLjava/util/Random;)[B

    move-result-object v1

    .line 61
    :goto_d
    invoke-static {v13, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 62
    const/4 v13, 0x1

    invoke-static {v3, v2, v13}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 63
    invoke-static {v6, v2, v4}, Lcom/project7/localmanager/LocalDrawEngine;->saveState(Lcom/project7/localmanager/LocalResourceEngine$Result;[BI)V

    move-object v14, v1

    .line 65
    :cond_11
    if-nez v11, :cond_12

    .line 66
    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 67
    const-string v1, "replyLuckyDrawFile"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v16, v3, v2

    const/4 v2, 0x1

    aput-object v18, v3, v2

    const/4 v2, 0x2

    aput-object v5, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v21

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 68
    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalDrawEngine;->syncActivity(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_d .. :try_end_d} :catch_6

    .line 69
    return-object v6

    .line 74
    :cond_12
    :goto_e
    move-object/from16 v1, p2

    :try_start_e
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_17
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_e} :catch_16

    if-eqz v2, :cond_13

    .line 75
    const/4 v2, 0x6

    :try_start_f
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v16, v3, v2

    const/4 v2, 0x1

    aput-object v18, v3, v2

    const/4 v2, 0x2

    aput-object v23, v3, v2

    aput-object v14, v3, v21

    const/4 v2, 0x4

    aput-object v5, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v20

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_f .. :try_end_f} :catch_6

    move-object/from16 v13, v25

    :try_start_10
    invoke-virtual {v6, v13, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_10 .. :try_end_10} :catch_8

    .line 76
    return-object v6

    .line 78
    :cond_13
    move-object/from16 v13, v25

    :try_start_11
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_15
    .catch Ljava/lang/ArithmeticException; {:try_start_11 .. :try_end_11} :catch_14

    .line 79
    if-nez v11, :cond_15

    :try_start_12
    const-string v2, "requestLuckyDrawAllLeftCard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_12 .. :try_end_12} :catch_8

    if-eqz v2, :cond_14

    goto :goto_10

    :cond_14
    const/16 v25, 0x0

    goto :goto_11

    .line 140
    :catch_8
    move-exception v0

    goto :goto_f

    :catch_9
    move-exception v0

    :goto_f
    move-object v1, v0

    move-object/from16 v30, v5

    move-object/from16 v27, v12

    move-object/from16 p4, v13

    goto/16 :goto_2a

    .line 79
    :cond_15
    :goto_10
    const/16 v25, 0x1

    .line 80
    :goto_11
    :try_start_13
    const-string v2, "idx"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Ljava/lang/ArithmeticException; {:try_start_13 .. :try_end_13} :catch_14

    .line 81
    if-nez v25, :cond_17

    if-ltz v3, :cond_16

    const/4 v2, 0x6

    if-ge v3, v2, :cond_16

    goto :goto_12

    :cond_16
    :try_start_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u788e\u7247\u5e8f\u53f7\u65e0\u6548"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_14 .. :try_end_14} :catch_8

    .line 82
    :cond_17
    :goto_12
    nop

    .line 83
    move-object/from16 v26, v7

    move-object v7, v14

    const/4 v2, 0x0

    :goto_13
    move-object/from16 p4, v13

    const-string v13, "hfp"

    const-string v1, "cctd"

    move-object/from16 v27, v12

    const/4 v12, 0x6

    if-ge v2, v12, :cond_22

    .line 84
    if-nez v25, :cond_18

    if-eq v2, v3, :cond_18

    move/from16 p3, v3

    move-object/from16 v28, v14

    goto :goto_15

    .line 85
    :cond_18
    :try_start_15
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    .line 86
    move/from16 p3, v3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v28, v14

    const-string v14, "is_open"

    invoke-static {v12, v14}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_15 .. :try_end_15} :catch_10

    if-eqz v3, :cond_1a

    .line 87
    if-nez v25, :cond_19

    :try_start_16
    const-string v1, "replyLuckyDrawCard"

    const/16 v3, 0x8

    new-array v14, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v16, v14, v3

    const/4 v3, 0x1

    aput-object v18, v14, v3

    const/4 v3, 0x2

    aput-object v23, v14, v3

    aput-object v12, v14, v21

    const/4 v3, 0x4

    aput-object v24, v14, v3

    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v12, "ldd"

    .line 88
    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    aput-object v3, v14, v20

    const/4 v3, 0x6

    aput-object v5, v14, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v19

    .line 87
    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_16 .. :try_end_16} :catch_a

    goto :goto_15

    .line 140
    :catch_a
    move-exception v0

    goto :goto_14

    :catch_b
    move-exception v0

    :goto_14
    move-object v1, v0

    move-object/from16 v30, v5

    goto/16 :goto_2a

    .line 83
    :cond_19
    :goto_15
    move/from16 v32, p3

    move/from16 v31, v2

    move-object/from16 v30, v5

    move-object v14, v6

    move-object/from16 v37, v26

    move-object/from16 v26, v10

    move-object/from16 v10, v37

    goto/16 :goto_1b

    .line 91
    :cond_1a
    nop

    .line 92
    :try_start_17
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v13, 0x0

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_17 .. :try_end_17} :catch_10

    if-eqz v14, :cond_1c

    :try_start_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v29, v3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 93
    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_18 .. :try_end_18} :catch_a

    move-object/from16 v30, v5

    :try_start_19
    const-string v5, "is_open"

    .line 92
    invoke-static {v14, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 93
    add-int/lit8 v13, v13, 0x1

    .line 92
    :cond_1b
    move-object/from16 v3, v29

    move-object/from16 v5, v30

    goto :goto_16

    .line 96
    :cond_1c
    move-object/from16 v30, v5

    const/4 v3, 0x1

    if-ne v4, v3, :cond_1d

    iget-object v5, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalDrawEngine;->state([BI)[B

    move-result-object v5

    invoke-static {v5, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1d

    .line 97
    invoke-static {v2}, Lcom/project7/localmanager/LocalDrawEngine;->tutorialCard(I)[B

    move-result-object v3

    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalDrawEngine;->normalizeCard([BLcom/project7/localmanager/LocalResourceCatalog;)[B

    move-result-object v12

    .line 98
    :cond_1d
    if-nez v13, :cond_1e

    const/4 v3, 0x0

    goto :goto_17

    :cond_1e
    move/from16 v3, v19

    :goto_17
    invoke-static {v6, v3, v10}, Lcom/project7/localmanager/LocalDrawEngine;->spend(Lcom/project7/localmanager/LocalResourceEngine$Result;ILcom/project7/localmanager/LocalResourceCatalog$Pool;)V

    .line 99
    invoke-static {v6, v8, v12}, Lcom/project7/localmanager/LocalDrawEngine;->reveal(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[B)[B

    move-result-object v12

    .line 100
    iget-object v3, v8, Lcom/project7/localmanager/LocalResourceCatalog;->drawGifts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;

    .line 101
    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalDrawEngine;->state([BI)[B

    move-result-object v3

    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 103
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    iget-object v5, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 104
    const/4 v14, 0x2

    invoke-static {v5, v14}, Lcom/project7/localmanager/LocalDrawEngine;->state([BI)[B

    move-result-object v5

    invoke-static {v5, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    .line 103
    invoke-static {v3, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    .line 105
    :cond_1f
    if-eqz v13, :cond_20

    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    iget v5, v13, Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;->interval:I

    rem-int/2addr v3, v5

    if-nez v3, :cond_20

    .line 106
    const-string v5, "giftCoin"

    iget v14, v13, Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;->coin:I

    iget v3, v13, Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;->count:I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Ljava/lang/ArithmeticException; {:try_start_19 .. :try_end_19} :catch_12

    const/16 v29, 0x1

    move/from16 v31, v2

    move-object v2, v6

    move/from16 v32, p3

    move/from16 v33, v3

    move-object/from16 v3, p1

    move/from16 v34, v4

    move-object v4, v5

    move v5, v14

    move-object v14, v6

    move/from16 v6, v33

    move-object v8, v7

    move-object/from16 v37, v26

    move-object/from16 v26, v10

    move-object/from16 v10, v37

    move/from16 v7, v29

    :try_start_1a
    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 107
    const-string v2, "gift"

    iget v3, v13, Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;->count:I

    invoke-static {v12, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v12
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_1a .. :try_end_1a} :catch_c

    goto :goto_19

    .line 140
    :catch_c
    move-exception v0

    goto :goto_18

    :catch_d
    move-exception v0

    :goto_18
    move-object v1, v0

    move/from16 v4, v34

    goto/16 :goto_2a

    .line 105
    :cond_20
    move/from16 v32, p3

    move/from16 v31, v2

    move/from16 v34, v4

    move-object v14, v6

    move-object v8, v7

    move-object/from16 v37, v26

    move-object/from16 v26, v10

    move-object/from16 v10, v37

    .line 109
    :goto_19
    :try_start_1b
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v7

    .line 110
    iget-object v2, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_1b .. :try_end_1b} :catch_e

    move/from16 v4, v34

    :try_start_1c
    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalDrawEngine;->state([BI)[B

    move-result-object v2

    .line 111
    invoke-static {v2, v10, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 112
    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-static {v2, v9, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 113
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 114
    const-string v5, "Asia/Shanghai"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 115
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    const-wide/32 v35, 0x1808580

    move-object/from16 p3, v7

    sub-long v6, v33, v35

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 116
    const-string v5, "q7DrawDay"

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    goto :goto_1a

    :cond_21
    const/4 v5, 0x0

    .line 117
    :goto_1a
    const-string v6, "q7DrawDay"

    invoke-static {v2, v6, v3}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 118
    const/4 v3, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v5

    invoke-static {v2, v1, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 119
    invoke-static {v14, v1, v4}, Lcom/project7/localmanager/LocalDrawEngine;->saveState(Lcom/project7/localmanager/LocalResourceEngine$Result;[BI)V

    .line 120
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p3

    .line 83
    :goto_1b
    add-int/lit8 v2, v31, 0x1

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v13, p4

    move-object v6, v14

    move-object/from16 v12, v27

    move-object/from16 v14, v28

    move-object/from16 v5, v30

    move/from16 v3, v32

    move-object/from16 v37, v26

    move-object/from16 v26, v10

    move-object/from16 v10, v37

    goto/16 :goto_13

    .line 140
    :catch_e
    move-exception v0

    goto :goto_1c

    :catch_f
    move-exception v0

    :goto_1c
    move/from16 v4, v34

    goto/16 :goto_29

    :catch_10
    move-exception v0

    goto :goto_1d

    :catch_11
    move-exception v0

    :goto_1d
    move-object/from16 v30, v5

    goto/16 :goto_29

    .line 122
    :cond_22
    move-object/from16 v30, v5

    move-object/from16 v28, v14

    move-object v14, v6

    invoke-static {v14}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 123
    iget-object v2, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "ldd"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 124
    const-string v3, "syncProgInfo"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v24, v6, v5

    invoke-static {v2, v13}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v14, v3, v5}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 126
    const-string v5, "ad"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 127
    const-string v7, "1"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    .line 128
    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Integer;

    const-string v8, "0"

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v9, v8

    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v9, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    goto :goto_1e

    .line 130
    :cond_23
    const-string v5, "updateCurTimesDay"

    const/16 v6, 0x8

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v7, v6

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v7, v6

    const-string v1, "fdc"

    const/4 v6, 0x2

    aput-object v1, v7, v6

    const-string v1, "fdc"

    .line 131
    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v21

    const-string v1, "nfdc"

    const/4 v6, 0x4

    aput-object v1, v7, v6

    const-string v1, "nfdc"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v20

    const-string v1, "acctd"

    const/4 v6, 0x6

    aput-object v1, v7, v6

    aput-object v3, v7, v19

    .line 130
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v14, v5, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 133
    if-eqz v11, :cond_24

    const-string v1, "replyLuckyDrawFileAndOpenAll"

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v16, v3, v2

    const/4 v2, 0x1

    aput-object v18, v3, v2

    const/4 v2, 0x2

    aput-object v22, v3, v2

    aput-object v15, v3, v21

    const/4 v2, 0x4

    aput-object v17, v3, v2

    aput-object v28, v3, v20

    const/4 v2, 0x6

    aput-object v30, v3, v2

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v19

    .line 133
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_1f

    .line 135
    :cond_24
    if-eqz v25, :cond_25

    const-string v1, "replyLuckyDrawAllLeftCard"

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v16, v3, v2

    const/4 v2, 0x1

    aput-object v18, v3, v2

    const/4 v2, 0x2

    aput-object v22, v3, v2

    aput-object v15, v3, v21

    const/4 v2, 0x4

    aput-object v30, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v20

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_1f

    .line 136
    :cond_25
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "replyLuckyDrawCard"

    const/16 v3, 0x8

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v16, v5, v3

    const/4 v3, 0x1

    aput-object v18, v5, v3

    const/4 v3, 0x2

    aput-object v23, v5, v3

    .line 137
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v21

    const/4 v3, 0x4

    aput-object v24, v5, v3

    invoke-static {v2, v13}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    aput-object v2, v5, v20

    const/4 v2, 0x6

    aput-object v30, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v19

    .line 136
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 138
    :cond_26
    :goto_1f
    invoke-static {v14, v4}, Lcom/project7/localmanager/LocalDrawEngine;->syncActivity(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 139
    invoke-static {v14}, Lcom/project7/localmanager/LocalDrawEngine;->compactItemUpdates(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_13
    .catch Ljava/lang/ArithmeticException; {:try_start_1c .. :try_end_1c} :catch_12

    .line 147
    move-object v6, v14

    goto/16 :goto_2c

    .line 140
    :catch_12
    move-exception v0

    goto :goto_29

    :catch_13
    move-exception v0

    goto :goto_29

    :catch_14
    move-exception v0

    goto :goto_20

    :catch_15
    move-exception v0

    :goto_20
    move-object/from16 v30, v5

    move-object/from16 v27, v12

    move-object/from16 p4, v13

    goto :goto_29

    :catch_16
    move-exception v0

    goto :goto_21

    :catch_17
    move-exception v0

    :goto_21
    move-object/from16 v30, v5

    move-object/from16 v27, v12

    goto :goto_23

    :catch_18
    move-exception v0

    goto :goto_22

    :catch_19
    move-exception v0

    :goto_22
    move-object/from16 v30, v5

    move-object/from16 v27, v12

    move-object/from16 v23, v15

    :goto_23
    move-object/from16 p4, v25

    goto :goto_29

    :catch_1a
    move-exception v0

    goto :goto_24

    :catch_1b
    move-exception v0

    :goto_24
    move-object/from16 v30, v5

    move-object/from16 p4, v11

    move-object/from16 v27, v12

    goto :goto_28

    :catch_1c
    move-exception v0

    goto :goto_25

    :catch_1d
    move-exception v0

    :goto_25
    move-object/from16 v30, v5

    move-object/from16 p4, v11

    move-object/from16 v27, v12

    goto :goto_27

    :catch_1e
    move-exception v0

    goto :goto_26

    :catch_1f
    move-exception v0

    :goto_26
    move-object/from16 v30, v5

    move-object/from16 p4, v11

    move-object/from16 v27, v12

    move-object/from16 v22, v13

    :goto_27
    move-object/from16 v24, v14

    :goto_28
    move-object/from16 v23, v15

    :goto_29
    move-object v1, v0

    .line 141
    :goto_2a
    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-object/from16 v2, p0

    invoke-direct {v6, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 142
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m"

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "showMessageStr"

    invoke-virtual {v6, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 143
    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v11, p4

    goto :goto_2b

    .line 144
    :cond_27
    const-string v2, "request"

    const-string v3, "reply"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 145
    :goto_2b
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v16, v1, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v30, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v21

    const/4 v2, 0x4

    aput-object v23, v1, v2

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v2, v1, v20

    const/4 v2, 0x6

    aput-object v24, v1, v2

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v2, v1, v19

    const/16 v2, 0x8

    aput-object v22, v1, v2

    const/16 v2, 0x9

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v17, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v3, v1, v2

    .line 145
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v6, v11, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 148
    :goto_2c
    return-object v6
.end method

.method private static choose([BLcom/project7/localmanager/LocalResourceCatalog;[BI)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 12

    .line 209
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 210
    iget-object p1, p1, Lcom/project7/localmanager/LocalResourceCatalog;->pools:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;

    .line 211
    const-string v1, "h"

    invoke-static {p2, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p3}, Lcom/project7/localmanager/LocalDrawEngine;->state([BI)[B

    move-result-object p0

    .line 212
    const/4 v2, 0x0

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 212
    if-nez p1, :cond_0

    const/16 v4, 0x711

    goto :goto_0

    :cond_0
    move v4, v2

    .line 213
    :goto_0
    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v5, :cond_1

    const/16 v4, 0x713

    .line 214
    :cond_1
    if-nez v4, :cond_4

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    move v8, v7

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 215
    invoke-static {p2, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    .line 216
    iget-object v10, p1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->s:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v7, v9

    goto :goto_2

    .line 217
    :cond_2
    iget-object v10, p1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->a:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v8, v9

    goto :goto_2

    .line 218
    :cond_3
    const/16 v4, 0x714

    .line 219
    :goto_2
    goto :goto_1

    .line 214
    :cond_4
    move v7, v2

    move v8, v7

    .line 220
    :cond_5
    if-nez v4, :cond_7

    if-eqz v7, :cond_6

    if-nez v8, :cond_7

    :cond_6
    const/16 v4, 0x715

    .line 221
    :cond_7
    const/4 p2, 0x1

    if-nez v4, :cond_9

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalDrawEngine;->selected([BI)I

    move-result v6

    if-eqz v6, :cond_9

    .line 222
    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalDrawEngine;->selected([BI)I

    move-result v6

    if-ne v6, v7, :cond_8

    invoke-static {p0, v5}, Lcom/project7/localmanager/LocalDrawEngine;->selected([BI)I

    move-result v6

    if-eq v6, v8, :cond_9

    :cond_8
    const/16 v4, 0x716

    .line 223
    :cond_9
    const/4 v6, 0x3

    if-nez v4, :cond_a

    new-array v3, v6, [Ljava/lang/Integer;

    iget p1, p1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->stamp:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_a
    new-array p1, v6, [Ljava/lang/Integer;

    aput-object v3, p1, v2

    aput-object v3, p1, p2

    aput-object v3, p1, v5

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 224
    :goto_3
    if-nez v4, :cond_b

    .line 225
    const-string v3, "ch"

    invoke-static {p0, v3, p1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    invoke-static {v0, p0, p3}, Lcom/project7/localmanager/LocalDrawEngine;->saveState(Lcom/project7/localmanager/LocalResourceEngine$Result;[BI)V

    .line 226
    invoke-static {v0, p3}, Lcom/project7/localmanager/LocalDrawEngine;->syncActivity(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    goto :goto_4

    .line 227
    :cond_b
    const-string p0, "m"

    const-string v3, "\u63a8\u8350\u89d2\u8272\u9009\u62e9\u65e0\u6548\u6216\u5df2\u7ecf\u786e\u5b9a\uff0c\u8bf7\u91cd\u65b0\u8fdb\u5165\u5361\u6c60\u67e5\u770b"

    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const-string v3, "showMessageStr"

    invoke-virtual {v0, v3, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 228
    :goto_4
    const/4 p0, 0x6

    new-array p0, p0, [Ljava/lang/Object;

    const-string v3, "r"

    aput-object v3, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, p2

    const-string p2, "t"

    aput-object p2, p0, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v6

    const/4 p2, 0x4

    aput-object v1, p0, p2

    const/4 p2, 0x5

    aput-object p1, p0, p2

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    const-string p1, "replySetChooseHeroes"

    invoke-virtual {v0, p1, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 229
    return-object v0
.end method

.method static compactItemUpdates(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 12

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 154
    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 155
    iget-object v4, v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v5, "updateItems"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 156
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 160
    move v7, v2

    .line 163
    :goto_1
    iget-object v8, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, "i"

    if-ge v7, v8, :cond_5

    iget-object v8, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v8, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 164
    iget-object v8, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v8, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 165
    const-string v10, "u"

    invoke-static {v9, v10}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 166
    if-nez v10, :cond_1

    const/4 v11, 0x0

    goto :goto_3

    :cond_1
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 167
    :goto_3
    if-nez v11, :cond_3

    .line 168
    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_2
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 170
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v4, v10, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_4
    goto :goto_2

    .line 172
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 174
    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-ne v7, v2, :cond_6

    goto :goto_5

    :cond_6
    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v9, v2, v1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    :goto_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    nop

    .line 176
    move v2, v7

    goto/16 :goto_0

    .line 177
    :cond_7
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 178
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    return-void
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 7

    .line 17
    const-string v0, "requestLuckyDrawFile"

    const-string v1, "requestLuckyDrawCard"

    const-string v2, "requestFile"

    const-string v3, "requestQuitFile"

    const-string v4, "requestLuckyDrawFileAndOpenAll"

    const-string v5, "requestLuckyDrawAllLeftCard"

    const-string v6, "setChooseHeroes"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 17
    return p0
.end method

.method static makeActivityFile(Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalResourceCatalog$Pool;[BLjava/util/Random;)[B
    .locals 20

    .line 258
    move-object/from16 v0, p1

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 259
    nop

    .line 260
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->drops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/project7/localmanager/LocalResourceCatalog$Drop;

    iget-wide v7, v7, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->weight:D

    add-double/2addr v5, v7

    goto :goto_0

    .line 261
    :cond_0
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x6

    if-ge v7, v8, :cond_f

    .line 262
    invoke-virtual/range {p3 .. p3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v9

    mul-double/2addr v9, v5

    .line 263
    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->drops:Ljava/util/List;

    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->drops:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/project7/localmanager/LocalResourceCatalog$Drop;

    .line 264
    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->drops:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/project7/localmanager/LocalResourceCatalog$Drop;

    .line 265
    iget-wide v2, v14, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->weight:D

    sub-double/2addr v9, v2

    .line 266
    const-wide/16 v2, 0x0

    cmpg-double v4, v9, v2

    if-gez v4, :cond_1

    move-object v11, v14

    goto :goto_3

    .line 267
    :cond_1
    goto :goto_2

    .line 264
    :cond_2
    const-wide/16 v2, 0x0

    .line 268
    :goto_3
    iget-object v4, v11, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->kind:Ljava/lang/String;

    .line 269
    iget v9, v11, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->id:I

    .line 270
    const-string v10, "memory"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget v12, v11, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->quality:I

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    .line 271
    :goto_4
    const-string v14, "item"

    const-string v15, "hero"

    const/16 v2, 0x40ff

    if-lt v9, v2, :cond_9

    const/16 v8, 0x4105

    if-gt v9, v8, :cond_9

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 272
    const/16 v4, 0x4103

    if-eq v9, v2, :cond_5

    const/16 v8, 0x4101

    if-lt v9, v8, :cond_4

    if-gt v9, v4, :cond_4

    goto :goto_5

    :cond_4
    const/4 v8, 0x2

    goto :goto_6

    :cond_5
    :goto_5
    move v8, v13

    :goto_6
    move-object/from16 v3, p2

    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalDrawEngine;->selected([BI)I

    move-result v8

    .line 273
    if-eq v9, v2, :cond_8

    const/16 v2, 0x4100

    if-ne v9, v2, :cond_6

    goto :goto_8

    .line 274
    :cond_6
    if-gt v9, v4, :cond_7

    add-int/lit16 v9, v9, -0x4100

    goto :goto_7

    :cond_7
    add-int/lit16 v9, v9, -0x4103

    :goto_7
    move v12, v9

    move v9, v8

    move-object v4, v10

    goto :goto_9

    .line 273
    :cond_8
    :goto_8
    move v9, v8

    move-object v4, v15

    goto :goto_9

    .line 271
    :cond_9
    move-object/from16 v3, p2

    .line 276
    :goto_9
    const/16 v2, 0x12

    new-array v2, v2, [Ljava/lang/Object;

    const-string v8, "index"

    const/16 v17, 0x0

    aput-object v8, v2, v17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v13

    const-string v8, "is_open"

    const/16 v16, 0x2

    aput-object v8, v2, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/16 v18, 0x3

    aput-object v8, v2, v18

    const-string v8, "get_hero"

    const/4 v13, 0x4

    aput-object v8, v2, v13

    const/4 v8, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v2, v8

    const/4 v8, 0x6

    aput-object v15, v2, v8

    const/4 v8, 0x7

    .line 277
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_a

    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    goto :goto_b

    :cond_b
    :goto_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    :goto_b
    aput-object v10, v2, v8

    const/16 v8, 0x8

    const-string v10, "hero_file"

    aput-object v10, v2, v8

    const/16 v8, 0x9

    .line 278
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v8

    const/16 v8, 0xa

    const-string v10, "q7Kind"

    aput-object v10, v2, v8

    const/16 v8, 0xb

    aput-object v4, v2, v8

    const/16 v8, 0xc

    const-string v10, "q7Id"

    aput-object v10, v2, v8

    const/16 v8, 0xd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v8

    const/16 v8, 0xe

    const-string v10, "q7Count"

    aput-object v10, v2, v8

    const/16 v8, 0xf

    iget v10, v11, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->count:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v8

    const/16 v8, 0x10

    const-string v10, "q7Quality"

    aput-object v10, v2, v8

    const/16 v8, 0x11

    iget v10, v11, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->quality:I

    .line 279
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v8

    .line 276
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    .line 280
    iget-object v8, v11, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->design:[B

    if-eqz v8, :cond_c

    iget-object v8, v11, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->design:[B

    const-string v10, "q7Design"

    invoke-static {v2, v10, v8}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 281
    :cond_c
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v10, v12

    iget v8, v11, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v10, v12

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v2, v14, v8}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 282
    :cond_d
    const-string v8, "treasure"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-array v4, v13, [Ljava/lang/Object;

    .line 283
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    iget v9, v11, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->quality:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v4, v12

    iget v9, v11, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->count:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v4, v11

    new-instance v9, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v9, v4, v18

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 282
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v8, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    goto :goto_c

    :cond_e
    const/4 v10, 0x0

    .line 284
    :goto_c
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 261
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 286
    :cond_f
    return-object v1
.end method

.method static makeFile(Lcom/project7/localmanager/LocalResourceCatalog;Ljava/util/Random;Z)[B
    .locals 18

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 291
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceCatalog;->treasures:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    const/4 v5, 0x0

    .line 295
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 293
    move v7, v5

    :goto_0
    const/4 v8, 0x6

    if-ge v7, v8, :cond_6

    .line 294
    const/4 v9, 0x4

    if-eqz p2, :cond_0

    if-nez v7, :cond_0

    move v10, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 295
    :goto_1
    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "index"

    aput-object v12, v11, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string v12, "is_open"

    const/4 v14, 0x2

    aput-object v12, v11, v14

    const/4 v12, 0x3

    aput-object v6, v11, v12

    const-string v15, "get_hero"

    aput-object v15, v11, v9

    const/4 v15, 0x5

    aput-object v6, v11, v15

    const-string v15, "hero"

    aput-object v15, v11, v8

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const/16 v16, 0x7

    aput-object v8, v11, v16

    const/16 v8, 0x8

    const-string v12, "hero_file"

    aput-object v12, v11, v8

    const/16 v8, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v11, v8

    .line 295
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v8

    .line 297
    const-string v11, "q7Id"

    const-string v5, "q7Kind"

    if-eqz v10, :cond_2

    if-eq v10, v13, :cond_2

    if-ne v10, v14, :cond_1

    const/16 v17, 0x0

    goto :goto_2

    .line 304
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;

    .line 305
    const-string v12, "treasure"

    invoke-static {v8, v5, v12}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 306
    iget v8, v10, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;->item:I

    invoke-static {v5, v11, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 307
    iget v8, v10, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;->quality:I

    const-string v11, "q7Quality"

    invoke-static {v5, v11, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 308
    new-array v8, v9, [Ljava/lang/Object;

    iget v9, v10, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;->item:I

    .line 309
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v17, 0x0

    aput-object v9, v8, v17

    iget v9, v10, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;->quality:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    new-instance v9, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 308
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v12, v8}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v5

    goto :goto_6

    .line 297
    :cond_2
    const/16 v17, 0x0

    .line 298
    :goto_2
    if-eqz p2, :cond_3

    if-nez v7, :cond_3

    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_3

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    :goto_3
    check-cast v9, Lcom/project7/localmanager/LocalResourceCatalog$Hero;

    .line 299
    if-nez v10, :cond_4

    move-object v14, v15

    goto :goto_4

    :cond_4
    const-string v14, "memory"

    :goto_4
    invoke-static {v8, v5, v14}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 300
    iget v8, v9, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->id:I

    invoke-static {v5, v11, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 301
    iget v8, v9, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v15, v8}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v5

    .line 302
    if-nez v10, :cond_5

    move/from16 v8, v17

    goto :goto_5

    :cond_5
    iget v8, v9, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->files:I

    invoke-virtual {v1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v8, v13

    :goto_5
    invoke-static {v5, v12, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 303
    nop

    .line 311
    :goto_6
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 293
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v17

    goto/16 :goto_0

    .line 313
    :cond_6
    return-object v2
.end method

.method private static normalizeCard([BLcom/project7/localmanager/LocalResourceCatalog;)[B
    .locals 17

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "q7Kind"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    if-eqz v3, :cond_5

    const-string v4, "q7Wire"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    goto/16 :goto_1

    .line 371
    :cond_0
    const-string v5, "other_reward"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    .line 372
    const-string v8, "activityReward"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 373
    const-string v10, "hero"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "memory"

    const-string v13, "item"

    if-nez v11, :cond_1

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 374
    :cond_1
    const-string v11, "hero_frag"

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 375
    sget-object v14, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 376
    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 377
    const-string v6, "0"

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 378
    move-object/from16 v16, v9

    const-string v9, "1"

    invoke-static {v15, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    .line 377
    invoke-static {v14, v6, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v14

    move-object/from16 v9, v16

    const/4 v6, 0x2

    goto :goto_0

    .line 379
    :cond_2
    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v0, v11, v14}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 381
    :cond_3
    iget-object v6, v1, Lcom/project7/localmanager/LocalResourceCatalog;->items:Ljava/util/Map;

    const-string v9, "q7Id"

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;

    .line 382
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v11, 0x3

    const/4 v14, 0x1

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v15, "is_open"

    invoke-static {v0, v15}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v6, :cond_4

    iget v3, v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;->type:I

    if-ne v3, v11, :cond_4

    iget-object v1, v1, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    iget v3, v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;->hero:I

    .line 383
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 384
    invoke-static {v0, v2, v12}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 385
    iget v1, v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;->hero:I

    invoke-static {v0, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 386
    const-string v1, "hero_file"

    invoke-static {v0, v1, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 387
    iget v1, v6, Lcom/project7/localmanager/LocalResourceCatalog$Item;->hero:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v10, v1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 388
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v13, v1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 390
    :cond_4
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v14

    const/4 v2, 0x2

    aput-object v13, v1, v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v11

    const/4 v2, 0x4

    const-string v3, "treasure"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "fragment"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "treasure_trans"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 392
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    .line 390
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 393
    nop

    .line 394
    invoke-static {v7, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 393
    invoke-static {v0, v5, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 395
    const/4 v1, 0x2

    invoke-static {v0, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    return-object v0

    .line 370
    :cond_5
    :goto_1
    return-object v0
.end method

.method private static reveal(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[B)[B
    .locals 16

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "q7Id"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    .line 324
    const-string v2, "q7Kind"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    new-instance v13, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v13, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 326
    nop

    .line 327
    const-string v14, "memory"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v12, "hero"

    const/4 v10, 0x1

    if-eqz v3, :cond_3

    .line 328
    move-object/from16 v4, p1

    iget-object v3, v4, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/project7/localmanager/LocalResourceCatalog$Hero;

    .line 329
    iget-object v5, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v7, "ldd"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    const-string v8, "hfp"

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 330
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v11

    .line 331
    const-string v15, "hero_file"

    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v15

    sub-int/2addr v15, v10

    shl-int v15, v10, v15

    .line 332
    or-int v10, v11, v15

    .line 333
    iget-object v4, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v4

    if-nez v4, :cond_2

    and-int v4, v11, v15

    if-eqz v4, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 337
    iget-object v9, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v8, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    invoke-static {v9, v7, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 338
    iget v3, v3, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->files:I

    const/4 v4, 0x1

    shl-int v3, v4, v3

    sub-int/2addr v3, v4

    if-ne v10, v3, :cond_1

    .line 339
    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v5, "hero"

    move-object v3, v13

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v8}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    move-object v4, v12

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x1

    goto :goto_2

    .line 338
    :cond_1
    move-object v4, v12

    const/4 v5, 0x0

    const/4 v15, 0x1

    goto :goto_1

    .line 334
    :cond_2
    :goto_0
    iget v3, v3, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->rank:I

    const/4 v4, 0x4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit16 v10, v3, 0x109c

    const/4 v11, 0x1

    const/4 v3, 0x1

    const-string v9, "item"

    move-object v7, v13

    move-object/from16 v8, p1

    move v15, v4

    const/4 v5, 0x0

    move-object v4, v12

    move v12, v3

    invoke-static/range {v7 .. v12}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 342
    :goto_1
    move v11, v5

    :goto_2
    move-object v10, v4

    move v12, v5

    goto :goto_5

    .line 343
    :cond_3
    move v15, v10

    move-object v4, v12

    const/4 v5, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v3

    if-nez v3, :cond_4

    move v11, v15

    goto :goto_3

    :cond_4
    move v11, v5

    .line 344
    :goto_3
    const-string v3, "q7Count"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 345
    if-nez v3, :cond_5

    move v7, v15

    goto :goto_4

    :cond_5
    move v7, v3

    .line 346
    :goto_4
    const-string v3, "q7Quality"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    const-string v3, "q7Design"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    .line 345
    move-object v3, v13

    move-object v10, v4

    move-object/from16 v4, p1

    move v12, v5

    move-object v5, v2

    invoke-static/range {v3 .. v9}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III[B)V

    .line 348
    :goto_5
    iget-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 349
    const-string v0, "is_open"

    invoke-static {v1, v0, v15}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 350
    const-string v1, "get_hero"

    invoke-static {v0, v1, v11}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 351
    iget-object v1, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->treasureRewards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v3, "treasure"

    if-nez v1, :cond_6

    iget-object v1, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->treasureRewards:Ljava/util/List;

    invoke-static {v0, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 352
    :cond_6
    const-string v1, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    invoke-static {v0, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 353
    :cond_7
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 354
    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 355
    iget-object v4, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 356
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v6, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    goto :goto_6

    .line 357
    :cond_9
    const-string v4, "hero_frag"

    invoke-static {v0, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 361
    :cond_a
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v15

    const/4 v4, 0x2

    aput-object v1, v2, v4

    const/4 v1, 0x3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    aput-object v5, v2, v1

    const/4 v1, 0x4

    aput-object v3, v2, v1

    const/4 v1, 0x5

    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "fragment"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "treasure_trans"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    .line 363
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    aput-object v3, v2, v1

    .line 361
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 364
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "activityReward"

    aput-object v3, v2, v12

    aput-object v1, v2, v15

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "other_reward"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 365
    return-object v0
.end method

.method static saveState(Lcom/project7/localmanager/LocalResourceEngine$Result;[BI)V
    .locals 11

    .line 190
    const-string v0, "ldd"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    return-void

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    const-string v4, "ad"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 194
    const-string v9, "0"

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v10

    if-eq v10, p2, :cond_1

    new-array v8, v8, [Ljava/io/Serializable;

    .line 195
    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v7, "1"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    aput-object v6, v8, v1

    .line 194
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_2
    new-array v5, v8, [Ljava/io/Serializable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v7

    aput-object p1, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 198
    return-void
.end method

.method private static selected([BI)I
    .locals 1

    .line 205
    const-string v0, "ch"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static spend(Lcom/project7/localmanager/LocalResourceEngine$Result;ILcom/project7/localmanager/LocalResourceCatalog$Pool;)V
    .locals 11

    .line 233
    if-lez p1, :cond_3

    if-eqz p2, :cond_3

    .line 234
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "inv"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 235
    const-string v2, "items"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    .line 236
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 237
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 238
    const-string v7, "i"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    iget v9, p2, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->ticket:I

    if-ne v8, v9, :cond_2

    const-string v8, "w"

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_0

    goto :goto_2

    .line 239
    :cond_0
    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p1

    sub-int/2addr p1, v10

    .line 240
    invoke-static {v6, v8, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p2

    .line 241
    const/4 v8, 0x2

    if-nez p1, :cond_1

    .line 242
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 243
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v7, p1, v4

    new-instance p2, Lcom/project7/localmanager/BsonLite$UuidValue;

    const-string v4, "u"

    invoke-static {v6, v4}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    aput-object p2, p1, v10

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "deleteItems"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_1

    .line 245
    :cond_1
    invoke-interface {v3, v5, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v7, p1, v4

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    aput-object p2, p1, v10

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "updateItems"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 248
    :goto_1
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 249
    return-void

    .line 236
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 252
    :cond_3
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v0, "summonCoin"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p2

    .line 253
    if-lt p2, p1, :cond_4

    .line 254
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    sub-int/2addr p2, p1

    invoke-static {v1, v0, p2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 255
    return-void

    .line 253
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6b27\u6cca\u4e0d\u8db3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static state([BI)[B
    .locals 2

    .line 182
    const-string v0, "ldd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 183
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    .line 184
    :cond_0
    const-string v0, "ad"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 185
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_1

    const-string p0, "1"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 186
    :cond_2
    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    return-object p0
.end method

.method private static syncActivity(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V
    .locals 4

    .line 201
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "t"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "d"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, p1}, Lcom/project7/localmanager/LocalDrawEngine;->state([BI)[B

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "syncLuckyDrawActivityData"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 202
    :cond_0
    return-void
.end method

.method private static tutorialCard(I)[B
    .locals 5

    .line 317
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v1, v0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "is_open"

    aput-object v1, v0, p0

    const/4 p0, 0x3

    aput-object v3, v0, p0

    const/4 p0, 0x4

    const-string v1, "get_hero"

    aput-object v1, v0, p0

    const/4 p0, 0x5

    aput-object v3, v0, p0

    const/4 p0, 0x6

    const-string v1, "hero"

    aput-object v1, v0, p0

    .line 318
    const/4 p0, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v0, p0

    const/16 p0, 0x8

    const-string v4, "hero_file"

    aput-object v4, v0, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v2, 0x9

    aput-object p0, v0, v2

    const/16 p0, 0xa

    const-string v2, "q7Kind"

    aput-object v2, v0, p0

    const/16 p0, 0xb

    aput-object v1, v0, p0

    const/16 p0, 0xc

    const-string v1, "q7Id"

    aput-object v1, v0, p0

    .line 319
    const/16 p0, 0xd

    aput-object v3, v0, p0

    .line 317
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method
