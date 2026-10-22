.class final Lcom/project7/localmanager/LocalDalviraCityEngine;
.super Ljava/lang/Object;
.source "LocalDalviraCityEngine.java"


# static fields
.field static final FORMATIONS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/project7/localmanager/LocalDalviraCityEngine;->FORMATIONS:[[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x167
        0x1c7d
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x16b
        0x1c7c
    .end array-data

    :array_2
    .array-data 4
        0x5
        0x168
        0x1c7f
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x169
        0x1c7e
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x16a
        0x1c80
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

    .line 8
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "rt"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "13-3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c65

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v1, v1}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method static area(I)I
    .locals 6

    .line 12
    const/16 v0, 0x16d

    if-lt p0, v0, :cond_0

    const/16 v0, 0x16f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 13
    :cond_0
    sget-object v0, Lcom/project7/localmanager/LocalDalviraCityEngine;->FORMATIONS:[[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const/4 v5, 0x1

    aget v5, v4, v5

    if-ne v5, p0, :cond_1

    aget p0, v4, v2

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    return v2
.end method

.method static devilActive([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 2

    .line 34
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "rt"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "13-4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c71

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v1, v1}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method static devilStages([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)[B
    .locals 4

    .line 41
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDalviraCityEngine;->devilActive([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    const/16 p2, 0x16d

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x16f

    if-gt p2, v3, :cond_2

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    if-nez v2, :cond_1

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v3

    if-nez v3, :cond_1

    move v2, p2

    .line 43
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 47
    :cond_2
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "cs"

    aput-object p2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, p1, v1

    const/4 p2, 0x2

    const-string v1, "sl"

    aput-object v1, p1, p2

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    .line 41
    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static ownsOutcome([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z
    .locals 1

    .line 38
    const/16 v0, 0x16d

    if-lt p2, v0, :cond_0

    const/16 v0, 0x16f

    if-gt p2, v0, :cond_0

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDalviraCityEngine;->devilActive([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/project7/localmanager/LocalDalviraCityEngine;->area(I)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDalviraCityEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 1

    .line 28
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalDalviraCityEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalDalviraCityEngine;->devilActive([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, p2, v0}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object p1

    const-string p2, "get_all_area_info_reply"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 32
    return-void
.end method

.method static scene([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I
    .locals 6

    .line 24
    sget-object v0, Lcom/project7/localmanager/LocalDalviraCityEngine;->FORMATIONS:[[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    aget v5, v4, v2

    if-ne v5, p2, :cond_0

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDalviraCityEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    aget p0, v4, p0

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_1
    return v2
.end method

.method static state([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;
    .locals 8

    .line 17
    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDalviraCityEngine;->devilActive([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18
    const/16 p2, 0x16f

    .line 17
    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x757e

    .line 18
    invoke-static {p0, p1, p2, v0, v0}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    .line 17
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 19
    :cond_1
    sget-object v3, Lcom/project7/localmanager/LocalDalviraCityEngine;->FORMATIONS:[[I

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    aget v7, v6, v2

    if-ne v7, p2, :cond_3

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDalviraCityEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 20
    aget p2, v6, v1

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    aget p2, v6, p2

    invoke-static {p0, p1, p2, v0, v0}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->completed([BLcom/project7/localmanager/LocalTutorialStore$Progress;III)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 19
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 21
    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
