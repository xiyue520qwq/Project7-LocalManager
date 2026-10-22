.class final Lcom/project7/localmanager/LocalHomeWishDailyEngine;
.super Ljava/lang/Object;
.source "LocalHomeWishDailyEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static generation([B)Ljava/lang/String;
    .locals 10

    .line 11
    const-string v0, "q7HomeWishDaily"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 12
    const-string v0, "version"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 13
    :cond_0
    const-string v0, "generation"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeDailyEngine;->validDay(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_4

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 16
    const-string v3, "changed"

    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v4, "deleted"

    invoke-static {p0, v4}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 18
    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 19
    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v7}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 20
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v8, v1, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_4

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    goto :goto_0

    .line 20
    :cond_4
    :goto_1
    return-object v2

    .line 22
    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v2

    .line 23
    :cond_6
    :try_start_0
    invoke-static {p0, v4}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->ids([B)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    return-object v2

    .line 16
    :cond_7
    :goto_2
    return-object v2

    .line 25
    :cond_8
    :goto_3
    return-object v0

    .line 14
    :cond_9
    :goto_4
    return-object v2
.end method

.method static ids([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 112
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const-string v5, "\u4efb\u52a1\u5217\u8868\u683c\u5f0f\u672a\u77e5\u6216\u91cd\u590d"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->require(ZLjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    return-object v0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;J)V
    .locals 29

    .line 28
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "lt"

    const-string v4, "et"

    const-string v5, "\u5fc3\u613f\u69fd\u4f4d\u683c\u5f0f\u672a\u77e5"

    const-string v6, "tls"

    const-string v7, "ctl"

    const-string v8, "ptl"

    const-string v9, "q7HomeWishDaily"

    const-string v10, "tsd"

    iget-object v11, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v12, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 30
    :try_start_0
    const-string v14, "hhd"

    invoke-static {v11, v14}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    .line 31
    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20

    invoke-static {v14, v6}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    goto/16 :goto_19

    .line 32
    :cond_0
    invoke-static {v14, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 33
    invoke-static/range {p2 .. p3}, Lcom/project7/localmanager/LocalHomeDailyEngine;->day(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_c

    .line 34
    move/from16 v17, v12

    :try_start_1
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_a

    const/16 v16, 0x1

    .line 35
    xor-int/lit8 v12, v12, 0x1

    move-object/from16 v18, v14

    const-string v14, "version"

    move-object/from16 v19, v3

    const-string v3, "day"

    move-object/from16 v20, v4

    if-nez v12, :cond_2

    :try_start_2
    invoke-static {v11, v9}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v21

    if-eqz v21, :cond_1

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v2, 0x1

    if-ne v4, v2, :cond_1

    .line 36
    invoke-static {v13, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalHomeDailyEngine;->validDay(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v11}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->generation([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v4, "\u6bcf\u65e5\u5fc3\u613f\u8bb0\u5f55\u683c\u5f0f\u672a\u77e5"

    .line 35
    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->require(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_a

    .line 38
    const-string v2, "generation"

    if-eqz v12, :cond_3

    .line 39
    const/4 v4, 0x1

    :try_start_3
    invoke-static {v13, v14, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    .line 40
    invoke-static {v5, v3, v15}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 41
    invoke-static {v11, v9, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    return-void

    .line 43
    :cond_3
    invoke-static {v13, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_4

    return-void

    .line 44
    :cond_4
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 45
    invoke-static {v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->tasks([B)[B

    .line 47
    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v14, v11}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    invoke-static {v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->syncMembership(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 48
    invoke-static {v11, v10}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    move-object/from16 v21, v9

    const-string v9, "td"

    invoke-static {v14, v9}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 49
    invoke-static {v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->key([B)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    goto :goto_2

    .line 50
    :cond_5
    invoke-static {v11, v10}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9, v8}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->ids([B)Ljava/util/List;

    move-result-object v9

    invoke-static {v11, v10}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14, v7}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->ids([B)Ljava/util/List;

    move-result-object v14

    .line 51
    invoke-static {v9, v14}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v9

    const-string v14, "\u5019\u9009\u4e0e\u8fdb\u884c\u4e2d\u4efb\u52a1\u5217\u8868\u91cd\u53e0"

    invoke-static {v9, v14}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->require(ZLjava/lang/String;)V

    .line 52
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_a

    const-string v14, "at"

    move-object/from16 p3, v2

    const-string v2, "t"

    move-object/from16 v22, v3

    if-eqz v9, :cond_17

    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 53
    const/4 v3, 0x1

    if-lt v9, v3, :cond_6

    const/4 v3, 0x3

    if-gt v9, v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->require(ZLjava/lang/String;)V

    .line 54
    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v3

    move-object/from16 v23, v6

    const-string v6, "h"

    invoke-static {v3, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v24

    if-ltz v24, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_5 .. :try_end_5} :catch_a

    if-ltz v24, :cond_7

    move-object/from16 v24, v13

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v24, v13

    const/4 v13, 0x0

    :goto_5
    :try_start_6
    invoke-static {v13, v5}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->require(ZLjava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v13, :cond_9

    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_8

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_7} :catch_a

    :cond_8
    move-object/from16 v2, p3

    move-object/from16 v3, v22

    move-object/from16 v6, v23

    move-object/from16 v13, v24

    goto :goto_3

    .line 57
    :cond_9
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v11, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    move-object/from16 v25, v5

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    move-object/from16 v25, v5

    const/4 v5, 0x0

    :goto_6
    move-object/from16 v26, v15

    const-string v15, "\u5fc3\u613f\u69fd\u4f4d\u7f3a\u5c11\u4efb\u52a1\u8bb0\u5f55"

    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->require(ZLjava/lang/String;)V

    .line 58
    invoke-static {v11, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object v5

    .line 59
    invoke-static {v5, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "ft"

    invoke-static {v5, v15}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    const-string v1, "rt"

    invoke-static {v5, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 60
    if-eqz v14, :cond_b

    if-eqz v15, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v27

    if-ltz v27, :cond_b

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v27

    if-ltz v27, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v27

    if-ltz v27, :cond_b

    move-object/from16 v27, v4

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v27, v4

    const/4 v4, 0x0

    :goto_7
    move-object/from16 v28, v12

    const-string v12, "\u5fc3\u613f\u9636\u6bb5\u683c\u5f0f\u672a\u77e5"

    invoke-static {v4, v12}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->require(ZLjava/lang/String;)V

    .line 61
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_16

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gtz v4, :cond_16

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_16

    invoke-static {v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->slots([B)I

    move-result v1

    if-le v9, v1, :cond_c

    move-object/from16 v4, p1

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    move-object/from16 v5, v28

    goto/16 :goto_d

    .line 62
    :cond_c
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v11, v1}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v1

    const-string v4, "\u5019\u9009\u5fc3\u613f\u89d2\u8272\u672a\u62e5\u6709"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->require(ZLjava/lang/String;)V

    .line 63
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->binding([BII)V

    .line 64
    const-string v1, "WT"

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v12, "group"

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    .line 65
    const/4 v12, 0x1

    if-ne v1, v12, :cond_d

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v14, "s"

    invoke-static {v3, v14}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v4, v12, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->normalTask(Lcom/project7/localmanager/LocalFeatureCatalog;II)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v3, v12, :cond_e

    :cond_d
    const/4 v3, 0x2

    if-ne v1, v3, :cond_f

    const-string v1, "WS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v11, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v3, "task"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_f

    :cond_e
    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    const-string v2, "\u5019\u9009\u5fc3\u613f\u4e0e\u539f\u7248\u914d\u7f6e\u4e0d\u7b26"

    .line 65
    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->require(ZLjava/lang/String;)V

    .line 68
    const-string v1, "ct"

    invoke-static {v5, v1}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_13

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    move-object/from16 v3, v19

    goto :goto_a

    .line 69
    :cond_11
    :goto_9
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    .line 70
    :cond_12
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    const-string v5, "validTime"

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_b

    .line 68
    :cond_13
    move-object/from16 v3, v19

    move-object/from16 v2, v20

    .line 70
    :cond_14
    :goto_a
    const/4 v1, 0x0

    :goto_b
    const-string v5, "\u5e26\u65f6\u95f4\u9650\u5236\u7684\u5019\u9009\u5fc3\u613f\u4fdd\u7559"

    .line 68
    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->require(ZLjava/lang/String;)V

    .line 71
    invoke-static {v11, v10}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->ids([B)Ljava/util/List;

    move-result-object v1

    invoke-static {v11, v10}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->ids([B)Ljava/util/List;

    move-result-object v5

    .line 72
    invoke-static {v1, v13}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_15

    invoke-interface {v5, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_c

    :cond_15
    const/4 v1, 0x0

    :goto_c
    const-string v5, "\u5019\u9009\u5fc3\u613f\u4efb\u52a1\u5217\u8868\u4e0d\u4e00\u81f4"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->require(ZLjava/lang/String;)V

    .line 73
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v5, v28

    invoke-interface {v5, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object v12, v5

    move-object/from16 v3, v22

    move-object/from16 v6, v23

    move-object/from16 v13, v24

    move-object/from16 v5, v25

    move-object/from16 v15, v26

    move-object/from16 v4, v27

    move-object/from16 v2, p3

    goto/16 :goto_3

    .line 61
    :cond_16
    move-object/from16 v4, p1

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    move-object/from16 v5, v28

    :goto_d
    move-object/from16 v1, v27

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v4, v1

    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object v12, v5

    move-object/from16 v3, v22

    move-object/from16 v6, v23

    move-object/from16 v13, v24

    move-object/from16 v5, v25

    move-object/from16 v15, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    goto/16 :goto_3

    .line 105
    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    :goto_e
    move-object/from16 v13, p0

    :goto_f
    move-object v1, v0

    move/from16 v2, v17

    goto/16 :goto_1c

    .line 75
    :cond_17
    move-object v1, v4

    move-object v5, v12

    move-object/from16 v24, v13

    move-object/from16 v26, v15

    move-object/from16 v4, p1

    :try_start_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v6, Ljava/util/TreeSet;

    iget-object v9, v4, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_9 .. :try_end_9} :catch_8

    if-eqz v9, :cond_1a

    :try_start_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v12, "WN:"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 77
    const/4 v12, 0x3

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 78
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v13

    const/4 v15, 0x5

    if-ge v13, v15, :cond_18

    .line 79
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_10

    .line 76
    :cond_19
    const/4 v12, 0x3

    goto :goto_10

    .line 81
    :cond_1a
    :try_start_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/ArithmeticException; {:try_start_b .. :try_end_b} :catch_8

    if-eqz v9, :cond_1d

    :try_start_c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_c} :catch_0

    .line 84
    move-object/from16 v13, p0

    :try_start_d
    invoke-static {v13, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->removeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    new-instance v15, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v15, v9}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1b

    sget-object v9, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v13, v12, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->setSlot(Lcom/project7/localmanager/LocalResourceEngine$Result;I[B)V

    goto :goto_11

    .line 86
    :cond_1b
    const-string v9, "mhh"

    move-object/from16 v15, v18

    invoke-static {v15, v9}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v9

    .line 87
    move-object/from16 v18, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    :goto_12
    goto :goto_13

    :cond_1c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalStoryEnvironment;->nextInt(I)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_12

    .line 88
    :goto_13
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    const-string v5, "WN"

    move-object/from16 v19, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    const-string v5, "idx"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v13, v4, v12, v9, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->next(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;III)V

    .line 90
    iget-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v3

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 91
    iget-object v5, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object v5

    .line 92
    const/4 v9, 0x0

    invoke-static {v5, v14, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    const-string v12, "ts"

    const/4 v9, 0x1

    invoke-static {v5, v12, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    invoke-static {v13, v3, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->writeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V

    .line 93
    iget-object v5, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v10}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->ids([B)Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->uuidValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 94
    new-instance v12, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v12, v3}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->ids([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    invoke-static {v5, v8, v9}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    invoke-static {v12}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->uuidValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v7, v5}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    .line 96
    iget-object v5, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v10, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_d .. :try_end_d} :catch_2

    .line 97
    move-object/from16 v5, v18

    move-object/from16 v3, v19

    move-object/from16 v18, v15

    goto/16 :goto_11

    .line 98
    :cond_1d
    move-object/from16 v13, p0

    move-object/from16 v4, v22

    move-object/from16 v3, v24

    move-object/from16 v2, v26

    :try_start_e
    invoke-static {v3, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 99
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_e} :catch_6

    if-nez v4, :cond_1e

    .line 100
    move-object/from16 v4, p3

    :try_start_f
    invoke-static {v3, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 101
    const-string v3, "changed"

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    const-string v2, "deleted"

    invoke-static {v1, v2, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_14

    .line 105
    :catch_2
    move-exception v0

    goto/16 :goto_f

    :catch_3
    move-exception v0

    goto/16 :goto_f

    .line 103
    :cond_1e
    :goto_14
    :try_start_10
    iget-object v1, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v2, v21

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 104
    :goto_15
    iget-object v1, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/ArithmeticException; {:try_start_10 .. :try_end_10} :catch_6

    move/from16 v2, v17

    if-le v1, v2, :cond_1f

    :try_start_11
    iget-object v1, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_11 .. :try_end_11} :catch_4

    move/from16 v17, v2

    goto :goto_15

    .line 105
    :catch_4
    move-exception v0

    goto :goto_1b

    :catch_5
    move-exception v0

    goto :goto_1b

    .line 108
    :cond_1f
    goto :goto_1e

    .line 105
    :catch_6
    move-exception v0

    goto :goto_18

    :catch_7
    move-exception v0

    goto :goto_18

    :catch_8
    move-exception v0

    goto :goto_16

    :catch_9
    move-exception v0

    :goto_16
    move-object/from16 v13, p0

    goto :goto_18

    :catch_a
    move-exception v0

    goto :goto_17

    :catch_b
    move-exception v0

    :goto_17
    move-object v13, v1

    :goto_18
    move/from16 v2, v17

    goto :goto_1b

    .line 31
    :cond_20
    :goto_19
    return-void

    .line 105
    :catch_c
    move-exception v0

    goto :goto_1a

    :catch_d
    move-exception v0

    :goto_1a
    move-object v13, v1

    move v2, v12

    :goto_1b
    move-object v1, v0

    .line 106
    :goto_1c
    iput-object v11, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    :goto_1d
    iget-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_21

    iget-object v3, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v4, v13, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1d

    .line 107
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Home wish daily preserved reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Project7Gateway"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_1e
    return-void
.end method

.method static require(ZLjava/lang/String;)V
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    return-void
.end method

.method static sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 10

    .line 121
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->generation([B)Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p1}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->generation([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 123
    :cond_0
    new-instance p1, Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "q7HomeWishDaily"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "changed"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 124
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "deleted"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->ids([B)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 125
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 126
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "i"

    const-string v4, "replyNewTaskLinkByHeroId"

    const-string v5, "dtl"

    const-string v6, "syncDeleteTask"

    if-eqz v2, :cond_4

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 128
    iget-object v7, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v8, "syncTaskList"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 129
    :cond_1
    iget-object v7, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->ids([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 130
    :cond_2
    iget-object v5, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 131
    :cond_3
    :goto_1
    goto :goto_0

    .line 132
    :cond_4
    new-instance v1, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 133
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v2, :cond_5

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v5, v2, v9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->uuidValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 134
    :cond_5
    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->syncMembership(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 135
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    const-string v5, "s"

    aput-object v5, v2, v8

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_2

    .line 136
    :cond_6
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object p1, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p0, v9, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 137
    return-void

    .line 122
    :cond_7
    :goto_3
    return-void
.end method

.method static uuidValues(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
