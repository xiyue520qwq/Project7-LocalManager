.class final Lcom/project7/localmanager/LocalStoryProgressDelivery;
.super Ljava/lang/Object;
.source "LocalStoryProgressDelivery.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acknowledge([B[B)[B
    .locals 6

    .line 160
    const-string v0, "q7StoryPending"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 161
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {p1, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v1

    .line 161
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static capture(Lcom/project7/localmanager/LocalResourceEngine$Result;)[B
    .locals 15

    .line 29
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "q7StoryPending"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 30
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 31
    invoke-static {v3}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;

    move-result-object v4

    .line 32
    if-eqz v4, :cond_a

    .line 33
    iget-object v3, v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    .line 34
    const-string v5, "syncYisakeVal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eqz v5, :cond_1

    .line 35
    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    .line 36
    const-string v11, "iv"

    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v12

    .line 37
    const-string v13, "av"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    sub-int v3, v12, v3

    .line 38
    if-eqz v5, :cond_0

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v14

    .line 39
    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    sub-int/2addr v14, v5

    .line 38
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 40
    :cond_0
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    new-array v14, v9, [Ljava/lang/Object;

    aput-object v11, v14, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v8

    aput-object v13, v14, v7

    sub-int/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v6

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->envelope([B[B)[B

    move-result-object v3

    .line 41
    if-nez v3, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    const-string v5, "syncBaiyuInfos"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 44
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->envelope([B[B)[B

    move-result-object v3

    .line 45
    if-nez v3, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    const-string v5, "openYumiYaocaoyuan"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 48
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalWingGardenEngine;->envelope([B[B)[B

    move-result-object v3

    .line 49
    if-nez v3, :cond_3

    goto/16 :goto_0

    .line 51
    :cond_3
    const-string v5, "updateItems"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 52
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->inventoryDeliveryId:Ljava/lang/String;

    if-nez v5, :cond_4

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->inventoryDeliveryId:Ljava/lang/String;

    .line 53
    :cond_4
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    const-string v12, "i"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "u"

    if-eqz v13, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 55
    invoke-static {v13, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 56
    :cond_5
    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 57
    invoke-static {v11, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 58
    :cond_6
    new-array v3, v9, [Ljava/lang/Object;

    aput-object v12, v3, v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v11, v3, v8

    const-string v5, "receipt"

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->inventoryDeliveryId:Ljava/lang/String;

    aput-object v5, v3, v6

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 60
    :cond_7
    const-string v5, "addCenterConfidence"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 61
    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    .line 62
    const-string v11, "c"

    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v12

    .line 63
    const-string v13, "v"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    sub-int v3, v12, v3

    .line 66
    if-eqz v5, :cond_8

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v14

    .line 67
    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    sub-int/2addr v14, v5

    .line 66
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 68
    :cond_8
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v13, v5, v10

    sub-int v3, v12, v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v8

    aput-object v11, v5, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 70
    :cond_9
    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 72
    :cond_a
    goto/16 :goto_0

    .line 73
    :cond_b
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto :goto_3

    .line 74
    :cond_c
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 73
    :goto_3
    return-object p0
.end method

.method static key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;
    .locals 7

    .line 8
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "addCenterConfidence"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncSailafeimuLineData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncBaiyuInfos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncYisakeVal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "openYumiYaocaoyuan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "get_all_area_info_reply"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncRoute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncProgInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncAllNote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncHeroMgrData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_3

    .line 17
    :cond_8
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "updateItems"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 18
    :cond_9
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncOneSocialMsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncOnePrivateMsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 20
    :cond_a
    sget-object v0, Lcom/project7/localmanager/LocalStoryClueEngine;->FIELDS:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_10

    aget-object v4, v0, v3

    .line 21
    aget-object v5, v4, v2

    const-string v6, "g"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v4, "syncClueInfo"

    goto :goto_1

    :cond_b
    aget-object v5, v4, v2

    const-string v6, "w"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v4, "syncWuluLineData"

    goto :goto_1

    .line 22
    :cond_c
    aget-object v5, v4, v2

    const-string v6, "j"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v4, "syncJiaohuiLineData"

    goto :goto_1

    :cond_d
    aget-object v4, v4, v2

    const-string v5, "a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "syncAlanLineData"

    goto :goto_1

    :cond_e
    const-string v4, "syncDaerweilaClueData"

    .line 23
    :goto_1
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    return-object v4

    .line 20
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_10
    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_11
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_12
    :goto_3
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0
.end method

.method static replay(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 1

    .line 78
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->replay(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 79
    return-void
.end method

.method static replay(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 16

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "q7StoryPending"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 85
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-static {v5}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "other:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;

    move-result-object v6

    .line 85
    :goto_1
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_2
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "updateItems"

    const-string v7, "syncAllNote"

    const-string v8, "syncProgInfo"

    const-string v9, "syncHeroMgrData"

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 88
    const-string v10, ":"

    const/4 v11, 0x2

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    .line 90
    const-string v14, "memoryReward"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "heroReward"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "itemReward"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_a

    .line 93
    :cond_3
    const-string v14, "syncYisakeVal"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 94
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->payload([B[B)[B

    move-result-object v6

    .line 95
    if-nez v6, :cond_1b

    goto :goto_2

    .line 96
    :cond_4
    const-string v14, "syncBaiyuInfos"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 97
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalWingStoryEngine;->payload([B[B)[B

    move-result-object v6

    .line 98
    if-nez v6, :cond_1b

    goto :goto_2

    .line 99
    :cond_5
    const-string v14, "openYumiYaocaoyuan"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 100
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalWingGardenEngine;->payload([B[B)[B

    move-result-object v6

    .line 101
    if-nez v6, :cond_1b

    goto :goto_2

    .line 102
    :cond_6
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v14, "u"

    if-eqz v6, :cond_a

    .line 103
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 104
    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    const-string v8, "i"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 105
    invoke-static {v9, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 106
    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v10, "inv"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    const-string v10, "items"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 108
    invoke-static {v10, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 109
    :cond_9
    new-array v6, v11, [Ljava/lang/Object;

    aput-object v8, v6, v13

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 110
    goto/16 :goto_b

    :cond_a
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 111
    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "prog"

    aput-object v7, v6, v13

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "ldd"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    const-string v8, "hfp"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    goto/16 :goto_b

    .line 112
    :cond_b
    const-string v6, "syncOneSocialMsg"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v15, 0x4

    const-string v11, "c"

    if-nez v8, :cond_17

    const-string v8, "syncOnePrivateMsg"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_8

    .line 118
    :cond_c
    const-string v6, "addCenterConfidence"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 119
    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 120
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "city"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    const-string v8, "cc"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v7

    .line 121
    invoke-static {v6, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    const-string v9, "v"

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    sub-int/2addr v8, v6

    .line 122
    new-array v6, v15, [Ljava/lang/Object;

    aput-object v9, v6, v13

    sub-int v8, v7, v8

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const/4 v8, 0x2

    aput-object v11, v6, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 123
    goto/16 :goto_b

    :cond_d
    const/4 v8, 0x2

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 124
    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "nd"

    aput-object v7, v6, v13

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "np"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    goto/16 :goto_b

    .line 125
    :cond_e
    const-string v6, "syncSailafeimuLineData"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 126
    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 127
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v14}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalDeepEchoEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;Z)V

    .line 128
    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    .line 129
    goto/16 :goto_b

    :cond_f
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 130
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    if-nez v1, :cond_10

    goto :goto_5

    :cond_10
    invoke-static {v6, v1}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v6

    .line 131
    :goto_5
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "d"

    aput-object v8, v7, v13

    const-string v8, "heromgr"

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 132
    goto/16 :goto_b

    :cond_11
    const/4 v8, 0x1

    const-string v6, "get_all_area_info_reply"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 133
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v1, v6}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v6

    goto/16 :goto_b

    .line 135
    :cond_12
    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 136
    invoke-static {v6}, Lcom/project7/localmanager/LocalServiceEngine;->syncRoute(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 137
    sget-object v7, Lcom/project7/localmanager/LocalStoryClueEngine;->FIELDS:[[Ljava/lang/String;

    array-length v8, v7

    move v9, v13

    :goto_6
    if-ge v9, v8, :cond_13

    aget-object v10, v7, v9

    aget-object v10, v10, v13

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalStoryClueEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 138
    :cond_13
    const/4 v7, 0x0

    .line 139
    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_14
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v9, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    move-object v7, v8

    goto :goto_7

    .line 140
    :cond_15
    if-nez v7, :cond_16

    goto/16 :goto_2

    .line 141
    :cond_16
    iget-object v6, v7, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    goto :goto_b

    .line 113
    :cond_17
    :goto_8
    const/4 v7, 0x2

    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x1

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 114
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "sd"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    .line 115
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, "sm"

    goto :goto_9

    :cond_18
    const-string v6, "pm"

    .line 114
    :goto_9
    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 115
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 114
    invoke-static {v6, v8}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    .line 116
    if-nez v6, :cond_19

    goto/16 :goto_2

    .line 117
    :cond_19
    new-array v8, v15, [Ljava/lang/Object;

    const-string v9, "id"

    aput-object v9, v8, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    const/4 v7, 0x2

    aput-object v11, v8, v7

    const/4 v7, 0x3

    aput-object v6, v8, v7

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 118
    goto :goto_b

    .line 91
    :cond_1a
    :goto_a
    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 92
    const-string v12, "procRewardSettlementCommon"

    .line 143
    :cond_1b
    :goto_b
    new-instance v7, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-direct {v7, v12, v6}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    goto/16 :goto_2

    .line 145
    :cond_1c
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 146
    const-string v1, "syncRoute"

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 147
    if-eqz v1, :cond_1d

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1d
    invoke-interface {v3, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 149
    if-eqz v1, :cond_1e

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1e
    invoke-interface {v3, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 151
    if-eqz v1, :cond_1f

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1f
    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 153
    if-eqz v1, :cond_20

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_20
    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 155
    if-eqz v1, :cond_21

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_21
    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    return-void
.end method

.method static sent(Lcom/project7/localmanager/LocalResourceEngine$Result;)[B
    .locals 9

    .line 168
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "q7StoryPending"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 169
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 170
    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    .line 171
    if-nez v4, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 173
    invoke-static {v6}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 174
    if-eqz v7, :cond_1

    const-string v8, "syncYisakeVal"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 175
    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v4}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->payload([B[B)[B

    move-result-object v7

    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    .line 176
    :cond_1
    if-eqz v7, :cond_2

    const-string v8, "syncBaiyuInfos"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 177
    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v4}, Lcom/project7/localmanager/LocalWingStoryEngine;->payload([B[B)[B

    move-result-object v7

    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    .line 178
    :cond_2
    if-eqz v7, :cond_3

    const-string v8, "openYumiYaocaoyuan"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 179
    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v4}, Lcom/project7/localmanager/LocalWingGardenEngine;->payload([B[B)[B

    move-result-object v7

    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    .line 180
    :cond_3
    const-string v8, "memoryReward:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "heroReward:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "itemReward:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 181
    :cond_4
    iget-object v7, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v8, "procRewardSettlementCommon"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    move v7, v6

    .line 182
    :cond_6
    if-eqz v7, :cond_7

    .line 183
    invoke-static {v1, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 184
    goto :goto_3

    .line 186
    :cond_7
    goto/16 :goto_1

    .line 187
    :cond_8
    :goto_3
    goto/16 :goto_0

    .line 188
    :cond_9
    return-object v1
.end method
