.class final Lcom/project7/localmanager/LocalYisakeStoryEngine;
.super Ljava/lang/Object;
.source "LocalYisakeStoryEngine.java"


# static fields
.field static final KEY:Ljava/lang/String; = "q7Yisake"

.field static final MAXIMUM:I = 0x64

.field static final METHOD:Ljava/lang/String; = "syncYisakeVal"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;
    .locals 32

    .line 17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "std"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 18
    const-string v5, "rt"

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    if-eqz v5, :cond_20

    const-string v6, "9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "9-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_a

    .line 20
    :cond_0
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "weeknum"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "w"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 21
    if-eqz v2, :cond_1f

    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-eq v6, v7, :cond_1

    goto/16 :goto_9

    .line 22
    :cond_1
    const-string v6, "yiv"

    invoke-static {v3, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 23
    const/4 v8, 0x0

    if-nez v7, :cond_2

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 24
    :cond_2
    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ltz v9, :cond_1e

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x64

    if-le v9, v10, :cond_3

    goto/16 :goto_8

    .line 25
    :cond_3
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    const-string v11, "q7StoryPending"

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    const-string v12, "invalid-outbox"

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 26
    invoke-static {v9, v11}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    if-nez v9, :cond_4

    return-object v12

    .line 27
    :cond_4
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v13, "q7Yisake"

    invoke-static {v9, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    .line 28
    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "version"

    const-string v8, "cycle"

    const-string v17, "invalid-ledger"

    const-string v10, "week"

    if-eqz v14, :cond_6

    if-eqz v9, :cond_5

    invoke-static {v9, v15}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->v([BLjava/lang/String;)I

    move-result v14

    move-object/from16 v19, v15

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 29
    invoke-static {v9, v10}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_5

    .line 30
    invoke-static {v9, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_7

    .line 31
    :cond_5
    return-object v17

    .line 28
    :cond_6
    move-object/from16 v19, v15

    .line 32
    :cond_7
    const-string v14, "initial"

    const-string v15, "baseline"

    move-object/from16 v20, v4

    const-string v4, "current"

    move-object/from16 v21, v3

    const-string v3, "receipts"

    move-object/from16 v22, v6

    const-string v6, "generation"

    move-object/from16 v23, v13

    const-string v13, "syncYisakeVal"

    if-eqz v9, :cond_19

    invoke-static {v9, v10}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    .line 33
    move-object/from16 v24, v10

    invoke-static {v9, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object v10, v3

    move-object v1, v9

    move-object v12, v13

    move-object/from16 v30, v20

    move-object/from16 v13, v22

    move-object/from16 v3, v23

    move-object v9, v6

    move-object/from16 v6, p1

    goto/16 :goto_6

    .line 51
    :cond_8
    invoke-static {v9, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 52
    invoke-static {v9, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 53
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_17

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v10, 0x64

    if-gt v8, v10, :cond_17

    if-eqz v1, :cond_17

    .line 54
    invoke-static {v9, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-static {v9, v15}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v8

    if-eqz v8, :cond_17

    .line 55
    invoke-static {v9, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 56
    invoke-static {v9, v6}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eq v8, v10, :cond_9

    goto/16 :goto_5

    .line 57
    :cond_9
    new-instance v8, Ljava/util/HashSet;

    invoke-static {v9, v15}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v14, "q7WeekEventBaseline"

    invoke-static {v10, v14}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 59
    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v10

    .line 60
    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14, v11}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v10}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->payload([B[B)[B

    move-result-object v10

    if-nez v10, :cond_a

    .line 61
    return-object v12

    .line 63
    :cond_a
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v10, -0x1

    .line 64
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "before"

    const-string v15, "delta"

    move-object/from16 v25, v13

    const-string v13, "day"

    if-eqz v12, :cond_f

    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 65
    move-object/from16 v19, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v26, v3

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v2, v11}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v3

    .line 66
    invoke-static {v1, v12}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v12

    .line 67
    move-object/from16 v28, v4

    move-object/from16 v27, v6

    move-object/from16 v6, p1

    iget-object v4, v6, Lcom/project7/localmanager/LocalEventCatalog;->yisakeEffects:Ljava/util/Map;

    move-object/from16 v29, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    const-string v9, "invalid-receipts"

    if-eqz v12, :cond_e

    if-eqz v4, :cond_e

    move-object/from16 v24, v1

    :try_start_2
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v6, v2, v8, v11}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->eligible([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Set;I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 69
    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_e

    if-lt v3, v10, :cond_e

    invoke-static {v12, v15}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v1, v10, :cond_e

    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    .line 71
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v5

    .line 72
    const/16 v1, 0x64

    if-gt v5, v1, :cond_d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "after"

    invoke-static {v12, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_1

    .line 74
    :cond_c
    nop

    .line 75
    move v10, v3

    move-object/from16 v11, v19

    move-object/from16 v1, v24

    move-object/from16 v13, v25

    move-object/from16 v3, v26

    move-object/from16 v6, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    goto/16 :goto_0

    .line 73
    :cond_d
    :goto_1
    return-object v9

    .line 70
    :cond_e
    :goto_2
    return-object v9

    .line 76
    :cond_f
    move-object/from16 v24, v1

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v6

    move-object/from16 v29, v9

    move-object/from16 v6, p1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v5, v1, :cond_10

    const-string v0, "receipt-value-mismatch"

    return-object v0

    .line 77
    :cond_10
    nop

    .line 78
    iget-object v1, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v3, v24

    :cond_11
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 79
    iget-object v9, v6, Lcom/project7/localmanager/LocalEventCatalog;->yisakeEffects:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 80
    if-eqz v9, :cond_11

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 81
    invoke-static {v11, v6, v2, v8, v4}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->eligible([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Set;I)Z

    move-result v11

    if-nez v11, :cond_12

    goto :goto_3

    .line 82
    :cond_12
    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v2, v4}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v11

    .line 83
    if-ge v11, v10, :cond_13

    const-string v0, "nonchronological-completion"

    return-object v0

    .line 84
    :cond_13
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->addExact(II)I

    move-result v10

    .line 86
    const/16 v12, 0x64

    if-le v10, v12, :cond_14

    const-string v0, "unproven-boundary-policy"

    return-object v0

    .line 87
    :cond_14
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v13, v12, v16

    .line 88
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v18, 0x1

    aput-object v19, v12, v18

    const/16 v19, 0x2

    aput-object v15, v12, v19

    const/16 v19, 0x3

    aput-object v9, v12, v19

    const/4 v9, 0x4

    aput-object v14, v12, v9

    const/4 v9, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v9

    const/4 v5, 0x6

    const-string v9, "after"

    aput-object v9, v12, v5

    const/4 v5, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v5

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    .line 87
    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 89
    nop

    .line 90
    move v5, v10

    move v10, v11

    goto/16 :goto_3

    .line 91
    :cond_15
    move-object/from16 v1, v24

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "unchanged"

    return-object v0

    .line 92
    :cond_16
    move-object/from16 v4, v28

    move-object/from16 v1, v29

    invoke-static {v1, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 93
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v9, v27

    invoke-static {v1, v9, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 94
    move-object/from16 v10, v26

    invoke-static {v1, v10, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 95
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v3, v23

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 96
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    invoke-static {v12, v13, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    move-object/from16 v3, v20

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 97
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "iv"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "av"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    move-object/from16 v2, v25

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

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_4
    return-object v17

    .line 56
    :cond_17
    :goto_5
    return-object v17

    .line 32
    :cond_18
    move-object v1, v9

    move-object/from16 v24, v10

    move-object v12, v13

    move-object/from16 v30, v20

    move-object/from16 v13, v22

    move-object v10, v3

    move-object v9, v6

    move-object/from16 v3, v23

    move-object/from16 v6, p1

    goto :goto_6

    :cond_19
    move-object/from16 v24, v10

    move-object v12, v13

    move-object/from16 v30, v20

    move-object/from16 v13, v22

    move-object v10, v3

    move-object/from16 v3, v23

    move-object/from16 v31, v6

    move-object v6, v1

    move-object v1, v9

    move-object/from16 v9, v31

    .line 34
    :goto_6
    move-object/from16 v22, v13

    iget-object v13, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v13, v11}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    const-string v0, "stale-cycle-outbox"

    return-object v0

    .line 36
    :cond_1a
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v12, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v17, v12

    iget-object v12, v6, Lcom/project7/localmanager/LocalEventCatalog;->yisakeEffects:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    move-object/from16 v6, p1

    move-object/from16 v12, v17

    goto :goto_7

    .line 38
    :cond_1c
    if-nez v1, :cond_1d

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 39
    :cond_1d
    move-object/from16 v6, v19

    const/4 v12, 0x1

    invoke-static {v1, v6, v12}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 40
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v6, v24

    invoke-static {v1, v6, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 41
    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    invoke-static {v1, v8, v2}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 42
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v14, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 43
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 44
    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 45
    invoke-static {v1, v15, v11}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    .line 46
    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v1, v10, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 47
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 48
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v3, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    move-object/from16 v3, v30

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 49
    const-string v0, "baseline-established"

    return-object v0

    .line 24
    :cond_1e
    :goto_8
    const-string v0, "invalid-native-value"

    return-object v0

    .line 21
    :cond_1f
    :goto_9
    const-string v0, "wrong-cycle"

    return-object v0

    .line 19
    :cond_20
    :goto_a
    const-string v0, "wrong-route"

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
    .locals 17

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "q7Yisake"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 113
    const-string v3, "iv"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "av"

    invoke-static {v1, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 114
    const-string v6, "std"

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    const-string v8, "rt"

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 115
    const-string v8, "q7WeekTransition"

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "id"

    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 116
    if-eqz v2, :cond_b

    const-string v10, "version"

    invoke-static {v2, v10}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->v([BLjava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    if-eqz v7, :cond_b

    .line 117
    const-string v10, "9"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "9-"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 118
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v10, 0x64

    if-gt v7, v10, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-gt v7, v12, :cond_b

    .line 119
    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    const-string v7, "yiv"

    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 120
    const-string v6, "current"

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 121
    const-string v6, "cycle"

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    if-eqz v8, :cond_1

    .line 122
    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_1
    nop

    .line 123
    const-string v7, "week"

    invoke-static {v2, v7}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const-string v12, "weeknum"

    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    const-string v14, "w"

    invoke-static {v13, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v8, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_5

    .line 125
    :cond_2
    const-string v8, "receipts"

    invoke-static {v2, v8}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v8

    .line 126
    const-string v13, "initial"

    invoke-static {v2, v13}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "generation"

    invoke-static {v2, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 127
    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v12, "d"

    invoke-static {v0, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 128
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ltz v12, :cond_a

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v12, v11, :cond_a

    if-eqz v8, :cond_a

    if-eqz v15, :cond_a

    .line 129
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v11, v12, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int/2addr v12, v15

    if-le v11, v12, :cond_3

    goto/16 :goto_4

    .line 131
    :cond_3
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    .line 132
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 133
    invoke-static {v8, v15}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    .line 134
    const-string v10, "delta"

    invoke-static {v9, v10}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v16, v8

    const-string v8, "day"

    invoke-static {v9, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 135
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_7

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lez v15, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ltz v15, :cond_7

    .line 136
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-lt v15, v12, :cond_7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-gt v12, v15, :cond_7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v15, "before"

    invoke-static {v9, v15}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    .line 138
    const/16 v10, 0x64

    if-gt v11, v10, :cond_6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v15, "after"

    invoke-static {v9, v15}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    .line 139
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 140
    move-object/from16 v8, v16

    goto :goto_0

    .line 138
    :cond_6
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 136
    :cond_7
    :goto_2
    const/4 v1, 0x0

    return-object v1

    .line 141
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v11, v0, :cond_9

    const/4 v1, 0x0

    return-object v1

    .line 142
    :cond_9
    nop

    .line 143
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v0, v8

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->v([BLjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v0, v8

    const/4 v7, 0x2

    aput-object v6, v0, v7

    const/4 v7, 0x3

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    const/4 v6, 0x4

    aput-object v14, v0, v6

    const/4 v6, 0x5

    .line 144
    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    const/4 v2, 0x6

    aput-object v3, v0, v2

    const/4 v2, 0x7

    aput-object v4, v0, v2

    const/16 v2, 0x8

    aput-object v5, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 143
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_3
    const/4 v1, 0x0

    return-object v1

    .line 129
    :cond_a
    :goto_4
    const/4 v1, 0x0

    return-object v1

    .line 124
    :cond_b
    :goto_5
    const/4 v1, 0x0

    return-object v1
.end method

.method static payload([B[B)[B
    .locals 4

    .line 148
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 149
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "iv"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "av"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 150
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->envelope([B[B)[B

    move-result-object p0

    .line 151
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

    .line 13
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;

    .line 14
    return-void
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
