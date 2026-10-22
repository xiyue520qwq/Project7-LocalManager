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

    .line 192
    const-string v0, "q7StoryPending"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 193
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

    .line 194
    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v1

    .line 193
    :cond_0
    goto :goto_0

    .line 195
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static capture(Lcom/project7/localmanager/LocalResourceEngine$Result;)[B
    .locals 15

    .line 33
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "q7StoryPending"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 35
    invoke-static {v3}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;

    move-result-object v4

    .line 36
    if-eqz v4, :cond_f

    .line 37
    iget-object v3, v3, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    .line 38
    const-string v5, "syncYisakeVal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_1

    .line 39
    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    .line 40
    const-string v11, "iv"

    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v12

    .line 41
    const-string v13, "av"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    sub-int v3, v12, v3

    .line 42
    if-eqz v5, :cond_0

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v14

    .line 43
    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    sub-int/2addr v14, v5

    .line 42
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 44
    :cond_0
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v11, v14, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v14, v9

    aput-object v13, v14, v8

    sub-int/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v6

    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->envelope([B[B)[B

    move-result-object v3

    .line 45
    if-nez v3, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    const-string v5, "syncBaiyuInfos"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalWingStoryEngine;->envelope([B[B)[B

    move-result-object v3

    .line 49
    if-nez v3, :cond_2

    goto :goto_0

    .line 51
    :cond_2
    const-string v5, "openYumiYaocaoyuan"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 52
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalWingGardenEngine;->envelope([B[B)[B

    move-result-object v3

    .line 53
    if-nez v3, :cond_3

    goto/16 :goto_0

    .line 55
    :cond_3
    const-string v5, "updateItems"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v11, "i"

    if-eqz v5, :cond_7

    .line 56
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->inventoryDeliveryId:Ljava/lang/String;

    if-nez v5, :cond_4

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->inventoryDeliveryId:Ljava/lang/String;

    .line 57
    :cond_4
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 58
    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "u"

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 59
    invoke-static {v13, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 60
    :cond_5
    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 61
    invoke-static {v12, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 62
    :cond_6
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v11, v3, v10

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v12, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v12, v3, v9

    const-string v5, "receipt"

    aput-object v5, v3, v8

    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->inventoryDeliveryId:Ljava/lang/String;

    aput-object v5, v3, v6

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 64
    :cond_7
    const-string v5, "deleteItems"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 65
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 66
    new-array v12, v8, [[B

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    aput-object v3, v12, v9

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 67
    invoke-static {v12, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v12

    .line 68
    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 69
    invoke-static {v12, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 70
    if-eqz v14, :cond_8

    invoke-interface {v5, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_8
    goto :goto_4

    .line 72
    :cond_9
    goto :goto_3

    .line 73
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-instance v13, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v13, v12}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 75
    :cond_b
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v11, v5, v10

    aput-object v3, v5, v9

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 77
    :cond_c
    const-string v5, "addCenterConfidence"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 78
    invoke-static {v0, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    .line 79
    const-string v11, "c"

    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v12

    .line 80
    const-string v13, "v"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    sub-int v3, v12, v3

    .line 83
    if-eqz v5, :cond_d

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v14

    .line 84
    invoke-static {v5, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    sub-int/2addr v14, v5

    .line 83
    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 85
    :cond_d
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v13, v5, v10

    sub-int v3, v12, v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v9

    aput-object v11, v5, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 87
    :cond_e
    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 89
    :cond_f
    goto/16 :goto_0

    .line 90
    :cond_10
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto :goto_6

    .line 91
    :cond_11
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 90
    :goto_6
    return-object p0
.end method

.method static key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;
    .locals 7

    .line 8
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncDaerweilaLineData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "daerweilaDispatchClose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "addCenterConfidence"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncSailafeimuLineData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncBaiyuInfos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncYisakeVal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncStoryGeneralValue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncFlashbackData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "enterFlashback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_4

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "openYumiYaocaoyuan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "get_all_area_info_reply"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 17
    :cond_8
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncRoute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 18
    :cond_9
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncProgInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncAllNote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncHeroMgrData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_3

    .line 20
    :cond_b
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "updateItems"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 21
    :cond_c
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "deleteItems"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 22
    :cond_d
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncOneSocialMsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v1, "syncOnePrivateMsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2

    .line 24
    :cond_e
    sget-object v0, Lcom/project7/localmanager/LocalStoryClueEngine;->FIELDS:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 25
    aget-object v5, v4, v2

    const-string v6, "g"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v4, "syncClueInfo"

    goto :goto_1

    :cond_f
    aget-object v5, v4, v2

    const-string v6, "w"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v4, "syncWuluLineData"

    goto :goto_1

    .line 26
    :cond_10
    aget-object v5, v4, v2

    const-string v6, "j"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v4, "syncJiaohuiLineData"

    goto :goto_1

    :cond_11
    aget-object v4, v4, v2

    const-string v5, "a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "syncAlanLineData"

    goto :goto_1

    :cond_12
    const-string v4, "syncDaerweilaClueData"

    .line 27
    :goto_1
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    return-object v4

    .line 24
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    :cond_14
    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_15
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

    .line 19
    :cond_16
    :goto_3
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 14
    :cond_17
    :goto_4
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0

    .line 8
    :cond_18
    :goto_5
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    return-object p0
.end method

.method static replay(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 1

    .line 95
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->replay(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 96
    return-void
.end method

.method static replay(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 19

    .line 99
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "q7StoryPending"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 100
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 102
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-static {v5}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "other:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;

    move-result-object v6

    .line 102
    :goto_1
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v6, "updateItems"

    const-string v7, "syncAllNote"

    const-string v8, "syncProgInfo"

    const-string v9, "syncHeroMgrData"

    if-eqz v0, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    const-string v10, ":"

    const/4 v11, 0x2

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    .line 107
    const-string v14, "memoryReward"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_21

    const-string v14, "heroReward"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_21

    const-string v14, "itemReward"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_a

    .line 110
    :cond_3
    const-string v14, "syncYisakeVal"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 111
    iget-object v6, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->payload([B[B)[B

    move-result-object v6

    .line 112
    if-nez v6, :cond_22

    goto :goto_2

    .line 113
    :cond_4
    const-string v14, "syncStoryGeneralValue"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "v"

    const/4 v13, 0x1

    if-eqz v14, :cond_5

    .line 114
    :try_start_0
    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7}, Lcom/project7/localmanager/LocalStoryGeneralEngine;->value([B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto :goto_2

    .line 116
    :cond_5
    const-string v14, "syncFlashbackData"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v17, "d"

    if-eqz v14, :cond_6

    .line 117
    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7}, Lcom/project7/localmanager/LocalFlashbackEngine;->snapshot([B)[B

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    goto/16 :goto_b

    .line 118
    :cond_6
    const-string v14, "enterFlashback"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 119
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "std"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    const-string v8, "ff"

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_2

    .line 120
    :cond_7
    sget-object v6, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    goto/16 :goto_b

    .line 121
    :cond_8
    const-string v14, "syncBaiyuInfos"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 122
    iget-object v6, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalWingStoryEngine;->payload([B[B)[B

    move-result-object v6

    .line 123
    if-nez v6, :cond_22

    goto/16 :goto_2

    .line 124
    :cond_9
    const-string v14, "openYumiYaocaoyuan"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 125
    iget-object v6, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalWingGardenEngine;->payload([B[B)[B

    move-result-object v6

    .line 126
    if-nez v6, :cond_22

    goto/16 :goto_2

    .line 127
    :cond_a
    const-string v14, "deleteItems"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 128
    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    goto/16 :goto_b

    .line 129
    :cond_b
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v14, "u"

    if-eqz v6, :cond_f

    .line 130
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 131
    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

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

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 132
    invoke-static {v9, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 133
    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iget-object v9, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

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

    :cond_d
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 135
    invoke-static {v10, v14}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 136
    :cond_e
    new-array v6, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v6, v16

    aput-object v7, v6, v13

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 137
    goto/16 :goto_b

    :cond_f
    const/16 v16, 0x0

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 138
    new-array v6, v11, [Ljava/lang/Object;

    const-string v7, "prog"

    aput-object v7, v6, v16

    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "ldd"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    const-string v8, "hfp"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    goto/16 :goto_b

    .line 139
    :cond_10
    const-string v6, "syncOneSocialMsg"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v18, 0x3

    const/4 v11, 0x4

    const-string v13, "c"

    if-nez v8, :cond_1e

    const-string v8, "syncOnePrivateMsg"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    goto/16 :goto_8

    .line 145
    :cond_11
    const-string v6, "addCenterConfidence"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 146
    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 147
    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "city"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    const-string v8, "cc"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v7

    .line 148
    invoke-static {v6, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v6

    sub-int/2addr v8, v6

    .line 149
    new-array v6, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v15, v6, v9

    sub-int v8, v7, v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const/4 v8, 0x2

    aput-object v13, v6, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v18

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 150
    goto/16 :goto_b

    :cond_12
    const/4 v8, 0x2

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 151
    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "nd"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "np"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    goto/16 :goto_b

    .line 152
    :cond_13
    const-string v6, "syncSailafeimuLineData"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 153
    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 154
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v14}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalDeepEchoEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;Z)V

    .line 155
    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    .line 156
    goto/16 :goto_b

    :cond_14
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 157
    iget-object v6, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    if-nez v2, :cond_15

    goto :goto_5

    :cond_15
    invoke-static {v6, v2}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v6

    .line 158
    :goto_5
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v17, v7, v8

    const-string v8, "heromgr"

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 159
    goto/16 :goto_b

    :cond_16
    const-string v6, "syncDaerweilaLineData"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 160
    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 161
    invoke-static {v6}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    .line 162
    goto/16 :goto_b

    :cond_17
    const-string v6, "daerweilaDispatchClose"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 163
    iget-object v6, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->close([B)[B

    move-result-object v6

    goto/16 :goto_b

    .line 164
    :cond_18
    const-string v6, "get_all_area_info_reply"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 165
    iget-object v6, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v7, 0x1

    invoke-static {v7, v2, v6}, Lcom/project7/localmanager/BsonLite;->allAreaInfoReplyDocument(ZLcom/project7/localmanager/LocalTutorialStore$Progress;[B)[B

    move-result-object v6

    goto/16 :goto_b

    .line 167
    :cond_19
    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v6, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 168
    invoke-static {v6}, Lcom/project7/localmanager/LocalServiceEngine;->syncRoute(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 169
    sget-object v7, Lcom/project7/localmanager/LocalStoryClueEngine;->FIELDS:[[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_1a

    aget-object v10, v7, v9

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalStoryClueEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 170
    :cond_1a
    const/4 v7, 0x0

    .line 171
    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1b
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v9, v8, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    move-object v7, v8

    goto :goto_7

    .line 172
    :cond_1c
    if-nez v7, :cond_1d

    goto/16 :goto_2

    .line 173
    :cond_1d
    iget-object v6, v7, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    goto :goto_b

    .line 140
    :cond_1e
    :goto_8
    const/4 v7, 0x2

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x1

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 141
    iget-object v8, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "sd"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    .line 142
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const-string v6, "sm"

    goto :goto_9

    :cond_1f
    const-string v6, "pm"

    .line 141
    :goto_9
    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 142
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 141
    invoke-static {v6, v8}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    .line 143
    if-nez v6, :cond_20

    goto/16 :goto_2

    .line 144
    :cond_20
    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, "id"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    const/4 v7, 0x2

    aput-object v13, v8, v7

    aput-object v6, v8, v18

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 145
    goto :goto_b

    .line 108
    :cond_21
    :goto_a
    invoke-static {v3, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    .line 109
    const-string v12, "procRewardSettlementCommon"

    .line 175
    :cond_22
    :goto_b
    new-instance v7, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-direct {v7, v12, v6}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    goto/16 :goto_2

    .line 177
    :cond_23
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    const-string v0, "syncRoute"

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 179
    if-eqz v0, :cond_24

    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_24
    invoke-interface {v4, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 181
    if-eqz v0, :cond_25

    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_25
    invoke-interface {v4, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 183
    if-eqz v0, :cond_26

    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_26
    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 185
    if-eqz v0, :cond_27

    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_27
    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    .line 187
    if-eqz v0, :cond_28

    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_28
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    return-void
.end method

.method static sent(Lcom/project7/localmanager/LocalResourceEngine$Result;)[B
    .locals 9

    .line 200
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "q7StoryPending"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 201
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

    .line 202
    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    .line 203
    if-nez v4, :cond_0

    goto :goto_0

    .line 204
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

    .line 205
    invoke-static {v6}, Lcom/project7/localmanager/LocalStoryProgressDelivery;->key(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 206
    if-eqz v7, :cond_1

    const-string v8, "syncYisakeVal"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 207
    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v4}, Lcom/project7/localmanager/LocalYisakeStoryEngine;->payload([B[B)[B

    move-result-object v7

    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    .line 208
    :cond_1
    if-eqz v7, :cond_2

    const-string v8, "syncBaiyuInfos"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 209
    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v4}, Lcom/project7/localmanager/LocalWingStoryEngine;->payload([B[B)[B

    move-result-object v7

    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    .line 210
    :cond_2
    if-eqz v7, :cond_3

    const-string v8, "openYumiYaocaoyuan"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 211
    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v4}, Lcom/project7/localmanager/LocalWingGardenEngine;->payload([B[B)[B

    move-result-object v7

    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    .line 212
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

    .line 213
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

    .line 214
    :cond_6
    if-eqz v7, :cond_7

    .line 215
    invoke-static {v1, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 216
    goto :goto_3

    .line 218
    :cond_7
    goto/16 :goto_1

    .line 219
    :cond_8
    :goto_3
    goto/16 :goto_0

    .line 220
    :cond_9
    return-object v1
.end method
