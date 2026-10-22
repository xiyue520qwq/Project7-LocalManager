.class final Lcom/project7/localmanager/LocalAccountFeatures;
.super Ljava/lang/Object;
.source "LocalAccountFeatures.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 28

    .line 28
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    const-string v3, "gr"

    const-string v4, "rcd"

    const-string v5, "num"

    const-string v6, "replyBuyCardMallItem"

    const-string v7, "m"

    const-string v8, "rookieGainRewards"

    const-string v9, "sma"

    const-string v10, "i"

    const-string v11, "e"

    const-string v12, "rookieGainRewardsReply"

    const-string v13, "r"

    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 30
    const/16 v20, 0x47f

    :try_start_0
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 31
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalAccountFeatures;->refreshRecharge([B)[B

    move-result-object v0

    .line 32
    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 33
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 34
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_28

    const/4 v3, 0x0

    :try_start_1
    aput-object v13, v0, v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    aput-object v11, v0, v3

    const/16 v3, 0x69c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_28

    const/4 v4, 0x3

    :try_start_3
    aput-object v3, v0, v4
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v15, v12, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    return-object v15

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object v2, v6

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    move v11, v4

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    move v4, v3

    move-object v2, v6

    :goto_2
    move-object/from16 v23, v11

    move-object/from16 v25, v12

    goto/16 :goto_1f

    .line 36
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalAccountFeatures;->hasRecharge([B)Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_28

    if-nez v5, :cond_1

    .line 37
    const/4 v5, 0x4

    :try_start_5
    new-array v0, v5, [Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_8

    const/4 v14, 0x0

    :try_start_6
    aput-object v13, v0, v14

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/16 v16, 0x1

    aput-object v3, v0, v16
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_6

    const/16 v18, 0x2

    :try_start_7
    aput-object v11, v0, v18

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_4

    const/16 v17, 0x3

    :try_start_8
    aput-object v3, v0, v17

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v15, v12, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    return-object v15

    .line 85
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    :goto_3
    const/16 v17, 0x3

    goto/16 :goto_a

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    :goto_4
    const/16 v17, 0x3

    const/16 v18, 0x2

    goto/16 :goto_a

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    :goto_5
    const/16 v17, 0x3

    const/16 v18, 0x2

    move-object v2, v6

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    move/from16 v11, v17

    :goto_6
    const/4 v4, 0x0

    goto/16 :goto_20

    .line 40
    :cond_1
    const/4 v5, 0x4

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x3

    const/16 v18, 0x2

    const-string v19, "hero"
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_10

    const/16 v21, 0x51

    const/16 v22, 0x1

    const/16 v23, 0x1

    move/from16 v5, v16

    move-object v14, v15

    move-object/from16 v25, v15

    move-object/from16 v15, p1

    move-object/from16 v16, v19

    move/from16 v17, v21

    move/from16 v18, v22

    move/from16 v19, v23

    :try_start_9
    invoke-static/range {v14 .. v19}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 41
    const-string v16, "treasure"

    const/16 v17, 0x519

    const/16 v18, 0x1

    const/16 v19, 0x3

    move-object/from16 v14, v25

    move-object/from16 v15, p1

    invoke-static/range {v14 .. v19}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 42
    const-string v16, "item"

    const/16 v17, 0xbb8

    const/16 v18, 0x5

    const/16 v19, 0x1

    move-object/from16 v14, v25

    move-object/from16 v15, p1

    invoke-static/range {v14 .. v19}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 43
    invoke-static {v0, v3, v5}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 44
    move-object/from16 v3, v25

    iget-object v14, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v15, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 45
    invoke-static {v15, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v15

    .line 44
    invoke-static {v15, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    invoke-static {v14, v9, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 46
    const-string v4, "rookieRechargeSyncData"

    const/4 v9, 0x2

    new-array v14, v9, [Ljava/lang/Object;

    const-string v9, "d"
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_28

    const/4 v15, 0x0

    :try_start_a
    aput-object v9, v14, v15
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_e

    :try_start_b
    aput-object v0, v14, v5

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 47
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_28

    const/4 v9, 0x0

    :try_start_c
    aput-object v13, v0, v9
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_c} :catch_c

    :try_start_d
    invoke-virtual {v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v9

    aput-object v9, v0, v5

    const/4 v9, 0x2

    aput-object v11, v0, v9
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_29
    .catch Ljava/lang/ArithmeticException; {:try_start_d .. :try_end_d} :catch_28

    const/4 v9, 0x0

    :try_start_e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_e} :catch_c

    const/4 v15, 0x3

    :try_start_f
    aput-object v14, v0, v15

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_f .. :try_end_f} :catch_a

    .line 48
    goto/16 :goto_19

    .line 85
    :catch_a
    move-exception v0

    goto :goto_7

    :catch_b
    move-exception v0

    :goto_7
    move-object v2, v6

    move v4, v9

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    goto/16 :goto_1c

    :catch_c
    move-exception v0

    goto :goto_8

    :catch_d
    move-exception v0

    :goto_8
    move-object v2, v6

    move v4, v9

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto :goto_9

    :catch_f
    move-exception v0

    :goto_9
    move-object v2, v6

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    move v4, v15

    goto/16 :goto_1f

    :catch_10
    move-exception v0

    goto :goto_a

    :catch_11
    move-exception v0

    :goto_a
    move-object v2, v6

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    move v4, v14

    move/from16 v11, v17

    goto/16 :goto_20

    .line 48
    :cond_2
    move-object v9, v5

    move-object v3, v15

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x3

    :try_start_10
    const-string v4, "summoncoinExchange"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_27
    .catch Ljava/lang/ArithmeticException; {:try_start_10 .. :try_end_10} :catch_26

    const/4 v5, 0x6

    const/16 v22, 0x7

    const-string v15, "ldd"

    if-eqz v4, :cond_8

    .line 49
    :try_start_11
    invoke-static {v0, v10}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 50
    new-array v4, v5, [[I

    new-array v5, v14, [I

    aput-object v5, v4, v14
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_11 .. :try_end_11} :catch_20

    const/4 v5, 0x3

    :try_start_12
    new-array v9, v5, [I
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_1f
    .catch Ljava/lang/ArithmeticException; {:try_start_12 .. :try_end_12} :catch_1e

    const/16 v5, 0x1900

    :try_start_13
    aput v5, v9, v14

    const/16 v5, 0xa8

    const/16 v17, 0x1

    aput v5, v9, v17

    const/4 v5, 0x2

    aput v14, v9, v5

    aput-object v9, v4, v17
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_13 .. :try_end_13} :catch_20

    const/4 v5, 0x3

    :try_start_14
    new-array v9, v5, [I
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_1f
    .catch Ljava/lang/ArithmeticException; {:try_start_14 .. :try_end_14} :catch_1e

    const/16 v5, 0x780

    :try_start_15
    aput v5, v9, v14

    const/16 v5, 0x30

    aput v5, v9, v17

    const/4 v5, 0x2

    aput v14, v9, v5

    aput-object v9, v4, v5
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_15 .. :try_end_15} :catch_20

    const/4 v5, 0x3

    :try_start_16
    new-array v9, v5, [I
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_1f
    .catch Ljava/lang/ArithmeticException; {:try_start_16 .. :try_end_16} :catch_1e

    const/16 v5, 0x118

    :try_start_17
    aput v5, v9, v14

    const/4 v5, 0x1

    aput v22, v9, v5

    const/4 v5, 0x2

    aput v14, v9, v5
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_17 .. :try_end_17} :catch_20

    const/4 v5, 0x3

    :try_start_18
    aput-object v9, v4, v5

    new-array v9, v5, [I
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_1f
    .catch Ljava/lang/ArithmeticException; {:try_start_18 .. :try_end_18} :catch_1e

    const/16 v5, 0xaf0

    :try_start_19
    aput v5, v9, v14

    const/4 v5, 0x1

    aput v22, v9, v5

    const/4 v5, 0x5

    const/16 v16, 0x2

    aput v5, v9, v16

    const/4 v5, 0x4

    aput-object v9, v4, v5
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_19 .. :try_end_19} :catch_20

    const/4 v5, 0x3

    :try_start_1a
    new-array v9, v5, [I
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_1f
    .catch Ljava/lang/ArithmeticException; {:try_start_1a .. :try_end_1a} :catch_1e

    const/16 v5, 0x190

    :try_start_1b
    aput v5, v9, v14

    const/4 v5, 0x1

    aput v5, v9, v5

    const/16 v17, 0x2

    aput v22, v9, v17
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_21
    .catch Ljava/lang/ArithmeticException; {:try_start_1b .. :try_end_1b} :catch_20

    const/4 v14, 0x5

    :try_start_1c
    aput-object v9, v4, v14
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_1d
    .catch Ljava/lang/ArithmeticException; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 51
    if-lt v0, v5, :cond_7

    if-gt v0, v14, :cond_7

    .line 52
    move-object/from16 v23, v11

    move-object/from16 v25, v12

    :try_start_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v1, v11, v12}, Lcom/project7/localmanager/LocalCommerceEngine;->refreshStoreLimits([BJ)[B

    move-result-object v5

    .line 53
    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 54
    const-string v11, "swl"

    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v11
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_1d .. :try_end_1d} :catch_1a

    .line 55
    const/4 v12, 0x3

    if-gt v0, v12, :cond_3

    :try_start_1e
    const-string v14, "yuanbao"
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_13
    .catch Ljava/lang/ArithmeticException; {:try_start_1e .. :try_end_1e} :catch_12

    goto :goto_c

    .line 85
    :catch_12
    move-exception v0

    goto :goto_b

    :catch_13
    move-exception v0

    :goto_b
    move-object v2, v6

    move v11, v12

    goto/16 :goto_6

    .line 55
    :cond_3
    :try_start_1f
    const-string v14, "crystal"
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_19
    .catch Ljava/lang/ArithmeticException; {:try_start_1f .. :try_end_1f} :catch_18

    .line 56
    :goto_c
    :try_start_20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_20 .. :try_end_20} :catch_1a

    if-eqz v12, :cond_4

    :try_start_21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_15
    .catch Ljava/lang/ArithmeticException; {:try_start_21 .. :try_end_21} :catch_14

    goto :goto_e

    .line 85
    :catch_14
    move-exception v0

    goto :goto_d

    :catch_15
    move-exception v0

    :goto_d
    move-object v2, v6

    goto/16 :goto_1e

    .line 56
    :cond_4
    const/4 v12, 0x0

    .line 57
    :goto_e
    :try_start_22
    aget-object v16, v4, v0

    const/16 v17, 0x2

    aget v16, v16, v17
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_22 .. :try_end_22} :catch_1a

    if-lez v16, :cond_6

    :try_start_23
    aget-object v16, v4, v0

    aget v2, v16, v17

    if-ge v12, v2, :cond_5

    goto :goto_f

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u672c\u5468\u5151\u6362\u6b21\u6570\u5df2\u7528\u5b8c"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_15
    .catch Ljava/lang/ArithmeticException; {:try_start_23 .. :try_end_23} :catch_14

    .line 58
    :cond_6
    :goto_f
    :try_start_24
    aget-object v2, v4, v0
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_24 .. :try_end_24} :catch_1a

    const/16 v16, 0x0

    :try_start_25
    aget v2, v2, v16

    invoke-static {v5, v14, v2}, Lcom/project7/localmanager/LocalAccountFeatures;->spend([BLjava/lang/String;I)[B

    move-result-object v2

    iput-object v2, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v12, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v2, "swl"

    invoke-static {v11}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    invoke-static {v9, v2, v5}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 61
    iget-object v5, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v15, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 62
    const-string v2, "summonCoin"

    const/16 v17, 0x0

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v18, v4, v5
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_25} :catch_17
    .catch Ljava/lang/ArithmeticException; {:try_start_25 .. :try_end_25} :catch_16

    const/16 v19, 0x1

    move/from16 v4, v16

    move-object v14, v3

    const/4 v11, 0x3

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    :try_start_26
    invoke-static/range {v14 .. v19}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 63
    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 64
    const-string v2, "summoncoinExchangeReply"

    const/4 v5, 0x4

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v13, v9, v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v5

    const/4 v5, 0x2

    aput-object v10, v9, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v11

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 65
    goto/16 :goto_19

    .line 85
    :catch_16
    move-exception v0

    goto :goto_10

    :catch_17
    move-exception v0

    :goto_10
    move/from16 v4, v16

    goto :goto_16

    :catch_18
    move-exception v0

    goto :goto_11

    :catch_19
    move-exception v0

    :goto_11
    move v11, v12

    const/4 v4, 0x0

    goto/16 :goto_1a

    :catch_1a
    move-exception v0

    goto :goto_13

    :catch_1b
    move-exception v0

    goto :goto_13

    .line 51
    :cond_7
    move-object/from16 v23, v11

    move-object/from16 v25, v12

    const/4 v4, 0x0

    const/4 v11, 0x3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u5151\u6362\u6863\u4f4d\u65e0\u6548"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :catch_1c
    move-exception v0

    goto :goto_12

    :catch_1d
    move-exception v0

    :goto_12
    move-object/from16 v23, v11

    move-object/from16 v25, v12

    :goto_13
    const/4 v4, 0x0

    goto :goto_16

    :catch_1e
    move-exception v0

    goto :goto_14

    :catch_1f
    move-exception v0

    :goto_14
    move-object/from16 v23, v11

    move-object/from16 v25, v12

    move v4, v14

    move v11, v5

    goto/16 :goto_1a

    :catch_20
    move-exception v0

    goto :goto_15

    :catch_21
    move-exception v0

    :goto_15
    move-object/from16 v23, v11

    move-object/from16 v25, v12

    move v4, v14

    :goto_16
    const/4 v11, 0x3

    goto/16 :goto_1a

    .line 66
    :cond_8
    move-object/from16 v23, v11

    move-object/from16 v25, v12

    move v4, v14

    const/4 v11, 0x3

    const/4 v14, 0x5

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_26} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_26 .. :try_end_26} :catch_24

    .line 67
    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    .line 68
    move-object v2, v6

    :try_start_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/project7/localmanager/LocalCommerceEngine;->refreshStoreLimits([BJ)[B

    move-result-object v5

    iput-object v5, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 69
    iget-object v5, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 70
    const-string v6, "din"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v6

    .line 71
    const/16 v12, 0x78e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v14, 0x1

    if-ge v0, v14, :cond_9

    goto :goto_17

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u4eca\u65e5\u514d\u8d39\u8865\u7ed9\u5df2\u9886\u53d6"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_a
    :goto_17
    const-string v0, "item"

    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v14, v11}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    add-int/lit16 v14, v14, 0x1ee

    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v17, v14

    const/16 v16, 0x5

    move-object v14, v3

    move-object/from16 v26, v15

    move/from16 v24, v16

    move-object/from16 v15, p1

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v19}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 74
    new-array v0, v11, [I

    const/16 v14, 0x1e8

    aput v14, v0, v4

    const/16 v14, 0x1e9

    const/4 v15, 0x1

    aput v14, v0, v15

    const/16 v14, 0x1ea

    const/4 v15, 0x2

    aput v14, v0, v15

    move v15, v4

    :goto_18
    if-ge v15, v11, :cond_b

    aget v17, v0, v15

    const-string v16, "item"

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object v14, v3

    move/from16 v27, v15

    move-object/from16 v15, p1

    invoke-static/range {v14 .. v19}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    add-int/lit8 v15, v27, 0x1

    goto :goto_18

    .line 75
    :cond_b
    const-string v16, "money"

    const/16 v17, 0x0

    const/16 v18, 0x2710

    const/16 v19, 0x1

    move-object v14, v3

    move-object/from16 v15, p1

    invoke-static/range {v14 .. v19}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 76
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "din"

    invoke-static {v6}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v14

    invoke-static {v5, v0, v14}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 78
    iget-object v5, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v14, v26

    invoke-static {v5, v14, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    iput-object v5, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 79
    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 80
    const/4 v5, 0x4

    new-array v14, v5, [Ljava/lang/Object;

    aput-object v13, v14, v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v5

    const/4 v5, 0x2

    aput-object v10, v14, v5

    sget-object v5, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v5, v14, v11

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 81
    const-string v5, "buyCardMallItemDone"

    const/16 v14, 0x14

    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "d"

    aput-object v15, v14, v4

    invoke-static {v6}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    const/4 v15, 0x1

    aput-object v6, v14, v15

    const-string v6, "w"

    const/4 v15, 0x2

    aput-object v6, v14, v15

    const-string v6, "win"

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    aput-object v6, v14, v11

    const-string v6, "t"

    const/4 v15, 0x4

    aput-object v6, v14, v15

    const-string v6, "ton"

    .line 82
    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    aput-object v6, v14, v24

    const/4 v6, 0x6

    aput-object v7, v14, v6

    const-string v6, "mon"

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v14, v22

    const/16 v0, 0x8

    const-string v6, "z"

    aput-object v6, v14, v0

    const/16 v0, 0x9

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    aput-object v6, v14, v0

    const/16 v0, 0xa

    const-string v6, "itemid"

    aput-object v6, v14, v0

    const/16 v0, 0xb

    const/16 v6, 0x2c95

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v0

    const/16 v0, 0xc

    aput-object v9, v14, v0

    const/16 v0, 0xd

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v0

    const/16 v0, 0xe

    const-string v6, "result"

    aput-object v6, v14, v0

    const/16 v0, 0xf

    invoke-virtual {v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v6

    aput-object v6, v14, v0

    const/16 v0, 0x10

    const-string v6, "sd"

    aput-object v6, v14, v0

    const/16 v0, 0x11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v14, v0

    const/16 v0, 0x12

    const-string v6, "silence"

    aput-object v6, v14, v0

    const/16 v0, 0x13

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v14, v0

    .line 81
    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 91
    :goto_19
    move-object v15, v3

    goto/16 :goto_21

    .line 85
    :catch_22
    move-exception v0

    goto :goto_20

    :catch_23
    move-exception v0

    goto :goto_20

    .line 67
    :cond_c
    move-object v2, v6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u514d\u8d39\u8865\u7ed9\u6bcf\u6b21\u4ec5\u53ef\u9886\u53d6\u4e00\u4efd"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_27} :catch_23
    .catch Ljava/lang/ArithmeticException; {:try_start_27 .. :try_end_27} :catch_22

    .line 85
    :catch_24
    move-exception v0

    goto :goto_1a

    :catch_25
    move-exception v0

    :goto_1a
    move-object v2, v6

    goto :goto_20

    :catch_26
    move-exception v0

    goto :goto_1b

    :catch_27
    move-exception v0

    :goto_1b
    move-object v2, v6

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    move v4, v14

    :goto_1c
    move v11, v15

    goto :goto_20

    :catch_28
    move-exception v0

    goto :goto_1d

    :catch_29
    move-exception v0

    :goto_1d
    move-object v2, v6

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    :goto_1e
    const/4 v4, 0x0

    :goto_1f
    const/4 v11, 0x3

    .line 86
    :goto_20
    new-instance v15, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v15, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 88
    move-object/from16 v1, p2

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v13, v0, v4

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const/4 v3, 0x2

    aput-object v23, v0, v3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v11

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    move-object/from16 v3, v25

    invoke-virtual {v15, v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 90
    :cond_d
    const-string v0, "buyCardMallItem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v13, v0, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object v10, v0, v1

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v1, v0, v11

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v15, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 92
    :cond_e
    :goto_21
    return-object v15
.end method

.method static handles(Ljava/lang/String;[B)Z
    .locals 1

    .line 13
    const-string v0, "rookieGainRewards"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "summoncoinExchange"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    const-string v0, "buyCardMallItem"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "store_id"

    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    const/16 p1, 0x78e

    if-ne p0, p1, :cond_0

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

.method private static hasRecharge([B)Z
    .locals 3

    .line 105
    const-string v0, "eby"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 106
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

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

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 107
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    .line 108
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static pairList(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
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

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    return-object v0
.end method

.method static pairs([B)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 114
    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "1"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    return-object v0
.end method

.method static refreshRecharge([B)[B
    .locals 8

    .line 18
    const-string v0, "sma"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 19
    const-string v2, "rcd"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 20
    invoke-static {p0}, Lcom/project7/localmanager/LocalAccountFeatures;->hasRecharge([B)Z

    move-result v4

    .line 21
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "n"

    aput-object v7, v5, v6

    if-eqz v4, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/4 v4, 0x2

    const-string v6, "t"

    aput-object v6, v5, v4

    const/4 v4, 0x3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x4

    const-string v6, "gr"

    aput-object v6, v5, v4

    const/4 v4, 0x5

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    invoke-static {v3, v6}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v4

    .line 21
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 23
    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static spend([BLjava/lang/String;I)[B
    .locals 8

    .line 96
    const-string v0, "yuanbao"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fyuanbao"

    goto :goto_0

    :cond_0
    const-string v1, "bind_crystal"

    .line 97
    :goto_0
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dyuanbao"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 99
    :goto_1
    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v4, v6

    int-to-long v6, v0

    sub-long/2addr v4, v6

    int-to-long v6, p2

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 100
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 101
    sub-int/2addr v3, v0

    invoke-static {p0, v1, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 102
    sub-int/2addr p2, v0

    sub-int/2addr v2, p2

    invoke-static {p0, p1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0

    .line 99
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5151\u6362\u6240\u9700\u8d27\u5e01\u4e0d\u8db3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
