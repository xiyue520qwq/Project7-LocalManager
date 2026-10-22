.class final Lcom/project7/localmanager/LocalHomeInteractionEngine;
.super Ljava/lang/Object;
.source "LocalHomeInteractionEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)V
    .locals 20

    .line 23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "h"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->v([BLjava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "hhd"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    .line 24
    const-string v7, "requestSaveHeroCamera"

    move-object/from16 v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "i"

    const-string v9, "r"

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v14, 0x1

    .line 46
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 24
    if-eqz v7, :cond_9

    .line 25
    nop

    .line 26
    iget-object v1, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, "HM:"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 27
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    const-string v10, "model"

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ne v7, v4, :cond_0

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const-string v10, "hero"

    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v7, v3}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    move v1, v14

    goto :goto_1

    .line 26
    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    const-string v3, "\u8be5\u6a21\u578b\u5bf9\u5e94\u7684\u795e\u5668\u4f7f\u5c1a\u672a\u83b7\u5f97"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 31
    const-string v1, "c"

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v14

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    const-string v7, "\u89c6\u89d2\u6570\u636e\u683c\u5f0f\u65e0\u6548"

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 32
    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v12, :cond_3

    move v2, v14

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v12, :cond_8

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v10

    if-eqz v10, :cond_4

    move v10, v14

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    :goto_5
    const-string v14, "\u89c6\u89d2\u5411\u91cf\u683c\u5f0f\u65e0\u6548"

    invoke-static {v10, v14}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 36
    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    goto :goto_6

    :cond_5
    const/4 v10, 0x0

    :goto_6
    invoke-static {v10, v14}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 37
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 38
    const/4 v13, 0x0

    :goto_7
    if-ge v13, v11, :cond_7

    .line 39
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v11

    .line 40
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isFinite(D)Z

    move-result v16

    if-eqz v16, :cond_6

    const/4 v12, 0x1

    goto :goto_8

    :cond_6
    const/4 v12, 0x0

    :goto_8
    invoke-static {v12, v14}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x4

    goto :goto_7

    .line 42
    :cond_7
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v14, 0x1

    goto :goto_4

    .line 44
    :cond_8
    const-string v1, "hc"

    invoke-static {v5, v1, v4, v2}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->setPair([BLjava/lang/String;ILjava/lang/Object;)[B

    move-result-object v1

    .line 45
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 46
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v3, v5

    const/4 v6, 0x1

    aput-object v15, v3, v6

    const/4 v7, 0x2

    aput-object v8, v3, v7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v8, "m"

    aput-object v8, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    const-string v4, "ci"

    aput-object v4, v1, v7

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "replySaveHeroCamera"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 47
    return-void

    .line 49
    :cond_9
    const-string v7, "t"

    invoke-static {v2, v7}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "k"

    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 50
    const-string v12, "music"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 51
    if-nez v4, :cond_a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "M"

    invoke-virtual {v1, v13, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_9

    :cond_a
    const/4 v1, 0x0

    :goto_9
    const-string v12, "\u4e50\u7ae0\u89e3\u9501\u53c2\u6570\u65e0\u6548"

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 52
    const-string v1, "hhm"

    invoke-static {v5, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v12, "\u4e50\u7ae0\u5c1a\u672a\u83b7\u5f97"

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    goto :goto_c

    .line 53
    :cond_b
    const-string v12, "anim"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "HA"

    invoke-virtual {v1, v13, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    .line 55
    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v4}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v12

    const-string v13, "\u795e\u5668\u4f7f\u5c1a\u672a\u83b7\u5f97"

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 56
    if-eqz v1, :cond_c

    const-string v12, "hero_id"

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->v([BLjava/lang/String;)I

    move-result v12

    if-ne v12, v4, :cond_c

    const/4 v12, 0x1

    goto :goto_a

    :cond_c
    const/4 v12, 0x0

    :goto_a
    const-string v13, "\u52a8\u4f5c\u4e0e\u795e\u5668\u4f7f\u4e0d\u5339\u914d"

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 57
    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v12

    const-string v13, "happy"

    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v13, 0x1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lt v12, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_b

    :cond_d
    const/4 v1, 0x0

    :goto_b
    const-string v12, "\u7f81\u7eca\u7b49\u7ea7\u4e0d\u8db3"

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 58
    nop

    .line 59
    :goto_c
    const-string v1, "hgr"

    invoke-static {v5, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 60
    const-string v13, "1"

    if-eqz v12, :cond_f

    invoke-static {v12, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v14

    if-eqz v14, :cond_e

    goto :goto_d

    :cond_e
    const/4 v14, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    const/4 v14, 0x1

    :goto_e
    move-object/from16 v17, v11

    const-string v11, "\u5bb6\u56ed\u8d44\u6e90\u8bb0\u5f55\u683c\u5f0f\u672a\u77e5"

    invoke-static {v14, v11}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 61
    if-nez v12, :cond_10

    sget-object v12, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    goto :goto_f

    :cond_10
    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    .line 62
    :goto_f
    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-static {v12, v10}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v13

    if-eqz v13, :cond_11

    goto :goto_10

    :cond_11
    const/4 v13, 0x0

    goto :goto_11

    :cond_12
    :goto_10
    const/4 v13, 0x1

    :goto_11
    invoke-static {v13, v11}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 63
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v12, v10}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->d([BLjava/lang/String;)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v18

    move-object/from16 v19, v7

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v7

    if-ne v14, v7, :cond_13

    const/4 v7, 0x1

    goto :goto_12

    :cond_13
    const/4 v7, 0x0

    :goto_12
    invoke-static {v7, v11}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->require(ZLjava/lang/String;)V

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_14
    invoke-static {v12, v10, v13}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v7

    .line 67
    invoke-static {v5, v1, v4, v7}, Lcom/project7/localmanager/LocalHomeInteractionEngine;->setPair([BLjava/lang/String;ILjava/lang/Object;)[B

    move-result-object v1

    .line 68
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 69
    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v7, 0x1

    aput-object v15, v5, v7

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v7

    aput-object v19, v8, v9

    const/4 v3, 0x3

    aput-object v10, v8, v3

    aput-object v17, v8, v1

    const/4 v1, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    const/4 v1, 0x6

    const-string v3, "ks"

    aput-object v3, v8, v1

    const/4 v1, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v5, v2

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "replyAddHeroHomeResource"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 70
    return-void

    .line 58
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u5bb6\u56ed\u8d44\u6e90\u7c7b\u578b\u5c1a\u672a\u63a5\u5165"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 8
    const-string v0, "requestAddHeroHomeResource"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "requestSaveHeroCamera"

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

    :goto_1
    return p0
.end method

.method static require(ZLjava/lang/String;)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    return-void
.end method

.method static setPair([BLjava/lang/String;ILjava/lang/Object;)[B
    .locals 7

    .line 14
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "0"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "value"

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p3

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "1"

    invoke-static {v1, v2, p3, v3}, Lcom/project7/localmanager/BsonLite;->withCopiedValue([BLjava/lang/String;[BLjava/lang/String;)[B

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v1, v0}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
