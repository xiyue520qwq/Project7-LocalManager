.class final Lcom/project7/localmanager/LocalMemoryPalaceEngine;
.super Ljava/lang/Object;
.source "LocalMemoryPalaceEngine.java"


# static fields
.field static final METHODS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    const-string v0, "memoryPalaceQuery"

    const-string v1, "memoryPalaceOpenArea"

    const-string v2, "refreshNewUIState"

    const-string v3, "refreshAreaBuff"

    const-string v4, "memoryPalaceBattleOnlineRequest"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->METHODS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 22

    .line 115
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const-string v2, "b"

    const-string v3, "nas"

    const-string v10, "s"

    const-string v11, "memoryPalaceOpenAreaReply"

    const-string v12, "q7DailyFinish"

    const-string v13, "d"

    const-string v14, "memoryPalaceQueryReply"

    const-string v15, "memoryPalaceOpenArea"

    const-string v6, "memoryPalaceQuery"

    const-string v7, "a"

    new-instance v5, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v5, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 118
    const/16 v16, 0x3

    move-object/from16 v17, v10

    const/4 v10, 0x0

    :try_start_0
    const-string v4, "q7DailyReset"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v5, v0, v9}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->reset(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V

    move-object v3, v5

    goto/16 :goto_5

    .line 119
    :cond_0
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v2, p2

    invoke-static {v5, v0, v2, v9}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->finish(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[B)V

    move-object v3, v5

    goto/16 :goto_5

    .line 121
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->eligible([B)V

    .line 122
    invoke-static/range {p0 .. p1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v4

    .line 123
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 124
    invoke-static {v5, v4}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 125
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v13, v0, v10

    const/4 v2, 0x1

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v5, v14, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    move-object v3, v5

    goto/16 :goto_5

    .line 126
    :cond_2
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_8

    const-string v10, "nss"

    move-object/from16 v20, v6

    const-string v6, "PA"

    move-object/from16 v21, v12

    const-string v12, "ai"

    if-eqz v19, :cond_4

    .line 127
    :try_start_1
    invoke-static {v9, v7}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    .line 129
    invoke-static {v1, v4, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->available([B[B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v4, v12, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->status([BLjava/lang/String;I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    .line 131
    const-string v3, "stages"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    const/4 v3, 0x2

    invoke-static {v4, v12, v2, v3}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->setStatus([BLjava/lang/String;II)[B

    move-result-object v4

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->setStages([BILjava/util/List;)[B

    move-result-object v3

    .line 134
    invoke-static {v3, v10, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->mark([BLjava/lang/String;I)[B

    move-result-object v0

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 135
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 136
    move-object v3, v5

    goto/16 :goto_5

    .line 130
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5148\u5b8c\u6210\u524d\u7f6e\u533a\u57df\u5e76\u83b7\u5f97\u5bf9\u5e94CG"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_4
    move-object/from16 p2, v4

    const-string v4, "refreshNewUIState"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 137
    filled-new-array {v3, v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v4, p2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v7

    goto :goto_1

    :cond_5
    move-object/from16 v10, v17

    :goto_1
    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-static {v4, v2, v6}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v4

    .line 141
    goto :goto_0

    .line 142
    :cond_6
    invoke-static {v5, v4}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    move-object v3, v5

    goto/16 :goto_5

    .line 143
    :cond_7
    const-string v3, "q7DailyBegin"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v3, :cond_8

    move-object v2, v5

    move-object/from16 v3, p1

    move-object/from16 v10, p2

    const/4 v12, 0x4

    move-object/from16 v4, p4

    move-object v0, v5

    move-object v5, v10

    move-object v10, v7

    move-object/from16 v18, v11

    move-object/from16 v11, v20

    move-wide/from16 v6, p5

    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->begin(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B[BJ)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v0

    goto/16 :goto_5

    .line 159
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    move-object v4, v10

    goto/16 :goto_6

    .line 144
    :cond_8
    move-object/from16 v10, p2

    move-object v3, v5

    move-object v4, v7

    move-object/from16 v18, v11

    move-object/from16 v11, v20

    const/4 v5, 0x4

    :try_start_3
    const-string v7, "refreshAreaBuff"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 145
    invoke-static {v9, v4}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v7

    .line 146
    invoke-static {v10, v12, v7}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->status([BLjava/lang/String;I)I

    move-result v12

    const/4 v5, 0x2

    if-lt v12, v5, :cond_e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    invoke-static {v1, v10, v5}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->available([B[B[B)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 148
    invoke-static {v9, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 149
    if-eqz v5, :cond_d

    .line 150
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v10, v7}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->buffEnabled([BI)Z

    move-result v12

    if-ne v6, v12, :cond_9

    goto :goto_3

    .line 151
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u6218\u6597\uff0c\u518d\u5207\u6362\u8bb0\u5fc6\u6bbf\u5802\u52a9\u529b"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_a
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v6, :cond_c

    move-object v6, v14

    move-object v12, v15

    move-wide/from16 v14, p5

    :try_start_4
    invoke-static {v0, v7, v14, v15}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->buffCount(Lcom/project7/localmanager/LocalFeatureCatalog;IJ)I

    move-result v0

    if-lez v0, :cond_b

    goto :goto_4

    .line 153
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8be5\u533a\u57df\u5c1a\u672a\u8fbe\u5230\u539f\u7248\u52a9\u529b\u5f00\u653e\u65f6\u95f4"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_c
    move-object v6, v14

    move-object v12, v15

    .line 154
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v10, v7, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->setBuff([BIZ)[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 155
    const-string v0, "refreshAreaBuffReply"

    const/4 v10, 0x4

    new-array v14, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v14, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v14, v10

    const/4 v7, 0x2

    aput-object v2, v14, v7

    aput-object v5, v14, v16

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 156
    nop

    .line 171
    :goto_5
    move-object v5, v3

    goto/16 :goto_a

    .line 149
    :cond_d
    move-object v6, v14

    move-object v12, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u52a9\u529b\u8bbe\u7f6e\u683c\u5f0f\u65e0\u6548"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_e
    move-object v6, v14

    move-object v12, v15

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8be5\u8bb0\u5fc6\u6bbf\u5802\u533a\u57df\u5c1a\u672a\u5f00\u653e"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_f
    move-object v6, v14

    move-object v12, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u8bb0\u5fc6\u6bbf\u5802\u6b64\u5173\u9700\u8981\u8054\u7f51\u623f\u95f4\uff0c\u5c1a\u672a\u63a5\u5165\uff1b\u672a\u6263\u9664\u7cbe\u795e\u529b"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_2

    .line 159
    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    :goto_6
    move-object v6, v14

    move-object v12, v15

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    move-object v4, v7

    move-object/from16 v18, v11

    move-object v6, v14

    move-object v12, v15

    move-object/from16 v11, v20

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    :goto_8
    move-object v4, v7

    move-object/from16 v18, v11

    move-object/from16 v21, v12

    move-object v12, v15

    move-object v11, v6

    move-object v6, v14

    .line 160
    :goto_9
    new-instance v5, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v5, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 161
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 162
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v2, v1

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 163
    :cond_10
    move-object v1, v12

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 164
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v1, 0x1

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v5, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 165
    :cond_11
    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalDailyEngine;->roomFailure(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v1, "m"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v5, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 167
    move-object/from16 v1, v21

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 168
    const/4 v0, 0x5

    move-object/from16 v1, v17

    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v1

    .line 169
    const-string v2, "h"

    invoke-static {v9, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "fir_rew"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 170
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "cle_rew"

    const/4 v9, 0x2

    aput-object v7, v6, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v16

    const-string v7, "are_rew"

    const/4 v9, 0x4

    aput-object v7, v6, v9

    const/4 v7, 0x5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 168
    move/from16 p0, v0

    move/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v6

    invoke-static/range {p0 .. p5}, Lcom/project7/localmanager/BsonLite;->combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I[B)[B

    move-result-object v0

    const-string v1, "combatOfflineReward"

    invoke-virtual {v5, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 172
    :cond_12
    :goto_a
    return-object v5
.end method

.method private static available([B[B[B)Z
    .locals 3

    .line 79
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "forbid"

    invoke-static {p2, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 80
    :cond_0
    const-string v1, "prev"

    invoke-static {p2, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v2, "cg"

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result p2

    .line 81
    if-eqz v1, :cond_1

    const-string v2, "ar"

    invoke-static {p1, v2, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->status([BLjava/lang/String;I)I

    move-result p1

    const/4 v1, 0x3

    if-lt p1, v1, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    .line 82
    const-string p1, "cgs"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 81
    :goto_1
    return v0

    .line 79
    :cond_4
    :goto_2
    return v0
.end method

.method private static begin(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B[BJ)V
    .locals 20

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    const-string v6, "s"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v7

    .line 177
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "PB"

    invoke-virtual {v1, v9, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    .line 178
    if-eqz v8, :cond_c

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v10, "online"

    invoke-static {v8, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 180
    const-string v9, "area"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v9

    .line 181
    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "PA"

    invoke-virtual {v1, v12, v11}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v11

    invoke-static {v10, v3, v11}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->available([B[B[B)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "ai"

    invoke-static {v3, v10, v9}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->status([BLjava/lang/String;I)I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_b

    .line 182
    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->stages([BI)Ljava/util/List;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 183
    const-string v10, "prev"

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v10

    const-string v12, "sr"

    invoke-static {v3, v12, v10}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->status([BLjava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_b

    .line 185
    :cond_0
    const-string v10, "h"

    invoke-static {v2, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 186
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const-string v14, "min_heroes"

    invoke-static {v8, v14}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-lt v13, v14, :cond_a

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const-string v14, "max_heroes"

    invoke-static {v8, v14}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v14

    if-gt v13, v14, :cond_a

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 187
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ne v13, v14, :cond_a

    .line 189
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15, v14}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u4f7f\u7528\u5df2\u62e5\u6709\u7684\u795e\u5668\u4f7f\u51fa\u6218"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_2
    const-string v13, "d"

    invoke-static {v2, v13}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v13, "buff_enhance"

    invoke-static {v2, v13}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 192
    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->buffEnabled([BI)Z

    move-result v13

    .line 193
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v13, :cond_9

    .line 195
    if-eqz v13, :cond_3

    invoke-static {v1, v9, v4, v5}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->buffCount(Lcom/project7/localmanager/LocalFeatureCatalog;IJ)I

    move-result v14

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    .line 196
    :goto_1
    if-eqz v13, :cond_5

    if-lez v14, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u533a\u57df\u5c1a\u672a\u8fbe\u5230\u539f\u7248\u52a9\u529b\u5f00\u653e\u65f6\u95f4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_5
    :goto_2
    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v11, "q7DailyBattle"

    invoke-static {v15, v11}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    .line 198
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v2

    move-object/from16 v17, v11

    const-string v11, "assist"

    move-object/from16 v18, v8

    const-string v8, "t"

    move/from16 v19, v14

    const/4 v14, 0x5

    if-eqz v2, :cond_7

    .line 199
    invoke-static {v15, v8}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v14, :cond_6

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 200
    invoke-static {v15, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 201
    invoke-static {v15, v11}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v13, :cond_6

    return-void

    .line 202
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u65e5\u5e38\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_7
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v15, "q7Battle"

    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 205
    const-string v14, "combat"

    invoke-static {v15, v14}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    const-string v15, "of"

    invoke-static {v14, v15}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 207
    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 208
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v4, v5}, Lcom/project7/localmanager/LocalServiceEngine;->recover([BJ)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 209
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v2, "P"

    invoke-virtual {v1, v2, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    const-string v4, "consume"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 210
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v5, 0x18

    new-array v5, v5, [Ljava/lang/Object;

    const-string v14, "active"

    const/4 v15, 0x0

    aput-object v14, v5, v15

    .line 211
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v5, v14

    const/4 v15, 0x2

    aput-object v8, v5, v15

    const/4 v8, 0x3

    const/4 v15, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v8

    const/4 v8, 0x4

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v15

    const/4 v6, 0x6

    aput-object v10, v5, v6

    const/4 v6, 0x7

    aput-object v12, v5, v6

    const/16 v6, 0x8

    const-string v7, "a"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "wishCost"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    .line 212
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const/16 v4, 0xc

    const-string v6, "wishFailCost"

    aput-object v6, v5, v4

    const/16 v4, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "fail_consume"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    const/16 v1, 0xe

    aput-object v11, v5, v1

    const/16 v1, 0xf

    .line 213
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x10

    const-string v2, "stacks"

    aput-object v2, v5, v1

    const/16 v1, 0x11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x12

    const-string v2, "lv"

    aput-object v2, v5, v1

    const/16 v1, 0x13

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 214
    const-string v4, "level"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x14

    const-string v2, "ml"

    aput-object v2, v5, v1

    const/16 v1, 0x15

    const-string v2, "monster_level"

    move-object/from16 v4, v18

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x16

    const-string v2, "f"

    aput-object v2, v5, v1

    const/16 v1, 0x17

    .line 215
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 210
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    move-object/from16 v2, v17

    invoke-static {v3, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 216
    return-void

    .line 206
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u7ed3\u675f\u5f53\u524d\u4e3b\u7ebf\u6218\u6597"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u51fa\u6218\u52a9\u529b\u8bbe\u7f6e\u4e0e\u5df2\u4fdd\u5b58\u8bbe\u7f6e\u4e0d\u4e00\u81f4\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u5173\u5361"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bb0\u5fc6\u6bbf\u5802\u51fa\u6218\u961f\u4f0d\u4eba\u6570\u4e0d\u7b26\u5408\u539f\u5173\u5361\u8981\u6c42"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bf7\u5148\u5b8c\u6210\u8bb0\u5fc6\u6bbf\u5802\u524d\u7f6e\u5173\u5361"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6b64\u8bb0\u5fc6\u6bbf\u5802\u5173\u5361\u5c1a\u672a\u63a5\u5165\u79bb\u7ebf\u6218\u6597\uff0c\u672a\u6263\u9664\u7cbe\u795e\u529b"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static buffCount(Lcom/project7/localmanager/LocalFeatureCatalog;IJ)I
    .locals 5

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "PE"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    .line 61
    const-string p1, "start"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result p1

    const-string v0, "interval"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v0

    .line 62
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-string v2, "buff"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    const-wide/32 v2, 0x5265c00

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide p2

    const v2, 0x15180

    invoke-static {p1, v2}, Ljava/lang/Math;->floorDiv(II)I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr p2, v2

    const-string p1, "first"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr p2, v2

    .line 64
    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-gez p1, :cond_1

    return v1

    .line 65
    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 66
    :cond_2
    const-wide/16 v1, 0x1

    int-to-long v3, v0

    div-long/2addr p2, v3

    add-long/2addr p2, v1

    const-string p1, "max"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    .line 62
    :cond_3
    :goto_0
    return v1
.end method

.method static buffEnabled([BI)Z
    .locals 3

    .line 54
    const-string v0, "abs"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

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

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p1, "1"

    invoke-static {v0, p1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 57
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "city"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 219
    const-string v2, "jpv"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p1

    .line 220
    if-ltz p1, :cond_0

    .line 221
    invoke-static {v0, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 222
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 223
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "p"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, "t"

    aput-object v2, v1, p1

    const/4 p1, 0x3

    const-string v2, "jpvt"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x4

    const-string v2, "cjsla"

    aput-object v2, v1, p1

    const/4 p1, 0x5

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "syncJingshenliPower"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 224
    return-void

    .line 220
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7cbe\u795e\u529b\u4e0d\u8db3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static eligible([B)V
    .locals 1

    .line 21
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "w"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    .line 23
    return-void

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u8bb0\u5fc6\u6bbf\u5802\u4ece\u7b2c\u4e8c\u5468\u76ee\u5f00\u653e"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static finish(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;[B)V
    .locals 26

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "q7DailyBattle"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 257
    const-string v6, "s"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v8

    const-string v7, "a"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v7

    .line 258
    const-string v9, "h"

    invoke-static {v3, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 259
    const-string v11, "t"

    invoke-static {v4, v11}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v12

    const/4 v13, 0x5

    .line 295
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 259
    if-ne v12, v13, :cond_f

    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-ne v11, v13, :cond_f

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-ne v8, v6, :cond_f

    .line 260
    invoke-static {v4, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 262
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v6

    const-string v15, "combatOfflineReward"

    const-string v9, "mpd"

    const-string v12, "reply"

    const/4 v11, 0x2

    const/4 v13, 0x0

    if-nez v6, :cond_1

    .line 263
    invoke-static {v4, v12}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 264
    new-array v1, v11, [Ljava/lang/Object;

    const-string v2, "d"

    aput-object v2, v1, v13

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "memoryPalaceQueryReply"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 265
    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 267
    :cond_0
    return-void

    .line 269
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/BsonLite;->combatWinValue([B)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v13

    .line 270
    :goto_0
    const-string v13, "e"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 272
    const-string v13, "clear"

    if-eqz v6, :cond_3

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v11

    move-object/from16 v19, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 273
    const-string v12, "assist"

    invoke-static {v4, v12}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 274
    const-string v12, "buff_enhance"

    invoke-static {v3, v12}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    .line 272
    :cond_3
    move-object/from16 v19, v12

    .line 274
    :cond_4
    const/4 v3, 0x0

    .line 275
    :goto_1
    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "PB"

    invoke-virtual {v1, v12, v11}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v11

    .line 276
    if-eqz v11, :cond_e

    .line 277
    move-object/from16 v20, v15

    const-string v15, "sr"

    move-object/from16 v21, v5

    invoke-static {v9, v15, v8}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->status([BLjava/lang/String;I)I

    move-result v5

    .line 278
    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    const/16 v22, 0x1

    goto :goto_2

    :cond_5
    const/16 v22, 0x0

    :goto_2
    if-eqz v3, :cond_6

    move-object/from16 v23, v4

    const/4 v4, 0x2

    if-ge v5, v4, :cond_7

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v23, v4

    :cond_7
    const/4 v4, 0x0

    .line 279
    :goto_3
    if-eqz v22, :cond_8

    move-object/from16 v24, v10

    const-string v10, "first"

    invoke-static {v0, v2, v11, v10}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BLjava/lang/String;)[B

    move-result-object v10

    goto :goto_4

    :cond_8
    move-object/from16 v24, v10

    sget-object v10, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 280
    :goto_4
    if-eqz v4, :cond_9

    invoke-static {v0, v2, v11, v13}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BLjava/lang/String;)[B

    move-result-object v2

    goto :goto_5

    :cond_9
    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 281
    :goto_5
    if-eqz v6, :cond_d

    .line 282
    if-eqz v3, :cond_a

    const/4 v11, 0x2

    goto :goto_6

    :cond_a
    const/4 v11, 0x1

    :goto_6
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v9, v15, v8, v5}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->setStatus([BLjava/lang/String;II)[B

    move-result-object v5

    .line 283
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v11, "PA"

    invoke-virtual {v1, v11, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v9

    const-string v11, "stages"

    invoke-static {v9, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 284
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v13

    const-string v14, "prev"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v13

    if-ne v13, v8, :cond_b

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->stages([BI)Ljava/util/List;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 287
    nop

    .line 288
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {v5, v7, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->setStages([BILjava/util/List;)[B

    move-result-object v1

    const-string v5, "nss"

    invoke-static {v1, v5, v11}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->mark([BLjava/lang/String;I)[B

    move-result-object v1

    move-object v9, v1

    goto :goto_7

    .line 294
    :cond_c
    move-object v9, v5

    const/4 v11, 0x0

    :goto_7
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 295
    goto :goto_8

    :cond_d
    const-string v5, "P"

    invoke-virtual {v1, v5, v14}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v11

    const-string v12, "consume"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v5, v14}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v5, "fail_consume"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v1

    sub-int/2addr v11, v1

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    const/4 v11, 0x0

    .line 296
    :goto_8
    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 297
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "ns"

    const/4 v9, 0x0

    aput-object v5, v1, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v1, v9

    const-string v5, "aid"

    const/4 v9, 0x2

    aput-object v5, v1, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v1, v7

    const-string v5, "sid"

    const/4 v9, 0x4

    aput-object v5, v1, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x5

    aput-object v5, v1, v11

    const-string v5, "as"

    const/4 v11, 0x6

    aput-object v5, v1, v11

    .line 298
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v5, 0x7

    aput-object v12, v1, v5

    const/16 v12, 0x8

    const-string v13, "r"

    aput-object v13, v1, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v1, v15

    const/16 v14, 0xa

    const-string v25, "cf"

    aput-object v25, v1, v14

    const/16 v14, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v14

    .line 297
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 299
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const-string v14, "fir_rew"

    const/16 v17, 0x0

    aput-object v14, v3, v17

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v16, 0x1

    aput-object v14, v3, v16

    const-string v14, "cle_rew"

    const/16 v18, 0x2

    aput-object v14, v3, v18

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "are_rew"

    aput-object v4, v3, v9

    .line 300
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v7, 0x5

    aput-object v4, v3, v7

    const-string v4, "fir_stg_rew"

    aput-object v4, v3, v11

    aput-object v10, v3, v5

    const-string v4, "cle_stg_rew"

    aput-object v4, v3, v12

    aput-object v2, v3, v15

    .line 299
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v12

    .line 301
    const/4 v7, 0x5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object/from16 v9, v24

    move/from16 v2, v18

    move v11, v6

    move-object/from16 v3, v19

    invoke-static/range {v7 .. v12}, Lcom/project7/localmanager/BsonLite;->combatOfflineRewardDocument(IILjava/lang/Iterable;Ljava/lang/Iterable;I[B)[B

    move-result-object v4

    .line 302
    const-string v5, "active"

    move-object/from16 v6, v23

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v5

    .line 303
    invoke-static {v5, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 304
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v6, v21

    invoke-static {v5, v6, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 305
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v13, v2, v7

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "memoryPalaceBattleFinish"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 306
    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 307
    return-void

    .line 276
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7f3a\u5c11\u539f\u7248\u8bb0\u5fc6\u6bbf\u5802\u5173\u5361\u76ee\u5f55"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8bb0\u5fc6\u6bbf\u5802\u7ed3\u7b97\u4e0e\u5165\u573a\u8bb0\u5f55\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BLjava/lang/String;)[B
    .locals 16

    .line 236
    move-object/from16 v0, p0

    new-instance v7, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v7, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 237
    nop

    .line 238
    invoke-static/range {p2 .. p3}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v12, "money"

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [B

    .line 239
    const-string v1, "k"

    invoke-static {v13, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 240
    const-string v1, "i"

    invoke-static {v13, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-string v15, "n"

    invoke-static {v13, v15}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v5

    const-string v1, "q"

    invoke-static {v13, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v6

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v14

    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 241
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v13, v15}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v10

    .line 242
    :cond_0
    const-string v1, "summonCoin"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v13, v15}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    .line 243
    :cond_1
    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 245
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->treasureRewards:Ljava/util/List;

    iget-object v1, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->treasureRewards:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object v1, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x66

    if-eq v3, v4, :cond_3

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_4
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "item"

    aput-object v2, v1, v9

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v2, "treasure"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->treasureRewards:Ljava/util/List;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    aput-object v12, v1, v0

    const/4 v0, 0x5

    .line 252
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "summoncoin"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 251
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method static handles([BLjava/lang/String;[B)Z
    .locals 3

    .line 16
    sget-object v0, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->METHODS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "q7DailyBegin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const-string v2, "t"

    if-eqz v0, :cond_0

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 17
    :cond_0
    const-string v0, "q7DailyFinish"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_3

    .line 18
    :cond_1
    const-string p2, "q7DailyReset"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "q7DailyBattle"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 16
    :goto_1
    return p0
.end method

.method private static mark([BLjava/lang/String;I)[B
    .locals 2

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object p0

    return-object p0
.end method

.method static refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B
    .locals 9

    .line 85
    const-string v0, "mpd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 86
    const-string v1, "ai"

    const-string v2, "asi"

    const-string v3, "sr"

    const-string v4, "ar"

    const-string v5, "nas"

    const-string v6, "nss"

    const-string v7, "abs"

    const-string v8, "hj"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_0

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 87
    :cond_0
    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    const-string v3, "PA:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PA"

    invoke-virtual {p1, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 93
    invoke-static {p0, v0, v3}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->available([B[B[B)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 94
    :cond_3
    const-string v4, "ai"

    invoke-static {v0, v4, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->status([BLjava/lang/String;I)I

    move-result v5

    .line 95
    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v5, :cond_5

    .line 96
    const-string v5, "cg"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_2
    invoke-static {v0, v4, v2, v5}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->setStatus([BLjava/lang/String;II)[B

    move-result-object v0

    .line 97
    const-string v5, "nas"

    invoke-static {v0, v5, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->mark([BLjava/lang/String;I)[B

    move-result-object v0

    .line 98
    invoke-static {v0, v2, v7}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->setBuff([BIZ)[B

    move-result-object v0

    .line 100
    :cond_5
    invoke-static {v0, v4, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->status([BLjava/lang/String;I)I

    move-result v4

    if-lt v4, v6, :cond_6

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->stages([BI)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 101
    const-string v4, "stages"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 102
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 103
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->setStages([BILjava/util/List;)[B

    move-result-object v0

    .line 104
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "nss"

    invoke-static {v0, v3, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->mark([BLjava/lang/String;I)[B

    move-result-object v0

    .line 107
    :cond_6
    goto/16 :goto_1

    .line 108
    :cond_7
    return-object v0
.end method

.method private static reset(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "q7DailyBattle"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 227
    const-string v2, "s"

    invoke-static {p2, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 228
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u53d6\u6d88\u8bf7\u6c42\u4e0e\u5f53\u524d\u8bb0\u5fc6\u6bbf\u5802\u6218\u6597\u4e0d\u5339\u914d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 230
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2}, Lcom/project7/localmanager/LocalDailyEngine;->active([B)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 231
    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "P"

    invoke-virtual {p1, v2, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    const-string v3, "consume"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "fail_consume"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->charge(Lcom/project7/localmanager/LocalResourceEngine$Result;I)V

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    sget-object p2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {p1, v1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 233
    return-void
.end method

.method private static save(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "mpd"

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 112
    return-void
.end method

.method private static setBuff([BIZ)[B
    .locals 9

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    const-string v1, "abs"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 71
    const-string v7, "0"

    invoke-static {v3, v7}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 73
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v5

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "1"

    invoke-static {v3, v7}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method private static setStages([BILjava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    const-string v1, "asi"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const-string v7, "0"

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-eq v8, p1, :cond_0

    .line 44
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v5, "1"

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    goto :goto_0

    .line 45
    :cond_1
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object p2, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method static setStatus([BLjava/lang/String;II)[B
    .locals 8

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 32
    const-string v6, "0"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-eq v7, p2, :cond_0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v4, "1"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_1
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method static stages([BI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 37
    const-string v0, "asi"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

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

    .line 38
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    const-string p0, "1"

    invoke-static {v0, p0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 39
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static status([BLjava/lang/String;I)I
    .locals 1

    .line 25
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 26
    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, p2, :cond_0

    const-string p0, "1"

    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalMemoryPalaceEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
