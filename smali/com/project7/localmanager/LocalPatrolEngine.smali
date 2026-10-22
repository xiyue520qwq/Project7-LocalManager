.class final Lcom/project7/localmanager/LocalPatrolEngine;
.super Ljava/lang/Object;
.source "LocalPatrolEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalPatrolEngine$Result;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alignDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 1

    .line 17
    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-static {p0}, Lcom/project7/localmanager/LocalPatrolEngine;->dayKey([B)Ljava/lang/String;

    move-result-object p0

    .line 20
    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    .line 21
    :cond_1
    iput-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static begin(Lcom/project7/localmanager/LocalPatrolCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;[BILjava/util/List;)Lcom/project7/localmanager/LocalPatrolEngine$Result;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalPatrolCatalog;",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "Lcom/project7/localmanager/LocalEventEngine;",
            "[BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/project7/localmanager/LocalPatrolEngine$Result;"
        }
    .end annotation

    .line 43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalPatrolEngine;->alignDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 44
    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lcom/project7/localmanager/LocalPatrolCatalog;->cost(II)Lcom/project7/localmanager/LocalPatrolCatalog$Cost;

    move-result-object v7

    .line 45
    if-eqz v7, :cond_9

    invoke-static {v1, v4, v3}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v8

    if-nez v8, :cond_9

    .line 46
    invoke-static/range {p3 .. p4}, Lcom/project7/localmanager/LocalChapterCityEngine;->locked([BI)Z

    move-result v8

    if-nez v8, :cond_9

    iget-boolean v8, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-eqz v8, :cond_0

    goto/16 :goto_2

    .line 48
    :cond_0
    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalFlashbackEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual/range {p2 .. p5}, Lcom/project7/localmanager/LocalEventEngine;->flashbackPatrol([BILjava/util/List;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_8

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 50
    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->size()I

    move-result v8

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    goto/16 :goto_1

    .line 51
    :cond_2
    nop

    .line 52
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 54
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v3, v13}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v13

    .line 55
    const-string v14, "cf"

    invoke-static {v13, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 56
    if-nez v14, :cond_3

    const-string v0, "hero not owned"

    invoke-static {v0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object v0

    return-object v0

    .line 57
    :cond_3
    iget-object v15, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-interface {v15, v12, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 58
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget v10, v7, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->fatigue:I

    if-ge v15, v10, :cond_4

    const-string v0, "insufficient fatigue"

    invoke-static {v0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object v0

    return-object v0

    .line 59
    :cond_4
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v14, v7, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->fatigue:I

    sub-int/2addr v10, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v13, v10}, Lcom/project7/localmanager/LocalPatrolCatalog;->insight([BI)I

    move-result v10

    add-int/2addr v11, v10

    .line 61
    goto :goto_0

    .line 62
    :cond_5
    iget v9, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v9}, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->requiredInsight(I)I

    move-result v9

    invoke-static/range {p3 .. p4}, Lcom/project7/localmanager/LocalIntelligenceEffects;->patrolExtra([BI)I

    move-result v10

    add-int/2addr v9, v10

    if-ge v11, v9, :cond_6

    .line 63
    const-string v0, "insufficient insight"

    invoke-static {v0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object v0

    return-object v0

    .line 65
    :cond_6
    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->actions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v9

    .line 66
    iget v10, v7, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->actions:I

    if-ge v9, v10, :cond_7

    const-string v0, "insufficient actions"

    invoke-static {v0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object v0

    return-object v0

    .line 67
    :cond_7
    invoke-virtual/range {p2 .. p3}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 68
    invoke-virtual {v2, v4, v5, v0}, Lcom/project7/localmanager/LocalEventEngine;->patrolEvents(ILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-virtual {v2, v0}, Lcom/project7/localmanager/LocalEventEngine;->queuePatrolReplays(Ljava/util/Collection;)V

    .line 70
    iget-object v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget-object v9, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 72
    iget-object v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 73
    iget-object v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 75
    iget-object v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget v2, v7, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->favor:I

    iput v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFavor:I

    .line 77
    iput-boolean v6, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    .line 78
    iput v4, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    .line 79
    iget v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    .line 80
    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->regularActions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v2

    .line 81
    iget v4, v7, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->actions:I

    sub-int v4, v2, v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    .line 82
    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalEconomyEngine;->sandglass([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v3

    iget v4, v7, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->actions:I

    sub-int/2addr v4, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->sandglassActions:I

    .line 83
    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 84
    new-instance v1, Lcom/project7/localmanager/LocalPatrolEngine$Result;

    const-string v2, "ok"

    invoke-direct {v1, v6, v0, v2}, Lcom/project7/localmanager/LocalPatrolEngine$Result;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 50
    :cond_8
    :goto_1
    const-string v0, "invalid team"

    invoke-static {v0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object v0

    return-object v0

    .line 47
    :cond_9
    :goto_2
    const-string v0, "area unavailable"

    invoke-static {v0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object v0

    return-object v0
.end method

.method static canResume(Lcom/project7/localmanager/LocalTutorialStore$Progress;[BILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "[BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 36
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget-boolean v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-eqz v1, :cond_1

    if-lt p2, v0, :cond_1

    const/16 v1, 0x8

    if-gt p2, v1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalFlashbackEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    if-ne v1, p2, :cond_1

    .line 37
    invoke-static {p1}, Lcom/project7/localmanager/LocalPatrolEngine;->dayKey([B)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2, p3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 38
    invoke-interface {p1, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method static claim(Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalTutorialStore$Progress;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 89
    iget-boolean v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez v1, :cond_0

    return-object v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v4}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v4

    const-string v5, "ef"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 92
    iget-object v5, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 93
    const/16 v4, 0x64

    iget v5, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFavor:I

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 94
    iget-object v5, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sub-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iput-boolean v3, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    .line 98
    iput v3, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    .line 99
    iget-object p1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 100
    iget-object p1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 101
    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 102
    return-object v0
.end method

.method static dayKey([B)Ljava/lang/String;
    .locals 2

    .line 12
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "w"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;
    .locals 3

    .line 106
    new-instance v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/project7/localmanager/LocalPatrolEngine$Result;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
