.class final Lcom/project7/localmanager/LocalStoryHeroRewardEngine;
.super Ljava/lang/Object;
.source "LocalStoryHeroRewardEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 18

    .line 8
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v3, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "weeknum"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 10
    const-string v4, "w"

    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v5, "d"

    invoke-static {v0, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 11
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    const-string v7, "q7StoryHeroes"

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 12
    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_4

    .line 13
    :cond_1
    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    .line 14
    iget v0, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-eq v4, v0, :cond_2

    return-void

    .line 15
    :cond_2
    new-instance v8, Ljava/util/HashSet;

    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "q7WeekEventBaseline"

    invoke-static {v0, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 16
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 17
    iget-object v9, v2, Lcom/project7/localmanager/LocalEventCatalog;->heroRewards:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 19
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventDays:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v11}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v14

    .line 21
    iget-object v15, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    move-object/from16 v16, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v14, :cond_8

    iget-boolean v9, v14, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v9, :cond_8

    iget-boolean v9, v14, Lcom/project7/localmanager/LocalEventCatalog$Event;->repeatable:Z

    if-nez v9, :cond_8

    .line 22
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    if-nez v13, :cond_3

    .line 23
    goto/16 :goto_3

    .line 24
    :cond_3
    const-string v9, ":"

    const/4 v14, -0x1

    invoke-virtual {v13, v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 26
    :try_start_0
    invoke-virtual {v2, v11}, Lcom/project7/localmanager/LocalEventCatalog;->trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    move-result-object v13

    .line 27
    array-length v15, v9

    const/4 v14, 0x2

    const/16 v17, 0x1

    if-ne v15, v14, :cond_4

    aget-object v15, v9, v17

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto :goto_1

    :cond_4
    const/4 v15, -0x1

    .line 28
    :goto_1
    array-length v14, v9

    const/4 v2, 0x2

    if-ne v14, v2, :cond_7

    const/4 v2, 0x0

    aget-object v9, v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v4, :cond_7

    if-ltz v15, :cond_7

    if-gt v15, v6, :cond_7

    if-eqz v13, :cond_7

    iget-object v9, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object v14, v13, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    .line 30
    invoke-interface {v9, v14}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v13, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->date:[I

    if-eqz v9, :cond_5

    iget-object v9, v13, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->date:[I

    aget v9, v9, v2

    if-lt v15, v9, :cond_7

    iget-object v9, v13, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->date:[I

    aget v9, v9, v17
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v15, v9, :cond_5

    goto/16 :goto_2

    .line 32
    :cond_5
    nop

    .line 33
    new-instance v9, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v13, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v9, v13}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    aget v13, v13, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v17

    invoke-static {v9, v13, v0}, Lcom/project7/localmanager/LocalResourceEngine;->addMissingHero(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 35
    iget-object v0, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v10, v12, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v10

    .line 36
    iget-object v0, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v7, v10}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 37
    iget-object v0, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->heroRewards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 38
    iget-object v0, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v12, "q7StoryPending"

    invoke-static {v0, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 39
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "heroReward:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const-string v13, "r"

    aput-object v13, v14, v2

    .line 40
    invoke-virtual {v9}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v13

    aput-object v13, v14, v17

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v13

    .line 39
    invoke-static {v0, v11, v13}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 41
    iget-object v11, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v12, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v5, v0, v2

    iget-object v2, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v11, "heromgr"

    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v17

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v2, "syncHeroMgrData"

    invoke-virtual {v9, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 44
    :cond_6
    iget-object v0, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 45
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v2, v9, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    move-object/from16 v2, p1

    move-object/from16 v9, v16

    goto/16 :goto_0

    .line 31
    :cond_7
    :goto_2
    goto :goto_3

    .line 32
    :catch_0
    move-exception v0

    .line 17
    :cond_8
    :goto_3
    move-object/from16 v2, p1

    move-object/from16 v9, v16

    goto/16 :goto_0

    .line 47
    :cond_9
    return-void

    .line 12
    :cond_a
    :goto_4
    return-void
.end method
