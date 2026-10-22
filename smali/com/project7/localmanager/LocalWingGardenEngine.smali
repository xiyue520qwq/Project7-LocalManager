.class final Lcom/project7/localmanager/LocalWingGardenEngine;
.super Ljava/lang/Object;
.source "LocalWingGardenEngine.java"


# static fields
.field static final KEY:Ljava/lang/String; = "q7WingGarden"

.field static final METHOD:Ljava/lang/String; = "openYumiYaocaoyuan"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;
    .locals 23

    .line 15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "std"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalWingGardenEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object v3

    .line 16
    const-string v5, "d"

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 16
    const/4 v9, 0x1

    .line 50
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 16
    if-nez v3, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v5, v12, v7

    aput-object v3, v12, v9

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v12

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalWingStoryEngine;->envelope([B[B)[B

    move-result-object v11

    .line 17
    :goto_0
    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v13, "weeknum"

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalWingGardenEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 18
    if-eqz v11, :cond_1b

    if-eqz v12, :cond_1b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ltz v13, :cond_1b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x7

    if-gt v12, v13, :cond_1b

    if-eqz v2, :cond_1b

    iget-object v12, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    .line 19
    const-string v14, "cycle"

    invoke-static {v11, v14}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto/16 :goto_8

    .line 20
    :cond_1
    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    const-string v12, "q7WingGarden"

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v11

    if-eqz v11, :cond_3

    :cond_2
    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 21
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    const-string v15, "q7StoryPending"

    invoke-interface {v11, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v15}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v11

    if-nez v11, :cond_4

    .line 22
    :cond_3
    const-string v0, "invalid-state"

    return-object v0

    .line 23
    :cond_4
    iget-object v11, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v11

    iget-object v13, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v13, v15}, Lcom/project7/localmanager/LocalWingGardenEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    .line 24
    if-eqz v11, :cond_6

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 25
    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalWingGardenEngine;->receipt([B)[B

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "unchanged"

    goto :goto_1

    :cond_5
    const-string v0, "invalid-receipt"

    :goto_1
    return-object v0

    .line 26
    :cond_6
    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v11

    const-string v15, "openYumiYaocaoyuan"

    invoke-interface {v11, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v0, "unproven-opening-outbox"

    return-object v0

    .line 27
    :cond_7
    const-string v11, "syncBaiyuInfos"

    invoke-static {v13, v11}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    .line 28
    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v13, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 29
    invoke-static {v13, v9}, Lcom/project7/localmanager/LocalWingStoryEngine;->payload([B[B)[B

    move-result-object v13

    if-nez v13, :cond_8

    const-string v0, "invalid-meter-outbox"

    return-object v0

    .line 30
    :cond_8
    new-instance v13, Ljava/util/HashSet;

    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v7, "q7WeekEventBaseline"

    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v13, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    iget-object v6, v1, Lcom/project7/localmanager/LocalEventCatalog;->wingGardens:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15, v2, v6}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v15

    .line 33
    move-object/from16 v19, v9

    invoke-virtual {v1, v6}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v9

    .line 34
    move-object/from16 v20, v5

    invoke-virtual {v1, v6}, Lcom/project7/localmanager/LocalEventCatalog;->trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    move-result-object v5

    .line 35
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    move-object/from16 v22, v11

    const/16 v16, 0x0

    aget v11, v21, v16

    move-object/from16 v21, v4

    const/4 v4, 0x2

    if-ne v11, v4, :cond_19

    const/16 v4, 0xc4b

    if-ne v6, v4, :cond_18

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v7, 0x1

    aget v4, v4, v7

    const/16 v7, 0x123

    if-ne v4, v7, :cond_18

    if-eqz v9, :cond_18

    iget-boolean v4, v9, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v4, :cond_18

    iget-boolean v4, v9, Lcom/project7/localmanager/LocalEventCatalog$Event;->repeatable:Z

    if-nez v4, :cond_18

    if-eqz v5, :cond_18

    if-ltz v15, :cond_18

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_16

    iget-object v4, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object v7, v5, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    .line 38
    invoke-interface {v4, v7}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    const-string v9, "battle"

    invoke-interface {v4, v9, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iget-object v7, v5, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    invoke-interface {v4, v7}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 40
    invoke-virtual {v1, v6}, Lcom/project7/localmanager/LocalEventCatalog;->mutex(I)Ljava/util/Set;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v15, v17

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v11, v22

    goto/16 :goto_2

    .line 41
    :cond_9
    nop

    .line 42
    iget-object v4, v5, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x1

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 43
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v2, v7}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v9

    .line 44
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    if-ltz v9, :cond_a

    if-le v9, v15, :cond_b

    :cond_a
    const/4 v5, 0x0

    .line 45
    :cond_b
    goto :goto_3

    .line 47
    :cond_c
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v7, 0xc4a

    invoke-static {v4, v2, v7}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v4

    .line 48
    if-eqz v5, :cond_13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    if-ltz v4, :cond_13

    if-gt v4, v15, :cond_13

    iget-object v4, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    .line 49
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_d

    move-object/from16 v15, v17

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v11, v22

    goto/16 :goto_2

    .line 50
    :cond_d
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "version"

    const/4 v7, 0x0

    aput-object v4, v1, v7

    aput-object v10, v1, v5

    const/4 v4, 0x2

    aput-object v14, v1, v4

    const/4 v4, 0x3

    iget-object v5, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "week"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    iget v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x6

    const-string v4, "event"

    aput-object v4, v1, v2

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    const/16 v2, 0x8

    const-string v4, "day"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "count"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v10, v1, v2

    .line 50
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 52
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "ycyo"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 53
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v12, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 54
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v5, v21

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalWingGardenEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v3

    invoke-static {v1, v5, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 55
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalWingGardenEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object v1

    .line 57
    nop

    .line 58
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v5, v5, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    move-object/from16 v6, v22

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 59
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    new-instance v5, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v20, v8, v7

    const/4 v7, 0x1

    aput-object v1, v8, v7

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v3, 0x1

    .line 58
    :cond_e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v22, v6

    goto :goto_4

    .line 62
    :cond_f
    move-object/from16 v6, v22

    if-eqz v19, :cond_10

    if-nez v3, :cond_10

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v20, v4, v3

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 63
    :cond_10
    if-nez v2, :cond_11

    const/4 v7, 0x2

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v20, v3, v9

    const/4 v11, 0x1

    aput-object v1, v3, v11

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    move-object/from16 v15, v17

    invoke-virtual {v0, v15, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 64
    :cond_11
    if-eqz v2, :cond_12

    const-string v0, "already-open"

    goto :goto_5

    :cond_12
    const-string v0, "opened"

    :goto_5
    return-object v0

    .line 48
    :cond_13
    move-object/from16 v15, v17

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    const/4 v4, 0x7

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v4, v5

    move-object v11, v6

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_2

    .line 39
    :cond_14
    move-object/from16 v15, v17

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    const/4 v4, 0x7

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v4, v5

    move-object v11, v6

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_2

    .line 38
    :cond_15
    move-object/from16 v15, v17

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    const/4 v4, 0x7

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v4, v5

    move-object v11, v6

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_2

    .line 37
    :cond_16
    move v11, v7

    move-object/from16 v15, v17

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    const/4 v4, 0x7

    const/4 v7, 0x2

    const/4 v9, 0x0

    goto :goto_6

    :cond_17
    move-object/from16 v15, v17

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    const/4 v4, 0x7

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x1

    :goto_6
    move-object v4, v5

    move-object v11, v6

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_2

    .line 35
    :cond_18
    move-object/from16 v15, v17

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    const/4 v4, 0x7

    const/4 v7, 0x2

    goto :goto_7

    :cond_19
    move v7, v4

    move-object/from16 v15, v17

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    const/4 v4, 0x7

    :goto_7
    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v4, v5

    move-object v11, v6

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    move-object/from16 v5, v20

    goto/16 :goto_2

    .line 66
    :cond_1a
    const-string v0, "unmet-completion"

    return-object v0

    .line 19
    :cond_1b
    :goto_8
    const-string v0, "missing-proven-cycle"

    return-object v0
.end method

.method private static d([BLjava/lang/String;)[B
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static envelope([B[B)[B
    .locals 2

    .line 85
    invoke-static {p0}, Lcom/project7/localmanager/LocalWingGardenEngine;->receipt([B)[B

    move-result-object v0

    const-string v1, "std"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWingGardenEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object p0

    .line 86
    if-eqz v0, :cond_0

    const-string v1, "d"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static payload([B[B)[B
    .locals 2

    .line 90
    invoke-static {p0}, Lcom/project7/localmanager/LocalWingGardenEngine;->receipt([B)[B

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "d"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "std"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWingGardenEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 91
    :goto_0
    return-object p0
.end method

.method static receipt([B)[B
    .locals 18

    .line 70
    move-object/from16 v0, p0

    const-string v1, "q7WingGarden"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "weeknum"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalWingGardenEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "q7Wing"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalWingGardenEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 71
    if-eqz v1, :cond_7

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "version"

    invoke-static {v1, v7}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 72
    const/16 v6, 0xc4b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "event"

    invoke-static {v1, v9}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "count"

    invoke-static {v1, v10}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    const-string v11, "std"

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalWingGardenEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    const-string v13, "ycyo"

    invoke-static {v12, v13}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_2

    .line 75
    :cond_0
    const-string v8, "week"

    invoke-static {v1, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "day"

    invoke-static {v1, v13}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "d"

    invoke-static {v2, v15}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 76
    const-string v4, "cycle"

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eqz v12, :cond_4

    if-eqz v14, :cond_4

    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-ltz v17, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v5, 0x7

    if-gt v6, v5, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v6, v5, :cond_4

    const-string v5, "w"

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalWingGardenEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalWingStoryEngine;->snapshot([B)[B

    move-result-object v2

    .line 80
    if-eqz v2, :cond_3

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    const/4 v11, 0x1

    aput-object v2, v5, v11

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalWingStoryEngine;->envelope([B[B)[B

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 81
    :cond_2
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v7, v0, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v11

    aput-object v4, v0, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object v8, v0, v1

    const/4 v1, 0x5

    aput-object v12, v0, v1

    const/4 v1, 0x6

    aput-object v9, v0, v1

    const/16 v1, 0xc4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    aput-object v13, v0, v1

    const/16 v1, 0x9

    aput-object v14, v0, v1

    const/16 v1, 0xa

    aput-object v10, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 80
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 72
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 71
    :cond_7
    const/4 v0, 0x0

    .line 74
    :goto_2
    return-object v0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 0

    .line 11
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalWingGardenEngine;->apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Ljava/lang/String;

    .line 12
    return-void
.end method
