.class final Lcom/project7/localmanager/LocalProfileEngine;
.super Ljava/lang/Object;
.source "LocalProfileEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalProfileEngine$Result;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLjava/lang/String;[B)Lcom/project7/localmanager/LocalProfileEngine$Result;
    .locals 1

    .line 21
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/project7/localmanager/LocalProfileEngine;->apply([BLjava/lang/String;[BLcom/project7/localmanager/LocalFeatureCatalog;)Lcom/project7/localmanager/LocalProfileEngine$Result;

    move-result-object p0

    return-object p0
.end method

.method static apply([BLjava/lang/String;[BLcom/project7/localmanager/LocalFeatureCatalog;)Lcom/project7/localmanager/LocalProfileEngine$Result;
    .locals 21

    .line 25
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 26
    nop

    .line 27
    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    const-string v6, "set_hero_shoucang"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "h"

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 108
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 29
    const/4 v13, 0x1

    .line 147
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 29
    if-eqz v6, :cond_3

    .line 30
    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 31
    const-string v3, "a"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 32
    const-string v3, "heromgr"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 33
    new-instance v4, Ljava/util/LinkedHashSet;

    const-string v6, "hs"

    invoke-static {v3, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 34
    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalProfileEngine;->ownsHero([BI)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v13

    goto :goto_0

    :cond_0
    move v6, v11

    .line 35
    :goto_0
    if-eqz v6, :cond_2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 38
    :goto_1
    const-string v2, "hs"

    invoke-static {v3, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v2

    const-string v3, "heromgr"

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    goto :goto_2

    .line 39
    :cond_2
    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v6, "m"

    aput-object v6, v3, v11

    const-string v6, "\u53ea\u80fd\u6536\u85cf\u5df2\u62e5\u6709\u7684\u795e\u5668\u4f7f"

    aput-object v6, v3, v13

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v6, "showMessageStr"

    invoke-direct {v2, v6, v3}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_2
    nop

    .line 42
    new-array v2, v8, [Ljava/lang/Object;

    aput-object v7, v2, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    const-string v3, "a"

    aput-object v3, v2, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    .line 43
    const-string v15, "set_hero_shoucang"

    move-object v3, v5

    goto/16 :goto_4b

    :cond_3
    const-string v6, "setAssistHero"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 44
    const-string v0, "ass"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 45
    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalProfileEngine;->ownsHero([BI)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46
    const-string v2, "ash"

    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 47
    nop

    .line 48
    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "ass"

    aput-object v3, v2, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v13

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v15, "on_ass_hero_done"

    goto :goto_3

    .line 49
    :cond_4
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v2, "m"

    const-string v3, "\u53ea\u80fd\u9009\u62e9\u5df2\u62e5\u6709\u7684\u795e\u5668\u4f7f"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "showMessageStr"

    invoke-direct {v0, v3, v2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    .line 50
    :goto_3
    move-object v3, v5

    goto/16 :goto_4b

    :cond_5
    const-string v6, "requestNameCardChange"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v15, "i"

    if-nez v6, :cond_75

    const-string v6, "setNameCardFirstSee"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v18, v4

    move-object v3, v5

    goto/16 :goto_48

    .line 62
    :cond_6
    const-string v6, "setTitleShowList"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v9, "ct"

    const-string v10, "ttd"

    if-nez v6, :cond_68

    const-string v6, "setBadgeShowList"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v3, v5

    const/4 v4, 0x5

    goto/16 :goto_3c

    .line 75
    :cond_7
    const-string v6, "updateTitleNewState"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    const-string v6, "updateBadgeNewState"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v18, v4

    move-object v3, v5

    goto/16 :goto_39

    .line 82
    :cond_8
    const-string v6, "updateTitleExchange"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 83
    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 84
    const-string v3, "o"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    const-string v6, "c"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    .line 85
    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v6

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 87
    const-string v4, "et"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v4

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {v4}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    const-string v6, "et"

    invoke-static {v0, v6, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    invoke-static {v1, v10, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 90
    new-array v1, v8, [Ljava/lang/Object;

    const-string v4, "o"

    aput-object v4, v1, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "c"

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v15, "syncTitleExchange"

    goto :goto_4

    .line 92
    :cond_9
    move-object v0, v1

    const/4 v15, 0x0

    :goto_4
    move-object v1, v0

    move-object v3, v5

    goto/16 :goto_4b

    :cond_a
    const-string v6, "requestUpdateCollectCover"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v10, "r"

    const-string v13, "0"

    const-string v11, "d"

    const-string v8, "cid"

    move-object/from16 v18, v4

    const-string v4, "1"

    if-eqz v6, :cond_17

    .line 93
    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    const/4 v3, 0x1

    .line 94
    :goto_5
    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 95
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 96
    const-string v14, "ccd"

    invoke-static {v6, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v14

    .line 97
    const/16 v16, -0x1

    .line 98
    move/from16 p1, v3

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v19, v5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_d

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    if-ne v5, v0, :cond_c

    .line 99
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    move-object/from16 v20, v11

    const-string v11, "hid"

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_7

    .line 98
    :cond_c
    move-object/from16 v20, v11

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v19

    goto :goto_6

    :cond_d
    move-object/from16 v20, v11

    move/from16 v3, v16

    .line 101
    :goto_7
    const-string v5, "hid"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v11, p1

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 102
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-ltz v18, :cond_10

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    move-object/from16 p1, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 p2, v11

    const/16 v11, 0x10

    if-lt v5, v11, :cond_e

    goto :goto_9

    .line 103
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalProfileEngine;->ownsHero([BI)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v11, 0x2

    goto :goto_a

    .line 104
    :cond_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v7, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v11, p2

    goto :goto_a

    .line 102
    :cond_10
    move-object/from16 p1, v5

    :goto_9
    const/4 v11, 0x1

    .line 105
    :goto_a
    move-object/from16 v5, p1

    goto :goto_8

    .line 106
    :cond_11
    move/from16 p2, v11

    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_b

    .line 108
    :cond_12
    move/from16 v2, p2

    :goto_b
    const/4 v5, 0x4

    new-array v11, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v11, v5

    const/4 v5, 0x1

    aput-object v12, v11, v5

    const-string v5, "hid"

    const/4 v9, 0x2

    aput-object v5, v11, v9

    invoke-static {v7}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v11, v7

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v5

    .line 109
    if-nez v2, :cond_16

    .line 111
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 112
    const/4 v9, 0x0

    :goto_c
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_14

    if-ne v9, v3, :cond_13

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/io/Serializable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v12, v17

    const/16 v16, 0x1

    aput-object v5, v12, v16

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    goto :goto_d

    .line 113
    :cond_13
    const/4 v11, 0x2

    const/16 v17, 0x0

    new-array v12, v11, [Ljava/io/Serializable;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v17

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    const/16 v16, 0x1

    aput-object v11, v12, v16

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 112
    :goto_d
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 114
    :cond_14
    if-gez v3, :cond_15

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/io/Serializable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v4, v9

    const/4 v3, 0x1

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_15
    const-string v3, "ccd"

    invoke-static {v6, v3, v7}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    invoke-static {v1, v8, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 117
    :cond_16
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    aput-object v15, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v3, v2

    const/4 v2, 0x4

    aput-object v20, v3, v2

    const/4 v0, 0x5

    aput-object v5, v3, v0

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    .line 118
    const-string v15, "replyUpdateCollectCover"

    move-object/from16 v3, v19

    goto/16 :goto_4b

    :cond_17
    move-object/from16 v19, v5

    move-object/from16 v20, v11

    const-string v5, "clearFirstGetFlag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 119
    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 120
    const-string v3, "k"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    const-string v5, "hfi"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 123
    invoke-static {v6, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v7

    .line 124
    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 125
    if-ne v7, v2, :cond_18

    const-string v9, "fg"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v6

    goto :goto_f

    :cond_18
    const/4 v10, 0x0

    .line 126
    :goto_f
    const/4 v9, 0x2

    new-array v11, v9, [Ljava/io/Serializable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v10

    const/4 v7, 0x1

    aput-object v6, v11, v7

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_e

    .line 128
    :cond_19
    const-string v2, "hfi"

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    invoke-static {v1, v8, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 129
    move-object/from16 v4, v18

    move-object/from16 v3, v19

    const/4 v15, 0x0

    goto/16 :goto_4b

    :cond_1a
    const-string v5, "setHeadImage"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "imgid"

    const-string v8, ""

    const-string v9, "headImage"

    if-nez v5, :cond_5d

    const-string v5, "setImgState"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v3, v19

    goto/16 :goto_35

    .line 150
    :cond_1b
    const-string v5, "addRecentEmoji"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v11, "cht"

    if-eqz v5, :cond_1e

    .line 151
    const-string v0, "eid"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 152
    const-string v2, "amd"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "re"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    const-string v4, "he"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 156
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_1c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_10

    .line 157
    :cond_1c
    nop

    .line 158
    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 157
    const-string v2, "re"

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    invoke-static {v1, v11, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    goto :goto_11

    .line 154
    :cond_1d
    move-object v0, v1

    .line 160
    :goto_11
    nop

    .line 161
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "re"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    .line 162
    const-string v15, "syncRecentEmoji"

    move-object v1, v0

    move-object/from16 v3, v19

    goto/16 :goto_4b

    :cond_1e
    const-string v5, "setHeroEmojiUsed"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 163
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    const-string v0, "hl"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 165
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 168
    if-nez v5, :cond_1f

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    :cond_1f
    const-string v0, "default"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 170
    if-nez v6, :cond_20

    if-eqz v5, :cond_20

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalProfileEngine;->ownsHero([BI)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_13
    goto :goto_14

    :catch_0
    move-exception v0

    goto :goto_13

    .line 172
    :cond_20
    :goto_14
    if-eqz v6, :cond_21

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v6, 0xa

    if-ge v0, v6, :cond_21

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_21
    goto :goto_12

    .line 174
    :cond_22
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 175
    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "heu"

    invoke-static {v0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 174
    invoke-static {v1, v11, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    goto :goto_15

    :cond_23
    move-object v0, v1

    .line 176
    :goto_15
    nop

    .line 177
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "heu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 178
    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 177
    const-string v4, "heu"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    .line 179
    const-string v15, "syncHeroEmojiUsed"

    move-object v1, v0

    move-object/from16 v3, v19

    goto/16 :goto_4b

    :cond_24
    const-string v5, "requestEmojiRead"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 180
    const-string v0, "amd"

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 181
    const-string v0, "er"

    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v4

    .line 182
    invoke-static {v2, v7}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v2, v7}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 184
    if-nez v0, :cond_25

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_25
    if-eqz v0, :cond_26

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_16

    :catch_1
    move-exception v0

    .line 186
    :cond_26
    :goto_16
    nop

    .line 187
    invoke-static {v4}, Lcom/project7/localmanager/LocalAccountFeatures;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 186
    const-string v2, "er"

    invoke-static {v3, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    const-string v2, "amd"

    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 188
    nop

    .line 189
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 190
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    goto :goto_17

    .line 192
    :cond_27
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "he"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-instance v4, Lcom/project7/localmanager/BsonLite$ArrayValue;

    const-string v5, "he"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const-string v3, "er"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    .line 193
    const-string v15, "syncEmoji"

    move-object/from16 v3, v19

    goto/16 :goto_4b

    :cond_28
    const-string v5, "unlockCollectMark"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 194
    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    .line 195
    add-int/lit8 v4, v2, -0x1

    .line 196
    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v5

    .line 197
    nop

    .line 198
    const-string v6, "ar"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    const-string v8, "o"

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    .line 199
    if-nez v4, :cond_29

    const-string v6, "gp"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalProfileEngine;->flag([BLjava/lang/String;)Z

    move-result v6

    goto :goto_1a

    .line 200
    :cond_29
    const/4 v8, 0x1

    if-lt v4, v8, :cond_2c

    const/4 v9, 0x4

    if-gt v4, v9, :cond_2c

    const-string v9, "oa"

    invoke-static {v5, v9}, Lcom/project7/localmanager/LocalProfileEngine;->flag([BLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2b

    if-eq v4, v8, :cond_2a

    add-int/lit8 v8, v4, -0x1

    mul-int/lit8 v8, v8, 0xa

    if-lt v6, v8, :cond_2b

    :cond_2a
    const/4 v6, 0x1

    goto :goto_1a

    :cond_2b
    const/4 v6, 0x0

    goto :goto_1a

    .line 202
    :cond_2c
    const/4 v6, 0x5

    if-ne v4, v6, :cond_2d

    const-string v6, "pt"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalProfileEngine;->flag([BLjava/lang/String;)Z

    move-result v6

    goto :goto_1a

    .line 203
    :cond_2d
    const/4 v6, 0x6

    if-ne v4, v6, :cond_2e

    const-string v6, "blp"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalProfileEngine;->flag([BLjava/lang/String;)Z

    move-result v6

    goto :goto_1a

    .line 204
    :cond_2e
    const/4 v6, 0x7

    if-eq v4, v6, :cond_31

    const/16 v6, 0x8

    if-ne v4, v6, :cond_2f

    goto :goto_18

    .line 205
    :cond_2f
    const/16 v6, 0xa

    if-ne v4, v6, :cond_30

    const-string v6, "fd"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalProfileEngine;->flag([BLjava/lang/String;)Z

    move-result v6

    goto :goto_1a

    :cond_30
    const/4 v6, 0x0

    goto :goto_1a

    .line 204
    :cond_31
    :goto_18
    const-string v6, "blt"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    const/4 v8, 0x7

    if-ne v4, v8, :cond_32

    const/16 v8, 0x64

    goto :goto_19

    :cond_32
    const/16 v8, 0xc8

    :goto_19
    if-lt v6, v8, :cond_33

    const/4 v6, 0x1

    goto :goto_1a

    :cond_33
    const/4 v6, 0x0

    .line 206
    :goto_1a
    if-nez v3, :cond_34

    const/4 v8, 0x0

    goto :goto_1b

    :cond_34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "H"

    invoke-virtual {v3, v9, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    .line 207
    :goto_1b
    if-eqz v8, :cond_37

    const/16 v9, 0x9

    if-ne v4, v9, :cond_37

    .line 208
    const-string v3, "partners"

    invoke-static {v8, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 209
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_35

    const/4 v6, 0x1

    goto :goto_1c

    :cond_35
    const/4 v6, 0x0

    .line 210
    :goto_1c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalProfileEngine;->ownsHero([BI)Z

    move-result v8

    and-int/2addr v6, v8

    goto :goto_1d

    .line 211
    :cond_36
    goto/16 :goto_23

    :cond_37
    if-eqz v8, :cond_3e

    const/16 v9, 0xb

    if-lt v4, v9, :cond_3e

    const/16 v9, 0xe

    if-gt v4, v9, :cond_3e

    .line 212
    const-string v9, "treasure"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    .line 213
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "T"

    invoke-virtual {v3, v10, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    .line 214
    add-int/lit8 v9, v4, -0xb

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 215
    const-string v10, "inv"

    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    const-string v11, "items"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v10

    .line 216
    const-string v11, "ti"

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    const-string v12, "items"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 218
    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v12

    if-ne v12, v8, :cond_3c

    if-nez v3, :cond_38

    move-object/from16 p1, v3

    goto :goto_20

    .line 219
    :cond_38
    const-string v12, "tr"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    const-string v12, "x"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v11

    .line 220
    nop

    .line 221
    const-string v12, "stages"

    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_1f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 222
    move-object/from16 p1, v3

    const-string v3, "exp"

    invoke-static {v14, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    if-gt v3, v11, :cond_39

    .line 223
    const-string v3, "stage"

    invoke-static {v14, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v13, v3

    .line 222
    :cond_39
    move-object/from16 v3, p1

    goto :goto_1f

    .line 224
    :cond_3a
    move-object/from16 p1, v3

    if-lt v13, v9, :cond_3b

    const/4 v6, 0x1

    .line 225
    :cond_3b
    move-object/from16 v3, p1

    goto :goto_1e

    .line 218
    :cond_3c
    move-object/from16 p1, v3

    .line 217
    :goto_20
    move-object/from16 v3, p1

    goto :goto_1e

    .line 226
    :cond_3d
    goto :goto_23

    :cond_3e
    if-eqz v8, :cond_3d

    const/16 v3, 0xf

    if-lt v4, v3, :cond_3d

    const/16 v3, 0x12

    if-gt v4, v3, :cond_3d

    .line 227
    nop

    .line 228
    const-string v3, "hhd"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 227
    const-string v6, "hhl"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v3

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_21

    :cond_3f
    const/4 v3, 0x1

    .line 230
    :goto_21
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "memories"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    add-int/lit8 v9, v4, -0xf

    .line 231
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 230
    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    add-int/lit8 v6, v4, -0xe

    if-le v3, v6, :cond_40

    const/4 v3, 0x1

    goto :goto_22

    :cond_40
    const/4 v3, 0x0

    :goto_22
    move v6, v3

    .line 233
    :goto_23
    const-string v3, "clm"

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 234
    if-ltz v4, :cond_45

    const/16 v8, 0x13

    if-ge v4, v8, :cond_45

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalProfileEngine;->ownsHero([BI)Z

    move-result v8

    if-eqz v8, :cond_45

    if-nez v6, :cond_41

    .line 235
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalProfileEngine;->flag([BLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 236
    :cond_41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 237
    const/4 v8, 0x0

    :goto_24
    const/16 v9, 0x13

    if-ge v8, v9, :cond_44

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 238
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 237
    invoke-static {v3, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    .line 238
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_42

    goto :goto_25

    :cond_42
    const/4 v9, 0x0

    goto :goto_26

    :cond_43
    :goto_25
    const/4 v9, 0x1

    .line 237
    :goto_26
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 239
    :cond_44
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v3, "clm"

    invoke-static {v5, v3, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v1

    .line 241
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v8, v5

    aput-object v15, v8, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v8, v2

    const-string v0, "clm"

    const/4 v2, 0x4

    aput-object v0, v8, v2

    const/4 v0, 0x5

    aput-object v6, v8, v0

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 242
    goto :goto_27

    :cond_45
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v20, v0, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "errId"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    :goto_27
    move-object v4, v0

    .line 243
    nop

    .line 244
    const-string v15, "unlockCollectMarkReply"

    move-object/from16 v3, v19

    goto/16 :goto_4b

    :cond_46
    const-string v3, "setRoleIdRequest"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 245
    invoke-static {v2, v10}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 246
    const-string v2, "role"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 247
    if-nez v2, :cond_47

    const/4 v2, 0x1

    goto :goto_28

    :cond_47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 248
    :goto_28
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_49

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_48

    goto :goto_29

    :cond_48
    move-object/from16 v3, v19

    goto/16 :goto_2b

    .line 249
    :cond_49
    :goto_29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 250
    const-string v0, "role"

    invoke-static {v1, v0, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 251
    invoke-static {v1, v9}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 252
    if-eqz v1, :cond_4b

    invoke-static {v1, v13}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 253
    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 254
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_2a

    .line 261
    :cond_4a
    move-object/from16 v3, v19

    goto :goto_2c

    .line 255
    :cond_4b
    :goto_2a
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v14, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v8, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 256
    invoke-static {v0, v9, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 257
    new-instance v7, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v9, v11, v1

    aput-object v3, v11, v5

    aput-object v6, v11, v4

    const/4 v1, 0x3

    aput-object v8, v11, v1

    const-string v1, "del_imgid"

    const/4 v3, 0x4

    aput-object v1, v11, v3

    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v11, v3

    .line 257
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v3, "updateHeadImage"

    invoke-direct {v7, v3, v1}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v3, v19

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 248
    :cond_4c
    move-object/from16 v3, v19

    .line 261
    :goto_2b
    move-object v0, v1

    :goto_2c
    nop

    .line 262
    invoke-static {v10, v2}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object v4

    .line 263
    const-string v15, "setRoleIdReply"

    move-object v1, v0

    goto/16 :goto_4b

    :cond_4d
    move-object/from16 v3, v19

    const-string v4, "changeName"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 264
    const-string v0, "name"

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v2, "cni"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 266
    const-string v4, "cnt"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    const-string v5, "last"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    .line 268
    if-nez v4, :cond_4e

    const/4 v6, 0x0

    goto :goto_2d

    :cond_4e
    const/16 v6, 0x1f4

    .line 269
    :goto_2d
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_50

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->codePointCount(II)I

    move-result v7

    const/16 v8, 0x10

    if-gt v7, v8, :cond_50

    .line 270
    const-string v7, ".*[\\p{Cntrl}].*"

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_50

    if-eqz v2, :cond_4f

    int-to-long v7, v5

    int-to-long v11, v2

    sub-long/2addr v7, v11

    const-wide/32 v11, 0x15180

    cmp-long v2, v7, v11

    if-ltz v2, :cond_50

    .line 271
    :cond_4f
    const-string v2, "crystal"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    if-lt v2, v6, :cond_50

    const/4 v2, 0x1

    goto :goto_2e

    :cond_50
    const/4 v2, 0x0

    .line 272
    :goto_2e
    if-eqz v2, :cond_51

    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v7, "name"

    invoke-static {v1, v7, v0}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 275
    const-string v8, "crystal"

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    sub-int/2addr v8, v6

    const-string v6, "crystal"

    invoke-static {v7, v6, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    .line 276
    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    const-string v7, "cnt"

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    add-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v7

    const-string v4, "last"

    const/4 v7, 0x2

    aput-object v4, v8, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v8, v5

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "cni"

    invoke-static {v6, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    goto :goto_2f

    .line 272
    :cond_51
    move-object v4, v1

    .line 278
    :goto_2f
    nop

    .line 279
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "n"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    if-eqz v2, :cond_52

    goto :goto_30

    :cond_52
    const-string v0, "name"

    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_30
    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 280
    const-string v15, "changeNameReply"

    move-object v1, v4

    move-object v4, v0

    goto/16 :goto_4b

    :cond_53
    const-string v4, "setDescribeRequest"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 281
    const-string v0, "describe"

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    if-nez v4, :cond_54

    goto :goto_31

    :cond_54
    move-object v8, v4

    .line 284
    :goto_31
    if-eqz v2, :cond_55

    .line 285
    nop

    .line 286
    invoke-static {v1, v0, v2}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_32

    .line 284
    :cond_55
    move-object v2, v8

    .line 288
    :goto_32
    nop

    .line 289
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 290
    const-string v15, "setDescribeReply"

    goto/16 :goto_4b

    :cond_56
    const-string v4, "setBbsSkin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    const-string v4, "tbk"

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 292
    const-string v4, "tbk"

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_57

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_57
    const-string v4, "bk"

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 294
    const-string v5, "s"

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 295
    if-nez v4, :cond_58

    const/4 v11, 0x0

    goto :goto_33

    :cond_58
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 296
    :goto_33
    if-eqz v2, :cond_59

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 297
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 298
    const-string v2, "bk"

    invoke-static {v1, v2, v11}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 300
    :cond_59
    nop

    .line 301
    invoke-static {v0, v11}, Lcom/project7/localmanager/BsonLite;->bbsSkinReplyDocument(Ljava/lang/Iterable;I)[B

    move-result-object v4

    .line 302
    const-string v15, "updateBbsSkin"

    goto/16 :goto_4b

    :cond_5a
    const-string v4, "read_cg"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 303
    const-string v0, "cg"

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    const-string v4, "ncgs"

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 305
    if-eqz v0, :cond_5b

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 306
    const-string v0, "ncgs"

    invoke-static {v1, v0, v2}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    goto :goto_34

    .line 308
    :cond_5b
    move-object v0, v1

    :goto_34
    move-object v1, v0

    move-object/from16 v4, v18

    const/4 v15, 0x0

    goto/16 :goto_4b

    .line 309
    :cond_5c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported profile method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_5d
    move-object/from16 v3, v19

    .line 130
    :goto_35
    const-string v4, "t"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    .line 131
    const-string v5, "hc"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    .line 132
    const-string v7, "setImgState"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 133
    const-string v0, "ii"

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalImageAvatar;->approveStored([BLjava/lang/String;)[B

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/project7/localmanager/LocalImageAvatar;->cache([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_36

    .line 135
    :cond_5e
    const/4 v7, 0x2

    if-ne v4, v7, :cond_5f

    .line 136
    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalImageAvatar;->update([B[B)[B

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/project7/localmanager/LocalImageAvatar;->cache([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    if-ne v0, v1, :cond_62

    new-instance v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v4, "m"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "\u5934\u50cf\u672a\u4fdd\u5b58\uff0c\u8bf7\u9009\u62e9\u6709\u6548\u7684PNG/JPEG\u56fe\u7247\uff08\u6700\u59272MB\uff09"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    .line 139
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v4, "showMessageStr"

    invoke-direct {v1, v4, v2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 138
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 140
    :cond_5f
    const/4 v2, 0x1

    if-ne v4, v2, :cond_61

    if-eq v5, v2, :cond_60

    const/4 v2, 0x2

    if-eq v5, v2, :cond_60

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalProfileEngine;->ownsHero([BI)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 141
    :cond_60
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/io/Serializable;

    const/4 v2, 0x0

    aput-object v14, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x2

    aput-object v8, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v9, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 142
    invoke-static {v0, v6, v8}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 143
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v2, "q7Avatar"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    goto :goto_36

    .line 145
    :cond_61
    move-object v0, v1

    :cond_62
    :goto_36
    nop

    .line 146
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-static {v0, v9}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_63

    .line 147
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/io/Serializable;

    aput-object v14, v5, v2

    const/4 v2, 0x1

    aput-object v14, v5, v2

    const/4 v4, 0x2

    aput-object v8, v5, v4

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_37

    :cond_63
    const/4 v2, 0x1

    const/4 v4, 0x2

    new-instance v5, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {v0, v9}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    :goto_37
    aput-object v5, v1, v2

    aput-object v6, v1, v4

    .line 148
    invoke-static {v0, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_64

    goto :goto_38

    :cond_64
    invoke-static {v0, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_38
    const/4 v2, 0x3

    aput-object v8, v1, v2

    const-string v2, "del_imgid"

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    .line 146
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    .line 150
    const-string v15, "updateHeadImage"

    move-object v1, v0

    goto/16 :goto_4b

    .line 75
    :cond_65
    move-object/from16 v18, v4

    move-object v3, v5

    .line 76
    :goto_39
    const-string v4, "updateTitleNewState"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    if-eqz v0, :cond_66

    goto :goto_3a

    :cond_66
    const-string v10, "bgd"

    :goto_3a
    if-eqz v0, :cond_67

    const-string v0, "nt"

    goto :goto_3b

    :cond_67
    const-string v0, "nb"

    .line 78
    :goto_3b
    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 79
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v4, v0, v5}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    invoke-static {v1, v10, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 82
    move-object/from16 v4, v18

    const/4 v15, 0x0

    goto/16 :goto_4b

    .line 62
    :cond_68
    move-object v3, v5

    const/4 v4, 0x5

    .line 63
    :goto_3c
    const-string v5, "setTitleShowList"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    if-eqz v0, :cond_69

    goto :goto_3d

    :cond_69
    const-string v10, "bgd"

    :goto_3d
    if-eqz v0, :cond_6a

    const-string v5, "mt"

    goto :goto_3e

    :cond_6a
    const-string v5, "mb"

    .line 65
    :goto_3e
    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 66
    if-eqz v0, :cond_6b

    goto :goto_3f

    :cond_6b
    const-string v9, "cb"

    :goto_3f
    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalAccountFeatures;->pairs([B)Ljava/util/Map;

    move-result-object v7

    .line 68
    new-instance v8, Ljava/util/ArrayList;

    const-string v9, "sl"

    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v0, :cond_6c

    const/4 v9, 0x3

    goto :goto_40

    :cond_6c
    move v9, v4

    :goto_40
    if-gt v2, v9, :cond_6d

    const/4 v2, 0x1

    goto :goto_41

    :cond_6d
    const/4 v2, 0x0

    .line 70
    :goto_41
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 71
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_42
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_70

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_6f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6e

    goto :goto_43

    :cond_6e
    const/4 v11, 0x0

    goto :goto_44

    :cond_6f
    :goto_43
    const/4 v11, 0x1

    :goto_44
    and-int/2addr v2, v11

    goto :goto_42

    .line 72
    :cond_70
    if-eqz v2, :cond_71

    invoke-static {v6, v5, v8}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v4

    invoke-static {v1, v10, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 73
    :cond_71
    if-eqz v0, :cond_72

    const-string v4, "replySetTitleShowList"

    goto :goto_45

    :cond_72
    const-string v4, "setBadgeShowListReply"

    :goto_45
    move-object v15, v4

    .line 74
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_73

    const-string v0, "mt"

    goto :goto_46

    :cond_73
    const-string v0, "sl"

    :goto_46
    const/4 v7, 0x0

    aput-object v0, v4, v7

    if-eqz v2, :cond_74

    goto :goto_47

    :cond_74
    invoke-static {v6, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    :goto_47
    const/4 v2, 0x1

    aput-object v8, v4, v2

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    .line 75
    goto/16 :goto_4b

    .line 50
    :cond_75
    move-object/from16 v18, v4

    move-object v3, v5

    .line 51
    :goto_48
    const-string v4, "oaed"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 52
    const-string v6, "setNameCardFirstSee"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 53
    const-string v0, "fs"

    const/4 v2, 0x0

    invoke-static {v5, v0, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    move-object v1, v0

    move-object/from16 v4, v18

    const/4 v15, 0x0

    goto :goto_4a

    .line 55
    :cond_76
    const-string v0, "nc"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 56
    const-string v2, "ncb"

    invoke-static {v5, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 58
    if-eqz v2, :cond_77

    const-string v6, "cnc"

    invoke-static {v5, v6, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    invoke-static {v1, v4, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 59
    :cond_77
    nop

    .line 60
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "rs"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v4, v8

    const/4 v6, 0x2

    aput-object v15, v4, v6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "nc"

    aput-object v8, v6, v7

    if-eqz v2, :cond_78

    goto :goto_49

    :cond_78
    const-string v0, "cnc"

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    :goto_49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v6, v2

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v15, "replyNameCardChange"

    .line 62
    :goto_4a
    nop

    .line 311
    :goto_4b
    new-instance v0, Lcom/project7/localmanager/LocalProfileEngine$Result;

    invoke-direct {v0, v1, v15, v4}, Lcom/project7/localmanager/LocalProfileEngine$Result;-><init>([BLjava/lang/String;[B)V

    .line 312
    iget-object v1, v0, Lcom/project7/localmanager/LocalProfileEngine$Result;->extras:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    return-object v0
.end method

.method private static flag([BLjava/lang/String;)Z
    .locals 2

    .line 317
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

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

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 8
    const-string v0, "setRoleIdRequest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "setDescribeRequest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    const-string v0, "setBbsSkin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "read_cg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "changeName"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    const-string v0, "setHeadImage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "setImgState"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "unlockCollectMark"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    const-string v0, "setAssistHero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "requestNameCardChange"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    const-string v0, "setNameCardFirstSee"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "setTitleShowList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    const-string v0, "setBadgeShowList"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "updateTitleNewState"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    const-string v0, "updateBadgeNewState"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "updateTitleExchange"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    const-string v0, "requestUpdateCollectCover"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "clearFirstGetFlag"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    const-string v0, "set_hero_shoucang"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "setHeroEmojiUsed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    const-string v0, "requestEmojiRead"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "addRecentEmoji"

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

    .line 8
    :goto_1
    return p0
.end method

.method private static ownsHero([BI)Z
    .locals 5

    .line 321
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "hrs"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    .line 322
    const/4 v0, 0x0

    move v1, v0

    .line 323
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 324
    if-nez v2, :cond_0

    return v0

    .line 325
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 322
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
