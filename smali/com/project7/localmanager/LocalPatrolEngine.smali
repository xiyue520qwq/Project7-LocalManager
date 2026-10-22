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
    .locals 10
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
    invoke-static {p3, p1}, Lcom/project7/localmanager/LocalPatrolEngine;->alignDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, p4, v0}, Lcom/project7/localmanager/LocalPatrolCatalog;->cost(II)Lcom/project7/localmanager/LocalPatrolCatalog$Cost;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_8

    invoke-static {p1, p4, p3}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v2

    if-nez v2, :cond_8

    .line 46
    invoke-static {p3, p4}, Lcom/project7/localmanager/LocalChapterCityEngine;->locked([BI)Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 48
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_7

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, p5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 49
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 50
    :cond_1
    nop

    .line 51
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 53
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p3, v7}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v7

    .line 54
    const-string v8, "cf"

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 55
    if-nez v7, :cond_2

    const-string p0, "hero not owned"

    invoke-static {p0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object p0

    return-object p0

    .line 56
    :cond_2
    iget-object v8, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, v1, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->fatigue:I

    if-ge v8, v9, :cond_3

    const-string p0, "insufficient fatigue"

    invoke-static {p0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object p0

    return-object p0

    .line 58
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, v1, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->fatigue:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/project7/localmanager/LocalPatrolCatalog;->insight(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    iget p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    add-int/2addr p0, v0

    invoke-virtual {v1, p0}, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->requiredInsight(I)I

    move-result p0

    invoke-static {p3, p4}, Lcom/project7/localmanager/LocalIntelligenceEffects;->patrolExtra([BI)I

    move-result v3

    add-int/2addr p0, v3

    if-ge v5, p0, :cond_5

    .line 62
    const-string p0, "insufficient insight"

    invoke-static {p0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object p0

    return-object p0

    .line 64
    :cond_5
    invoke-static {p3, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->actions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result p0

    .line 65
    iget v3, v1, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->actions:I

    if-ge p0, v3, :cond_6

    const-string p0, "insufficient actions"

    invoke-static {p0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object p0

    return-object p0

    .line 66
    :cond_6
    invoke-virtual {p2, p3}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 67
    invoke-virtual {p2, p4, p5}, Lcom/project7/localmanager/LocalEventEngine;->patrolEvents(ILjava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 68
    invoke-virtual {p2, p0}, Lcom/project7/localmanager/LocalEventEngine;->queuePatrolReplays(Ljava/util/Collection;)V

    .line 69
    iget-object p2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget-object v3, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 70
    iget-object p2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 71
    iget-object p2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    iget-object p2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 73
    iget-object p2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 74
    iget-object p2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-interface {p2, p5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    iget p2, v1, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->favor:I

    iput p2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFavor:I

    .line 76
    iput-boolean v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    .line 77
    iput p4, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    .line 78
    iget p2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    .line 79
    invoke-static {p3, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->regularActions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result p2

    .line 80
    iget p4, v1, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->actions:I

    sub-int p4, p2, p4

    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    .line 81
    invoke-static {p3, p1}, Lcom/project7/localmanager/LocalEconomyEngine;->sandglass([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result p3

    iget p4, v1, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->actions:I

    sub-int/2addr p4, p2

    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p3, p2

    iput p3, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->sandglassActions:I

    .line 82
    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 83
    new-instance p1, Lcom/project7/localmanager/LocalPatrolEngine$Result;

    const-string p2, "ok"

    invoke-direct {p1, v0, p0, p2}, Lcom/project7/localmanager/LocalPatrolEngine$Result;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    return-object p1

    .line 49
    :cond_7
    :goto_1
    const-string p0, "invalid team"

    invoke-static {p0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object p0

    return-object p0

    .line 47
    :cond_8
    :goto_2
    const-string p0, "area unavailable"

    invoke-static {p0}, Lcom/project7/localmanager/LocalPatrolEngine;->reject(Ljava/lang/String;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object p0

    return-object p0
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

    if-eqz p0, :cond_0

    iget-boolean v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-eqz v1, :cond_0

    if-lt p2, v0, :cond_0

    const/16 v1, 0x8

    if-gt p2, v1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    if-ne v1, p2, :cond_0

    .line 37
    invoke-static {p1}, Lcom/project7/localmanager/LocalPatrolEngine;->dayKey([B)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2, p3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 38
    invoke-interface {p1, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
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

    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 88
    iget-boolean v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez v1, :cond_0

    return-object v0

    .line 89
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

    .line 90
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p1, v4}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v4

    const-string v5, "ef"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 91
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

    .line 92
    const/16 v4, 0x64

    iget v5, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFavor:I

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 93
    iget-object v5, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFriendly:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sub-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iput-boolean v3, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    .line 97
    iput v3, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    .line 98
    iget-object p1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 99
    iget-object p1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 100
    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 101
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

    .line 105
    new-instance v0, Lcom/project7/localmanager/LocalPatrolEngine$Result;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/project7/localmanager/LocalPatrolEngine$Result;-><init>(ZLjava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
