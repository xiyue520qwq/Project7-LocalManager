.class final Lcom/project7/localmanager/LocalAlanCityEngine;
.super Ljava/lang/Object;
.source "LocalAlanCityEngine.java"


# static fields
.field static final LOCKS:Ljava/lang/String; = "q7AlanCityLocks"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 5

    .line 21
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 22
    :cond_0
    const-string v1, "q7WenziCity"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 23
    const-string v2, "version"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const-string v2, "week"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    iget v4, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-ne v2, v4, :cond_8

    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    .line 24
    const-string v4, "cycle"

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 25
    :cond_1
    const-string v1, "std"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "rt"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string v2, "10-6"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "10"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v3

    .line 27
    :goto_1
    if-eqz v1, :cond_5

    const-string v4, "11"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "11-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/16 v1, 0x473

    invoke-static {p0, p1, v1}, Lcom/project7/localmanager/LocalAlanCityEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v0

    .line 28
    :goto_2
    if-nez v2, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    const/16 v1, 0x42a

    invoke-static {p0, p1, v1}, Lcom/project7/localmanager/LocalAlanCityEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x469

    invoke-static {p0, p1, v1}, Lcom/project7/localmanager/LocalAlanCityEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x475

    .line 29
    invoke-static {p0, p1, v1}, Lcom/project7/localmanager/LocalAlanCityEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x474

    invoke-static {p0, p1, v1}, Lcom/project7/localmanager/LocalAlanCityEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p0

    if-eqz p0, :cond_7

    move v0, v3

    goto :goto_3

    :cond_7
    nop

    .line 28
    :goto_3
    return v0

    .line 24
    :cond_8
    :goto_4
    return v0

    .line 21
    :cond_9
    :goto_5
    return v0
.end method

.method static completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z
    .locals 4

    .line 16
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 18
    const-string p1, "q7WeekEventBaseline"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 16
    :goto_0
    return v0
.end method

.method private static currentDay5([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z
    .locals 4

    .line 44
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 46
    const-string p1, "q7WeekEventBaseline"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 44
    :goto_0
    return v1
.end method

.method static locked([BI)Z
    .locals 6

    .line 8
    const-string v0, "q7AlanCityLocks"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "weeknum"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 9
    const-string v2, "cycle"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    const-string v4, "std"

    invoke-static {p0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "rt"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "11-2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 11
    const-string v4, "q7WenziCity"

    invoke-static {p0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 12
    const-string p0, "week"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 13
    const-string p0, "areas"

    invoke-static {v0, p0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 11

    .line 49
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, p2}, Lcom/project7/localmanager/LocalAlanCityEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 51
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "std"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "rt"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "11-2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 52
    const/16 v3, 0x1c09

    invoke-static {v1, p2, v3}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1

    iget-object v1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 54
    const-string v5, "q7WeekEventBaseline"

    invoke-static {v1, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog;->cityEffects:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v1, "areaLock"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 56
    const/4 v1, 0x7

    new-array v3, v1, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v3, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "week"

    aput-object v4, v3, v6

    iget v4, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "cycle"

    aput-object v4, v3, v5

    iget-object v4, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    aput-object v4, v3, v10

    const-string v4, "areas"

    aput-object v4, v3, v7

    aput-object p1, v3, v8

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v3, "q7AlanCityLocks"

    invoke-static {v1, v3, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    .line 60
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 61
    :cond_2
    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, p2, p1}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object p1

    const-string p2, "get_all_area_info_reply"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 62
    return-void
.end method

.method static rescueFreed([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z
    .locals 3

    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    const/16 p2, 0x17fa

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    const/16 p2, 0x17fb

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ne p2, v1, :cond_2

    const/16 p2, 0x17fc

    goto :goto_0

    :cond_2
    move p2, v0

    .line 39
    :goto_0
    if-eqz p2, :cond_8

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalAlanCityEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 40
    :cond_3
    iget-object v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v2, 0x17f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v2, 0x17f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 41
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalAlanCityEngine;->currentDay5([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0x17f7

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalAlanCityEngine;->currentDay5([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p2

    if-nez p2, :cond_5

    const/16 p2, 0x17f8

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalAlanCityEngine;->currentDay5([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    return v0

    .line 40
    :cond_7
    :goto_1
    return v0

    .line 39
    :cond_8
    :goto_2
    return v0
.end method

.method static state([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;
    .locals 6

    .line 32
    const/4 v0, 0x7

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p2, v1, :cond_0

    const/4 v5, 0x6

    if-eq p2, v5, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalAlanCityEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    return-object v2

    .line 33
    :cond_2
    const/4 v5, 0x0

    if-eq p2, v3, :cond_6

    if-eq p2, v1, :cond_6

    if-ne p2, v0, :cond_3

    goto :goto_1

    .line 34
    :cond_3
    if-ne p2, v4, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 35
    :cond_4
    const/16 p2, 0x140

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p2, 0x46c

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalAlanCityEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 33
    :cond_6
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalAlanCityEngine;->rescueFreed([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_7
    return-object v2
.end method
