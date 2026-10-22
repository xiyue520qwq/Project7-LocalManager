.class final Lcom/project7/localmanager/LocalWenziBuildingEngine;
.super Ljava/lang/Object;
.source "LocalWenziBuildingEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 18

    .line 10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalWenziCityEngine;->valid([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 11
    const/16 v3, 0x813

    invoke-static {v2, v1, v3}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    iget-object v2, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_c

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 13
    const-string v5, "q7WeekEventBaseline"

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 14
    :cond_0
    move-object/from16 v2, p1

    iget-object v2, v2, Lcom/project7/localmanager/LocalEventCatalog;->cityEffects:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string v3, "buildBuilding"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalWenziBuildingEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_b

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Integer;

    const/16 v7, 0x22

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v8, "3"

    invoke-static {v2, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 16
    :cond_1
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "q7WenziCity"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalWenziBuildingEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 18
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    const-string v9, "fireFormation"

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    return-void

    .line 19
    :cond_2
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v10, 0x3

    invoke-static {v1, v10, v8}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v8

    if-eqz v8, :cond_3

    return-void

    .line 20
    :cond_3
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v1}, Lcom/project7/localmanager/BsonLite;->withLocalCityState([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v8

    const-string v11, "city"

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalWenziBuildingEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    const-string v13, "areas"

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalWenziBuildingEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    .line 21
    const-string v15, "area_3"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalWenziBuildingEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    const-string v3, "bd"

    invoke-static {v10, v3}, Lcom/project7/localmanager/LocalWenziBuildingEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    .line 22
    nop

    .line 23
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v4, 0x0

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const-string v7, "id"

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalWenziBuildingEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalWenziBuildingEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/16 v7, 0x22

    if-ne v1, v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    move-object/from16 v1, p2

    const/16 v7, 0x22

    goto :goto_0

    .line 24
    :cond_5
    const/4 v1, 0x1

    if-le v4, v1, :cond_6

    return-void

    .line 25
    :cond_6
    if-nez v4, :cond_a

    .line 26
    const/4 v1, 0x1

    :goto_1
    const-string v4, "mbn"

    invoke-static {v10, v4}, Lcom/project7/localmanager/LocalWenziBuildingEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-gt v1, v4, :cond_8

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    move-object/from16 v16, v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v16

    goto :goto_1

    :cond_8
    move-object/from16 v16, v5

    const/4 v1, 0x0

    .line 28
    :goto_2
    if-nez v1, :cond_9

    return-void

    .line 29
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/16 v5, 0x22

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "uuid"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-static {v6, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 31
    invoke-static {v10, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 32
    const-string v4, "dbd"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalWenziBuildingEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v1}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 33
    invoke-static {v14, v15, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v12, v13, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v12

    goto :goto_3

    .line 25
    :cond_a
    move-object/from16 v16, v5

    .line 36
    :goto_3
    invoke-static {v8, v11, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 37
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 38
    const/4 v3, 0x1

    invoke-static {v2, v9, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 37
    move-object/from16 v4, v16

    invoke-static {v1, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 39
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v2, p2

    invoke-static {v3, v2, v1}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v1

    const-string v3, "get_all_area_info_reply"

    invoke-virtual {v0, v3, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 40
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->cityDataReplyDocument(Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v1

    const-string v2, "get_city_data_reply"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 41
    return-void

    .line 15
    :cond_b
    :goto_4
    return-void

    .line 13
    :cond_c
    :goto_5
    return-void
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
