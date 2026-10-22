.class final Lcom/project7/localmanager/LocalWeekEngine;
.super Ljava/lang/Object;
.source "LocalWeekEngine.java"


# static fields
.field static final ENTRANCE_CACHE_RESET:Ljava/lang/String; = "exec(\'gg.event_trigger_cache = None\\ngg.avatar_status = None\')"

.field static final METHODS:[Ljava/lang/String;

.field private static final TUTORIAL_FOUNDATION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    const-string v0, "handleIncWeekAsk"

    const-string v1, "handleResetWeekAsk"

    const-string v2, "requestEnterStory"

    const-string v3, "requestEnterStoryByEnding"

    const-string v4, "requestChangeAVGLevel"

    const-string v5, "updateStoryClickFlag"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalWeekEngine;->METHODS:[Ljava/lang/String;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x3f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x417

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalWeekEngine;->TUTORIAL_FOUNDATION:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 25

    .line 127
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "method"

    const-string v6, "q7WeekResult"

    const-string v7, "q7WeekTransition"

    const-string v8, "cf"

    const-string v9, "std"

    const-string v10, "requestChangeAVGLevel"

    const-string v11, "requestEnterStory"

    const-string v12, "r"

    const-string v13, "requestEnterStoryByEnding"

    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v14, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 129
    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x0

    :try_start_0
    const-string v15, "updateStoryClickFlag"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 130
    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 131
    iget-object v0, v0, Lcom/project7/localmanager/LocalWeekCatalog;->entrances:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "\u8def\u7ebf\u4e0d\u5b58\u5728"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 132
    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 133
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    invoke-static {v0, v8, v5}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    invoke-static {v1, v9, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 136
    return-object v14

    .line 138
    :cond_1
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 139
    invoke-static {v14, v0, v4}, Lcom/project7/localmanager/LocalWeekEngine;->difficulty(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalWeekCatalog;[B)V

    .line 140
    return-object v14

    .line 142
    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v8, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    move/from16 v8, v18

    :goto_0
    const-string v9, "\u8bf7\u5148\u5b8c\u6210\u65b0\u624b\u6559\u7a0b"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 143
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const-string v8, "i"

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v8

    .line 144
    :goto_2
    const-string v9, "weeknum"

    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    const-string v15, "w"

    invoke-static {v9, v15}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v9

    .line 145
    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    .line 146
    const-string v4, "handleIncWeekAsk"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v4, v18

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v4, 0x1

    .line 147
    :goto_4
    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_6

    if-nez v19, :cond_8

    const/16 v19, 0x1

    goto :goto_5

    :cond_8
    move/from16 v19, v18

    .line 148
    :goto_5
    move-object/from16 v20, v10

    :try_start_1
    invoke-static {v15, v5}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v21, v13

    const-string v13, "route"

    move-object/from16 v22, v12

    const-string v12, "week"

    if-eqz v10, :cond_c

    :try_start_2
    invoke-static {v15, v13}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v10

    if-ne v8, v10, :cond_c

    .line 149
    invoke-static {v15, v12}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_b

    if-nez v19, :cond_a

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    move-object/from16 v24, v7

    move-object/from16 v23, v11

    goto :goto_7

    :cond_a
    :goto_6
    iget-object v10, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget-object v15, v0, Lcom/project7/localmanager/LocalWeekCatalog;->entrances:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    move-object/from16 v23, v11

    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v24, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v15, v11, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :goto_7
    const/4 v7, 0x1

    goto :goto_a

    .line 149
    :cond_b
    move-object/from16 v24, v7

    move-object/from16 v23, v11

    goto :goto_9

    .line 177
    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_8
    move-object/from16 v23, v11

    goto/16 :goto_15

    .line 148
    :cond_c
    move-object/from16 v24, v7

    move-object/from16 v23, v11

    .line 150
    :cond_d
    :goto_9
    move/from16 v7, v18

    .line 151
    :goto_a
    if-eqz v7, :cond_e

    invoke-static {v14, v3}, Lcom/project7/localmanager/LocalWeekEngine;->replies(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v14

    .line 177
    :catch_2
    move-exception v0

    goto/16 :goto_15

    :catch_3
    move-exception v0

    goto/16 :goto_15

    .line 152
    :cond_e
    const-string v7, "q7Battle"

    if-eqz v4, :cond_11

    .line 153
    if-eqz v19, :cond_f

    :try_start_4
    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_f

    const/4 v6, 0x1

    goto :goto_b

    :cond_f
    move/from16 v6, v18

    :goto_b
    const-string v10, "\u5f53\u524d\u5468\u76ee\u5c1a\u672a\u5b8c\u6210\u7ed3\u5c40"

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 156
    invoke-static/range {p0 .. p2}, Lcom/project7/localmanager/LocalWeekEngine;->completedResult([BLcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-boolean v6, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez v6, :cond_10

    .line 157
    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_c

    :cond_10
    move/from16 v6, v18

    :goto_c
    const-string v7, "\u8bf7\u5148\u5b8c\u6210\u7ed3\u5c40\u5267\u60c5\u548c\u7ed3\u7b97"

    .line 156
    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    goto :goto_f

    .line 159
    :cond_11
    const/4 v6, 0x2

    if-lt v9, v6, :cond_12

    const/4 v6, 0x1

    goto :goto_d

    :cond_12
    move/from16 v6, v18

    :goto_d
    const-string v10, "\u9ed1\u8272\u4fe1\u51fd\u9700\u5728\u7b2c\u4e09\u5468\u76ee\u8d77\u4f7f\u7528"

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 160
    if-nez v19, :cond_13

    iget-boolean v6, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-nez v6, :cond_13

    iget-object v6, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    sget-object v10, Lcom/project7/localmanager/LocalWeekEngine$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalWeekEngine$$ExternalSyntheticLambda1;

    invoke-interface {v6, v10}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-boolean v6, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez v6, :cond_13

    .line 161
    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x1

    goto :goto_e

    :cond_13
    move/from16 v6, v18

    :goto_e
    const-string v7, "\u8bf7\u5148\u5b8c\u6210\u5f53\u524d\u5267\u60c5\u3001\u5de1\u67e5\u6216\u6218\u6597"

    .line 160
    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 163
    :goto_f
    iget-object v6, v0, Lcom/project7/localmanager/LocalWeekCatalog;->entrances:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, v0, Lcom/project7/localmanager/LocalWeekCatalog;->entrances:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_14

    const/4 v6, 0x1

    goto :goto_10

    :cond_14
    move/from16 v6, v18

    :goto_10
    const-string v7, "\u8def\u7ebf\u5165\u53e3\u4e0d\u5b58\u5728"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 164
    invoke-static {v1, v0, v8}, Lcom/project7/localmanager/LocalWeekEngine;->canEnter([BLcom/project7/localmanager/LocalWeekCatalog;I)Z

    move-result v6

    const-string v7, "\u5c1a\u672a\u6ee1\u8db3\u539f\u7248\u8def\u7ebf\u5f00\u653e\u6761\u4ef6"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 166
    invoke-static {v8}, Lcom/project7/localmanager/LocalStoryEntryPolicy;->supports(I)Z

    move-result v6

    const-string v7, "\u6b64\u7279\u6b8a\u8def\u7ebf\u7684\u5730\u533a\u521d\u59cb\u5316\u5c1a\u672a\u63a5\u5165\uff0c\u5df2\u4fdd\u7559\u8fdb\u5ea6\u4e0e\u9ed1\u8272\u4fe1\u51fd"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 167
    if-nez v4, :cond_15

    const/16 v6, 0x159

    const/4 v7, 0x1

    invoke-static {v14, v6, v7}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 168
    :cond_15
    if-eqz v4, :cond_16

    const/4 v4, 0x1

    invoke-static {v9, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v9

    goto :goto_11

    :cond_16
    const/4 v4, 0x1

    .line 170
    :goto_11
    if-ne v8, v4, :cond_17

    if-ne v9, v4, :cond_17

    const/16 v4, 0x406

    goto :goto_12

    :cond_17
    iget-object v4, v0, Lcom/project7/localmanager/LocalWeekCatalog;->entrances:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 171
    :goto_12
    invoke-static {v2, v0, v9, v4}, Lcom/project7/localmanager/LocalWeekEngine;->resetProgress(Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalWeekCatalog;II)Lcom/project7/localmanager/LocalTutorialStore$Progress;

    move-result-object v2

    .line 172
    iget-object v4, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v2, v8, v0}, Lcom/project7/localmanager/LocalWeekEngine;->resetProfile([BLcom/project7/localmanager/LocalTutorialStore$Progress;ILcom/project7/localmanager/LocalWeekCatalog;)[B

    move-result-object v0

    iput-object v0, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 173
    iget-object v0, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "id"

    aput-object v6, v4, v18

    iget-object v6, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v6, 0x2

    aput-object v12, v4, v6

    .line 174
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v17

    aput-object v5, v4, v16

    const/4 v5, 0x5

    aput-object v3, v4, v5

    const/4 v5, 0x6

    aput-object v13, v4, v5

    const/4 v5, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "progress"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 175
    invoke-static {v2}, Lcom/project7/localmanager/LocalWeekEngine;->serialize(Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    aput-object v2, v4, v5

    .line 173
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    move-object/from16 v4, v24

    invoke-static {v0, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 176
    invoke-static {v14, v3}, Lcom/project7/localmanager/LocalWeekEngine;->replies(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_2

    .line 184
    goto/16 :goto_16

    .line 177
    :catch_4
    move-exception v0

    goto :goto_14

    :catch_5
    move-exception v0

    goto :goto_14

    :catch_6
    move-exception v0

    goto :goto_13

    :catch_7
    move-exception v0

    :goto_13
    move-object/from16 v20, v10

    :goto_14
    move-object/from16 v23, v11

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    .line 178
    :goto_15
    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v14, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 179
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

    const-string v2, "showMessageStr"

    invoke-virtual {v14, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 180
    move-object/from16 v2, v23

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v22, v0, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "replyEnterStory"

    invoke-virtual {v14, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 181
    :cond_18
    move-object/from16 v1, v21

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v22, v0, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "replyEnterStoryByEnding"

    invoke-virtual {v14, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 182
    :cond_19
    move-object/from16 v1, v20

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "rs"

    aput-object v1, v0, v18

    .line 183
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "lv"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v17

    const-string v1, "slv"

    aput-object v1, v0, v16

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 182
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "replyChangeAVGLevel"

    invoke-virtual {v14, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 185
    :cond_1a
    :goto_16
    return-object v14
.end method

.method static awaitingEntrance([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 6

    .line 30
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 31
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/project7/localmanager/LocalWeekEngine$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalWeekEngine$$ExternalSyntheticLambda1;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 32
    const-string v1, "q7Battle"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 33
    :cond_0
    const-string v1, "q7WeekTransition"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 34
    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    const-string v3, "id"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 35
    const-string v2, "week"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v2

    const-string v3, "weeknum"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "w"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 36
    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v2, "d"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 37
    :cond_1
    const-string p0, "progress"

    invoke-static {v1, p0}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v1, "availableEvents"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 38
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p0}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 40
    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p0, 0x1

    return p0

    .line 41
    :cond_4
    return v0

    .line 38
    :cond_5
    :goto_0
    return v0

    .line 36
    :cond_6
    :goto_1
    return v0

    .line 32
    :cond_7
    :goto_2
    return v0
.end method

.method static canEnter([BLcom/project7/localmanager/LocalWeekCatalog;I)Z
    .locals 4

    .line 189
    iget-object v0, p1, Lcom/project7/localmanager/LocalWeekCatalog;->requires:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 190
    :cond_0
    const/4 v0, 0x5

    const/4 v2, 0x1

    const-string v3, "std"

    if-ne p2, v0, :cond_3

    .line 191
    const-string p1, "weeknum"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    const-string p2, "w"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result p1

    .line 192
    const/4 p2, 0x3

    if-ge p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string p2, "cef"

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 194
    :cond_3
    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "ed"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 195
    iget-object p1, p1, Lcom/project7/localmanager/LocalWeekCatalog;->requires:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-static {p2, p0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v1

    .line 196
    :cond_5
    return v2
.end method

.method private static completedResult([BLcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 4

    .line 101
    const-string v0, "q7WeekResult"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 102
    iget-object p1, p1, Lcom/project7/localmanager/LocalWeekCatalog;->endings:Ljava/util/Map;

    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 103
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    aget p1, p1, v2

    const-string v3, "ending"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 104
    const-string p1, "week"

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result p1

    const-string v3, "weeknum"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v3, "w"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result p0

    if-ne p1, p0, :cond_0

    iget-object p0, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 105
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 103
    :goto_0
    return v2
.end method

.method private static d([BLjava/lang/String;)[B
    .locals 0

    .line 395
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static difficulty(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalWeekCatalog;[B)V
    .locals 16

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "lv"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-string v5, "slv"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 363
    iget-object v6, v1, Lcom/project7/localmanager/LocalWeekCatalog;->difficulties:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 364
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "weeknum"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    .line 365
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 369
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 365
    if-eqz v6, :cond_0

    aget v14, v6, v11

    if-ne v14, v12, :cond_0

    const-string v14, "w"

    invoke-static {v7, v14}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-lt v14, v10, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    move v14, v11

    :goto_0
    const-string v15, "\u5c1a\u672a\u5f00\u653e\u6b64\u5468\u76ee\u96be\u5ea6"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 366
    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v15, "q7Battle"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 367
    invoke-static {v14}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v14

    if-nez v14, :cond_1

    move v14, v12

    goto :goto_1

    :cond_1
    move v14, v11

    .line 366
    :goto_1
    const-string v15, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u6218\u6597\u518d\u8c03\u6574\u5468\u76ee\u96be\u5ea6"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 368
    const-string v14, "ccl"

    invoke-static {v7, v14}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 369
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    if-eq v12, v10, :cond_2

    new-array v12, v10, [Ljava/lang/Integer;

    aput-object v13, v12, v11

    const/4 v15, 0x1

    aput-object v13, v12, v15

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 370
    :cond_2
    const-string v12, "d"

    invoke-static {v7, v12}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v4, v13, :cond_4

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v4, v13, :cond_3

    const/4 v13, 0x1

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-gt v2, v13, :cond_3

    goto :goto_2

    :cond_3
    move v13, v11

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v13, 0x1

    :goto_3
    const-string v15, "\u7b2c\u4e00\u5929\u7ed3\u675f\u540e\u4e0d\u80fd\u63d0\u5347\u96be\u5ea6"

    invoke-static {v13, v15}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 372
    new-instance v13, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/project7/localmanager/LocalWeekCatalog;->difficulties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 373
    sget-object v1, Lcom/project7/localmanager/LocalWeekEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalWeekEngine$$ExternalSyntheticLambda0;

    invoke-interface {v13, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 379
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 380
    if-lez v1, :cond_5

    .line 381
    const/4 v15, 0x1

    sub-int/2addr v1, v15

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 382
    new-array v8, v10, [Ljava/lang/Integer;

    aget-object v13, v1, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v11

    aget-object v1, v1, v15

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v15

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 384
    :cond_5
    const-string v1, "ls"

    invoke-static {v7, v1}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v11

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 385
    const-string v11, "0"

    invoke-static {v13, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 386
    invoke-interface {v11, v15}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "1"

    invoke-static {v13, v11}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 387
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 388
    :cond_7
    aget v1, v6, v10

    if-lt v8, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    const-string v8, "\u4e0a\u4e00\u96be\u5ea6\u8bc4\u5206\u672a\u8fbe\u5230\u539f\u7248\u5f00\u653e\u6761\u4ef6"

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 389
    new-array v1, v10, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x0

    aput-object v8, v1, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v1, v11

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v7, v14, v1}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    aget v6, v6, v11

    const-string v7, "wl"

    invoke-static {v1, v7, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 390
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v6

    iput-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 391
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "rs"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v3, v6, v10

    const/4 v3, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x4

    aput-object v5, v6, v3

    const/4 v3, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "replyChangeAVGLevel"

    invoke-virtual {v0, v3, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 392
    new-array v2, v10, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "syncWeeknumData"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 393
    return-void
.end method

.method static endings([BLcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Z)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 23

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    new-instance v11, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v11, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 51
    if-nez v10, :cond_0

    return-object v11

    .line 52
    :cond_0
    move-object/from16 v12, p3

    invoke-static {v11, v9, v12}, Lcom/project7/localmanager/LocalWeekSettlement;->repairAwarded(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalResourceCatalog;)V

    .line 53
    iget-object v1, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v9, v10}, Lcom/project7/localmanager/LocalWeekEngine;->terminalResult([BLcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v1

    const-string v13, "cef"

    const-string v14, "std"

    const/4 v15, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v2, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 54
    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v13, v15}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 53
    invoke-static {v1, v14, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 55
    :cond_1
    const-string v8, "q7WeekResult"

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 56
    iget-object v2, v9, Lcom/project7/localmanager/LocalWeekCatalog;->endings:Ljava/util/Map;

    const-string v3, "event"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 58
    const-string v7, "w"

    const-string v6, "weeknum"

    if-eqz v2, :cond_5

    const-string v4, "version"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "week"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15, v7}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v15

    if-ne v5, v15, :cond_5

    .line 59
    const-string v5, "score"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    const-string v15, "total"

    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "reward"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 60
    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalWeekEngine;->hasScoredHistory([BI)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v10, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 61
    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v15

    const/4 v1, 0x0

    aget v18, v2, v1

    const/4 v5, 0x1

    aget v16, v2, v5

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v12, v5

    move-object/from16 v5, p4

    move-object/from16 v19, v6

    move v6, v15

    move-object v15, v7

    move/from16 v7, v18

    move-object/from16 v20, v8

    move/from16 v8, v16

    invoke-static/range {v1 .. v8}, Lcom/project7/localmanager/LocalWeekSettlement;->complete(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;III)V

    .line 63
    if-eqz p5, :cond_6

    invoke-static {v11}, Lcom/project7/localmanager/LocalWeekEngine;->showResult(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    goto :goto_0

    .line 61
    :cond_2
    move-object/from16 v19, v6

    move-object v15, v7

    move-object/from16 v20, v8

    const/4 v12, 0x1

    goto :goto_0

    .line 60
    :cond_3
    move-object/from16 v19, v6

    move-object v15, v7

    move-object/from16 v20, v8

    const/4 v12, 0x1

    goto :goto_0

    .line 59
    :cond_4
    move-object/from16 v19, v6

    move-object v15, v7

    move-object/from16 v20, v8

    const/4 v12, 0x1

    goto :goto_0

    .line 58
    :cond_5
    move-object/from16 v19, v6

    move-object v15, v7

    move-object/from16 v20, v8

    const/4 v12, 0x1

    .line 65
    :cond_6
    :goto_0
    const-string v8, "q7EndingEvents"

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 66
    invoke-static {v0, v8}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_7

    if-nez p5, :cond_7

    move/from16 v16, v12

    goto :goto_1

    :cond_7
    const/16 v16, 0x0

    .line 67
    :goto_1
    iget-object v0, v10, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 68
    iget-object v0, v9, Lcom/project7/localmanager/LocalWeekCatalog;->endings:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 69
    if-eqz v0, :cond_10

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v22, v19

    move-object/from16 v17, v20

    move/from16 v19, v12

    const/4 v12, 0x0

    goto/16 :goto_4

    .line 70
    :cond_8
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v12}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v21

    .line 71
    if-eqz v16, :cond_9

    move-object/from16 v22, v19

    move-object/from16 v17, v20

    move/from16 v19, v12

    const/4 v12, 0x0

    goto/16 :goto_3

    .line 72
    :cond_9
    iget-object v1, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v7, v20

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v17, v7

    move-object/from16 v22, v19

    move/from16 v19, v12

    const/4 v12, 0x0

    goto/16 :goto_3

    .line 74
    :cond_a
    iget-object v1, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v6, v19

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 75
    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v1

    .line 76
    iget-object v2, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "ed"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    const/4 v12, 0x0

    aget v17, v0, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const/4 v12, 0x0

    aget v20, v0, v12

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_b
    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v2

    .line 80
    const/4 v3, 0x2

    aget v4, v0, v3

    if-eqz v4, :cond_c

    if-ne v1, v3, :cond_d

    :cond_c
    const/4 v1, 0x0

    invoke-static {v2, v13, v1}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 81
    :cond_d
    iget-object v1, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v14, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "cgs"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    const/4 v2, 0x1

    aget v4, v0, v2

    if-lez v4, :cond_e

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 84
    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    iput-object v1, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 87
    :cond_e
    const/4 v12, 0x0

    aget v17, v0, v12

    const/16 v19, 0x1

    aget v20, v0, v19

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v22, v6

    move/from16 v6, v17

    move-object/from16 v17, v7

    move/from16 v7, v20

    invoke-static/range {v0 .. v7}, Lcom/project7/localmanager/LocalWeekSettlement;->complete(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;III)V

    .line 88
    if-eqz p5, :cond_f

    invoke-static {v11}, Lcom/project7/localmanager/LocalWeekEngine;->showResult(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 89
    :cond_f
    nop

    .line 67
    :goto_3
    move-object/from16 v20, v17

    move/from16 v12, v19

    move-object/from16 v1, v21

    goto :goto_5

    .line 69
    :cond_10
    move-object/from16 v22, v19

    move-object/from16 v17, v20

    move/from16 v19, v12

    const/4 v12, 0x0

    .line 67
    :goto_4
    move-object/from16 v20, v17

    move/from16 v12, v19

    :goto_5
    move-object/from16 v19, v22

    goto/16 :goto_2

    .line 90
    :cond_11
    iget-object v0, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v11, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 91
    return-object v11
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 16
    sget-object v0, Lcom/project7/localmanager/LocalWeekEngine;->METHODS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static hasScoredHistory([BI)Z
    .locals 2

    .line 109
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "wasi"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 110
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "total"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 111
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$awaitingEntrance$0(Ljava/lang/Integer;)Z
    .locals 1

    .line 31
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

.method static synthetic lambda$difficulty$2(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 374
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 375
    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 376
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method static recover([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 5

    .line 321
    if-nez p1, :cond_0

    return-void

    .line 322
    :cond_0
    const-string v0, "q7WeekTransition"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 323
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 325
    :cond_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 326
    const-string v2, "progress"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 327
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 328
    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    if-eqz v4, :cond_2

    .line 330
    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    goto :goto_0

    .line 329
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid committed week progress"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :cond_3
    invoke-static {v1}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->fromProperties(Ljava/util/Properties;)Lcom/project7/localmanager/LocalTutorialStore$Progress;

    move-result-object p0

    .line 333
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\u5468\u76ee\u5b58\u6863\u56de\u6267\u635f\u574f"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 334
    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 335
    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 336
    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 337
    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 338
    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 339
    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 340
    iget-boolean v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    iput-boolean v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    iget-boolean v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    iput-boolean v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    iget-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->status:Ljava/lang/String;

    iput-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->status:Ljava/lang/String;

    iget-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->scene:Ljava/lang/String;

    iput-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->scene:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    iput-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    iget v0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    iput v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    const-string v0, ""

    iput-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->economyCommit:Ljava/lang/String;

    .line 342
    const/4 v1, 0x0

    iput v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    const/4 v2, -0x1

    iput v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    iput v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFavor:I

    iput-boolean v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    .line 343
    iput v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    .line 344
    iput v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->sandglassActions:I

    .line 345
    iput-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    .line 346
    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventDays:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 347
    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 348
    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 349
    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 350
    return-void

    .line 324
    :cond_4
    :goto_1
    return-void
.end method

.method static refreshDifficulty([BLcom/project7/localmanager/LocalWeekCatalog;)[B
    .locals 6

    .line 19
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 20
    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    const-string v2, "q7Battle"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    invoke-static {p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    const-string v2, "ccl"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v3, :cond_1

    return-object p0

    .line 24
    :cond_1
    iget-object p1, p1, Lcom/project7/localmanager/LocalWeekCatalog;->difficulties:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 25
    if-eqz p1, :cond_3

    aget v2, p1, v4

    if-ne v2, v5, :cond_3

    const-string v2, "wl"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v3

    aget v4, p1, v5

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    aget p1, p1, v5

    invoke-static {v1, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 25
    :cond_3
    :goto_0
    return-object p0

    .line 21
    :cond_4
    :goto_1
    return-object p0
.end method

.method private static replies(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V
    .locals 8

    .line 200
    const-string v0, "requestEnterStory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "r"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v3

    aput-object v6, v1, v5

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v7, "replyEnterStory"

    invoke-virtual {p0, v7, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 201
    :cond_0
    const-string v1, "requestEnterStoryByEnding"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v3

    aput-object v6, v1, v5

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "replyEnterStoryByEnding"

    invoke-virtual {p0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 202
    :cond_1
    const-string v1, "handleResetWeekAsk"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 203
    :cond_2
    const-string p1, "handleIncWeekReply"

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "handleResetWeekReply"

    :goto_1
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 204
    return-void
.end method

.method private static require(ZLjava/lang/String;)V
    .locals 0

    .line 397
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static resetProfile([BLcom/project7/localmanager/LocalTutorialStore$Progress;ILcom/project7/localmanager/LocalWeekCatalog;)[B
    .locals 32

    .line 222
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v4, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 223
    const-string v5, "inv"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v5, "items"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "w"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 224
    iget-object v9, v3, Lcom/project7/localmanager/LocalWeekCatalog;->clearItems:Ljava/util/Set;

    const-string v10, "i"

    invoke-static {v5, v10}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 226
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    const-string v6, "u"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    const-string v5, "\u5468\u76ee\u9053\u5177\u6570\u636e\u5f02\u5e38\uff0c\u5df2\u4fdd\u7559\u539f\u8fdb\u5ea6"

    invoke-static {v7, v5}, Lcom/project7/localmanager/LocalWeekEngine;->require(ZLjava/lang/String;)V

    .line 228
    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, v3, Lcom/project7/localmanager/LocalWeekCatalog;->clearItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 230
    iget-object v5, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalSpecialItemEngine;->quantity([BI)I

    move-result v5

    .line 231
    if-lez v5, :cond_3

    invoke-static {v4, v3, v5}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 232
    :cond_3
    goto :goto_2

    .line 233
    :cond_4
    iget-object v0, v4, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 234
    invoke-static {v0}, Lcom/project7/localmanager/LocalChapterCityEngine;->active([B)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/project7/localmanager/LocalChapterCityEngine;->resetHeroes([B)[B

    move-result-object v0

    .line 235
    :cond_5
    const-string v3, "q7ChapterMenu"

    invoke-static {v0, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 236
    const-string v9, "q7ChapterEffects"

    const-string v10, "q7ChapterStates"

    const-string v11, "q7ChapterLocks"

    const-string v12, "q7AnCityEffects"

    const-string v13, "q7AnCityLocks"

    const-string v14, "q7ArkCity"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v3

    move v4, v8

    :goto_3
    const/4 v5, 0x6

    if-ge v4, v5, :cond_6

    aget-object v5, v3, v4

    .line 237
    sget-object v9, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v0, v5, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 238
    :cond_6
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalSuppressionEngine;->recoverHistory([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v0

    .line 239
    const-string v3, "weeknum"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 240
    iget v9, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    invoke-static {v4, v6, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    const-string v6, "d"

    invoke-static {v4, v6, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 241
    const-string v6, "c"

    const-string v9, "l"

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v9

    move v10, v8

    :goto_4
    const/4 v11, 0x2

    if-ge v10, v11, :cond_7

    aget-object v11, v9, v10

    sget-object v12, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v4, v11, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 242
    :cond_7
    const-string v9, "sgnt"

    invoke-static {v4, v9, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    .line 243
    const-string v9, "ust"

    invoke-static {v4, v9, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    const-string v9, "sgw"

    invoke-static {v4, v9, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 244
    invoke-static {v0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 245
    const-string v3, "cgs"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "q7WeekCgBaseline"

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    .line 246
    iget-object v3, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const-string v4, "q7WeekEventBaseline"

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const-string v4, "ccgs"

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    .line 248
    const-string v3, "city"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 249
    const/16 v9, 0xb

    const-string v12, "dv"

    const-string v13, "dvc"

    const-string v14, "bf"

    const-string v15, "fv"

    const-string v16, "ev"

    const-string v17, "rv"

    const-string v18, "tbn"

    const-string v19, "tvn"

    const-string v20, "pn"

    const-string v21, "rbn"

    const-string v22, "cc"

    filled-new-array/range {v12 .. v22}, [Ljava/lang/String;

    move-result-object v10

    move v12, v8

    :goto_5
    if-ge v12, v9, :cond_8

    aget-object v13, v10, v12

    invoke-static {v4, v13, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 250
    :cond_8
    const/16 v9, 0x18

    const-string v10, "av"

    invoke-static {v4, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 251
    const-string v9, "uc"

    invoke-static {v4, v9, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    .line 252
    sget-object v9, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v10, "areas"

    invoke-static {v4, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const-string v10, "acr"

    invoke-static {v4, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v4

    .line 254
    invoke-static {v0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 255
    const-string v3, "std"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 258
    const-string v9, "rt"

    const-string v10, "1"

    invoke-static {v4, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const-string v12, "srt"

    invoke-static {v4, v12, v9}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v4

    .line 260
    const-string v9, "srv"

    invoke-static {v4, v9, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    const-string v9, "ssv"

    invoke-static {v4, v9, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 261
    const-string v9, "cef"

    invoke-static {v4, v9, v7}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const-string v12, "cf"

    invoke-static {v4, v12, v9}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v4

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const-string v13, "prc"

    invoke-static {v4, v13, v9}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v4

    .line 264
    invoke-static {v0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 265
    const-string v3, "q7Puzzle"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    .line 266
    const-string v3, "q7PuzzleExits"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/project7/localmanager/LocalStoryClueEngine;->reset([B)[B

    move-result-object v0

    .line 268
    invoke-static {v0}, Lcom/project7/localmanager/LocalHeroGiftEngine;->reset([B)[B

    move-result-object v0

    .line 269
    iget v3, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalDiaryEngine;->reset([BI)[B

    move-result-object v0

    .line 270
    const-string v3, "reward"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const-string v13, "bc"

    invoke-static {v4, v13, v9}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v4

    .line 271
    invoke-static {v0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 272
    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "sm"

    aput-object v4, v3, v8

    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v4, v3, v7

    const-string v4, "pm"

    aput-object v4, v3, v11

    const/4 v4, 0x3

    sget-object v5, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "epm"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v4, "sd"

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 274
    const/16 v3, 0x13

    const-string v13, "q7WeekResult"

    const-string v14, "q7Battle"

    const-string v15, "q7BattleReceipts"

    const-string v16, "q7BattleLast"

    const-string v17, "q7EconomyCommit"

    const-string v18, "q7DailyPrevious"

    const-string v19, "q7Canteen"

    const-string v20, "q7Rest"

    const-string v21, "q7routeEvents"

    const-string v22, "q7EndingEvents"

    const-string v23, "intelligence"

    const-string v24, "q7Intelligence"

    const-string v25, "q7BuildingRemovals"

    const-string v26, "q7StoryPending"

    const-string v27, "q7StoryFriendship"

    const-string v28, "q7StoryMemory"

    const-string v29, "q7StoryHeroes"

    const-string v30, "q7StoryItems"

    const-string v31, "q7WingGarden"

    filled-new-array/range {v13 .. v31}, [Ljava/lang/String;

    move-result-object v4

    move v5, v8

    :goto_6
    if-ge v5, v3, :cond_9

    aget-object v9, v4, v5

    .line 276
    sget-object v13, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v0, v9, v13}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 274
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 277
    :cond_9
    const-string v3, "q7WingOps"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    .line 278
    const-string v3, "q7eventBattles"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 279
    const-string v5, "bs"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    .line 280
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 281
    const-string v14, "ab"

    invoke-static {v9, v14}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const-string v11, "0"

    if-eqz v16, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, [B

    .line 282
    invoke-static {v7, v11}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    new-instance v11, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v11, v7}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const/4 v7, 0x1

    const/4 v11, 0x2

    goto :goto_7

    .line 283
    :cond_b
    invoke-static {v9, v14, v13}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v4

    invoke-static {v0, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    .line 285
    const-string v3, "combat"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "of"

    invoke-static {v4, v5, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 286
    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 287
    iget-object v4, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v3, v7, v9}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v3

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "m"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v9}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v3

    .line 290
    goto :goto_8

    .line 291
    :cond_c
    const-string v4, "q7effects"

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 292
    const-string v3, "q7CentralBase"

    invoke-static {v0, v3, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 293
    const-string v3, "q7DailyBuildIncome"

    invoke-static {v0, v3, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 294
    const-string v3, "ldd"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 295
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 296
    const-string v6, "zin"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 297
    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v13

    .line 298
    const/16 v14, 0x395

    if-lt v13, v14, :cond_10

    const/16 v14, 0x397

    if-le v13, v14, :cond_d

    move-object/from16 p3, v7

    const/4 v7, 0x2

    const/4 v13, 0x1

    goto :goto_b

    .line 299
    :cond_d
    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    .line 300
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 301
    invoke-static {v13}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 302
    invoke-static {v15, v11}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v8

    move-object/from16 p3, v7

    iget v7, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-eq v8, v7, :cond_e

    new-instance v7, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v7, v15}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v7, p3

    const/4 v8, 0x0

    goto :goto_a

    .line 303
    :cond_f
    move-object/from16 p3, v7

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x0

    aput-object v9, v8, v13

    const/4 v13, 0x1

    aput-object v14, v8, v13

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    move-object/from16 v7, p3

    const/4 v8, 0x0

    goto :goto_9

    .line 298
    :cond_10
    move-object/from16 p3, v7

    const/4 v7, 0x2

    const/4 v13, 0x1

    :goto_b
    new-instance v8, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v8, v9}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p3

    const/4 v8, 0x0

    goto :goto_9

    .line 305
    :cond_11
    invoke-static {v4, v6, v5}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 306
    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v3, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 307
    const/16 v4, 0x1176

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalSpecialItemEngine;->quantity([BI)I

    move-result v0

    .line 308
    if-lez v0, :cond_12

    invoke-static {v3, v4, v0}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 309
    :cond_12
    iget-object v0, v3, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 310
    const-string v3, "heromgr"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "hrs"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 311
    invoke-static {v4, v11}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v5

    .line 312
    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 313
    const/16 v6, 0x64

    invoke-static {v4, v12, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    const-string v6, "ef"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 314
    invoke-static {v0, v5, v4}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v0

    .line 315
    goto :goto_c

    .line 316
    :cond_13
    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalWingStoryEngine;->reset([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static resetProgress(Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalWeekCatalog;II)Lcom/project7/localmanager/LocalTutorialStore$Progress;
    .locals 4

    .line 208
    invoke-static {}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completed()Lcom/project7/localmanager/LocalTutorialStore$Progress;

    move-result-object v0

    .line 209
    iget-object v1, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    iget-object v2, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/project7/localmanager/LocalWeekCatalog;->stay:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/project7/localmanager/LocalWeekEngine;->TUTORIAL_FOUNDATION:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    iget-object v2, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_1
    goto :goto_0

    .line 212
    :cond_2
    iget-object p0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    .line 214
    const-string p0, "emergency"

    iput-object p0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->status:Ljava/lang/String;

    .line 215
    const-string p0, ""

    iput-object p0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->scene:Ljava/lang/String;

    .line 216
    iput p2, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    .line 217
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    .line 218
    return-object v0
.end method

.method private static serialize(Lcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 3

    .line 353
    invoke-virtual {p0}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->toProperties()Ljava/util/Properties;

    move-result-object p0

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 356
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    goto :goto_0

    .line 358
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static showResult(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 10

    .line 115
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "q7WeekResult"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "week"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "weeknum"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v4, "w"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 118
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "c"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "score"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    const-string v7, "cur_cgs"

    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v2, v7

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v6, "addCg"

    invoke-virtual {p0, v6, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 119
    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/Object;

    const-string v8, "wsi"

    aput-object v8, v6, v5

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    aput-object v4, v6, v7

    const-string v4, "ls"

    aput-object v4, v6, v1

    new-instance v8, Lcom/project7/localmanager/BsonLite$ArrayValue;

    iget-object v9, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 120
    invoke-static {v9, v3}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v3, 0x3

    aput-object v8, v6, v3

    .line 119
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v6, "syncWeeknumScoreInfo"

    invoke-virtual {p0, v6, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 121
    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "f"

    aput-object v6, v4, v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "std"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "cef"

    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v6, "updateStoryFlag"

    invoke-virtual {p0, v6, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 122
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "r"

    aput-object v4, v2, v5

    const-string v4, "ending"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    const-string v4, "rd"

    aput-object v4, v2, v1

    const-string v1, "reward"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showWeekResult"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 123
    return-void

    .line 116
    :cond_1
    :goto_0
    return-void
.end method

.method private static terminalResult([BLcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 3

    .line 95
    iget-object v0, p1, Lcom/project7/localmanager/LocalWeekCatalog;->endings:Ljava/util/Map;

    const-string v1, "q7WeekResult"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWeekEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "event"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalWeekEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 96
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    aget v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalWeekEngine;->completedResult([BLcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 396
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
