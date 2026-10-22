.class final Lcom/project7/localmanager/LocalStoryFriendshipEngine;
.super Ljava/lang/Object;
.source "LocalStoryFriendshipEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static current([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I
    .locals 4

    .line 8
    const-string v0, "q7EconomyCommit"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 9
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    const-string v2, "ef"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 11
    if-eqz v1, :cond_0

    iget-object v3, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->economyCommit:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 12
    :cond_0
    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 13
    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object p0

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 12
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 18

    .line 17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "q7StoryFriendship"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 18
    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 20
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 21
    iget-object v3, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 22
    invoke-static {v1, v7, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    goto :goto_0

    .line 24
    :cond_0
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 25
    return-void

    .line 27
    :cond_1
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "q7WeekEventBaseline"

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 28
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    iget-object v8, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v11, "ef"

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 31
    iget-object v13, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {v1, v12}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v13

    .line 33
    if-nez v13, :cond_3

    goto :goto_1

    .line 36
    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 37
    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v14

    .line 38
    if-gt v9, v14, :cond_4

    goto :goto_1

    .line 39
    :cond_4
    iget-object v15, v1, Lcom/project7/localmanager/LocalEventCatalog;->cityEffects:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 41
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15}, Lcom/project7/localmanager/LocalChapterCityEngine;->active([B)Z

    move-result v15

    if-nez v15, :cond_a

    if-eqz v5, :cond_a

    .line 42
    const-string v15, "friendly"

    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 43
    iget-object v15, v1, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 44
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    .line 45
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 46
    move-object/from16 v16, v6

    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v12, :cond_5

    move-object/from16 v17, v8

    const/4 v6, 0x2

    aget v8, v12, v6

    if-ne v8, v1, :cond_6

    .line 47
    move-object/from16 v1, p1

    move-object/from16 v6, v16

    move-object/from16 v8, v17

    goto :goto_2

    .line 46
    :cond_5
    move-object/from16 v17, v8

    .line 48
    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v2, v1}, Lcom/project7/localmanager/LocalStoryFriendshipEngine;->current([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 49
    invoke-static {v5, v10}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    sub-int v10, v9, v14

    invoke-static {v8, v10}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v8

    .line 50
    const/16 v10, 0x64

    if-lt v6, v10, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v6, v8}, Ljava/lang/Math;->addExact(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 51
    :goto_3
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 52
    invoke-static {v10, v1}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v10

    .line 51
    invoke-static {v10, v11, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v10

    invoke-static {v8, v1, v10}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v8

    iput-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-object/from16 v1, p1

    move-object/from16 v6, v16

    move-object/from16 v8, v17

    goto/16 :goto_2

    .line 46
    :cond_8
    move-object/from16 v17, v8

    move-object/from16 v1, p1

    move-object/from16 v6, v16

    goto/16 :goto_2

    .line 44
    :cond_9
    move-object/from16 v16, v6

    move-object/from16 v17, v8

    goto :goto_4

    .line 41
    :cond_a
    move-object/from16 v16, v6

    move-object/from16 v17, v8

    .line 56
    :goto_4
    invoke-static {v3, v13, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 57
    move-object/from16 v1, p1

    move-object/from16 v6, v16

    move-object/from16 v8, v17

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 58
    :cond_b
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 59
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    .line 60
    :cond_c
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "q7EconomyCommit"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 61
    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 62
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v4, v7, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    .line 64
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v7, v6}, Lcom/project7/localmanager/BsonLite;->heroValueDocument(II)[B

    move-result-object v6

    const-string v7, "updateFriendlyValue"

    invoke-virtual {v0, v7, v6}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 65
    goto :goto_5

    .line 66
    :cond_d
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-static {v1, v6, v5}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 67
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->regularActions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v5

    const-string v6, "av"

    invoke-static {v1, v6, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 68
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->sandglass([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v2

    const-string v5, "sgw"

    invoke-static {v1, v5, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 69
    invoke-static {v1, v11, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 70
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 71
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "d"

    aput-object v3, v1, v2

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "heromgr"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "syncHeroMgrData"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 72
    return-void
.end method
