.class final Lcom/project7/localmanager/LocalCityProgress;
.super Ljava/lang/Object;
.source "LocalCityProgress.java"


# static fields
.field private static final FREE_REQUIRE:[[I

.field private static final REQUIRE:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 10
    const/16 v0, 0x9

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v4, [I

    aput v4, v3, v2

    const/4 v5, 0x2

    aput-object v3, v1, v5

    new-array v3, v4, [I

    aput v5, v3, v2

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v4, [I

    aput v5, v3, v2

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v4, [I

    aput v8, v3, v2

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v4, [I

    aput v9, v3, v2

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v4, [I

    aput v10, v3, v2

    const/16 v11, 0x8

    aput-object v3, v1, v11

    sput-object v1, Lcom/project7/localmanager/LocalCityProgress;->REQUIRE:[[I

    .line 11
    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v2

    new-array v1, v2, [I

    aput-object v1, v0, v4

    new-array v1, v4, [I

    aput v4, v1, v2

    aput-object v1, v0, v5

    new-array v1, v4, [I

    aput v5, v1, v2

    aput-object v1, v0, v6

    new-array v1, v4, [I

    aput v6, v1, v2

    aput-object v1, v0, v7

    new-array v1, v4, [I

    aput v7, v1, v2

    aput-object v1, v0, v8

    new-array v1, v4, [I

    aput v8, v1, v2

    aput-object v1, v0, v9

    new-array v1, v4, [I

    aput v9, v1, v2

    aput-object v1, v0, v10

    new-array v1, v4, [I

    aput v10, v1, v2

    aput-object v1, v0, v11

    sput-object v0, Lcom/project7/localmanager/LocalCityProgress;->FREE_REQUIRE:[[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static area(I)I
    .locals 4

    .line 19
    invoke-static {p0}, Lcom/project7/localmanager/LocalArkCityEngine;->area(I)I

    move-result v0

    .line 20
    if-eqz v0, :cond_0

    return v0

    .line 21
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x65

    if-ne p0, v1, :cond_1

    return v0

    .line 22
    :cond_1
    invoke-static {p0}, Lcom/project7/localmanager/LocalCityProgress;->chapterScene(I)Z

    move-result v2

    if-eqz v2, :cond_2

    div-int/lit16 p0, p0, 0x3e8

    add-int/lit8 p0, p0, -0x1d

    return p0

    .line 23
    :cond_2
    div-int/lit16 v2, p0, 0x3e8

    add-int/2addr v2, v0

    .line 24
    rem-int/lit16 v0, p0, 0x3e8

    .line 25
    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    const/16 v3, 0x8

    if-gt v2, v3, :cond_5

    if-lt v0, v1, :cond_3

    const/16 v1, 0x6a

    if-le v0, v1, :cond_4

    :cond_3
    const/16 v0, 0x453

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc29

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc2a

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1011

    if-ne p0, v0, :cond_5

    .line 27
    :cond_4
    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 25
    :goto_0
    return v2
.end method

.method static chapterScene(I)Z
    .locals 2

    .line 45
    const/4 v0, 0x1

    const/16 v1, 0x7d65

    if-lt p0, v1, :cond_0

    const v1, 0x90f2

    if-gt p0, v1, :cond_0

    rem-int/lit8 p0, p0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v1, 0xc

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static chapterStages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)[I
    .locals 1

    .line 49
    const/4 v0, 0x6

    packed-switch p1, :pswitch_data_0

    .line 58
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    .line 57
    :pswitch_0
    new-array p0, v0, [I

    fill-array-data p0, :array_0

    return-object p0

    .line 56
    :pswitch_1
    new-array p0, v0, [I

    fill-array-data p0, :array_1

    return-object p0

    .line 55
    :pswitch_2
    new-array p0, v0, [I

    fill-array-data p0, :array_2

    return-object p0

    .line 54
    :pswitch_3
    new-array p0, v0, [I

    fill-array-data p0, :array_3

    return-object p0

    .line 53
    :pswitch_4
    new-array p0, v0, [I

    fill-array-data p0, :array_4

    return-object p0

    .line 50
    :pswitch_5
    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 p1, 0x7574

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 51
    new-array p0, v0, [I

    fill-array-data p0, :array_5

    goto :goto_0

    .line 52
    :cond_0
    new-array p0, v0, [I

    fill-array-data p0, :array_6

    .line 50
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x90ed
        0x90ef
        0x90f0
        0x90ee
        0x90f1
        0x90f2
    .end array-data

    :array_1
    .array-data 4
        0x8d06
        0x8d07
        0x8d05
        0x8d08
        0x8d09
        0x8d0a
    .end array-data

    :array_2
    .array-data 4
        0x891e
        0x8920
        0x8921
        0x8922
        0x891f
        0x891d
    .end array-data

    :array_3
    .array-data 4
        0x8535
        0x8536
        0x8537
        0x8538
        0x8539
        0x853a
    .end array-data

    :array_4
    .array-data 4
        0x8150
        0x8151
        0x814d
        0x814e
        0x814f
        0x8152
    .end array-data

    :array_5
    .array-data 4
        0x7d65
        0x7d66
        0x7d67
        0x7d68
        0x7d69
        0x7d6a
    .end array-data

    :array_6
    .array-data 4
        0x7d6b
        0x7d6c
        0x7d6d
        0x7d6e
        0x7d6f
        0x7d70
    .end array-data
.end method

.method private static chapterStatus(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I
    .locals 5

    .line 63
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lt p1, v1, :cond_6

    const/16 v2, 0x8

    if-le p1, v2, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalChapterCityEngine;->state([BI)Ljava/lang/Integer;

    move-result-object v2

    .line 65
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 66
    :cond_1
    if-gt p1, v0, :cond_2

    sget-object p2, Lcom/project7/localmanager/LocalCityProgress;->REQUIRE:[[I

    invoke-static {p0, p1, p2, v3}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[[IZ)I

    move-result p0

    return p0

    .line 67
    :cond_2
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalCityProgress;->chapterStages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)[I

    move-result-object v2

    .line 68
    array-length v4, v2

    sub-int/2addr v4, v1

    aget v2, v2, v4

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    .line 69
    :cond_3
    sget-object v2, Lcom/project7/localmanager/LocalCityProgress;->REQUIRE:[[I

    aget-object p1, v2, p1

    array-length v2, p1

    :goto_0
    if-ge v3, v2, :cond_5

    aget v4, p1, v3

    invoke-static {p0, v4, p2}, Lcom/project7/localmanager/LocalCityProgress;->chapterStatus(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v4

    if-eqz v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_5
    return v1

    .line 63
    :cond_6
    :goto_1
    return v0
.end method

.method static consumeVictory(Lcom/project7/localmanager/LocalTutorialStore$Progress;[BII)Z
    .locals 3

    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    invoke-static {p3}, Lcom/project7/localmanager/LocalArkCityEngine;->area(I)I

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p3}, Lcom/project7/localmanager/LocalCityProgress;->area(I)I

    move-result p2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_3

    invoke-static {p0, p3}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    const-string p2, "city"

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p1

    const-string p2, "av"

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 148
    iget p2, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    if-ltz p2, :cond_1

    iget p1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/16 p1, 0x18

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 149
    :goto_0
    sub-int/2addr p1, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    .line 150
    return v1

    .line 146
    :cond_3
    :goto_1
    return v0
.end method

.method static hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z
    .locals 1

    .line 14
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    const-string v0, "battle"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 15
    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method static mapStages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)[B
    .locals 17

    .line 111
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sl"

    const-string v4, "cs"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-nez v0, :cond_0

    if-ne v1, v9, :cond_0

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v4, v0, v7

    aput-object v2, v0, v9

    aput-object v3, v0, v6

    .line 112
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v5

    .line 111
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    invoke-static/range {p0 .. p2}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    .line 114
    move-object/from16 v10, p2

    invoke-static {v10, v1}, Lcom/project7/localmanager/LocalArkCityEngine;->scene([BI)I

    move-result v0

    .line 115
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v4, v1, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    aput-object v3, v1, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 117
    :cond_1
    move-object/from16 v10, p2

    invoke-static/range {p0 .. p2}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v12

    if-eq v12, v9, :cond_2

    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    return-object v0

    .line 118
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalChapterCityEngine;->active([B)Z

    move-result v10

    if-eqz v10, :cond_5

    if-lt v1, v5, :cond_5

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    nop

    .line 121
    invoke-static/range {p0 .. p1}, Lcom/project7/localmanager/LocalCityProgress;->chapterStages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)[I

    move-result-object v1

    array-length v10, v1

    move v11, v7

    move v12, v11

    :goto_0
    if-ge v11, v10, :cond_4

    aget v13, v1, v11

    .line 122
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    if-nez v12, :cond_3

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v14

    if-nez v14, :cond_3

    move v12, v13

    .line 121
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 125
    :cond_4
    new-array v0, v8, [Ljava/lang/Object;

    aput-object v4, v0, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    aput-object v3, v0, v6

    aput-object v2, v0, v5

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 127
    :cond_5
    if-ne v1, v9, :cond_6

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v4, v0, v7

    aput-object v2, v0, v9

    aput-object v3, v0, v6

    .line 128
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v5

    .line 127
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 129
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    nop

    .line 131
    move v12, v7

    move v10, v9

    :goto_1
    const/4 v13, 0x6

    if-gt v10, v13, :cond_c

    .line 132
    add-int/lit8 v14, v1, -0x1

    mul-int/lit16 v14, v14, 0x3e8

    add-int/lit8 v14, v14, 0x64

    add-int/2addr v14, v10

    .line 133
    if-ne v1, v6, :cond_7

    if-ne v10, v13, :cond_7

    iget-object v15, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v16, 0x4e27

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v14, 0x453

    .line 134
    :cond_7
    const/16 v5, 0xc29

    if-ne v1, v8, :cond_8

    if-ne v10, v8, :cond_8

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v15

    if-eqz v15, :cond_8

    move v14, v5

    .line 135
    :cond_8
    if-ne v1, v8, :cond_9

    if-ne v10, v11, :cond_9

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v14, 0xc2a

    .line 136
    :cond_9
    const/16 v5, 0x1011

    if-ne v1, v11, :cond_a

    if-ne v10, v13, :cond_a

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v13

    if-eqz v13, :cond_a

    move v14, v5

    .line 137
    :cond_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    if-nez v12, :cond_b

    invoke-static {v0, v14}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v5

    if-nez v5, :cond_b

    move v12, v14

    .line 131
    :cond_b
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x3

    goto :goto_1

    .line 140
    :cond_c
    new-array v0, v8, [Ljava/lang/Object;

    aput-object v4, v0, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    aput-object v3, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method static stages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)[B
    .locals 1

    .line 100
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/LocalCityProgress;->stages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static stages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)[B
    .locals 1

    .line 104
    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalChapterCityEngine;->locked([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    return-object p0

    .line 105
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalCityProgress;->mapStages(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static started(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z
    .locals 2

    .line 93
    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    const-string v0, "battle"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 94
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 95
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalCityProgress;->area(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 96
    :cond_2
    return v0
.end method

.method static status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)I
    .locals 1

    .line 31
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result p0

    return p0
.end method

.method static status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I
    .locals 1

    .line 35
    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalArkCityEngine;->state([BI)Ljava/lang/Integer;

    move-result-object v0

    .line 36
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 37
    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/project7/localmanager/LocalChapterCityEngine;->active([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalCityProgress;->chapterStatus(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result p0

    return p0

    .line 38
    :cond_1
    const-string v0, "std"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p2

    const-string v0, "rt"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 40
    const-string v0, "6"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 41
    if-eqz p2, :cond_2

    sget-object v0, Lcom/project7/localmanager/LocalCityProgress;->FREE_REQUIRE:[[I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/project7/localmanager/LocalCityProgress;->REQUIRE:[[I

    :goto_0
    invoke-static {p0, p1, v0, p2}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[[IZ)I

    move-result p0

    return p0
.end method

.method private static status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[[IZ)I
    .locals 6

    .line 74
    const/4 v0, 0x2

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const/16 v2, 0x8

    if-le p1, v2, :cond_0

    goto/16 :goto_5

    .line 75
    :cond_0
    const/16 v2, 0x413

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v3

    goto :goto_0

    .line 76
    :cond_1
    iget-object p0, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 p1, 0x3ec

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    .line 75
    :cond_2
    :goto_0
    return v0

    .line 77
    :cond_3
    iget-object v4, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v5, 0x3f5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    .line 78
    :cond_4
    add-int/lit8 v2, p1, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x6a

    .line 79
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v2

    if-nez v2, :cond_c

    if-ne p1, v0, :cond_5

    const/16 v2, 0x453

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    const/16 v2, 0x1011

    .line 80
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 81
    :cond_6
    if-nez p3, :cond_9

    const/4 v2, 0x4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    if-ne p1, v2, :cond_9

    .line 82
    :cond_7
    if-ne p1, v4, :cond_8

    goto :goto_1

    :cond_8
    move v2, v4

    .line 84
    :goto_1
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalCityProgress;->started(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalCityProgress;->started(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v4

    if-eqz v4, :cond_9

    sub-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x6a

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v2

    if-nez v2, :cond_9

    return v0

    .line 86
    :cond_9
    aget-object p1, p2, p1

    array-length v2, p1

    :goto_2
    if-ge v3, v2, :cond_b

    aget v4, p1, v3

    .line 87
    invoke-static {p0, v4, p2, p3}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[[IZ)I

    move-result v4

    if-eqz v4, :cond_a

    return v0

    .line 86
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 89
    :cond_b
    return v1

    .line 80
    :cond_c
    :goto_3
    return v3

    .line 77
    :cond_d
    :goto_4
    return v0

    .line 74
    :cond_e
    :goto_5
    return v0
.end method
