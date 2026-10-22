.class final Lcom/project7/localmanager/LocalOratioCityEngine;
.super Ljava/lang/Object;
.source "LocalOratioCityEngine.java"


# static fields
.field static final AREAS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final KEY:Ljava/lang/String; = "q7OratioCity"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalOratioCityEngine;->AREAS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active([B)Z
    .locals 1

    .line 12
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalOratioCityEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "rt"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
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

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static liberated([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 5

    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/16 v2, 0x957

    invoke-static {p0, p1, v2}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 29
    const-string p1, "q7WeekEventBaseline"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    nop

    .line 27
    :goto_0
    return v0
.end method

.method static proven([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 5

    .line 16
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/project7/localmanager/LocalOratioCityEngine;->active([B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x728

    invoke-static {p0, p1, v2}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v3

    if-nez v3, :cond_0

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 18
    const-string p1, "q7WeekEventBaseline"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 10

    .line 39
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, p2}, Lcom/project7/localmanager/LocalOratioCityEngine;->proven([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/project7/localmanager/LocalOratioCityEngine;->AREAS:Ljava/util/List;

    iget-object v1, p1, Lcom/project7/localmanager/LocalEventCatalog;->cityEffects:Ljava/util/Map;

    const/16 v2, 0x728

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "areaFight"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    const-string v2, "q7OratioCity"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalOratioCityEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, p2}, Lcom/project7/localmanager/LocalOratioCityEngine;->valid([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 44
    :cond_2
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    const-string v4, "oldCityFree"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    .line 45
    :cond_3
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "version"

    aput-object v8, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v8, 0x2

    const-string v9, "week"

    aput-object v9, v3, v8

    const/4 v8, 0x3

    iget v9, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    .line 46
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x4

    const-string v9, "cycle"

    aput-object v9, v3, v8

    const/4 v8, 0x5

    iget-object v9, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    aput-object v9, v3, v8

    const/4 v8, 0x6

    const-string v9, "areas"

    aput-object v9, v3, v8

    aput-object v0, v3, v5

    .line 45
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 47
    :goto_0
    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, p2}, Lcom/project7/localmanager/LocalOratioCityEngine;->liberated([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-array v3, v7, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog;->cityEffects:Ljava/util/Map;

    const/16 v5, 0x957

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v5, "areaFree"

    invoke-static {p1, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 48
    invoke-static {v0, v4, v7}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 49
    :cond_5
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 50
    :cond_6
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 51
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 52
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, p2, p1}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object p1

    const-string p2, "get_all_area_info_reply"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 53
    return-void

    .line 39
    :cond_7
    :goto_1
    return-void
.end method

.method static state([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;
    .locals 3

    .line 32
    sget-object v0, Lcom/project7/localmanager/LocalOratioCityEngine;->AREAS:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalOratioCityEngine;->valid([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 33
    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalOratioCityEngine;->liberated([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "q7OratioCity"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalOratioCityEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v2, "oldCityFree"

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 34
    :cond_1
    add-int/lit8 p0, p2, -0x1

    mul-int/lit16 p0, p0, 0x3e8

    add-int/lit8 p0, p0, 0x6a

    .line 36
    nop

    .line 35
    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x2

    if-ne p2, p0, :cond_2

    const/16 p0, 0x453

    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_2
    const/4 p0, 0x5

    if-ne p2, p0, :cond_3

    const/16 p0, 0x1011

    .line 36
    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    nop

    .line 35
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 32
    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static valid([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 3

    .line 21
    const-string v0, "q7OratioCity"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalOratioCityEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 22
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalOratioCityEngine;->proven([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const-string p0, "version"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalOratioCityEngine;->v([BLjava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_0

    const-string p0, "week"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalOratioCityEngine;->v([BLjava/lang/String;)I

    move-result p0

    iget v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-ne p0, v2, :cond_0

    .line 23
    const-string p0, "cycle"

    invoke-static {v0, p0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekCommit:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/project7/localmanager/LocalOratioCityEngine;->AREAS:Ljava/util/List;

    .line 24
    const-string p1, "areas"

    invoke-static {v0, p1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    return v1
.end method
