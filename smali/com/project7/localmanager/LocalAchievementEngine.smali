.class final Lcom/project7/localmanager/LocalAchievementEngine;
.super Ljava/lang/Object;
.source "LocalAchievementEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static claim([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 20

    .line 119
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "er"

    const-string v4, "he"

    const-string v5, "is"

    const-string v6, "amd"

    const-string v7, "achievementRewardReply"

    const-string v8, "r"

    new-instance v9, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v9, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 120
    const-string v10, "h"

    invoke-static {v2, v10}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v11

    const-string v12, "a"

    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 122
    const/16 v16, 0x0

    :try_start_0
    const-string v13, "A"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v13

    .line 123
    if-eqz v13, :cond_5

    const-string v14, "hero"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-ne v14, v11, :cond_5

    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 125
    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalAchievementEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v0

    iput-object v0, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 126
    iget-object v0, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    .line 127
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_6

    .line 128
    const/16 v17, -0x1

    .line 129
    move/from16 v1, v16

    :goto_0
    move-object/from16 v18, v7

    :try_start_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v19, v12

    :try_start_2
    const-string v12, "id"

    invoke-static {v7, v12}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ne v7, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, v18

    move-object/from16 v12, v19

    goto :goto_0

    :cond_1
    move-object/from16 v19, v12

    move/from16 v1, v17

    .line 130
    :goto_1
    if-ltz v1, :cond_4

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    move/from16 v17, v2

    const-string v2, "fi"

    invoke-static {v12, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 131
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    move-object/from16 v2, p1

    const/4 v7, 0x1

    invoke-static {v9, v2, v13, v7}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 133
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v8, v7}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    invoke-interface {v15, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1, v15}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    const-string v7, "icon"

    invoke-static {v13, v7}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v7

    .line 137
    if-lez v7, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_2
    invoke-static {v0, v5, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 139
    invoke-static {v0, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    .line 140
    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v1

    .line 141
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v1}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 143
    iget-object v1, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v6, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 144
    invoke-static {v9}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 145
    const-string v1, "updateAllAchievement"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "info"

    aput-object v2, v3, v16

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 146
    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v8, v0, v16

    invoke-virtual {v9}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object v10, v0, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object v19, v0, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v1, v18

    :try_start_3
    invoke-virtual {v9, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 150
    goto :goto_7

    .line 131
    :cond_3
    move-object/from16 v1, v18

    goto :goto_2

    .line 147
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    .line 130
    :cond_4
    move-object/from16 v1, v18

    .line 131
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Achievement not completed or already claimed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    move-object/from16 v19, v12

    :goto_4
    move-object/from16 v1, v18

    goto :goto_6

    .line 123
    :cond_5
    move-object v1, v7

    move-object/from16 v19, v12

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Achievement unavailable"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_4

    .line 147
    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    :goto_5
    move-object v1, v7

    move-object/from16 v19, v12

    .line 148
    :goto_6
    new-instance v9, Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-object/from16 v2, p0

    invoke-direct {v9, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 149
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v8, v0, v16

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object v10, v0, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object v19, v0, v2

    const/16 v2, 0xb3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 151
    :goto_7
    return-object v9
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static record([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)[B
    .locals 28

    .line 77
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "amd"

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "is"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    .line 78
    iget-object v8, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "A:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const-string v11, "hero"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 81
    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v13

    .line 83
    nop

    .line 84
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v16, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const-string v12, "id"

    const/16 v18, 0x1

    if-eqz v17, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, [B

    invoke-static {v15, v12}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v12

    if-ne v12, v11, :cond_2

    move/from16 v16, v18

    :cond_2
    const/4 v12, 0x2

    goto :goto_1

    .line 85
    :cond_3
    const-string v15, "fi"

    const-string v14, "cl"

    if-nez v16, :cond_4

    move-object/from16 v16, v8

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v12, v8, v19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v8, v18

    const/16 v20, 0x2

    aput-object v15, v8, v20

    const/16 v20, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v8, v20

    const/16 v20, 0x4

    const-string v21, "r"

    aput-object v21, v8, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const/16 v17, 0x5

    aput-object v20, v8, v17

    const/16 v20, 0x6

    aput-object v14, v8, v20

    const/16 v20, 0x7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    aput-object v21, v8, v20

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v8

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object/from16 v16, v8

    .line 86
    :goto_2
    const/4 v8, 0x0

    :goto_3
    move-object/from16 p0, v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-ge v8, v4, :cond_e

    .line 87
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 88
    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v11, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v20, v3

    invoke-static {v4, v15}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move v1, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v15

    const/4 v5, 0x0

    goto/16 :goto_8

    .line 89
    :cond_5
    invoke-static {v4, v14}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v0

    .line 90
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object/from16 v21, v9

    const-string v9, "targets"

    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v9, p0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v3

    move-object/from16 v3, v22

    check-cast v3, [B

    .line 91
    move-object/from16 v22, v15

    const-string v15, "rule"

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    .line 92
    move-object/from16 v24, v5

    const-string v5, "heroes"

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 93
    move-object/from16 v25, v6

    const-string v6, "battle"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 94
    const-string v6, "andHeroBattle"

    invoke-static {v15, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 95
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_6

    invoke-interface {v5, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_6

    move/from16 v6, v18

    goto :goto_5

    .line 97
    :cond_6
    const/4 v6, 0x0

    :goto_5
    move/from16 p0, v6

    const-string v6, "build"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "cityBuilding"

    move-object/from16 v26, v7

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v7

    move/from16 v27, v8

    const-string v8, "bid"

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_8

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-lez v6, :cond_8

    move/from16 v6, v18

    goto :goto_6

    :cond_7
    move-object/from16 v26, v7

    move/from16 v27, v8

    .line 98
    :cond_8
    move/from16 v6, p0

    :goto_6
    const-string v7, "develop"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "developLevel"

    invoke-static {v15, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v7

    const-string v8, "dlevel"

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_9

    invoke-static {v15, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-lez v5, :cond_9

    move/from16 v6, v18

    .line 99
    :cond_9
    const-string v5, "gift"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "hero_id"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ne v10, v5, :cond_a

    const-string v5, "heroGift"

    invoke-static {v15, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-lez v5, :cond_a

    const-string v5, "fri"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v5

    const/4 v7, 0x5

    if-le v5, v7, :cond_a

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    const-string v8, "q7EmojiGiftEvidence"

    invoke-static {v9, v8}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    .line 102
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v15, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    const-string v1, "itemId"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v1

    .line 104
    if-lez v1, :cond_a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {v15, v5, v7}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    invoke-static {v9, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v9

    move/from16 v6, v18

    .line 109
    :cond_a
    if-lez v6, :cond_b

    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "n"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v6

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    .line 110
    :goto_7
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v15, v22

    move-object/from16 v3, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move/from16 v8, v27

    goto/16 :goto_4

    .line 111
    :cond_c
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v22, v15

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v14, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    move/from16 v1, v27

    invoke-interface {v13, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v4, v9

    goto :goto_9

    .line 88
    :cond_d
    move-object/from16 v20, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move v1, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v15

    const/4 v5, 0x0

    .line 86
    :goto_8
    move-object/from16 v4, p0

    :goto_9
    add-int/lit8 v8, v1, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v20

    move-object/from16 v9, v21

    move-object/from16 v15, v22

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    goto/16 :goto_3

    .line 113
    :cond_e
    move-object/from16 v20, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v26

    invoke-static {v7, v0, v13}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    move-object v7, v0

    goto :goto_a

    :cond_f
    move-object/from16 v7, v26

    .line 114
    :goto_a
    move-object/from16 v4, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v8, v16

    move-object/from16 v3, v20

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    goto/16 :goto_0

    .line 115
    :cond_10
    move-object/from16 v20, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    move-object/from16 v1, v20

    invoke-static {v4, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalAchievementEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v0

    return-object v0
.end method

.method static refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B
    .locals 31

    .line 10
    move-object/from16 v0, p0

    const-string v1, "amd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 11
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "is"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    .line 12
    new-instance v6, Ljava/util/ArrayList;

    const-string v7, "he"

    invoke-static {v3, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    move-object/from16 v8, p1

    iget-object v8, v8, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "E:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_0

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    const-string v13, "init"

    invoke-static {v12, v13}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 15
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 16
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_0
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v12, "A:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 20
    const-string v12, "hero"

    invoke-static {v10, v12}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v12

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 21
    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v13

    .line 23
    nop

    .line 24
    const/4 v14, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    const-string v15, "id"

    if-ge v14, v11, :cond_4

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-ne v11, v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x2

    goto :goto_1

    :cond_4
    const/4 v14, -0x1

    .line 25
    :goto_2
    const-string v11, "fi"

    move-object/from16 p1, v8

    const-string v8, "cl"

    move-object/from16 v17, v1

    if-gez v14, :cond_5

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v1, v16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v18, 0x1

    aput-object v9, v1, v18

    const/4 v9, 0x2

    aput-object v11, v1, v9

    const/4 v9, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v1, v9

    const/4 v9, 0x4

    const-string v19, "r"

    aput-object v19, v1, v9

    const/4 v9, 0x5

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v1, v9

    const/4 v9, 0x6

    aput-object v8, v1, v9

    const/4 v9, 0x7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    aput-object v19, v1, v9

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 26
    :goto_3
    nop

    .line 27
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v19

    move-object/from16 v20, v2

    invoke-static/range {v19 .. v19}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v2

    .line 29
    move-object/from16 v19, v6

    const-string v6, "targets"

    invoke-static {v10, v6}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v10, 0x1

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    check-cast v6, [B

    .line 30
    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v21

    move-object/from16 v23, v7

    const-string v7, "n"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v7

    move-object/from16 v24, v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    .line 31
    :goto_5
    move-object/from16 v25, v2

    const-string v2, "rule"

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v12}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v6

    .line 32
    move-object/from16 v26, v4

    const-string v4, "openArtifact"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v27, v5

    const-string v5, "oa"

    invoke-static {v6, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_6

    :cond_7
    move-object/from16 v27, v5

    .line 33
    :cond_8
    :goto_6
    const-string v4, "hero_clear"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "fd"

    invoke-static {v6, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 34
    :cond_9
    const-string v4, "hero_test"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "pt"

    invoke-static {v6, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 35
    :cond_a
    const-string v4, "finishWeekend"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "weeknum"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "w"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 36
    :cond_b
    const-string v4, "money"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 37
    :cond_c
    const-string v4, "getHeroes"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 38
    :cond_d
    nop

    .line 39
    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    move-object/from16 v29, v4

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v4

    if-eqz v4, :cond_e

    add-int/lit8 v5, v5, 0x1

    :cond_e
    move-object/from16 v4, v29

    goto :goto_7

    .line 40
    :cond_f
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 42
    :cond_10
    const-string v4, "hasFashion"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "sk"

    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 43
    :cond_11
    const-string v4, "treasure"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 44
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "ti"

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "items"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 45
    move-object/from16 v28, v5

    const-string v5, "i"

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v5

    move/from16 v29, v12

    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v5, v12, :cond_13

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v12, 0x2

    if-lt v5, v12, :cond_12

    const-string v5, "tr"

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v5, v12, :cond_13

    goto :goto_9

    :cond_12
    const/4 v6, 0x1

    :goto_9
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_13
    move-object/from16 v5, v28

    move/from16 v12, v29

    goto :goto_8

    .line 44
    :cond_14
    move/from16 v29, v12

    .line 46
    const-string v4, "cityBuilding"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_18

    .line 47
    nop

    .line 48
    const-string v5, "city"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "areas"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 49
    move-object/from16 v28, v5

    const-string v5, "bd"

    invoke-static {v12, v5}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 50
    invoke-static {v12, v15}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v12

    move-object/from16 v30, v5

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalAchievementEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ne v12, v5, :cond_15

    add-int/lit8 v6, v6, 0x1

    :cond_15
    move-object/from16 v5, v30

    goto :goto_b

    .line 49
    :cond_16
    move-object/from16 v5, v28

    goto :goto_a

    .line 51
    :cond_17
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 53
    :cond_18
    const-string v4, "finish_event"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 54
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 55
    nop

    .line 56
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v12, "q7effects"

    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    move-object/from16 v28, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v15

    const-string v15, "c"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v4, v2

    move-object/from16 v2, v28

    move-object/from16 v15, v30

    goto :goto_c

    .line 57
    :cond_19
    move-object/from16 v30, v15

    if-eqz v4, :cond_1b

    const/4 v2, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_d

    .line 54
    :cond_1a
    move-object/from16 v30, v15

    .line 59
    :cond_1b
    :goto_d
    if-lt v3, v7, :cond_1c

    const/4 v2, 0x1

    goto :goto_e

    :cond_1c
    const/4 v2, 0x0

    :goto_e
    and-int/2addr v10, v2

    .line 60
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Integer;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v3, v24

    move-object/from16 v2, v25

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move/from16 v12, v29

    move-object/from16 v15, v30

    goto/16 :goto_4

    .line 62
    :cond_1d
    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v23, v7

    move/from16 v29, v12

    const/4 v5, 0x1

    invoke-static {v1, v8, v9}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 63
    if-eqz v10, :cond_1e

    invoke-static {v1, v11, v5}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v1

    .line 64
    :cond_1e
    if-gez v14, :cond_1f

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1f
    invoke-interface {v13, v14, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_f
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v27

    invoke-static {v5, v1, v13}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v5

    .line 66
    move-object/from16 v8, p1

    move-object/from16 v1, v17

    move-object/from16 v6, v19

    move-object/from16 v2, v20

    move-object/from16 v7, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v26

    goto/16 :goto_0

    .line 67
    :cond_20
    move-object/from16 v17, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v19, v6

    move-object/from16 v23, v7

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-static {v1, v2, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 68
    move-object/from16 v2, v19

    move-object/from16 v3, v23

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    .line 69
    const-string v2, "er"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_21

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 70
    :cond_21
    move-object/from16 v2, v20

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v2, v17

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 71
    :cond_22
    const-string v1, "cht"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 72
    const-string v3, "heu"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_23

    const-string v4, "default"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 73
    :cond_23
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_10

    :cond_24
    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
