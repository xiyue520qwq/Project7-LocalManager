.class final Lcom/project7/localmanager/LocalDalviraStoryEngine;
.super Ljava/lang/Object;
.source "LocalDalviraStoryEngine.java"


# static fields
.field static final CLOSE:Ljava/lang/String; = "daerweilaDispatchClose"

.field static final DISPATCH:[[I

.field static final FIRST:Ljava/lang/String; = "daerweilaFirstChooseAsazile"

.field static final SYNC:Ljava/lang/String; = "syncDaerweilaLineData"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    const/4 v0, 0x5

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/project7/localmanager/LocalDalviraStoryEngine;->DISPATCH:[[I

    return-void

    :array_0
    .array-data 4
        0x101c
        0x1041
        0x1075
        0x101e
        0x1046
    .end array-data

    :array_1
    .array-data 4
        0x101f
        0x1047
        0x1076
        0x1025
        0x104d
    .end array-data

    :array_2
    .array-data 4
        0x1026
        0x104e
        0x1077
        0x1028
        0x104f
    .end array-data

    :array_3
    .array-data 4
        0x1029
        0x1050
        0x1078
        0x102a
        0x1055
    .end array-data

    :array_4
    .array-data 4
        0x102b
        0x1056
        0x1079
        0x1030
        0x105b
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 2

    .line 11
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "rt"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "13-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    .line 13
    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/LocalWenziCityEngine;->state([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method static blocked([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z
    .locals 8

    .line 21
    sget-object v0, Lcom/project7/localmanager/LocalDalviraStoryEngine;->DISPATCH:[[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 22
    aget v5, v4, v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-ne p2, v5, :cond_1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x1827

    invoke-static {p0, p1, p2, v6, v6}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result p0

    if-eqz p0, :cond_0

    move v2, v7

    :cond_0
    return v2

    .line 23
    :cond_1
    aget v4, v4, v7

    if-ne p2, v4, :cond_3

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x1828

    invoke-static {p0, p1, p2, v6, v6}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result p0

    if-eqz p0, :cond_2

    move v2, v7

    :cond_2
    return v2

    .line 21
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_4
    return v2
.end method

.method static close([B)[B
    .locals 3

    .line 34
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "h"

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "dwhl"

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "d"

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "dwdl"

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z
    .locals 3

    .line 16
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v0

    .line 17
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p3, :cond_0

    if-gt v0, p4, :cond_0

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_0

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
    move v1, v2

    .line 17
    :goto_0
    return v1
.end method

.method static first([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 9

    .line 55
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 56
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    nop

    .line 58
    sget-object v1, Lcom/project7/localmanager/LocalDalviraStoryEngine;->DISPATCH:[[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v2, :cond_2

    aget-object v6, v1, v3

    iget-object v7, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    aget v8, v6, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    aget v6, v6, v5

    invoke-static {p0, p1, v6}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->blocked([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_2
    if-nez v4, :cond_3

    return-object v0

    .line 60
    :cond_3
    const-string p1, "std"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 61
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "dwca"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 62
    invoke-static {v1, v3, v5}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    iput-object p0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 64
    :cond_4
    return-object v0

    .line 56
    :cond_5
    :goto_1
    return-object v0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 11

    .line 38
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    nop

    .line 40
    sget-object p1, Lcom/project7/localmanager/LocalDalviraStoryEngine;->DISPATCH:[[I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x5

    if-ge v2, v0, :cond_3

    aget-object v7, p1, v2

    .line 41
    iget-object v8, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v9, 0x3

    aget v10, v7, v9

    invoke-static {v8, p2, v10, v9, v6}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    aget v10, v7, v1

    invoke-static {v8, p2, v10, v9, v6}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 42
    :cond_1
    iget-object v8, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v10, 0x4

    aget v10, v7, v10

    invoke-static {v8, p2, v10, v9, v6}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    aget v5, v7, v5

    invoke-static {v8, p2, v5, v9, v6}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 40
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_3
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v0, "std"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    .line 45
    const-string v2, "dwhv"

    invoke-static {p1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v7

    const-string v8, "dwdv"

    invoke-static {v7, v8, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v7

    .line 46
    iget-object v9, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v10, 0x1827

    invoke-static {v9, p2, v10, v6, v6}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result v9

    const-string v10, "dwhl"

    invoke-static {v7, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v7

    .line 47
    iget-object v9, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v10, 0x1828

    invoke-static {v9, p2, v10, v6, v6}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result p2

    const-string v6, "dwdl"

    invoke-static {v7, v6, p2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object p2

    .line 48
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_4

    return-void

    .line 49
    :cond_4
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v0, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 50
    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p2

    :goto_1
    const-string v0, "t"

    const/4 v2, 0x2

    const-string v6, "addDaerweilaHumanityValue"

    if-ge p2, v3, :cond_5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "human"

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 51
    :cond_5
    invoke-static {p1, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p1

    :goto_2
    if-ge p1, v4, :cond_6

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    const-string v3, "devil"

    aput-object v3, p2, v5

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p2

    invoke-virtual {p0, v6, p2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 52
    :cond_6
    invoke-static {p0}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->close([B)[B

    move-result-object p1

    const-string p2, "daerweilaDispatchClose"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 53
    return-void
.end method

.method static reset([B)[B
    .locals 7

    .line 67
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 68
    const-string v2, "dwhv"

    const-string v3, "dwdv"

    const-string v4, "dwhl"

    const-string v5, "dwdl"

    const-string v6, "dwca"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "std"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 29
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dh"

    aput-object v3, v1, v2

    const-string v2, "dwhv"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v4, "dd"

    aput-object v4, v1, v2

    const-string v2, "dwdv"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v2, 0x4

    const-string v4, "dhl"

    aput-object v4, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    const-string v4, "dwhl"

    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    const/4 v2, 0x6

    const-string v4, "ddl"

    aput-object v4, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "dwdl"

    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    const/16 v2, 0x8

    const-string v4, "dca"

    aput-object v4, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    const-string v4, "dwca"

    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const/16 v0, 0xa

    const-string v2, "u"

    aput-object v2, v1, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    .line 29
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "syncDaerweilaLineData"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 32
    return-void
.end method
