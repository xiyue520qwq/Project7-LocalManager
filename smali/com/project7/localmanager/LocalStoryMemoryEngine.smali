.class final Lcom/project7/localmanager/LocalStoryMemoryEngine;
.super Ljava/lang/Object;
.source "LocalStoryMemoryEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static currentCompletion([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z
    .locals 4

    .line 30
    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventDays:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 31
    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 32
    :cond_0
    const/4 v0, -0x1

    const-string v1, ":"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 33
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return p2

    .line 35
    :cond_1
    :try_start_0
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 36
    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    const-string v2, "w"

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "d"

    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 38
    if-eqz v2, :cond_2

    if-eqz p0, :cond_2

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_2

    if-ltz v1, :cond_2

    .line 39
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, p0, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    nop

    .line 38
    :goto_0
    return p2

    .line 40
    :catch_0
    move-exception p0

    return p2
.end method

.method static mask([BI)I
    .locals 2

    .line 18
    const-string v0, "ldd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid draw state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_1
    :goto_0
    const-string p0, "hfp"

    invoke-static {v1, p0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 21
    if-nez v0, :cond_3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid memory state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 23
    if-nez p0, :cond_5

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 24
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid saved memory mask"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_5
    :goto_2
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "negative saved memory mask"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_7
    :goto_3
    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_4
    return p0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 24

    .line 44
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "q7StoryMemory"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 45
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v7, "q7WeekEventBaseline"

    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 46
    iget-object v6, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 47
    iget-object v0, v2, Lcom/project7/localmanager/LocalEventCatalog;->memoryRewards:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 48
    if-eqz v0, :cond_b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v3, v8}, Lcom/project7/localmanager/LocalStoryMemoryEngine;->currentCompletion([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v9

    if-nez v9, :cond_0

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    goto/16 :goto_4

    .line 49
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 51
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    goto/16 :goto_4

    .line 52
    :cond_1
    invoke-virtual {v2, v8}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v10

    .line 53
    if-eqz v10, :cond_a

    iget-boolean v11, v10, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v11, :cond_a

    iget-boolean v10, v10, Lcom/project7/localmanager/LocalEventCatalog$Event;->repeatable:Z

    if-eqz v10, :cond_2

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    goto/16 :goto_4

    .line 54
    :cond_2
    new-instance v10, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v11, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v10, v11}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 56
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v15, "hfp"

    const-string v11, "ldd"

    if-eqz v14, :cond_8

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 57
    iget-object v12, v2, Lcom/project7/localmanager/LocalEventCatalog;->memoryPieces:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;

    .line 58
    if-eqz v12, :cond_7

    .line 59
    iget-object v14, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget v13, v12, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->hero:I

    invoke-static {v14, v13}, Lcom/project7/localmanager/LocalStoryMemoryEngine;->mask([BI)I

    move-result v13

    iget v14, v12, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->index:I

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    shl-int v14, v16, v14

    .line 60
    move-object/from16 v17, v0

    iget v0, v12, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->files:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v18, 0x1

    shl-long v20, v18, v0

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    sub-long v5, v20, v18

    long-to-int v0, v5

    .line 61
    not-int v5, v0

    and-int/2addr v5, v13

    if-nez v5, :cond_6

    .line 64
    :try_start_2
    iget-object v5, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget v6, v12, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->hero:I

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v5

    if-nez v5, :cond_5

    and-int v5, v13, v14

    if-eqz v5, :cond_3

    goto :goto_2

    .line 65
    :cond_3
    iget-object v5, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 66
    nop

    .line 67
    invoke-static {v5, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    iget v2, v12, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->hero:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    or-int/2addr v13, v14

    .line 66
    invoke-static {v6, v2, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    invoke-static {v5, v15, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 68
    iget-object v5, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v11, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 69
    iget-object v2, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Integer;

    iget v5, v12, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->item:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v6, v11

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v5

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    if-ne v13, v0, :cond_4

    iget v0, v12, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->hero:I

    iget v2, v12, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->rank:I

    invoke-static {v10, v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->addMissingHero(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 71
    :cond_4
    move-object/from16 v2, p1

    move-object/from16 v0, v17

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_1

    .line 64
    :cond_5
    move-object/from16 v2, p1

    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_1

    .line 61
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "saved mask exceeds original piece count"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_7
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing memory reward definition"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 75
    :cond_8
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    .line 76
    iget-object v0, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v9, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v7

    .line 77
    iget-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v4, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 78
    iget-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 79
    iget-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "q7StoryPending"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "memoryReward:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const-string v6, "r"

    const/4 v9, 0x0

    aput-object v6, v8, v9

    .line 81
    invoke-virtual {v10}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 80
    invoke-static {v0, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 82
    iget-object v5, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 83
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "prog"

    const/4 v5, 0x0

    aput-object v2, v0, v5

    iget-object v2, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 84
    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 83
    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v2, "syncProgInfo"

    invoke-virtual {v10, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 85
    iget-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->heroRewards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "d"

    const/4 v5, 0x0

    aput-object v2, v0, v5

    iget-object v2, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 86
    const-string v5, "heromgr"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v0, v5

    .line 85
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v2, "syncHeroMgrData"

    invoke-virtual {v10, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 88
    :cond_9
    iget-object v0, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 89
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v2, v10, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    move-object/from16 v2, p1

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_0

    .line 72
    :catch_1
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    .line 73
    :goto_3
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "m"

    const/4 v5, 0x0

    aput-object v2, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bb0\u5fc6\u7247\u6bb5\u6570\u636e\u5f02\u5e38\uff0c\u672a\u4fee\u6539\u5956\u52b1\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v2, "showMessageStr"

    invoke-virtual {v1, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 74
    goto :goto_4

    .line 53
    :cond_a
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    goto :goto_4

    .line 48
    :cond_b
    move-object/from16 v22, v5

    move-object/from16 v23, v6

    .line 46
    :goto_4
    move-object/from16 v2, p1

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_0

    .line 91
    :cond_c
    return-void
.end method
