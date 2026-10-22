.class final Lcom/project7/localmanager/LocalChapterCityEngine;
.super Ljava/lang/Object;
.source "LocalChapterCityEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active([B)Z
    .locals 2

    .line 8
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "rt"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v1, "q7ChapterMenu"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 10
    const-string p0, "12"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "12-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 9
    :goto_1
    return p0
.end method

.method private static applyFriendly(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Map;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalResourceEngine$Result;",
            "[B",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 65
    const-string v0, "friendly"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 69
    if-eqz p4, :cond_0

    const/4 v3, 0x2

    aget v3, p4, v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v2}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v3

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 73
    invoke-static {v5, p2, v2}, Lcom/project7/localmanager/LocalStoryFriendshipEngine;->current([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 72
    invoke-interface {p3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 74
    const/16 v5, 0x64

    if-lt v4, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "ef"

    invoke-static {v3, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v1

    const-string v2, "updateFriendlyValue"

    invoke-virtual {p0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method

.method static applyHeroes(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 18

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "heromgr"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 83
    new-instance v4, Ljava/util/LinkedHashSet;

    const-string v5, "c"

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 85
    const-string v7, "cineLockHeroes"

    invoke-static {v1, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 86
    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v9}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-nez v8, :cond_2

    .line 88
    invoke-static {v2, v5, v4}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v2

    .line 89
    new-array v4, v11, [Ljava/lang/Object;

    const-string v5, "h"

    aput-object v5, v4, v10

    aput-object v6, v4, v9

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 91
    :cond_2
    const-string v4, "banHeroes"

    const-string v5, "recoverBanHeroes"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v5

    move v6, v10

    :goto_1
    if-ge v6, v11, :cond_a

    aget-object v7, v5, v6

    .line 92
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v12, "hrs"

    const-string v13, "bhrs"

    if-eqz v8, :cond_3

    move-object v8, v12

    goto :goto_2

    :cond_3
    move-object v8, v13

    .line 93
    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v12, v13

    .line 94
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, [B

    .line 96
    new-instance v10, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v10, v9}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_3

    .line 97
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-static {v1, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 99
    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, [B

    .line 100
    const-string v1, "0"

    invoke-static {v11, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    .line 101
    move-object/from16 v17, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v5, v11}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 102
    :cond_6
    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v1, v11}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_5
    move-object/from16 v1, p1

    move-object/from16 v5, v17

    const/4 v11, 0x2

    goto :goto_4

    .line 104
    :cond_7
    move-object/from16 v17, v5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 105
    invoke-static {v2, v8, v13}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v1, v12, v14}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 106
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "bhs"

    goto :goto_6

    :cond_8
    const-string v2, "rhs"

    :goto_6
    const/4 v8, 0x0

    aput-object v2, v5, v8

    const/4 v2, 0x1

    aput-object v9, v5, v2

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    move-object v2, v1

    .line 91
    :cond_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v17

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    goto/16 :goto_1

    .line 109
    :cond_a
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_b

    .line 110
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "d"

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v4, "syncHeroMgrData"

    invoke-virtual {v0, v4, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 111
    :cond_b
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 112
    return-void
.end method

.method static locked([BI)Z
    .locals 2

    .line 14
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalAlanCityEngine;->locked([BI)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalAnCityEngine;->locked([BI)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/project7/localmanager/LocalChapterCityEngine;->active([B)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    const-string v1, "q7ChapterLocks"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

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

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 28

    .line 24
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalChapterCityEngine;->active([B)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "q7ChapterEffects"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 26
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "q7ChapterLocks"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 27
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "q7ChapterStates"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    .line 28
    new-instance v9, Ljava/util/HashSet;

    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v11, "q7WeekEventBaseline"

    invoke-static {v10, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 29
    nop

    .line 30
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 31
    iget-object v11, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 32
    iget-object v12, v1, Lcom/project7/localmanager/LocalEventCatalog;->cityEffects:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 33
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 34
    if-eqz v12, :cond_9

    move-object/from16 v17, v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 v18, v13

    invoke-static {v3, v15}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v26, v4

    move-object/from16 v25, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v19, v9

    goto/16 :goto_7

    .line 35
    :cond_1
    const-string v13, "areaFree"

    const-string v11, "areaFight"

    move-object/from16 v19, v9

    const-string v9, "areaLock"

    move-object/from16 v20, v7

    const-string v7, "areaUnlock"

    filled-new-array {v13, v11, v9, v7}, [Ljava/lang/String;

    move-result-object v11

    move-object/from16 v21, v5

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v22, v8

    const/4 v8, 0x4

    if-ge v5, v8, :cond_7

    aget-object v8, v11, v5

    .line 36
    invoke-static {v12, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move-object/from16 v25, v6

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    move-object/from16 v6, v21

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v26, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 37
    move-object/from16 v27, v3

    const/4 v3, 0x1

    if-lt v4, v3, :cond_5

    const/16 v3, 0x8

    if-le v4, v3, :cond_2

    goto :goto_5

    .line 38
    :cond_2
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 40
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v16, 0x1

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v11, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    move-object v11, v3

    goto :goto_4

    .line 39
    :cond_4
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v6, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v3

    move-object v6, v3

    .line 41
    :goto_4
    nop

    .line 42
    move-object/from16 v4, v26

    move-object/from16 v3, v27

    const/16 v18, 0x1

    goto :goto_2

    .line 36
    :cond_5
    :goto_5
    move-object/from16 v4, v26

    move-object/from16 v3, v27

    goto :goto_2

    .line 35
    :cond_6
    move-object/from16 v27, v3

    move-object/from16 v26, v4

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v21, v6

    move-object/from16 v20, v11

    move-object/from16 v8, v22

    move-object/from16 v11, v24

    move-object/from16 v6, v25

    goto :goto_1

    .line 44
    :cond_7
    move-object/from16 v27, v3

    move-object/from16 v26, v4

    move-object/from16 v25, v6

    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalChapterCityEngine;->applyHeroes(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 45
    iget-object v3, v1, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v0, v12, v2, v10, v3}, Lcom/project7/localmanager/LocalChapterCityEngine;->applyFriendly(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Map;[I)V

    .line 46
    move-object/from16 v3, v27

    const/4 v4, 0x1

    invoke-static {v3, v15, v4}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v3

    .line 47
    move-object/from16 v11, v17

    move/from16 v13, v18

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    move-object/from16 v4, v26

    goto/16 :goto_0

    .line 34
    :cond_8
    move-object/from16 v26, v4

    move-object/from16 v25, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v19, v9

    goto :goto_6

    :cond_9
    move-object/from16 v26, v4

    move-object/from16 v25, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v19, v9

    move-object/from16 v17, v11

    :goto_6
    move/from16 v18, v13

    .line 31
    :goto_7
    move-object/from16 v11, v17

    move/from16 v13, v18

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v22

    move-object/from16 v6, v25

    move-object/from16 v4, v26

    goto/16 :goto_0

    .line 48
    :cond_a
    move-object/from16 v26, v4

    move-object/from16 v25, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move-object/from16 v19, v9

    move/from16 v18, v13

    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v6, v26

    invoke-static {v4, v6, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 49
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v4, v25

    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 50
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v4, v22

    invoke-static {v3, v4, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 51
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 52
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v2, v10}, Lcom/project7/localmanager/LocalStoryFriendshipEngine;->commit([BLcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Map;)[B

    move-result-object v3

    .line 53
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "q7EconomyCommit"

    invoke-static {v4, v5, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 54
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "d"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "heromgr"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    const-string v4, "syncHeroMgrData"

    invoke-virtual {v0, v4, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 56
    :cond_b
    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/project7/localmanager/LocalChapterCityEngine;->refreshTargets(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Set;)V

    .line 57
    if-eqz v18, :cond_c

    .line 58
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 59
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v1

    const-string v2, "get_all_area_info_reply"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 61
    :cond_c
    return-void
.end method

.method private static refreshTargets(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalResourceEngine$Result;",
            "Lcom/project7/localmanager/LocalEventCatalog;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "std"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 126
    const-string v2, "rt"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_2

    const-string v3, "12"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "12-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {p1, p2, p3, v2}, Lcom/project7/localmanager/LocalStoryRuleRegistry;->pendingTargets(Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Set;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 129
    const-string p2, "srt"

    invoke-static {v0, p2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {v0, p2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p3

    if-eqz p3, :cond_1

    return-void

    .line 130
    :cond_1
    iget-object p3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, p2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 131
    invoke-static {p0}, Lcom/project7/localmanager/LocalServiceEngine;->syncRoute(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 132
    return-void

    .line 127
    :cond_2
    :goto_0
    return-void
.end method

.method static resetHeroes([B)[B
    .locals 6

    .line 115
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 116
    const-string v2, "bhrs"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 117
    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    .line 118
    const-string v5, "1"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 117
    invoke-static {p0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object p0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "c"

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static state([BI)Ljava/lang/Integer;
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/project7/localmanager/LocalChapterCityEngine;->active([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "q7ChapterStates"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0
.end method
