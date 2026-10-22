.class final Lcom/project7/localmanager/LocalFlashbackEngine;
.super Ljava/lang/Object;
.source "LocalFlashbackEngine.java"


# static fields
.field static final KEY:Ljava/lang/String; = "q7Flashback"

.field static final NEXT:Ljava/lang/String; = "requestFlashbackIncDay"

.field static final SYNC:Ljava/lang/String; = "syncFlashbackData"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 7

    .line 21
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/project7/localmanager/LocalFlashbackEngine;->route([B)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "weeknum"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "d"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    const-string v3, "q7StoryPending"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 23
    :cond_1
    const-string v2, "std"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "q7Flashback"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 24
    const-string v4, "fd"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 25
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "ff"

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-lt v4, v6, :cond_2

    const/4 v5, 0x7

    if-gt v4, v5, :cond_2

    .line 26
    const-string v5, "gr"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string v4, "fa"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v4, 0x3

    if-gt v2, v4, :cond_2

    .line 27
    const-string v2, "patrolBase"

    invoke-static {v3, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 28
    invoke-static {v3, p1}, Lcom/project7/localmanager/LocalFlashbackEngine;->used([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 29
    const-string v2, "week"

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v2

    iget v4, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-ne v2, v4, :cond_2

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v1

    iget v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-ne v1, v2, :cond_2

    .line 30
    const-string v1, "cycle"

    invoke-static {v3, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 31
    const-string p1, "version"

    invoke-static {v3, p1}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result p1

    if-ne p1, v6, :cond_2

    const-string p1, "q7WeekResult"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    nop

    .line 25
    :goto_0
    return v0

    .line 21
    :cond_3
    :goto_1
    return v0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$patrol$0(Lcom/project7/localmanager/LocalEventCatalog;Ljava/lang/Integer;)Z
    .locals 1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/project7/localmanager/LocalEventCatalog;->trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    move-result-object p0

    iget-object p0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->predicates:Ljava/util/Map;

    const/16 p1, 0x36

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method static next([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 12

    .line 79
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 80
    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalFlashbackEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v1

    const-string v2, "fa"

    const-string v3, "v"

    const-string v4, "d"

    const/4 v5, 0x2

    const-string v6, "fd"

    const-string v7, "std"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {p0, v7}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v1

    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog;->flashbackRounds:Ljava/util/Map;

    add-int/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 82
    if-eqz p1, :cond_0

    iget-object v10, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    aget v11, p1, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    aget p1, p1, v9

    .line 83
    invoke-static {p0, p2, p1}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result p1

    const/4 v10, 0x6

    if-ne p1, v10, :cond_0

    iget-boolean p1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez p1, :cond_0

    iget-object p1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 84
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    invoke-static {p0, v7}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    .line 86
    invoke-static {p1, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    const-string v10, "gr"

    invoke-static {p1, v10, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 87
    invoke-static {p1, v2, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    .line 88
    invoke-static {p0, v7, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 89
    iget-object p1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 90
    const-string v10, "q7Flashback"

    invoke-static {p0, v10}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    iget p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    const-string v11, "patrolBase"

    invoke-static {p0, v11, p2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 89
    const-string p2, "patrolUsed"

    invoke-static {p0, p2, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    invoke-static {p1, v10, p0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    iput-object p0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 91
    new-array p0, v5, [Ljava/lang/Object;

    aput-object v4, p0, v8

    iget-object p1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1}, Lcom/project7/localmanager/LocalFlashbackEngine;->snapshot([B)[B

    move-result-object p1

    aput-object p1, p0, v9

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    const-string p1, "syncFlashbackData"

    invoke-virtual {v0, p1, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 92
    new-array p0, v5, [Ljava/lang/Object;

    aput-object v3, p0, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v9

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    const-string p1, "syncStoryGeneralValue"

    invoke-virtual {v0, p1, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 96
    :cond_0
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v4, p0, v8

    iget-object p1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, v7}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, v6}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v9

    aput-object v3, p0, v5

    const/4 p1, 0x3

    iget-object p2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v7}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    const-string p1, "replyFlashbackIncDay"

    invoke-virtual {v0, p1, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 97
    invoke-static {v0}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->capture(Lcom/project7/localmanager/LocalResourceEngine$Result;)[B

    move-result-object p0

    iput-object p0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 98
    return-object v0
.end method

.method static patrol(Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;[BILjava/util/List;)Lcom/project7/localmanager/LocalPatrolEngine$Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalEventCatalog;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Lcom/project7/localmanager/LocalEventEngine;",
            "[BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/project7/localmanager/LocalPatrolEngine$Result;"
        }
    .end annotation

    .line 102
    const-string v0, "q7Flashback"

    invoke-static {p3, v0}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalFlashbackEngine;->used([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v0

    .line 103
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    const/4 v1, 0x0

    if-eqz p5, :cond_2

    iget-boolean p5, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez p5, :cond_2

    if-ltz v0, :cond_2

    iget p5, p0, Lcom/project7/localmanager/LocalEventCatalog;->flashbackLimit:I

    if-lt v0, p5, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p2, p3}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Lcom/project7/localmanager/LocalEventEngine;->patrolEvents(ILjava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 107
    new-instance p3, Lcom/project7/localmanager/LocalFlashbackEngine$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/project7/localmanager/LocalFlashbackEngine$$ExternalSyntheticLambda0;-><init>(Lcom/project7/localmanager/LocalEventCatalog;)V

    invoke-interface {p2, p3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 108
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/project7/localmanager/LocalPatrolEngine$Result;

    const-string p1, "no flashback story available"

    invoke-direct {p0, v1, p2, p1}, Lcom/project7/localmanager/LocalPatrolEngine$Result;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    return-object p0

    .line 109
    :cond_1
    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget-object p3, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p0, p3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    iput v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFavor:I

    iput p4, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    iget p3, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    add-int/2addr p3, p0

    iput p3, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    .line 111
    new-instance p1, Lcom/project7/localmanager/LocalPatrolEngine$Result;

    const-string p3, "flashback"

    invoke-direct {p1, p0, p2, p3}, Lcom/project7/localmanager/LocalPatrolEngine$Result;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    return-object p1

    .line 104
    :cond_2
    :goto_0
    new-instance p0, Lcom/project7/localmanager/LocalPatrolEngine$Result;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string p2, "flashback patrol unavailable"

    invoke-direct {p0, v1, p1, p2}, Lcom/project7/localmanager/LocalPatrolEngine$Result;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 22

    .line 38
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_e

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalFlashbackEngine;->route([B)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "weeknum"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "d"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_e

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "q7WeekResult"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 39
    :cond_0
    const-string v3, "q7Flashback"

    const-string v6, "q7StoryPending"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 40
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v7}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    .line 41
    :cond_2
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v3}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "std"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    .line 42
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const-string v10, "syncFlashbackData"

    const-string v11, "fa"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v9, :cond_a

    .line 43
    iget v6, v1, Lcom/project7/localmanager/LocalEventCatalog;->flashbackEntry:I

    .line 44
    if-lez v6, :cond_9

    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v2, v6}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v9

    if-ne v9, v5, :cond_9

    iget-object v9, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    .line 45
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v15, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v14, :cond_9

    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 46
    const-string v12, "q7WeekEventBaseline"

    invoke-static {v9, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_2

    .line 47
    :cond_3
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "ff"

    invoke-static {v7, v9}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v12, "gr"

    const-string v15, "fd"

    const-string v16, "patrolBase"

    const/16 v17, 0x5

    const-string v18, "cycle"

    const/16 v19, 0x4

    const-string v20, "week"

    const-string v21, "version"

    const/4 v13, 0x7

    const/4 v5, 0x3

    if-eqz v6, :cond_7

    .line 48
    invoke-static {v7, v15}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v7, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 49
    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog;->flashbackRounds:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 50
    if-eqz v1, :cond_6

    if-lt v6, v14, :cond_6

    if-gt v6, v13, :cond_6

    invoke-static {v7, v12}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ne v7, v6, :cond_6

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_6

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v7, v5, :cond_6

    iget v7, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    if-ltz v7, :cond_6

    iget-object v7, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    .line 51
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9}, Lcom/project7/localmanager/LocalPatrolEngine;->dayKey([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    if-le v6, v14, :cond_5

    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    aget v1, v1, v14

    .line 52
    invoke-static {v6, v2, v1}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v1

    const/4 v6, 0x6

    if-eq v1, v6, :cond_5

    goto :goto_0

    .line 53
    :cond_5
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalPatrolEngine;->alignDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 55
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v21, v1, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v14

    const/4 v6, 0x2

    aput-object v20, v1, v6

    iget v6, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    aput-object v18, v1, v19

    iget-object v5, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    aput-object v5, v1, v17

    const/4 v5, 0x6

    aput-object v16, v1, v5

    iget v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    const-string v2, "patrolUsed"

    const/16 v5, 0x8

    aput-object v2, v1, v5

    const/16 v2, 0x9

    aput-object v8, v1, v2

    .line 55
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 57
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 58
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalFlashbackEngine;->snapshot([B)[B

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 59
    return-void

    .line 52
    :cond_6
    :goto_0
    return-void

    .line 61
    :cond_7
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalPatrolEngine;->alignDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 62
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v21, v1, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v14

    const/4 v6, 0x2

    aput-object v20, v1, v6

    iget v6, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    aput-object v18, v1, v19

    iget-object v5, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    aput-object v5, v1, v17

    const/4 v5, 0x6

    aput-object v16, v1, v5

    iget v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 63
    invoke-static {v7, v9, v14}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 64
    filled-new-array {v15, v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v6, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    goto :goto_1

    .line 65
    :cond_8
    const/4 v5, 0x0

    invoke-static {v2, v11, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 66
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v1, v8, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 67
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v4, v2, v5

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalFlashbackEngine;->snapshot([B)[B

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "v"

    aput-object v2, v1, v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "syncStoryGeneralValue"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 69
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v2, "enterFlashback"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 70
    return-void

    .line 46
    :cond_9
    :goto_2
    return-void

    .line 72
    :cond_a
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalFlashbackEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    .line 73
    :cond_b
    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalFlashbackEngine;->used([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v2

    .line 74
    if-ltz v2, :cond_d

    iget v1, v1, Lcom/project7/localmanager/LocalEventCatalog;->flashbackLimit:I

    if-gt v2, v1, :cond_d

    invoke-static {v7, v11}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v2, v1, :cond_c

    goto :goto_3

    .line 75
    :cond_c
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v11, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 76
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalFlashbackEngine;->snapshot([B)[B

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 77
    return-void

    .line 74
    :cond_d
    :goto_3
    return-void

    .line 38
    :cond_e
    :goto_4
    return-void
.end method

.method static route([B)Z
    .locals 1

    .line 17
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "rt"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "35-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static snapshot([B)[B
    .locals 3

    .line 34
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalFlashbackEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ff"

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "fd"

    aput-object v2, v0, v1

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "fa"

    aput-object v2, v0, v1

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static used([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I
    .locals 5

    .line 11
    const-string v0, "patrolUsed"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 12
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    :cond_0
    return v2

    .line 13
    :cond_1
    iget p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    int-to-long v3, p1

    const-string p1, "patrolBase"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalFlashbackEngine;->v([BLjava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    sub-long/2addr v3, p0

    if-nez v1, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    int-to-long p0, p0

    add-long/2addr v3, p0

    .line 14
    const-wide/16 p0, 0x0

    cmp-long p0, v3, p0

    if-ltz p0, :cond_4

    const-wide/16 p0, 0x3

    cmp-long p0, v3, p0

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    long-to-int v2, v3

    :cond_4
    :goto_1
    return v2
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
