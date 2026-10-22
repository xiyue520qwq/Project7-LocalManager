.class final Lcom/project7/localmanager/LocalArkCityEngine;
.super Ljava/lang/Object;
.source "LocalArkCityEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active([B)Z
    .locals 1

    .line 10
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalArkCityEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "rt"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "3-1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static area(I)I
    .locals 0

    .line 21
    packed-switch p0, :pswitch_data_0

    .line 28
    const/4 p0, 0x0

    return p0

    .line 27
    :pswitch_0
    const/4 p0, 0x5

    return p0

    .line 26
    :pswitch_1
    const/4 p0, 0x6

    return p0

    .line 25
    :pswitch_2
    const/4 p0, 0x3

    return p0

    .line 24
    :pswitch_3
    const/16 p0, 0x8

    return p0

    .line 23
    :pswitch_4
    const/4 p0, 0x7

    return p0

    .line 22
    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_data_0
    .packed-switch 0x9b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static d([BLjava/lang/String;)[B
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 20

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "weeknum"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalArkCityEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "w"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalArkCityEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 33
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalArkCityEngine;->active([B)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-ne v3, v2, :cond_a

    iget-object v3, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v4, 0x1774

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 34
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "q7WeekEventBaseline"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 36
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "q7Intelligence"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalArkCityEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "events"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 37
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "q7ArkCity"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalArkCityEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    .line 38
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const-string v8, "week"

    if-nez v7, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 39
    sget-object v7, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    goto :goto_0

    .line 40
    :cond_2
    move-object v7, v5

    :goto_0
    const-string v9, "states"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalArkCityEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    const-string v11, "scenes"

    invoke-static {v7, v11}, Lcom/project7/localmanager/LocalArkCityEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    .line 41
    move-object/from16 v13, p1

    iget-object v13, v13, Lcom/project7/localmanager/LocalEventCatalog;->arkRaids:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    const/16 v17, 0x0

    aget v18, v14, v17

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 43
    move-object/from16 v18, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 44
    move-object/from16 v19, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_4

    .line 46
    :cond_3
    const/4 v4, 0x2

    aget v13, v14, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    iget-object v13, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    aget v4, v14, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    aget v13, v14, v4

    .line 47
    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalCityProgress;->hasBattle(Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move/from16 v4, v17

    .line 48
    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/16 v17, 0x5

    :goto_3
    move/from16 v4, v17

    invoke-static {v10, v15, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v10

    .line 49
    const/4 v4, 0x1

    aget v4, v14, v4

    invoke-static {v12, v15, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v12

    .line 50
    move-object/from16 v13, v18

    move-object/from16 v4, v19

    goto/16 :goto_1

    .line 43
    :cond_6
    move-object/from16 v19, v4

    .line 41
    :goto_4
    move-object/from16 v13, v18

    move-object/from16 v4, v19

    goto/16 :goto_1

    .line 51
    :cond_7
    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    return-void

    .line 52
    :cond_8
    nop

    .line 53
    invoke-static {v7, v8, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 52
    invoke-static {v2, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    invoke-static {v2, v11, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 54
    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_9

    return-void

    .line 55
    :cond_9
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v6, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 56
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 57
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v1

    const-string v2, "get_all_area_info_reply"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 58
    return-void

    .line 33
    :cond_a
    :goto_5
    return-void
.end method

.method static scene([BI)I
    .locals 1

    .line 18
    const-string v0, "q7ArkCity"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalArkCityEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "scenes"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalArkCityEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalArkCityEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static state([BI)Ljava/lang/Integer;
    .locals 2

    .line 13
    const-string v0, "q7ArkCity"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalArkCityEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 14
    invoke-static {p0}, Lcom/project7/localmanager/LocalArkCityEngine;->active([B)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "weeknum"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalArkCityEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v1, "w"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalArkCityEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "week"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 15
    const-string p0, "states"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalArkCityEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return-object p0
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
