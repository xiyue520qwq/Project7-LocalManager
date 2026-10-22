.class final Lcom/project7/localmanager/LocalIntelligenceEngine;
.super Ljava/lang/Object;
.source "LocalIntelligenceEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 41

    .line 122
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "INT_REWARD"

    const-string v5, "afs"

    const-string v6, "city"

    const-string v7, "day"

    const-string v8, "weeknum"

    const-string v9, "is"

    const-string v10, "handleIntelligenceRequest"

    const-string v11, "dvc"

    const-string v12, "hd"

    const-string v13, "intelligence"

    const-string v14, "q7Intelligence"

    const-string v15, "id"

    move-object/from16 v16, v5

    const-string v5, "uuid"

    move-object/from16 v17, v4

    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v4, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 124
    const/16 v18, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/LocalIntelligenceEngine;->handles(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 125
    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 126
    move-object/from16 v21, v13

    const-string v13, "readTodayIntelligence"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v22, v14

    const-string v14, "rd"

    if-eqz v13, :cond_0

    .line 127
    const/4 v5, 0x1

    :try_start_1
    invoke-static {v2, v14, v5}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    move-object/from16 v29, v10

    move-object/from16 v3, v21

    goto/16 :goto_11

    .line 128
    :cond_0
    const-string v13, "syncAllIntelligenceRequest"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1d

    .line 129
    move-object/from16 v13, p4

    invoke-static {v13, v5}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 130
    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v23

    move-object/from16 v24, v2

    invoke-static/range {v23 .. v23}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    .line 131
    const/16 v23, -0x1

    .line 132
    move-object/from16 v25, v9

    move/from16 v9, v23

    move-object/from16 v23, v14

    move/from16 v14, v18

    :goto_0
    move-object/from16 v26, v11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v14, v11, :cond_2

    if-eqz v13, :cond_1

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11, v5}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v9, v14

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, v26

    goto :goto_0

    .line 133
    :cond_2
    if-ltz v9, :cond_1c

    .line 134
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    const-string v14, "INT"

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v27

    move-object/from16 p4, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v14, v13}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v13

    .line 135
    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    move-object/from16 v27, v2

    const-string v2, "d"

    invoke-static {v14, v2}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 136
    if-eqz v13, :cond_1b

    invoke-static {v11, v7}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-gt v14, v2, :cond_1b

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 v28, v9

    const-string v9, "ep"

    invoke-static {v11, v9}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v11, v7}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v7

    const-string v9, "lastDay"

    invoke-static {v13, v9}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v9

    add-int/2addr v7, v9

    if-le v7, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v29, v10

    goto/16 :goto_10

    .line 139
    :cond_4
    :goto_1
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 140
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    const-string v14, "op"

    if-eqz v7, :cond_5

    move-object v3, v12

    goto :goto_2

    :cond_5
    move-object v3, v14

    :goto_2
    :try_start_2
    invoke-static {v11, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    const-string v9, "INT_AFFECT"

    move-object/from16 v29, v10

    const-string v10, "handleAffects"

    move-object/from16 v30, v5

    const-string v5, "events"

    if-nez v3, :cond_17

    .line 142
    if-eqz v7, :cond_6

    :try_start_3
    const-string v31, "handleNeed"

    goto :goto_3

    :cond_6
    const-string v31, "openNeed"

    :goto_3
    move/from16 v32, v3

    move-object/from16 v3, v31

    invoke-static {v13, v3}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 143
    move/from16 v31, v2

    iget-object v2, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 144
    if-ltz v3, :cond_16

    move-object/from16 v33, v12

    move-object/from16 v12, v26

    move-object/from16 v26, v14

    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-lt v14, v3, :cond_16

    .line 145
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v34, v6

    move-object/from16 v6, v22

    move/from16 v22, v3

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 147
    move-object/from16 v35, v2

    if-eqz v7, :cond_13

    invoke-static {v13, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_4
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_13

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 148
    move-object/from16 v37, v10

    const/16 v10, 0x11

    if-lt v2, v10, :cond_7

    const/16 v10, 0x16

    if-gt v2, v10, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    move/from16 v10, v18

    .line 149
    :goto_5
    move-object/from16 v38, v13

    const/4 v13, 0x1

    if-lt v2, v13, :cond_8

    const/4 v13, 0x4

    if-le v2, v13, :cond_a

    :cond_8
    const/16 v13, 0x10

    if-eq v2, v13, :cond_a

    const/16 v13, 0x18

    if-eq v2, v13, :cond_a

    if-eqz v10, :cond_9

    goto :goto_6

    .line 150
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8be5\u60c5\u62a5\u7684\u7279\u6b8a\u6548\u679c\u5c1a\u672a\u5b9e\u73b0\uff0c\u672a\u6263\u9664\u60c5\u62a5\u503c"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_a
    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v9, v13}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v13

    .line 152
    if-eqz v13, :cond_12

    .line 153
    if-eqz v10, :cond_c

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    move-object/from16 v39, v8

    const-string v8, "w"

    invoke-static {v10, v8}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 154
    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    const-string v1, "story"

    invoke-static {v10, v1}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v10, "6004"

    invoke-static {v1, v10}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 153
    invoke-virtual {v8, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "INT_EVENT"

    const/16 v8, 0x1774

    .line 155
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v8, "entries"

    invoke-static {v1, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 156
    invoke-static {v13, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/HashSet;

    filled-new-array {v15, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 157
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_7

    .line 158
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u672c\u5468\u7a81\u88ad\u60c5\u62a5\u6765\u6e90\uff0c\u672a\u6263\u9664\u60c5\u62a5\u503c"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_c
    move-object/from16 v39, v8

    .line 159
    :goto_7
    invoke-static {v13, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 160
    :cond_e
    new-instance v1, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v8, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v1, v8}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 161
    const-string v8, "randomReward"

    invoke-static {v13, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 162
    move-object/from16 v13, p2

    move-object/from16 v19, v8

    const/4 v8, 0x2

    if-eqz v13, :cond_f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v40, v9

    move-object/from16 v9, v17

    invoke-virtual {v0, v9, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    if-eqz v8, :cond_f

    .line 164
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    const/4 v10, 0x1

    invoke-static {v1, v13, v8, v10}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 165
    move-object/from16 v17, v9

    move-object/from16 v8, v19

    move-object/from16 v9, v40

    goto :goto_9

    .line 163
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u60c5\u62a5\u5956\u52b1\u914d\u7f6e\uff0c\u672a\u6263\u9664\u60c5\u62a5\u503c"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_10
    move-object/from16 v13, p2

    move-object/from16 v40, v9

    move-object/from16 v9, v17

    iget-object v8, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v8, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 167
    iget-object v8, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v10, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v8

    invoke-interface {v3, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->treasureRewards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "procRewardSettlement"

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const-string v8, "r"

    aput-object v8, v10, v18

    invoke-virtual {v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v10, v8

    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 170
    :cond_11
    move-object/from16 v1, p0

    move-object/from16 v17, v9

    move-object/from16 v10, v37

    move-object/from16 v13, v38

    move-object/from16 v8, v39

    move-object/from16 v9, v40

    goto/16 :goto_4

    .line 152
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u60c5\u62a5\u6548\u679c\u914d\u7f6e\uff0c\u672a\u6263\u9664\u60c5\u62a5\u503c"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_13
    move-object/from16 v40, v9

    move-object/from16 v37, v10

    move-object/from16 v38, v13

    .line 171
    iget-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v2, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 172
    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 171
    invoke-static {v2, v5, v14}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v2

    invoke-static {v1, v6, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 173
    iget-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v2, v35

    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v6

    sub-int v6, v6, v22

    invoke-static {v2, v12, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    move-object/from16 v6, v34

    invoke-static {v1, v6, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 174
    move-object/from16 v1, v26

    const/4 v2, 0x1

    invoke-static {v11, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v1

    .line 175
    if-eqz v7, :cond_15

    .line 176
    move-object/from16 v6, v33

    invoke-static {v1, v6, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v1

    .line 177
    const-string v2, "hdd"

    move/from16 v6, v31

    invoke-static {v1, v2, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 178
    move-object/from16 v2, v16

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v6

    .line 179
    move-object/from16 v9, v37

    move-object/from16 v8, v38

    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v15, v12, v18

    .line 180
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const-string v13, "ld"

    const/16 v16, 0x2

    aput-object v13, v12, v16

    const/4 v13, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v13

    const/4 v13, 0x4

    aput-object v23, v12, v13

    const/4 v14, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v12, v14

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v11

    .line 181
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v12

    .line 180
    move-object/from16 v14, v30

    invoke-static {v11, v14, v12}, Lcom/project7/localmanager/BsonLite;->withProfileUuid([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    .line 179
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v30, v14

    goto :goto_a

    .line 182
    :cond_14
    move-object/from16 v14, v30

    invoke-static {v1, v2, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    goto :goto_b

    .line 175
    :cond_15
    move-object/from16 v14, v30

    move-object/from16 v9, v37

    move-object/from16 v8, v38

    .line 184
    :goto_b
    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-object/from16 v1, v24

    move-object/from16 v3, v25

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    goto :goto_c

    .line 144
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u60c5\u62a5\u503c\u4e0d\u8db3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_17
    move/from16 v32, v3

    move-object/from16 v40, v9

    move-object v9, v10

    move-object v8, v13

    move-object/from16 v1, v24

    move-object/from16 v14, v30

    move-object v2, v1

    .line 187
    :goto_c
    iget-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v3, v21

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 188
    invoke-static {v4}, Lcom/project7/localmanager/LocalIntelligenceEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 189
    if-eqz v7, :cond_18

    const-string v1, "handleIntelligenceSuccess"

    goto :goto_d

    :cond_18
    const-string v1, "openIntelligenceSuccess"

    :goto_d
    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    move-object/from16 v3, p4

    invoke-static {v2, v14, v3}, Lcom/project7/localmanager/BsonLite;->withProfileUuid([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 190
    if-eqz v7, :cond_1a

    if-nez v32, :cond_1a

    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v40

    invoke-virtual {v0, v3, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 192
    const-string v7, "triggerIntelligenceEvents"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const-string v8, "e"

    aput-object v8, v9, v18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v9, v8

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_f

    .line 191
    :cond_19
    move-object/from16 v40, v3

    goto :goto_e

    .line 193
    :cond_1a
    return-object v4

    .line 136
    :cond_1b
    move-object/from16 v29, v10

    .line 138
    :goto_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u60c5\u62a5\u5df2\u8fc7\u671f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1c
    move-object/from16 v29, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u60c5\u62a5\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u60c5\u62a5\u754c\u9762"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1d
    move-object v1, v2

    move-object/from16 v29, v10

    move-object/from16 v3, v21

    .line 195
    :goto_11
    iget-object v0, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 196
    invoke-static {v4}, Lcom/project7/localmanager/LocalIntelligenceEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 202
    goto :goto_14

    .line 124
    :cond_1e
    move-object/from16 v29, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u672a\u77e5\u60c5\u62a5\u64cd\u4f5c"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_0

    .line 197
    :catch_0
    move-exception v0

    goto :goto_13

    :catch_1
    move-exception v0

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    :goto_12
    move-object/from16 v29, v10

    .line 198
    :goto_13
    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-object/from16 v1, p0

    invoke-direct {v4, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 199
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v1, "m"

    aput-object v1, v2, v18

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v4, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 201
    move-object/from16 v1, p3

    move-object/from16 v2, v29

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "s"

    aput-object v1, v0, v18

    const-string v1, "import gg; gg.ui.enable_settlement(True)"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "evalCode"

    invoke-virtual {v4, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 203
    :cond_1f
    :goto_14
    return-object v4
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 1

    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/project7/localmanager/LocalIntelligenceEngine;->apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;

    move-result-object p0

    return-object p0
.end method

.method private static doc([BLjava/lang/String;)[B
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 11
    const-string v0, "syncAllIntelligenceRequest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "readTodayIntelligence"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    const-string v0, "openIntelligenceRequest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "handleIntelligenceRequest"

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

    .line 11
    :goto_1
    return p0
.end method

.method static synthetic lambda$refresh$0([B)Z
    .locals 2

    .line 33
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 34
    const-string v0, "day"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "hd"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "afs"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method static synthetic lambda$refresh$1(Lcom/project7/localmanager/LocalTutorialStore$Progress;[BLjava/lang/Integer;)Z
    .locals 0

    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2, p0, p1}, Lcom/project7/localmanager/LocalIntelligenceEffects;->canCreate(ILcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static newEntry(Lcom/project7/localmanager/LocalFeatureCatalog;II)[B
    .locals 4

    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "INT"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    .line 213
    if-eqz p0, :cond_1

    .line 214
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v3, "day"

    aput-object v3, v0, p1

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    const-string p2, "hd"

    aput-object p2, v0, p1

    const/4 p1, 0x5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x6

    const-string p2, "ep"

    aput-object p2, v0, p1

    const/4 p1, 0x7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    const/16 p1, 0x8

    const-string p2, "hdd"

    aput-object p2, v0, p1

    const/16 p1, 0x9

    const/4 p2, 0x0

    aput-object p2, v0, p1

    const/16 p1, 0xa

    const-string p2, "op"

    aput-object p2, v0, p1

    const/16 p1, 0xb

    .line 215
    const-string p2, "openNeed"

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    const/16 p1, 0xc

    const-string p2, "ld"

    aput-object p2, v0, p1

    const/16 p1, 0xd

    const-string p2, "lastDay"

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, p1

    const/16 p0, 0xe

    const-string p1, "afs"

    aput-object p1, v0, p0

    const/16 p0, 0xf

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    aput-object p1, v0, p0

    .line 214
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    .line 216
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object p1

    .line 214
    const-string p2, "uuid"

    invoke-static {p0, p2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileUuid([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 213
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing stock intelligence definition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static recoverEvents([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 3

    .line 105
    if-nez p2, :cond_0

    return-void

    .line 106
    :cond_0
    const-string v0, "q7Intelligence"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "events"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    invoke-virtual {p1, v0}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/project7/localmanager/LocalEventCatalog;->mutex(I)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p1, v0}, Lcom/project7/localmanager/LocalEventCatalog;->mutex(I)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    goto :goto_0

    .line 113
    :cond_2
    return-void
.end method

.method static refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 31

    .line 16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "intelligence"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 17
    const-string v5, "is"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v4

    .line 18
    :cond_0
    const-string v6, "rd"

    invoke-static {v4, v6}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    invoke-static {v4, v6, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    .line 19
    :cond_1
    const-string v7, "weeknum"

    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    .line 20
    const/16 v9, 0x82

    const-string v10, "w"

    if-eqz v2, :cond_3

    iget-boolean v12, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    if-nez v12, :cond_3

    iget-object v12, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v13, 0xbda

    .line 21
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    .line 22
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v12

    if-lez v12, :cond_3

    iget-object v12, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v13, 0x417

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    const/4 v12, 0x1

    goto :goto_0

    :cond_3
    move v12, v8

    .line 23
    :goto_0
    if-eqz v12, :cond_23

    .line 24
    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v12

    .line 25
    const-string v13, "d"

    invoke-static {v7, v13}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v14

    .line 26
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 27
    const-string v9, "q7Intelligence"

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    .line 29
    move-object/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v13}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v18

    move-object/from16 v19, v3

    rsub-int/lit8 v3, v18, 0x7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/4 v8, 0x1

    add-int/2addr v3, v8

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INT_REFRESH"

    invoke-virtual {v1, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 30
    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v13}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":-1"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 33
    :cond_4
    const/4 v4, 0x2

    if-ne v14, v4, :cond_5

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    const/16 v8, 0x82

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda1;

    invoke-interface {v12, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 36
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    const-string v8, "certain"

    invoke-static {v3, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    nop

    .line 38
    new-instance v8, Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda0;

    invoke-direct {v8, v2, v0}, Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda0;-><init>(Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)V

    invoke-interface {v4, v8}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 39
    const-string v8, "day"

    invoke-static {v11, v8}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/16 v16, 0x1

    .line 40
    xor-int/lit8 v13, v13, 0x1

    move-object/from16 v16, v9

    const-string v9, "INT"

    move-object/from16 v18, v15

    const-string v15, "id"

    if-eqz v13, :cond_13

    if-eqz v3, :cond_13

    .line 41
    const-string v13, "refresh"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 42
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v13

    move-object/from16 v13, v20

    check-cast v13, Ljava/lang/String;

    .line 43
    move-object/from16 v20, v5

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 44
    move-object/from16 v22, v6

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 45
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v12

    move-object/from16 v12, v24

    check-cast v12, [B

    move-object/from16 v24, v7

    invoke-static {v12, v8}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ne v7, v14, :cond_6

    invoke-static {v12, v15}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v7, v24

    move-object/from16 v12, v25

    goto :goto_2

    .line 46
    :cond_7
    move-object/from16 v24, v7

    move-object/from16 v25, v12

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v12, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    move-object/from16 v26, v8

    const-string v8, "type"

    if-eqz v23, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v27, v7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v9, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_8

    add-int/lit8 v12, v12, 0x1

    :cond_8
    move-object/from16 v8, v26

    move-object/from16 v7, v27

    goto :goto_3

    .line 47
    :cond_9
    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v7

    sub-int/2addr v7, v12

    :goto_4
    if-lez v7, :cond_11

    .line 48
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v13, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object/from16 v23, v3

    const/4 v3, 0x0

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    move/from16 v28, v14

    const-string v14, "weight"

    if-eqz v27, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 50
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v13

    move-object/from16 v13, v29

    check-cast v13, Ljava/lang/String;

    move-object/from16 v29, v10

    const-string v10, "INT:"

    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_6

    .line 51
    :cond_a
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v10, v15}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v13

    .line 52
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-static {v14, v8}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-ne v14, v5, :cond_c

    if-lez v13, :cond_c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 53
    invoke-static {v10, v2, v0}, Lcom/project7/localmanager/LocalIntelligenceEffects;->canCreate(ILcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_6

    .line 54
    :cond_b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v13}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    .line 55
    move/from16 v14, v28

    move-object/from16 v10, v29

    move-object/from16 v13, v30

    goto :goto_5

    .line 49
    :cond_c
    :goto_6
    move/from16 v14, v28

    move-object/from16 v10, v29

    move-object/from16 v13, v30

    goto :goto_5

    .line 56
    :cond_d
    move-object/from16 v29, v10

    if-nez v3, :cond_e

    goto :goto_9

    .line 57
    :cond_e
    invoke-static {v3}, Lcom/project7/localmanager/LocalStoryEnvironment;->nextInt(I)I

    move-result v3

    .line 58
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 59
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v9, v13}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v13

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v13

    sub-int/2addr v3, v13

    .line 60
    if-gez v3, :cond_f

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 61
    :cond_f
    goto :goto_7

    .line 47
    :cond_10
    :goto_8
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v3, v23

    move/from16 v14, v28

    move-object/from16 v10, v29

    goto/16 :goto_4

    :cond_11
    move-object/from16 v23, v3

    move-object/from16 v29, v10

    move/from16 v28, v14

    .line 63
    :goto_9
    move-object/from16 v5, v20

    move-object/from16 v13, v21

    move-object/from16 v6, v22

    move-object/from16 v3, v23

    move-object/from16 v7, v24

    move-object/from16 v12, v25

    move-object/from16 v8, v26

    move/from16 v14, v28

    move-object/from16 v10, v29

    goto/16 :goto_1

    .line 42
    :cond_12
    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-object/from16 v26, v8

    move-object/from16 v29, v10

    move-object/from16 v25, v12

    move/from16 v28, v14

    goto :goto_a

    .line 40
    :cond_13
    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-object/from16 v26, v8

    move-object/from16 v29, v10

    move-object/from16 v25, v12

    move/from16 v28, v14

    .line 65
    :goto_a
    const-string v3, "story"

    invoke-static {v11, v3}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 66
    new-instance v6, Ljava/util/HashSet;

    const-string v7, "q7WeekEventBaseline"

    invoke-static {v0, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 67
    move-object/from16 v7, v24

    move-object/from16 v8, v29

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v7

    .line 68
    iget v8, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-ne v8, v7, :cond_1b

    iget-object v8, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "INT_EVENT:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    move-object/from16 v24, v6

    move-object/from16 v21, v8

    move-object/from16 v13, v22

    move-object/from16 v14, v25

    move/from16 v6, v28

    goto/16 :goto_f

    .line 70
    :cond_14
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 71
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 72
    iget-object v14, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    move-object/from16 v21, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 73
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    move-object/from16 v24, v6

    move-object/from16 v13, v22

    move-object/from16 v14, v25

    move/from16 v6, v28

    goto/16 :goto_f

    .line 75
    :cond_15
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    const-string v10, "entries"

    invoke-static {v8, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v10, v17

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 76
    nop

    .line 77
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v17, 0x0

    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v6

    move-object/from16 v6, v23

    check-cast v6, [B

    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-ne v6, v13, :cond_16

    const/16 v17, 0x1

    :cond_16
    move-object/from16 v6, v24

    goto :goto_d

    .line 78
    :cond_17
    move-object/from16 v24, v6

    if-nez v17, :cond_18

    .line 79
    move/from16 v6, v28

    invoke-static {v1, v13, v6}, Lcom/project7/localmanager/LocalIntelligenceEngine;->newEntry(Lcom/project7/localmanager/LocalFeatureCatalog;II)[B

    move-result-object v13

    move-object/from16 v14, v25

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    move-object/from16 v13, v22

    move-object/from16 v22, v8

    const/4 v8, 0x0

    invoke-static {v10, v13, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v10

    goto :goto_e

    .line 78
    :cond_18
    move-object/from16 v13, v22

    move-object/from16 v14, v25

    move/from16 v6, v28

    move-object/from16 v22, v8

    .line 82
    :goto_e
    move/from16 v28, v6

    move-object/from16 v25, v14

    move-object/from16 v8, v22

    move-object/from16 v6, v24

    move-object/from16 v22, v13

    goto :goto_c

    .line 83
    :cond_19
    move-object/from16 v24, v6

    move-object/from16 v13, v22

    move-object/from16 v14, v25

    move/from16 v6, v28

    invoke-static {v5, v12, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 84
    move-object/from16 v17, v10

    move-object/from16 v8, v21

    move-object/from16 v6, v24

    goto/16 :goto_b

    .line 72
    :cond_1a
    move-object/from16 v24, v6

    move-object/from16 v13, v22

    move-object/from16 v14, v25

    move/from16 v6, v28

    .line 68
    :goto_f
    move/from16 v28, v6

    move-object/from16 v22, v13

    move-object/from16 v25, v14

    move-object/from16 v8, v21

    move-object/from16 v6, v24

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v13, v22

    move-object/from16 v14, v25

    move/from16 v6, v28

    .line 85
    invoke-static {v11, v3, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 86
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v5, v17

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 87
    nop

    .line 88
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v12

    if-ne v12, v7, :cond_1c

    move-object/from16 v12, v26

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-ne v11, v6, :cond_1d

    const/4 v10, 0x1

    goto :goto_12

    :cond_1c
    move-object/from16 v12, v26

    :cond_1d
    :goto_12
    move-object/from16 v26, v12

    goto :goto_11

    .line 89
    :cond_1e
    move-object/from16 v12, v26

    if-eqz v10, :cond_1f

    move-object/from16 v26, v12

    goto :goto_10

    .line 90
    :cond_1f
    invoke-static {v1, v7, v6}, Lcom/project7/localmanager/LocalIntelligenceEngine;->newEntry(Lcom/project7/localmanager/LocalFeatureCatalog;II)[B

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v7, 0x0

    invoke-static {v5, v13, v7}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v5

    .line 92
    move-object/from16 v26, v12

    goto :goto_10

    .line 93
    :cond_20
    move-object/from16 v12, v26

    const/4 v7, 0x0

    move v8, v7

    :goto_13
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-ge v8, v4, :cond_22

    .line 94
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4, v15}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v9, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    .line 95
    if-eqz v7, :cond_21

    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v10

    const-string v11, "lastDay"

    invoke-static {v7, v11}, Lcom/project7/localmanager/LocalIntelligenceEngine;->v([BLjava/lang/String;)I

    move-result v7

    add-int/2addr v10, v7

    if-ge v10, v6, :cond_21

    .line 96
    const-string v7, "ep"

    const/4 v10, 0x1

    invoke-static {v4, v7, v10}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    invoke-interface {v14, v8, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 95
    :cond_21
    const/4 v10, 0x1

    .line 93
    :goto_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 98
    :cond_22
    move-object/from16 v4, v20

    invoke-static {v5, v4, v14}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v4

    .line 99
    move-object/from16 v5, v18

    invoke-static {v3, v12, v5}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v5, v16

    invoke-static {v0, v5, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    goto :goto_15

    .line 23
    :cond_23
    move-object/from16 v19, v3

    move-object/from16 v17, v4

    .line 101
    :goto_15
    move-object/from16 v3, v19

    invoke-static {v0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalIntelligenceEffects;->checkAutomatic([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    return-object v0
.end method

.method private static sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 5

    .line 207
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cd"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "city"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "get_city_data_reply"

    invoke-virtual {p0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 208
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "is"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "intelligence"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalIntelligenceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "syncAllIntelligence"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 209
    return-void
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
