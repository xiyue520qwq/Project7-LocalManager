.class final Lcom/project7/localmanager/LocalStoryItemRewardEngine;
.super Ljava/lang/Object;
.source "LocalStoryItemRewardEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I
    .locals 5

    .line 21
    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventDays:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 23
    :cond_0
    const-string p2, ":"

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 24
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 25
    const-string v0, "w"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "d"

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 27
    :try_start_0
    array-length v2, p2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 29
    :goto_0
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-ne v4, p1, :cond_2

    array-length p1, p2

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    aget-object p1, p2, p1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v2, p0, :cond_2

    .line 30
    move v1, v2

    goto :goto_1

    :cond_2
    nop

    .line 28
    :goto_1
    return v1

    .line 31
    :catch_0
    move-exception p0

    return v1

    .line 22
    :cond_3
    :goto_2
    return v1
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 20

    .line 35
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "items"

    if-eqz v3, :cond_10

    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    const-string v5, "q7StoryItems"

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 36
    invoke-static {v0, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_10

    :cond_0
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 37
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    const-string v6, "q7StoryPending"

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 38
    invoke-static {v0, v6}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 39
    :cond_1
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 40
    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    .line 41
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    const-string v9, "updateItems"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "i"

    if-eqz v8, :cond_2

    .line 42
    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v10}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v8

    if-nez v8, :cond_2

    return-void

    .line 43
    :cond_2
    new-instance v8, Ljava/util/HashSet;

    iget-object v9, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v11, "q7WeekEventBaseline"

    invoke-static {v9, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 44
    iget-object v9, v2, Lcom/project7/localmanager/LocalEventCatalog;->itemRewards:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v11, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;

    .line 45
    iget v12, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->event:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 46
    iget v13, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->event:I

    invoke-virtual {v2, v13}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v13

    .line 47
    iget-object v14, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget v15, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->event:I

    invoke-static {v14, v3, v15}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v14

    iget-object v15, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v16, v9

    iget v9, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->parent:I

    invoke-static {v15, v3, v9}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v9

    .line 48
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v15

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    const-string v6, "itemReward:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    if-eqz v13, :cond_d

    iget-boolean v7, v13, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v7, :cond_d

    iget-boolean v7, v13, Lcom/project7/localmanager/LocalEventCatalog$Event;->repeatable:Z

    if-nez v7, :cond_d

    iget v7, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->event:I

    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    iget v7, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->parent:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget v13, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->event:I

    .line 51
    invoke-virtual {v2, v13}, Lcom/project7/localmanager/LocalEventCatalog;->mutex(I)Ljava/util/Set;

    move-result-object v13

    invoke-static {v7, v13}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-ltz v14, :cond_b

    if-ltz v9, :cond_b

    if-le v9, v14, :cond_3

    .line 52
    move-object/from16 v19, v4

    move-object/from16 v4, v18

    goto/16 :goto_6

    .line 53
    :cond_3
    new-instance v7, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v9, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v7, v9}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 55
    :try_start_0
    iget-object v9, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v13, "inv"

    invoke-static {v9, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    .line 56
    if-eqz v9, :cond_a

    invoke-static {v9, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v13

    if-eqz v13, :cond_a

    .line 58
    nop

    .line 59
    invoke-static {v9, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 60
    invoke-static {v15, v10}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v13

    iget-object v2, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->item:Lcom/project7/localmanager/LocalResourceCatalog$Item;

    iget v2, v2, Lcom/project7/localmanager/LocalResourceCatalog$Item;->id:I

    if-eq v13, v2, :cond_4

    move-object/from16 v2, p1

    goto :goto_1

    .line 61
    :cond_4
    const-string v2, "w"

    invoke-static {v15, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v19, v4

    const/4 v4, 0x1

    if-lt v13, v4, :cond_6

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v13, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->item:Lcom/project7/localmanager/LocalResourceCatalog$Item;

    iget v13, v13, Lcom/project7/localmanager/LocalResourceCatalog$Item;->wrap:I

    if-gt v4, v13, :cond_6

    const-string v4, "u"

    invoke-static {v15, v4}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v14

    .line 65
    move-object/from16 v2, p1

    move-object/from16 v4, v19

    goto :goto_1

    .line 62
    :cond_5
    move-object/from16 v19, v4

    .line 63
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid saved story item"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_7
    move-object/from16 v19, v4

    iget v2, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->quantity:I

    if-ge v14, v2, :cond_8

    iget-object v2, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->item:Lcom/project7/localmanager/LocalResourceCatalog$Item;

    iget v4, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->quantity:I

    sub-int/2addr v4, v14

    invoke-static {v7, v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->grantItem(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog$Item;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :cond_8
    nop

    .line 72
    iget-object v2, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    iget v4, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->event:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v4, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v11, v12, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v11

    .line 73
    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v5, v11}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 74
    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 75
    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v4, v18

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 76
    iget-object v9, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->event:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v12, "r"

    const/4 v13, 0x0

    aput-object v12, v6, v13

    .line 77
    invoke-virtual {v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v6, v13

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    invoke-static {v2, v0, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 76
    invoke-static {v9, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto :goto_2

    .line 74
    :cond_9
    move-object/from16 v4, v18

    .line 79
    :goto_2
    iget-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 80
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    move-object/from16 v2, p1

    move-object v6, v4

    move-object/from16 v9, v16

    move-object/from16 v7, v17

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    .line 56
    :cond_a
    move-object/from16 v19, v4

    move-object/from16 v4, v18

    .line 57
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid saved inventory"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_2

    .line 68
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    :goto_3
    move-object/from16 v19, v4

    :goto_4
    move-object/from16 v4, v18

    .line 70
    :goto_5
    goto :goto_6

    .line 51
    :cond_b
    move-object/from16 v19, v4

    move-object/from16 v4, v18

    goto :goto_6

    .line 50
    :cond_c
    move-object/from16 v19, v4

    move-object/from16 v4, v18

    goto :goto_6

    .line 48
    :cond_d
    move-object/from16 v19, v4

    move-object/from16 v4, v18

    goto :goto_6

    :cond_e
    move-object/from16 v19, v4

    move-object v4, v6

    move-object/from16 v17, v7

    .line 44
    :goto_6
    move-object/from16 v2, p1

    move-object v6, v4

    move-object/from16 v9, v16

    move-object/from16 v7, v17

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 82
    :cond_f
    return-void

    .line 38
    :cond_10
    :goto_7
    return-void
.end method
