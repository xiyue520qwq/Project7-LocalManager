.class final Lcom/project7/localmanager/LocalWingStoryEngine;
.super Ljava/lang/Object;
.source "LocalWingStoryEngine.java"


# static fields
.field static final INITIAL:I = 0x32

.field private static final KEY:Ljava/lang/String; = "q7Wing"

.field static final MAXIMUM:I = 0x64


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;
    .locals 32

    .line 42
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalWingOperationLedger;->present([B)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {p0 .. p2}, Lcom/project7/localmanager/LocalWingOperationLedger;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "q7Wing"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "std"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    .line 44
    if-eqz v3, :cond_19

    if-nez v5, :cond_1

    goto/16 :goto_9

    .line 45
    :cond_1
    invoke-static {v5}, Lcom/project7/localmanager/LocalWingStoryEngine;->wing([B)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v0, "wrong-route"

    return-object v0

    .line 46
    :cond_2
    if-eqz v2, :cond_18

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->identity([B[B)Z

    move-result v7

    if-eqz v7, :cond_18

    iget v7, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    const-string v8, "week"

    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-ne v7, v9, :cond_18

    iget-object v7, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    .line 47
    const-string v9, "cycle"

    invoke-static {v3, v9}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_8

    .line 48
    :cond_3
    const-string v7, "receipts"

    invoke-static {v3, v7}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    .line 49
    const-string v10, "initial"

    invoke-static {v3, v10}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "current"

    invoke-static {v3, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 50
    const-string v13, "version"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v13

    const-string v14, "invalid-ledger"

    const/4 v15, 0x1

    if-ne v13, v15, :cond_16

    if-eqz v10, :cond_16

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v15, 0x32

    if-ne v13, v15, :cond_16

    if-eqz v12, :cond_16

    if-eqz v9, :cond_16

    .line 51
    const-string v13, "generation"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v15

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v17

    move-object/from16 v18, v14

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v14

    if-ne v15, v14, :cond_17

    .line 52
    const-string v14, "byv"

    invoke-static {v5, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-static {v5}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object v15

    if-nez v15, :cond_4

    goto/16 :goto_7

    .line 53
    :cond_4
    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v15

    move-object/from16 v17, v4

    const-string v4, "q7StoryPending"

    invoke-interface {v15, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const-string v19, "invalid-outbox"

    if-eqz v15, :cond_5

    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v15

    if-nez v15, :cond_5

    .line 54
    return-object v19

    .line 55
    :cond_5
    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15, v4}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 56
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v15

    move-object/from16 v20, v6

    const-string v6, "syncBaiyuInfos"

    invoke-interface {v15, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v15, v4}, Lcom/project7/localmanager/LocalWingStoryEngine;->payload([B[B)[B

    move-result-object v4

    if-nez v4, :cond_6

    .line 57
    return-object v19

    .line 59
    :cond_6
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 60
    new-instance v15, Ljava/util/HashSet;

    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move/from16 v21, v4

    const-string v4, "q7WeekEventBaseline"

    invoke-static {v10, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v19, v6

    move/from16 v10, v21

    const/4 v6, -0x1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v21
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v22, v5

    const-string v5, "after"

    move-object/from16 v23, v14

    const-string v14, "before"

    move-object/from16 v24, v7

    const-string v7, "day"

    move-object/from16 v25, v13

    const-string v13, "delta"

    move-object/from16 v26, v3

    const-string v3, "count"

    if-eqz v21, :cond_c

    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v27, v4

    move-object/from16 v4, v21

    check-cast v4, Ljava/lang/String;

    .line 62
    move-object/from16 v21, v11

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v28, v12

    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v2, v11}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v12

    .line 63
    invoke-static {v9, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    .line 64
    move-object/from16 v29, v9

    iget-object v9, v1, Lcom/project7/localmanager/LocalEventCatalog;->baiyuEffects:Ljava/util/Map;

    move-object/from16 v30, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    const-string v9, "invalid-receipt-chain"

    if-eqz v4, :cond_a

    if-eqz v5, :cond_a

    move-object/from16 v31, v9

    :try_start_2
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v1, v2, v15, v11}, Lcom/project7/localmanager/LocalWingStoryEngine;->eligible([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Set;I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 66
    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_b

    invoke-static {v4, v13}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v3, v9, :cond_b

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v3

    iget v9, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-ne v3, v9, :cond_b

    .line 67
    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ne v12, v3, :cond_b

    if-lt v12, v6, :cond_b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 68
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v9, v30

    invoke-static {v4, v9}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    .line 70
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v10

    .line 71
    if-ltz v10, :cond_9

    const/16 v3, 0x64

    if-le v10, v3, :cond_8

    goto :goto_1

    .line 72
    :cond_8
    move v6, v12

    move-object/from16 v11, v21

    move-object/from16 v5, v22

    move-object/from16 v14, v23

    move-object/from16 v7, v24

    move-object/from16 v13, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v12, v28

    move-object/from16 v9, v29

    goto/16 :goto_0

    .line 71
    :cond_9
    :goto_1
    return-object v31

    .line 65
    :cond_a
    move-object/from16 v31, v9

    .line 69
    :cond_b
    :goto_2
    return-object v31

    .line 73
    :cond_c
    move-object/from16 v29, v9

    move-object/from16 v21, v11

    move-object/from16 v28, v12

    move-object v9, v5

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v10, v4, :cond_d

    const-string v0, "receipt-value-mismatch"

    return-object v0

    .line 74
    :cond_d
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 75
    nop

    .line 76
    iget-object v5, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v10, v29

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 77
    iget-object v12, v1, Lcom/project7/localmanager/LocalEventCatalog;->baiyuEffects:Ljava/util/Map;

    move-object/from16 v30, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 78
    if-eqz v5, :cond_13

    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    move-object/from16 v31, v10

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    move-object/from16 v5, v31

    goto/16 :goto_5

    .line 79
    :cond_e
    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v1, v2, v15, v11}, Lcom/project7/localmanager/LocalWingStoryEngine;->eligible([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Set;I)Z

    move-result v10

    if-nez v10, :cond_f

    move-object/from16 v5, v31

    goto/16 :goto_5

    .line 80
    :cond_f
    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v2, v11}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v10

    .line 81
    if-ge v10, v6, :cond_10

    const-string v0, "nonchronological-completion"

    return-object v0

    .line 82
    :cond_10
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v6

    .line 84
    if-ltz v6, :cond_12

    const/16 v12, 0x64

    if-le v6, v12, :cond_11

    goto :goto_4

    .line 85
    :cond_11
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v27, 0x0

    aput-object v8, v12, v27

    iget v1, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v12, v16

    const/4 v1, 0x2

    aput-object v7, v12, v1

    const/4 v1, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v12, v1

    const/4 v1, 0x4

    aput-object v3, v12, v1

    const/4 v1, 0x5

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v12, v1

    const/4 v1, 0x6

    aput-object v13, v12, v1

    const/4 v1, 0x7

    aput-object v5, v12, v1

    const/16 v1, 0x8

    aput-object v14, v12, v1

    const/16 v1, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v1

    const/16 v1, 0xa

    aput-object v9, v12, v1

    const/16 v1, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v1

    .line 85
    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    move-object/from16 v5, v31

    invoke-static {v5, v11, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 87
    nop

    .line 88
    move v4, v6

    move v6, v10

    move-object/from16 v5, v30

    move-object v10, v1

    move-object/from16 v1, p1

    goto/16 :goto_3

    .line 84
    :cond_12
    :goto_4
    const-string v0, "unproven-boundary-policy"

    return-object v0

    .line 78
    :cond_13
    move-object v5, v10

    .line 76
    :goto_5
    move-object/from16 v1, p1

    move-object v10, v5

    move-object/from16 v5, v30

    goto/16 :goto_3

    .line 89
    :cond_14
    move-object v5, v10

    move-object/from16 v1, v29

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "unchanged"

    return-object v0

    .line 90
    :cond_15
    move-object/from16 v2, v21

    move-object/from16 v1, v26

    invoke-static {v1, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 91
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v3, v25

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 92
    move-object/from16 v2, v24

    invoke-static {v1, v2, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 93
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    move-object/from16 v4, v20

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 94
    move-object/from16 v3, v17

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 95
    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object v2

    .line 96
    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 97
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "d"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 98
    const-string v0, "applied"
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_6
    return-object v18

    .line 50
    :cond_16
    move-object/from16 v18, v14

    .line 52
    :cond_17
    :goto_7
    return-object v18

    .line 47
    :cond_18
    :goto_8
    const-string v0, "wrong-cycle"

    return-object v0

    .line 44
    :cond_19
    :goto_9
    const-string v0, "missing-proven-baseline"

    return-object v0
.end method

.method private static d([BLjava/lang/String;)[B
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static eligible([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Set;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/project7/localmanager/LocalEventCatalog;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 104
    invoke-virtual {p1, p4}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v0

    .line 105
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v3, :cond_0

    iget-boolean v0, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->repeatable:Z

    if-nez v0, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 106
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v1, :cond_0

    .line 107
    invoke-static {p0, p2, p4}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result p0

    if-ltz p0, :cond_0

    iget-object p0, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 108
    invoke-virtual {p1, p4}, Lcom/project7/localmanager/LocalEventCatalog;->mutex(I)Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 105
    :goto_0
    return v1
.end method

.method static envelope([B[B)[B
    .locals 16

    .line 141
    move-object/from16 v0, p0

    const-string v1, "week"

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalWingOperationLedger;->present([B)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p1}, Lcom/project7/localmanager/LocalWingOperationLedger;->envelope([B[B)[B

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    const-string v2, "q7Wing"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "std"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object v4

    .line 143
    if-eqz v2, :cond_c

    const-string v6, "version"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalWingStoryEngine;->identity([B[B)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->wing([B)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    .line 144
    const-string v3, "d"

    move-object/from16 v6, p1

    invoke-static {v6, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_7

    .line 145
    :cond_1
    const-string v6, "generation"

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 146
    const-string v9, "receipts"

    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    .line 147
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_b

    if-eqz v9, :cond_b

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v10, v11, :cond_b

    .line 148
    const/16 v10, 0x32

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "initial"

    invoke-static {v2, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 149
    const-string v11, "byv"

    invoke-static {v4, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "current"

    invoke-static {v2, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_6

    .line 151
    :cond_2
    const/4 v11, -0x1

    .line 152
    :try_start_0
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 153
    invoke-static {v9, v14}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v15

    .line 154
    if-nez v15, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const-string v5, "delta"

    invoke-static {v15, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 155
    :goto_1
    if-nez v15, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const-string v7, "day"

    invoke-static {v15, v7}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 156
    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_8

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lt v14, v11, :cond_8

    .line 157
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v14, "weeknum"

    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14, v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-gt v11, v14, :cond_8

    invoke-static {v15, v1}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-ne v11, v14, :cond_8

    const-string v11, "count"

    invoke-static {v15, v11}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_8

    .line 158
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "before"

    invoke-static {v15, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_4

    .line 159
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 160
    if-ltz v10, :cond_7

    const/16 v5, 0x64

    if-gt v10, v5, :cond_7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "after"

    invoke-static {v15, v7}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    .line 161
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 160
    :cond_7
    :goto_3
    const/4 v1, 0x0

    return-object v1

    .line 158
    :cond_8
    :goto_4
    const/4 v1, 0x0

    return-object v1

    .line 162
    :cond_9
    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v10, v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 163
    :cond_a
    nop

    .line 164
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "cycle"

    aput-object v5, v0, v1

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object v6, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_5
    const/4 v1, 0x0

    return-object v1

    .line 149
    :cond_b
    :goto_6
    const/4 v1, 0x0

    return-object v1

    .line 144
    :cond_c
    :goto_7
    const/4 v1, 0x0

    return-object v1
.end method

.method private static identity([B[B)Z
    .locals 5

    .line 117
    const-string v0, "cycle"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "q7WeekTransition"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "week"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "weeknum"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "w"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 118
    :goto_0
    return p0
.end method

.method static payload([B[B)[B
    .locals 4

    .line 168
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 169
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "d"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 170
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWingStoryEngine;->envelope([B[B)[B

    move-result-object p0

    .line 171
    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 0

    .line 38
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalWingStoryEngine;->apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;

    .line 39
    return-void
.end method

.method static reset([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)[B
    .locals 12

    .line 13
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    return-object p0

    .line 14
    :cond_0
    const-string p2, "q7Wing"

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 15
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "version"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported Wing save; cycle reset was not committed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_2
    :goto_0
    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    const-string v4, "operationsVersion"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported Wing operations version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_4
    :goto_1
    iget-object v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    const-string v5, "weeknum"

    invoke-static {p0, v5}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "w"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalWingStoryEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ne v1, v5, :cond_8

    .line 22
    const-string v1, "std"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWingStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    .line 23
    const-string v6, "byv"

    const/16 v7, 0x32

    invoke-static {v5, v6, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 24
    const-string v6, "ysg"

    const-string v8, "slm"

    const-string v9, "ycyo"

    filled-new-array {v6, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    const/4 v10, 0x3

    if-ge v9, v10, :cond_5

    aget-object v10, v6, v9

    invoke-static {v5, v10, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 25
    :cond_5
    const-string v6, "ycn"

    const-string v9, "byn"

    const-string v11, "hyn"

    filled-new-array {v6, v9, v11}, [Ljava/lang/String;

    move-result-object v6

    move v9, v8

    :goto_3
    if-ge v9, v10, :cond_6

    aget-object v11, v6, v9

    invoke-static {v5, v11, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 26
    :cond_6
    if-nez v0, :cond_7

    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    goto :goto_4

    :cond_7
    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    .line 27
    :goto_4
    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 28
    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    const-string v3, "cycle"

    invoke-static {v0, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 29
    iget p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    const-string v2, "week"

    invoke-static {v0, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 30
    const-string v0, "initial"

    invoke-static {p1, v0, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 31
    const-string v0, "current"

    invoke-static {p1, v0, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 32
    const-string v0, "generation"

    invoke-static {p1, v0, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 33
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v2, "receipts"

    invoke-static {p1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    .line 34
    invoke-static {p0, v1, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0, p2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 21
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing new-cycle identity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static snapshot([B)[B
    .locals 8

    .line 124
    const-string v0, "byv"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 125
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_0

    goto :goto_3

    .line 126
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 127
    const-string v1, "ysg"

    const-string v3, "slm"

    const-string v5, "ycyo"

    filled-new-array {v1, v3, v5}, [Ljava/lang/String;

    move-result-object v1

    move v3, v4

    :goto_0
    const/4 v5, 0x3

    if-ge v3, v5, :cond_2

    aget-object v5, v1, v3

    .line 128
    invoke-static {p0, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .line 129
    if-nez v6, :cond_1

    return-object v2

    .line 130
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_2
    const-string v1, "ycn"

    const-string v3, "byn"

    const-string v6, "hyn"

    filled-new-array {v1, v3, v6}, [Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v3, v1, v4

    .line 133
    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 134
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_3

    goto :goto_2

    .line 135
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0, v3, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 134
    :cond_4
    :goto_2
    return-object v2

    .line 137
    :cond_5
    return-object v0

    .line 125
    :cond_6
    :goto_3
    return-object v2
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static wing([B)Z
    .locals 1

    .line 112
    const-string v0, "rt"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 113
    if-eqz p0, :cond_1

    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
