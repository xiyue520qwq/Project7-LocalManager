.class final Lcom/project7/localmanager/LocalPersonalEngine;
.super Ljava/lang/Object;
.source "LocalPersonalEngine.java"


# static fields
.field static final METHODS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    const-string v0, "dailyCheck"

    const-string v1, "requestMonDailyCheck"

    const-string v2, "requestMonDailyReCheck"

    const-string v3, "reqesutMonDailyTotalReward"

    const-string v4, "requestTaskList"

    const-string v5, "requesGetNewbieTaskReward"

    const-string v6, "requestNewbieTaskNodeReward"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalPersonalEngine;->METHODS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 23

    .line 218
    move-object/from16 v0, p2

    move-object/from16 v8, p3

    move-wide/from16 v6, p5

    const-string v1, "q7SignCount"

    const-string v9, "rw"

    const-string v10, "ccc"

    const-string v11, "rs"

    const-string v12, "replyDailyCheck"

    const-string v13, "dailyCheck"

    const-string v2, "tdc"

    const-string v14, "tdcc"

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-static {v4, v0, v3, v6, v7}, Lcom/project7/localmanager/LocalPersonalEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;J)[B

    move-result-object v15

    .line 219
    new-instance v5, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v5, v15}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 221
    const/16 v16, 0x5

    const/16 v17, 0x3

    const/16 v18, 0x0

    :try_start_0
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 222
    invoke-static {v15, v14}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-wide/16 v21, 0x3e8

    div-long v6, v6, v21

    long-to-int v6, v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v6

    .line 223
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0xf

    if-lt v4, v3, :cond_0

    move-object/from16 v22, v13

    const/4 v13, 0x6

    goto/16 :goto_1

    .line 227
    :cond_0
    const-string v3, "DS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_a

    move-object/from16 v22, v13

    :try_start_1
    const-string v13, "1:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    add-int/2addr v4, v13

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    move-object/from16 v3, p1

    invoke-static {v5, v3, v0, v13}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 228
    iget-object v0, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v2, v13}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    invoke-static {v0, v14, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    iput-object v0, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 229
    iget-object v0, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "q7SignDay"

    invoke-static {v0, v2, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    invoke-static {v15, v1}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    iput-object v0, v5, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 230
    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    .line 231
    const/4 v13, 0x6

    :try_start_2
    new-array v0, v13, [Ljava/lang/Object;

    aput-object v11, v0, v18
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v1, 0x2

    :try_start_4
    aput-object v10, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v17

    const/4 v1, 0x4

    aput-object v9, v0, v1

    invoke-virtual {v5}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v1

    aput-object v1, v0, v16

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v5, v12, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 232
    move-object/from16 v20, v5

    goto/16 :goto_3

    .line 237
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move/from16 v19, v1

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    goto/16 :goto_6

    .line 223
    :cond_1
    move-object/from16 v22, v13

    const/4 v13, 0x6

    .line 224
    :goto_1
    const-string v0, "updateDailyCheck"

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v14, v3, v18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v20, 0x1

    :try_start_5
    aput-object v4, v3, v20

    const/4 v4, 0x2

    aput-object v2, v3, v4

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v17

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 225
    return-object v5

    .line 237
    :catch_4
    move-exception v0

    goto/16 :goto_7

    :catch_5
    move-exception v0

    goto/16 :goto_7

    .line 232
    :cond_2
    move-object/from16 v3, p1

    move-object/from16 v22, v13

    const/4 v1, 0x4

    const/4 v4, 0x2

    const/4 v13, 0x6

    const/16 v20, 0x1

    const-string v2, "requestMonDaily"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "reqesutMonDailyTotalReward"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_8

    if-eqz v2, :cond_3

    move/from16 v19, v20

    move-object/from16 v20, v5

    goto :goto_2

    .line 235
    :cond_3
    move/from16 v19, v1

    move-object v1, v5

    move-object/from16 v2, p1

    move v13, v4

    move/from16 v4, v19

    move/from16 v19, v20

    move-object/from16 v3, p2

    const/4 v13, 0x6

    move-object/from16 v4, p3

    move-object/from16 v20, v5

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    :try_start_6
    invoke-static/range {v1 .. v7}, Lcom/project7/localmanager/LocalPersonalEngine;->tasks(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BJ)V

    goto :goto_3

    .line 232
    :cond_4
    move/from16 v19, v20

    move-object/from16 v20, v5

    .line 233
    :goto_2
    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/project7/localmanager/LocalPersonalEngine;->monthly(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BJ)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_6

    .line 244
    :goto_3
    move-object/from16 v5, v20

    goto/16 :goto_9

    .line 237
    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    :goto_4
    move/from16 v19, v20

    goto :goto_8

    :catch_a
    move-exception v0

    goto :goto_5

    :catch_b
    move-exception v0

    :goto_5
    move-object/from16 v22, v13

    :goto_6
    const/4 v13, 0x6

    :goto_7
    const/16 v19, 0x1

    .line 238
    :goto_8
    new-instance v5, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v5, v15}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m"

    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v5, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 240
    move-object/from16 v1, v22

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v13, [Ljava/lang/Object;

    aput-object v11, v0, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v19

    const/4 v1, 0x2

    aput-object v10, v0, v1

    invoke-static {v15, v14}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v17

    const/4 v1, 0x4

    aput-object v9, v0, v1

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v1, v0, v16

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v5, v12, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_9

    .line 241
    :cond_5
    const/4 v1, 0x4

    const-string v0, "requesGetNewbieTaskReward"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "r"

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v2, v0, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v19

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "replyNewbieTaskReward"

    invoke-virtual {v5, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_9

    .line 242
    :cond_6
    const-string v0, "requestNewbieTaskNodeReward"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "i"

    if-eqz v0, :cond_7

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v2, v0, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v19

    const/4 v1, 0x2

    aput-object v3, v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "rwd"

    aput-object v2, v1, v18

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v2, v1, v19

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, v0, v17

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "replyNewbieTaskNodeReward"

    invoke-virtual {v5, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_9

    .line 243
    :cond_7
    const-string v0, "requestTaskList"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/LocalPersonalEngine;->monthReply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v19

    const/4 v2, 0x2

    aput-object v3, v1, v2

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v2, v1, v17

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 245
    :cond_8
    :goto_9
    return-object v5
.end method

.method static calendarDays([B)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 146
    if-eqz v3, :cond_0

    .line 147
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v2

    :goto_1
    goto :goto_2

    .line 150
    :cond_0
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 151
    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "1"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 152
    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    :goto_2
    goto :goto_0

    .line 155
    :cond_2
    return-object v0
.end method

.method private static complete([BLcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z
    .locals 8

    .line 179
    const-string v0, "para"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 181
    :cond_0
    const-string v1, "type"

    invoke-static {p2, v1}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result p2

    .line 182
    const-string v1, "weeknum"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 183
    const-string v3, "heromgr"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "hrs"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    .line 184
    const/16 v4, 0x75

    const/4 v5, 0x1

    if-ne p2, v4, :cond_2

    const-string p0, "w"

    invoke-static {v1, p0}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p0, p1, :cond_1

    move v2, v5

    :cond_1
    return v2

    .line 185
    :cond_2
    const/16 v1, 0x78

    if-ne p2, v1, :cond_4

    const-string p1, "ldd"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string p1, "ct"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p0, p1, :cond_3

    move v2, v5

    :cond_3
    return v2

    .line 186
    :cond_4
    const/16 v1, 0x31

    const/4 v4, 0x2

    if-ne p2, v1, :cond_9

    .line 187
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_5

    const/16 p2, 0x452

    goto :goto_0

    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v5

    mul-int/lit16 p2, p2, 0x3e8

    add-int/lit8 p2, p2, 0x6a

    .line 188
    :goto_0
    if-eqz p1, :cond_6

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p1

    if-eqz p1, :cond_6

    return v5

    .line 189
    :cond_6
    const-string p1, "q7BattleReceipts"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 190
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v3, "s"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, p2, :cond_7

    return v5

    .line 191
    :cond_8
    return v2

    .line 193
    :cond_9
    const/16 p0, 0x84

    const-string p1, "1"

    if-ne p2, p0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x3

    if-lt p0, v1, :cond_e

    .line 194
    nop

    .line 195
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p2, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 196
    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 197
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "0"

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-eq v6, v1, :cond_a

    goto :goto_1

    .line 198
    :cond_a
    const-string v1, "ar"

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v3, "o"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v1

    .line 199
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v1, v3, :cond_b

    add-int/lit8 p2, p2, 0x1

    .line 200
    :cond_b
    goto :goto_1

    .line 201
    :cond_c
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p2, p0, :cond_d

    move v2, v5

    :cond_d
    return v2

    .line 203
    :cond_e
    const/16 p0, 0x3d

    if-ne p2, p0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v4, :cond_12

    .line 204
    nop

    .line 205
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p2, v2

    :cond_f
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v4, "oa"

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 206
    :cond_10
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p2, p0, :cond_11

    move v2, v5

    :cond_11
    return v2

    .line 208
    :cond_12
    const/16 p0, 0x72

    if-ne p2, p0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v4, :cond_16

    .line 209
    nop

    .line 210
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p2, v2

    :cond_13
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v3, "ti"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v3, "mc"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/16 v3, 0x19

    if-lt v1, v3, :cond_13

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 211
    :cond_14
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p2, p0, :cond_15

    move v2, v5

    :cond_15
    return v2

    .line 213
    :cond_16
    return v2
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 11
    sget-object v0, Lcom/project7/localmanager/LocalPersonalEngine;->METHODS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static monthReply(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 249
    const-string v0, "requestMonDailyCheck"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "replyMonDailyCheck"

    goto :goto_0

    :cond_0
    const-string v0, "requestMonDailyReCheck"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 250
    const-string p0, "replyMonDailyReCheck"

    goto :goto_0

    :cond_1
    const-string p0, "replyMonDailyTotalReward"

    .line 249
    :goto_0
    return-object p0
.end method

.method private static monthly(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BJ)V
    .locals 31

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "gid"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v6

    const-string v7, "di"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v7

    .line 256
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "MC"

    invoke-virtual {v2, v9, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    .line 257
    const-string v9, "UTC"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 258
    const-wide/32 v10, 0x1808580

    sub-long v10, p5, v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 259
    const-string v10, "time"

    invoke-static {v8, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 260
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v12, v14, :cond_10

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v12, 0x2

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v13

    if-ne v10, v14, :cond_10

    .line 262
    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 263
    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v15, "sma"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    const-string v10, "mdcd"

    invoke-static {v14, v10}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    .line 264
    const-string v11, "mdci"

    invoke-static {v12, v11}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    move-object/from16 v16, v11

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/project7/localmanager/LocalPersonalEngine;->calendarDays([B)Ljava/util/Map;

    move-result-object v11

    .line 265
    const-string v13, "mdrci"

    move-object/from16 v17, v5

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    move-object/from16 v18, v13

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalPersonalEngine;->calendarDays([B)Ljava/util/Map;

    move-result-object v5

    .line 266
    const-string v13, "reqesutMonDailyTotalReward"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/16 v19, 0x7

    const/16 v20, 0x6

    const-string v21, "day"

    const-string v22, "deco_id"

    move-object/from16 v23, v15

    const-string v15, "cd"

    move-object/from16 v24, v10

    const-string v10, "i"

    const/16 v25, 0x3

    const-string v26, "r"

    move-object/from16 v27, v14

    if-eqz v13, :cond_2

    .line 267
    const-string v2, "mdtr"

    invoke-static {v12, v2}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v9

    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    add-int/2addr v11, v5

    const-string v5, "count"

    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-lt v11, v5, :cond_1

    .line 270
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v11, "supported"

    invoke-static {v8, v11}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 271
    const/4 v5, 0x1

    invoke-static {v0, v1, v8, v5}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 272
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {v9}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {v12, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 274
    goto/16 :goto_5

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u672c\u6708\u7279\u6b8a\u7b7e\u5230\u5956\u52b1\u5c1a\u672a\u5b9e\u73b0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7d2f\u8ba1\u7b7e\u5230\u5956\u52b1\u672a\u6ee1\u8db3\u6761\u4ef6\u6216\u5df2\u9886\u53d6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    const-string v13, "requestMonDailyReCheck"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 276
    if-eqz v13, :cond_3

    invoke-static {v4, v15}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v28

    move/from16 v14, v28

    goto :goto_0

    :cond_3
    move v14, v9

    .line 277
    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DECO"

    invoke-virtual {v2, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 278
    const/4 v4, 0x1

    if-lt v14, v4, :cond_f

    if-gt v14, v9, :cond_f

    if-eqz v13, :cond_4

    if-eq v14, v9, :cond_f

    :cond_4
    if-eqz v3, :cond_f

    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 279
    const-string v9, "hero"

    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 280
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v29, v11

    goto/16 :goto_6

    .line 285
    :cond_5
    if-eqz v13, :cond_a

    .line 286
    nop

    .line 287
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "inv"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "items"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    move-object/from16 v29, v11

    const/16 v11, 0xbef

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 288
    move-object/from16 v30, v3

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ne v3, v11, :cond_6

    const-string v3, "w"

    invoke-static {v9, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_6

    const/4 v4, 0x1

    :cond_6
    move-object/from16 v11, v29

    move-object/from16 v3, v30

    goto :goto_1

    .line 289
    :cond_7
    if-eqz v4, :cond_8

    const/4 v3, 0x1

    invoke-static {v0, v11, v3}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    goto :goto_2

    .line 291
    :cond_8
    const/4 v3, 0x1

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "MR"

    invoke-virtual {v2, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 292
    if-eqz v3, :cond_9

    const-string v4, "cost"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-lez v9, :cond_9

    .line 293
    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v4, "yuanbao"

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/LocalGiftEngine;->spend(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;I)V

    goto :goto_2

    .line 292
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8865\u7b7e\u6b21\u6570\u5df2\u8fbe\u5230\u4e0a\u9650"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_a
    move-object/from16 v29, v11

    .line 296
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content"

    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MD"

    invoke-virtual {v2, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 297
    if-eqz v13, :cond_b

    move-object/from16 v11, v18

    goto :goto_3

    :cond_b
    move-object/from16 v11, v16

    .line 298
    :goto_3
    if-eqz v13, :cond_c

    goto :goto_4

    :cond_c
    move-object/from16 v5, v29

    .line 299
    :goto_4
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {v12, v11}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v12, v11, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 302
    :goto_5
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v4, v24

    move-object/from16 v3, v27

    invoke-static {v3, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    move-object/from16 v3, v23

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 303
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 304
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/LocalPersonalEngine;->monthReply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v26, v3, v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x2

    aput-object v10, v3, v5

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v17, v8, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    aput-object v22, v8, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v25

    const/4 v2, 0x4

    aput-object v21, v8, v2

    move-object/from16 v2, p4

    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v8, v4

    aput-object v26, v8, v20

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v2

    aput-object v2, v8, v19

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    aput-object v2, v3, v25

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 305
    return-void

    .line 280
    :cond_d
    move-object/from16 v29, v11

    .line 281
    :goto_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    :cond_e
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_7
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 282
    invoke-static/range {p3 .. p3}, Lcom/project7/localmanager/LocalPersonalEngine;->monthReply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v26, v4, v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v7, 0x2

    aput-object v10, v4, v7

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v17, v8, v3

    .line 283
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v5

    aput-object v22, v8, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v25

    const/4 v1, 0x4

    aput-object v21, v8, v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v8, v3

    aput-object v26, v8, v20

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v1, v8, v19

    .line 282
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, v4, v25

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 283
    return-void

    .line 279
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7b7e\u5230\u65e5\u671f\u6216\u89d2\u8272\u88c5\u9970\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7b7e\u5230\u6708\u4efd\u5df2\u5207\u6362\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u65e5\u8bb0\u7c3f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;J)[B
    .locals 23

    .line 14
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p0

    invoke-static {v4, v2, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->refreshLoginDays([BJ)[B

    move-result-object v4

    .line 15
    invoke-static {v4}, Lcom/project7/localmanager/LocalPersonalEngine;->repairMonthlyRecords([B)[B

    move-result-object v4

    .line 16
    const-string v5, "oaed"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    .line 17
    const-string v7, "ncb"

    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_0

    .line 18
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v6

    .line 19
    const-string v7, "cnc"

    invoke-static {v6, v7, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    .line 20
    invoke-static {v4, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 22
    :cond_0
    const-string v5, "ash"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v6

    const-string v7, "0"

    const/4 v8, 0x0

    if-nez v6, :cond_1

    .line 23
    const-string v6, "heromgr"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    const-string v10, "hrs"

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v6

    .line 24
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 26
    :cond_1
    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    long-to-int v2, v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v3

    .line 27
    const-string v5, "q7SignDay"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 28
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_3

    :cond_2
    const-string v3, "tdc"

    invoke-static {v4, v3, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v4

    .line 30
    :cond_3
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 31
    new-instance v5, Ljava/util/LinkedHashSet;

    const-string v6, "q7HiddenCgs"

    invoke-static {v4, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 32
    const-string v10, "cgs"

    invoke-static {v4, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "visible"

    const-string v14, "CG"

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 33
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v14

    .line 34
    if-eqz v14, :cond_4

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v14, v13}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    :goto_1
    goto :goto_0

    .line 37
    :cond_5
    new-instance v11, Ljava/util/LinkedHashSet;

    const-string v12, "ncgs"

    invoke-static {v4, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 38
    if-eqz v1, :cond_9

    iget-object v15, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 39
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "EC"

    invoke-virtual {v0, v9, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    .line 40
    if-eqz v8, :cond_8

    invoke-static {v8, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 41
    move-object/from16 p3, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v14, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    .line 42
    if-eqz v8, :cond_6

    move-object/from16 p4, v14

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v13}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object/from16 p4, v14

    .line 43
    :cond_7
    :goto_4
    move-object/from16 v8, p3

    move-object/from16 v14, p4

    goto :goto_3

    .line 40
    :cond_8
    move-object/from16 p4, v14

    .line 44
    move-object/from16 v14, p4

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_2

    .line 45
    :cond_9
    invoke-interface {v11, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 46
    invoke-static {v4, v10, v3}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v3

    .line 47
    invoke-static {v3, v12, v11}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v3

    .line 48
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3, v6, v5}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v3

    .line 50
    :cond_a
    const-string v4, "tsd"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    .line 51
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const-string v9, "ctl"

    invoke-static {v5, v9}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 54
    invoke-static {v5, v9}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v11}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 55
    if-eqz v11, :cond_b

    new-instance v12, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v12, v11}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_b
    goto :goto_5

    .line 57
    :cond_c
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 58
    nop

    .line 59
    const-string v11, "td"

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, "uuid"

    move-object/from16 p3, v4

    const-string v4, "rt"

    move-object/from16 p4, v9

    const-string v9, "tid"

    move-object/from16 v17, v5

    const-string v5, "ft"

    move-object/from16 v18, v11

    if-eqz v14, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 60
    const-string v11, "1"

    invoke-static {v14, v11}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    .line 61
    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v9

    .line 62
    move-object/from16 v19, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v20, v8

    const-string v8, "NT"

    invoke-virtual {v0, v8, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    .line 63
    if-eqz v8, :cond_f

    .line 64
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v11, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_d

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "skip"

    invoke-static {v8, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    add-int/2addr v13, v4

    goto :goto_7

    .line 66
    :cond_d
    invoke-static {v11, v5}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_e

    invoke-static {v3, v1, v8}, Lcom/project7/localmanager/LocalPersonalEngine;->complete([BLcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 67
    invoke-static {v11, v5, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    const-string v5, "ts"

    const/4 v9, 0x3

    invoke-static {v4, v5, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v11

    .line 69
    :cond_e
    :goto_7
    invoke-static {v11, v8, v3, v1}, Lcom/project7/localmanager/LocalPersonalEngine;->withTaskCounter([B[B[BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v11

    .line 71
    :cond_f
    invoke-static {v14, v7}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    if-nez v4, :cond_10

    invoke-static {v11, v15}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    :cond_10
    if-eqz v4, :cond_11

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/io/Serializable;

    const/4 v8, 0x0

    aput-object v4, v5, v8

    const/4 v4, 0x1

    aput-object v11, v5, v4

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_11
    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move-object/from16 v5, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v8, v20

    goto/16 :goto_6

    .line 75
    :cond_12
    move-object/from16 v20, v8

    .line 76
    iget-object v7, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "NT:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    goto :goto_8

    .line 78
    :cond_13
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 79
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    goto :goto_8

    .line 80
    :cond_14
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v12

    .line 81
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-static {v3, v1, v14}, Lcom/project7/localmanager/LocalPersonalEngine;->complete([BLcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z

    move-result v14

    .line 82
    move-object/from16 v19, v7

    const/16 v7, 0x12

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v15, v7, v21

    move-object/from16 v21, v10

    new-instance v10, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v10, v12}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x1

    aput-object v10, v7, v16

    const/4 v10, 0x2

    aput-object v9, v7, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v7, v11

    const/4 v10, 0x4

    const-string v11, "ct"

    aput-object v11, v7, v10

    const/4 v10, 0x5

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x6

    const-string v11, "at"

    aput-object v11, v7, v10

    const/4 v10, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    const/16 v10, 0x8

    aput-object v5, v7, v10

    const/16 v10, 0x9

    if-eqz v14, :cond_15

    move v11, v2

    goto :goto_9

    :cond_15
    const/4 v11, 0x0

    :goto_9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    const/16 v10, 0xa

    aput-object v4, v7, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v7, v10

    const/16 v10, 0xc

    const-string v11, "ts"

    aput-object v11, v7, v10

    const/16 v10, 0xd

    .line 84
    if-eqz v14, :cond_16

    const/4 v11, 0x3

    goto :goto_a

    :cond_16
    const/4 v11, 0x2

    :goto_a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    const/16 v10, 0xe

    const-string v11, "ext"

    aput-object v11, v7, v10

    const/16 v10, 0xf

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    aput-object v11, v7, v10

    const/16 v10, 0x10

    const-string v11, "mi"

    aput-object v11, v7, v10

    const/16 v10, 0x11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    aput-object v11, v7, v10

    .line 82
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    .line 85
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v7, v8, v3, v1}, Lcom/project7/localmanager/LocalPersonalEngine;->withTaskCounter([B[B[BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v7

    .line 86
    const/4 v8, 0x2

    new-array v10, v8, [Ljava/io/Serializable;

    const/4 v11, 0x0

    aput-object v12, v10, v11

    const/4 v14, 0x1

    aput-object v7, v10, v14

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v7, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v7, v12}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, v20

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    move-object/from16 v7, v19

    move-object/from16 v10, v21

    goto/16 :goto_8

    .line 89
    :cond_17
    move-object/from16 v10, v20

    const/4 v8, 0x2

    const/4 v14, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v1, v2, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    move-object/from16 v2, p4

    invoke-static {v1, v2, v10}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 90
    move-object/from16 v2, p3

    invoke-static {v3, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 91
    const-string v2, "ntd"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 92
    const-string v4, "pc"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v5

    .line 93
    iget-object v0, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "NN:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 94
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const-string v7, "count"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v6

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x3

    if-eq v7, v9, :cond_1b

    goto :goto_c

    :cond_18
    const/4 v9, 0x3

    :goto_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-lt v13, v6, :cond_19

    move v6, v8

    goto :goto_d

    :cond_19
    move v6, v14

    :goto_d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 93
    :cond_1a
    const/4 v9, 0x3

    :cond_1b
    :goto_e
    goto :goto_b

    .line 97
    :cond_1c
    invoke-static {v5}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    const-string v3, "pn"

    invoke-static {v0, v3, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 98
    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static refreshLoginDays([BJ)[B
    .locals 16

    .line 102
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v1

    long-to-int v1, v1

    .line 104
    const-string v2, "sma"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "ltd"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    .line 105
    const-string v6, "q7LoginDay"

    invoke-static {v0, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 107
    const-string v8, "q7LoginCount"

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v9

    const-string v10, "n"

    invoke-static {v5, v10}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 108
    if-nez v7, :cond_1

    .line 109
    const-string v11, "q7SignDay"

    invoke-static {v0, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 110
    const-string v13, "q7SignCount"

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v13

    .line 111
    if-lez v13, :cond_2

    .line 112
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-wide/16 v14, 0x3e8

    div-long v14, p1, v14

    long-to-int v14, v14

    invoke-static {v14}, Lcom/project7/localmanager/LocalGiftEngine;->day(I)I

    move-result v14

    if-ne v11, v14, :cond_0

    const/4 v12, 0x0

    :cond_0
    add-int/2addr v13, v12

    .line 111
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v1, v11, :cond_2

    .line 114
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 113
    :cond_2
    :goto_0
    nop

    .line 116
    :goto_1
    add-int/lit8 v11, v9, -0x1

    invoke-static {v5, v10, v11}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 117
    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 118
    invoke-static {v0, v8, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 119
    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    invoke-static {v0, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static repairMonthlyRecords([B)[B
    .locals 17

    .line 159
    move-object/from16 v0, p0

    const-string v1, "sma"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "mdcd"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 160
    nop

    .line 161
    const-string v5, "mdci"

    const-string v6, "mdrci"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 162
    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    .line 163
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 164
    invoke-static {v9, v11}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    .line 166
    nop

    .line 167
    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v6

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v12, v15}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_0

    goto :goto_3

    :cond_0
    move/from16 v16, v6

    :goto_3
    or-int v14, v14, v16

    goto :goto_2

    .line 168
    :cond_1
    if-eqz v14, :cond_2

    .line 169
    invoke-static {v12}, Lcom/project7/localmanager/LocalPersonalEngine;->calendarDays([B)Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    invoke-static {v9, v11, v7}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v7

    .line 170
    move-object v9, v7

    move/from16 v7, v16

    .line 172
    :cond_2
    goto :goto_1

    .line 173
    :cond_3
    if-eqz v7, :cond_4

    invoke-static {v4, v8, v9}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 174
    :cond_4
    goto :goto_0

    .line 175
    :cond_5
    if-eqz v7, :cond_6

    invoke-static {v2, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method static syncTasks(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 10

    .line 308
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "d"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "sma"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v4, "ltd"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "syncLoginTotalData"

    invoke-virtual {p0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 309
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "tsd"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 311
    const-string v5, "td"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 312
    const-string v7, "1"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    .line 313
    const-string v7, "uuid"

    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 314
    if-eqz v7, :cond_0

    new-array v8, v0, [Ljava/lang/Object;

    new-instance v9, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v9, v7}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v3

    aput-object v6, v8, v4

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    goto :goto_0

    .line 316
    :cond_1
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "ptl"

    aput-object v6, v5, v3

    new-instance v7, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v7, v5, v4

    const-string v6, "ctl"

    aput-object v6, v5, v0

    const/4 v7, 0x3

    new-instance v8, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 317
    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v8, v5, v7

    const/4 v1, 0x4

    const-string v6, "tpd"

    aput-object v6, v5, v1

    const/4 v1, 0x5

    aput-object v2, v5, v1

    .line 316
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "syncTaskList"

    invoke-virtual {p0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 318
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "i"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "ntd"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "sync_newbie_task_data"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 319
    return-void
.end method

.method private static tasks(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BJ)V
    .locals 22

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    const-string v7, "requestTaskList"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalPersonalEngine;->syncTasks(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    return-void

    .line 324
    :cond_0
    const-string v7, "requestNewbieTaskNodeReward"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "i"

    const-string v9, "r"

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v3, :cond_2

    .line 325
    const-string v3, "id"

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NN"

    invoke-virtual {v2, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "ntd"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 326
    const-string v5, "pc"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v6

    .line 327
    const-string v14, "count"

    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v14

    .line 328
    if-eqz v2, :cond_1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 329
    invoke-static {v0, v1, v2, v13}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 330
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v5, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 332
    new-array v1, v11, [Ljava/lang/Object;

    aput-object v8, v1, v12

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "sync_newbie_task_data"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 333
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v9, v1, v12

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v13

    aput-object v8, v1, v11

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "rwd"

    aput-object v3, v2, v12

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "replyNewbieTaskNodeReward"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 334
    goto/16 :goto_2

    .line 328
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u76ee\u6807\u5956\u52b1\u5c1a\u672a\u5b8c\u6210\u6216\u5df2\u9886\u53d6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_2
    const-string v3, "u"

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 336
    if-nez v7, :cond_3

    invoke-static {v4, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 337
    :cond_3
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "tsd"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 338
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 339
    nop

    .line 340
    const-string v15, "td"

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v12

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v12, v18

    check-cast v12, [B

    .line 341
    const-string v11, "0"

    invoke-static {v12, v11}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 342
    const-string v10, "1"

    invoke-static {v12, v10}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    .line 343
    if-eqz v11, :cond_6

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 344
    const-string v12, "tid"

    invoke-static {v10, v12}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "NT"

    invoke-virtual {v2, v13, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v12

    .line 345
    if-eqz v12, :cond_5

    const-string v13, "ft"

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "rt"

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v17

    if-nez v17, :cond_5

    .line 346
    move-object/from16 v19, v7

    const-string v7, "day"

    invoke-static {v12, v7}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v7

    move-object/from16 v20, v8

    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v21, v9

    const-string v9, "sma"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "ltd"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "n"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_4

    .line 348
    invoke-static {v0, v1, v12, v9}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 349
    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    long-to-int v7, v7

    invoke-static {v10, v13, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v7

    const-string v8, "ts"

    const/4 v9, 0x7

    invoke-static {v7, v8, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v10

    .line 350
    const/16 v17, 0x1

    goto :goto_1

    .line 347
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8be5\u65e5\u65b0\u624b\u4efb\u52a1\u5c1a\u672a\u89e3\u9501"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u4efb\u52a1\u672a\u5b8c\u6210\u6216\u5956\u52b1\u5df2\u9886\u53d6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_6
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 352
    :goto_1
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/io/Serializable;

    const/4 v7, 0x0

    aput-object v11, v8, v7

    const/4 v7, 0x1

    aput-object v10, v8, v7

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 354
    :cond_7
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    if-eqz v17, :cond_8

    .line 355
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v15, v14}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 356
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v5, v6}, Lcom/project7/localmanager/LocalPersonalEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;J)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 357
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalPersonalEngine;->syncTasks(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 358
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v21, v2, v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v4, "replyNewbieTaskReward"

    invoke-virtual {v0, v4, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 359
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v21, v4, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x2

    aput-object v20, v4, v2

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "taskUuid"

    aput-object v6, v5, v1

    new-instance v1, Lcom/project7/localmanager/BsonLite$UuidValue;

    move-object/from16 v7, v19

    invoke-direct {v1, v7}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v3

    aput-object v21, v5, v2

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v5, v2

    const-string v1, "show"

    const/4 v2, 0x4

    aput-object v1, v5, v2

    const/4 v1, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x6

    const-string v2, "ad"

    aput-object v2, v5, v1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v5, v2

    .line 359
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "replyGetTaskReward"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 362
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 363
    return-void

    .line 354
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u65b0\u624b\u4efb\u52a1\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static withTaskCounter([B[B[BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B
    .locals 10

    .line 124
    const-string v0, "para"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 126
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 127
    const-string v1, "mi"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "0"

    const-string v8, "counter"

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 128
    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v5, "1"

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 129
    :cond_2
    const-string v3, "ft"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_6

    const-string v3, "rt"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_1

    .line 130
    :cond_3
    const-string v3, "type"

    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v6

    const/16 v9, 0x78

    if-ne v6, v9, :cond_4

    const-string p1, "ldd"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    const-string p2, "ct"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 131
    :cond_4
    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/16 v6, 0x75

    if-ne v3, v6, :cond_5

    const-string p1, "weeknum"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    const-string p2, "w"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalPersonalEngine;->v([BLjava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 132
    :cond_5
    invoke-static {p2, p3, p1}, Lcom/project7/localmanager/LocalPersonalEngine;->complete([BLcom/project7/localmanager/LocalTutorialStore$Progress;[B)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 134
    :cond_6
    :goto_1
    move v5, v0

    :cond_7
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalPersonalEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    .line 136
    invoke-static {p3, v7}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 137
    new-instance v3, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v3, p3}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_8
    goto :goto_3

    .line 138
    :cond_9
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/io/Serializable;

    aput-object v8, p2, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-static {p0, v1, p1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method
