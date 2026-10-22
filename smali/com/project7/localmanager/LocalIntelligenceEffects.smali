.class final Lcom/project7/localmanager/LocalIntelligenceEffects;
.super Ljava/lang/Object;
.source "LocalIntelligenceEffects.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static advanceDay([B[BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalConstructionCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 34

    .line 46
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "weeknum"

    move-object/from16 v5, p0

    invoke-static {v5, v4}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 47
    const-string v6, "d"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v7

    .line 48
    const-string v8, "w"

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_1f

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-eq v5, v7, :cond_0

    goto/16 :goto_16

    .line 49
    :cond_0
    const-string v5, "q7Intelligence"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v9

    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    const-string v8, "effectsDay"

    invoke-static {v9, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    return-object v0

    .line 52
    :cond_1
    invoke-static {v0, v1, v3}, Lcom/project7/localmanager/LocalIntelligenceEffects;->checkAutomatic([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    .line 53
    const-string v9, "intelligence"

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v10

    .line 54
    const-string v11, "is"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v12

    .line 55
    const/4 v14, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_1e

    .line 56
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    const-string v13, "id"

    invoke-static {v15, v13}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v16, v4

    const-string v4, "INT"

    invoke-virtual {v1, v4, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    .line 57
    if-nez v4, :cond_2

    move-object/from16 v18, v5

    move/from16 v21, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v11

    move-object v4, v12

    move v13, v14

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_15

    .line 58
    :cond_2
    const-string v6, "afs"

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v18

    move-object/from16 v19, v8

    invoke-static/range {v18 .. v18}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v8

    .line 59
    move-object/from16 v18, v5

    const/4 v5, 0x0

    :goto_1
    move-object/from16 p1, v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v20, v9

    const-string v9, "ld"

    if-ge v5, v0, :cond_3

    .line 60
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v10

    move-object/from16 v10, v21

    check-cast v10, [B

    invoke-static {v10, v9}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v10

    const/16 v17, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v0, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 59
    invoke-interface {v8, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v9, v20

    move-object/from16 v10, v22

    goto :goto_1

    .line 61
    :cond_3
    move-object/from16 v22, v10

    const-string v0, "lastDay"

    invoke-static {v4, v0}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v0

    const-string v5, "day"

    invoke-static {v15, v5}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v5

    sub-int v5, v7, v5

    sub-int/2addr v0, v5

    .line 63
    const-string v5, "ep"

    if-nez v0, :cond_1c

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 v21, v7

    const-string v7, "hd"

    invoke-static {v15, v7}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    invoke-static {v15, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 65
    const-string v7, "notHandleAffects"

    invoke-static {v4, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v7, p1

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 66
    move-object/from16 v23, v4

    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalIntelligenceEffects;->effect(Lcom/project7/localmanager/LocalFeatureCatalog;I)[B

    move-result-object v4

    .line 67
    const/4 v1, 0x7

    if-ne v10, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalIntelligenceEffects;->affectedHeroes([BZ)Ljava/util/List;

    move-result-object v1

    .line 68
    move-object/from16 v24, v11

    const-string v11, "aid"

    move-object/from16 v25, v12

    const/16 v26, 0x0

    const/4 v12, 0x6

    if-ne v10, v12, :cond_9

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    const-string v12, "city"

    invoke-static {v7, v12}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v12

    move/from16 v27, v14

    const-string v14, "areas"

    invoke-static {v12, v14}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v12

    .line 71
    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    move-object/from16 v29, v6

    const-string v6, "bd"

    if-eqz v28, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v30, v14

    move-object/from16 v14, v28

    check-cast v14, Ljava/lang/String;

    .line 72
    move-object/from16 v28, v5

    invoke-static {v12, v14}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 73
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v32, v6

    move-object/from16 v6, v31

    check-cast v6, Ljava/lang/String;

    .line 74
    move/from16 v31, v0

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v33, v5

    const-string v5, "B"

    invoke-virtual {v2, v5, v0}, Lcom/project7/localmanager/LocalConstructionCatalog;->rule(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    const-string v5, "type"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v0

    .line 75
    const/4 v5, 0x1

    if-lt v0, v5, :cond_5

    const/4 v5, 0x3

    if-gt v0, v5, :cond_5

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v14, v5, v0

    const/4 v0, 0x1

    aput-object v6, v5, v0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_5
    move/from16 v0, v31

    move-object/from16 v6, v32

    move-object/from16 v5, v33

    goto :goto_5

    .line 77
    :cond_6
    move/from16 v31, v0

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v14, v30

    goto :goto_4

    .line 78
    :cond_7
    move/from16 v31, v0

    move-object/from16 v28, v5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 79
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 80
    const/4 v1, 0x0

    aget-object v5, v0, v1

    invoke-static {v12, v5}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 81
    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v4, v11, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 82
    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v1

    const-string v6, "bid"

    invoke-static {v4, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 83
    const/4 v6, 0x0

    aget-object v4, v0, v6

    aget-object v0, v0, v5

    invoke-static {v7, v2, v4, v0}, Lcom/project7/localmanager/LocalConstructionEngine;->destroyByIntelligence([BLcom/project7/localmanager/LocalConstructionCatalog;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 84
    move-object v4, v1

    goto :goto_6

    :cond_8
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v13, v0, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "uuid"

    const/4 v5, 0x2

    aput-object v1, v0, v5

    new-instance v1, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    aput-object v9, v0, v1

    const/4 v1, 0x5

    .line 85
    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "rd"

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const/4 v1, 0x7

    aput-object v26, v0, v1

    const/16 v1, 0x8

    aput-object v11, v0, v1

    const/16 v1, 0x9

    aput-object v26, v0, v1

    const/16 v1, 0xa

    const-string v4, "bid"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    aput-object v26, v0, v1

    .line 84
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    move-object v4, v0

    .line 86
    :goto_6
    goto/16 :goto_10

    :cond_9
    move/from16 v31, v0

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v27, v14

    const/4 v6, 0x0

    const/4 v0, 0x7

    if-eq v10, v0, :cond_11

    const/16 v0, 0x8

    if-eq v10, v0, :cond_11

    const/16 v0, 0x9

    if-ne v10, v0, :cond_a

    goto :goto_a

    .line 93
    :cond_a
    const/16 v0, 0xf

    if-ne v10, v0, :cond_f

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const/4 v1, 0x1

    :goto_7
    const/16 v5, 0x8

    if-gt v1, v5, :cond_c

    if-eqz v3, :cond_b

    invoke-static {v3, v1, v7}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v10

    if-nez v10, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 96
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_8

    :cond_d
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/Integer;

    .line 97
    :goto_8
    if-eqz v26, :cond_e

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v11, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    move-object v4, v0

    .line 98
    :cond_e
    :goto_9
    goto/16 :goto_10

    :cond_f
    const/4 v0, 0x5

    if-eq v10, v0, :cond_e

    const/16 v0, 0x17

    if-ne v10, v0, :cond_10

    goto :goto_9

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672a\u5b9e\u73b0\u7684\u539f\u60c5\u62a5\u8d1f\u9762\u6548\u679c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_11
    :goto_a
    const/4 v0, 0x7

    if-ne v10, v0, :cond_15

    .line 88
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_b

    :cond_12
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/Integer;

    .line 89
    :goto_b
    if-eqz v26, :cond_13

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "hero"

    invoke-static {v4, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 90
    :cond_13
    if-nez v26, :cond_14

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_c

    :cond_14
    invoke-static/range {v26 .. v26}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_c
    move-object v1, v0

    .line 92
    :cond_15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0x9

    if-ne v10, v5, :cond_16

    const-string v11, "ef"

    goto :goto_e

    :cond_16
    const-string v11, "cf"

    :goto_e
    const/4 v12, 0x7

    if-ne v10, v12, :cond_17

    const/16 v14, -0x14

    goto :goto_f

    :cond_17
    const/4 v14, -0x5

    :goto_f
    invoke-static {v7, v1, v11, v14}, Lcom/project7/localmanager/LocalIntelligenceEffects;->changeHero([BILjava/lang/String;I)[B

    move-result-object v7

    goto :goto_d

    .line 99
    :cond_18
    :goto_10
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    move-object/from16 v1, p2

    move-object/from16 v4, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move/from16 v14, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move/from16 v0, v31

    goto/16 :goto_2

    .line 65
    :cond_19
    move/from16 v31, v0

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move/from16 v27, v14

    const/4 v6, 0x0

    move-object v0, v7

    goto :goto_13

    .line 64
    :cond_1a
    move/from16 v31, v0

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move/from16 v27, v14

    const/4 v6, 0x0

    goto :goto_12

    .line 63
    :cond_1b
    move/from16 v31, v0

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    goto :goto_11

    :cond_1c
    move/from16 v31, v0

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move/from16 v21, v7

    :goto_11
    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move/from16 v27, v14

    const/4 v6, 0x0

    .line 102
    :goto_12
    move-object/from16 v0, p1

    :goto_13
    move/from16 v1, v31

    invoke-static {v15, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 103
    if-gez v1, :cond_1d

    move-object/from16 v1, v28

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    goto :goto_14

    :cond_1d
    const/4 v5, 0x1

    .line 104
    :goto_14
    move-object/from16 v1, v29

    invoke-static {v4, v1, v8}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 105
    move-object/from16 v4, v25

    move/from16 v13, v27

    invoke-interface {v4, v13, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_15
    add-int/lit8 v14, v13, 0x1

    move-object/from16 v1, p2

    move-object v12, v4

    move v6, v5

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move/from16 v7, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v24

    goto/16 :goto_0

    .line 107
    :cond_1e
    move-object/from16 p1, v0

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v11

    move-object v4, v12

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 108
    nop

    .line 109
    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 108
    move-object/from16 v3, v16

    move-object/from16 v4, v19

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 48
    :cond_1f
    :goto_16
    return-object v0
.end method

.method private static affectedHeroes([BZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "heromgr"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 139
    const-string v2, "std"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string v2, "rt"

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 140
    const/4 v2, 0x0

    if-eqz p0, :cond_1

    const-string v3, "5"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "5-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v2

    .line 141
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    const-string v4, "fl"

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 142
    const-string v4, "hrs"

    if-eqz p1, :cond_2

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "bhrs"

    filled-new-array {v4, p1}, [Ljava/lang/String;

    move-result-object p1

    :goto_1
    array-length v4, p1

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v5, p1, v2

    .line 143
    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 144
    const-string v7, "0"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v6

    if-eqz p0, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_4
    goto :goto_3

    .line 142
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 146
    :cond_6
    return-object v0
.end method

.method static canCreate(ILcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 1

    .line 12
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/LocalIntelligenceEffects;->canCreate(ILcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z

    move-result p0

    return p0
.end method

.method static canCreate(ILcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z
    .locals 2

    .line 16
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v1, 0x4

    if-gt p0, v1, :cond_1

    if-eqz p1, :cond_1

    rsub-int/lit8 p0, p0, 0x9

    invoke-static {p1, p0, p2}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static changeHero([BILjava/lang/String;I)[B
    .locals 10

    .line 150
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 151
    const-string v2, "hrs"

    const-string v3, "bhrs"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    aget-object v5, v2, v4

    .line 152
    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v6

    .line 153
    move v7, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    const-string v9, "0"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v8

    if-ne v8, p1, :cond_0

    .line 154
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v2, "1"

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object p1

    .line 155
    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v4

    add-int/2addr v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 156
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-static {p2, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    invoke-interface {v6, v7, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {v1, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 151
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    :cond_2
    return-object p0
.end method

.method static checkAutomatic([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 18

    .line 20
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-object v0

    .line 21
    :cond_0
    const-string v3, "intelligence"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "q7Intelligence"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 22
    const-string v7, "is"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v8

    .line 23
    new-instance v9, Ljava/util/ArrayList;

    const-string v10, "events"

    invoke-static {v6, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    nop

    .line 25
    const/4 v11, 0x0

    move v12, v11

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_7

    .line 26
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    const-string v14, "id"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v14

    .line 27
    const/4 v15, 0x1

    if-lt v14, v15, :cond_5

    const/4 v15, 0x4

    if-gt v14, v15, :cond_5

    invoke-static {v14, v2, v0}, Lcom/project7/localmanager/LocalIntelligenceEffects;->canCreate(ILcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z

    move-result v15

    if-nez v15, :cond_5

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "hd"

    move-object/from16 v16, v5

    invoke-static {v13, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    const-string v15, "ep"

    invoke-static {v13, v15}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    .line 29
    :cond_1
    const-string v5, "afs"

    invoke-static {v13, v5}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v12

    .line 30
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "INT"

    invoke-virtual {v1, v15, v14}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v14

    const-string v15, "autoHandleAffects"

    invoke-static {v14, v15}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 31
    move-object/from16 v17, v14

    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalIntelligenceEffects;->effect(Lcom/project7/localmanager/LocalFeatureCatalog;I)[B

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "INT_AFFECT"

    invoke-virtual {v1, v15, v14}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v14

    invoke-static {v14, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 33
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v1, p1

    goto :goto_2

    .line 34
    :cond_3
    move-object/from16 v1, p1

    move-object/from16 v14, v17

    goto :goto_1

    .line 35
    :cond_4
    const/4 v1, 0x1

    invoke-static {v13, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    const-string v13, "op"

    invoke-static {v2, v13, v1}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 36
    invoke-static {v2, v5, v12}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 37
    invoke-interface {v8, v11, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v12, v1

    goto :goto_3

    .line 27
    :cond_5
    move-object/from16 v16, v5

    .line 25
    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, v16

    goto/16 :goto_0

    .line 39
    :cond_7
    move-object/from16 v16, v5

    if-nez v12, :cond_8

    return-object v0

    .line 40
    :cond_8
    invoke-static {v4, v7, v8}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 41
    invoke-static {v6, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    move-object/from16 v2, v16

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static doc([BLjava/lang/String;)[B
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static effect(Lcom/project7/localmanager/LocalFeatureCatalog;I)[B
    .locals 4

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "INT_AFFECT"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    .line 132
    const-string v0, "expireTime"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 133
    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    const p0, 0x1869f

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 134
    :goto_0
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x2

    const-string v0, "uuid"

    aput-object v0, v1, p1

    const/4 p1, 0x3

    new-instance v0, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v0, v1, p1

    const/4 p1, 0x4

    const-string v0, "ld"

    aput-object v0, v1, p1

    const/4 p1, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p1

    const/4 p0, 0x6

    const-string p1, "rd"

    aput-object p1, v1, p0

    const/4 p0, 0x7

    const/4 p1, 0x0

    aput-object p1, v1, p0

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static monsterRate([B)D
    .locals 7

    .line 121
    nop

    .line 122
    const-string v0, "intelligence"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "is"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 123
    const-string v3, "afs"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const-string v4, "ld"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    .line 124
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const-wide v5, 0x3fc3333333333333L    # 0.15

    add-double/2addr v0, v5

    .line 125
    :cond_1
    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_2

    const-wide v3, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v3

    .line 123
    :cond_2
    goto :goto_0

    .line 127
    :cond_3
    return-wide v0
.end method

.method static patrolExtra([BI)I
    .locals 5

    .line 113
    nop

    .line 114
    const-string v0, "intelligence"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "is"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 115
    const-string v2, "afs"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalIntelligenceEffects;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 116
    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    const-string v3, "ld"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "aid"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalIntelligenceEffects;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 117
    :cond_2
    return v0
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
