.class final Lcom/project7/localmanager/LocalDeepEchoEngine;
.super Ljava/lang/Object;
.source "LocalDeepEchoEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 12

    .line 8
    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "std"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 10
    const-string v2, "rt"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    if-eqz v2, :cond_9

    const-string v3, "14"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "14-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 12
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "q7WeekEventBaseline"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 13
    nop

    .line 14
    iget-object v4, p1, Lcom/project7/localmanager/LocalEventCatalog;->sailafeimuEffects:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 15
    iget-object v10, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    aget v10, v10, v5

    invoke-static {v6, v10}, Ljava/lang/Math;->addExact(II)I

    move-result v6

    .line 17
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aget v8, v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->addExact(II)I

    move-result v7

    .line 18
    goto :goto_0

    .line 19
    :cond_4
    const-string v4, "srv"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    const-string v8, "ssv"

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v10

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 22
    if-ne v6, v5, :cond_5

    if-eq v7, v10, :cond_6

    .line 23
    :cond_5
    invoke-static {v0, v4, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0, v8, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 24
    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 25
    invoke-static {p0, v9}, Lcom/project7/localmanager/LocalDeepEchoEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;Z)V

    .line 27
    :cond_6
    invoke-static {p1, p2, v3, v2}, Lcom/project7/localmanager/LocalStoryRuleRegistry;->pendingTargets(Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/util/Set;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 28
    const-string p2, "srt"

    invoke-static {v0, p2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0, p2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_8

    .line 29
    :cond_7
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, p2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 30
    invoke-static {p0}, Lcom/project7/localmanager/LocalServiceEngine;->syncRoute(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 32
    :cond_8
    return-void

    .line 11
    :cond_9
    :goto_1
    return-void
.end method

.method static sync(Lcom/project7/localmanager/LocalResourceEngine$Result;Z)V
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "std"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 36
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "srv"

    aput-object v3, v1, v2

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "ssv"

    aput-object v3, v1, v2

    .line 37
    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string v2, "u"

    aput-object v2, v1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x5

    aput-object p1, v1, v0

    .line 36
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "syncSailafeimuLineData"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 38
    return-void
.end method
