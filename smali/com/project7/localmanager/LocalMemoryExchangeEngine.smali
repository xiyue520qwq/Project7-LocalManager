.class final Lcom/project7/localmanager/LocalMemoryExchangeEngine;
.super Ljava/lang/Object;
.source "LocalMemoryExchangeEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalResourceCatalog;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 13

    .line 10
    const-string v0, "ii"

    new-instance v7, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v7, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 12
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    :try_start_0
    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p2

    .line 13
    if-eqz p2, :cond_7

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 15
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 17
    nop

    .line 18
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v12, v9

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19
    invoke-static {p2, v3}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 20
    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v10, :cond_3

    .line 22
    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "1"

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 23
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, 0xf4240

    if-gt v5, v6, :cond_2

    iget-object v5, p1, Lcom/project7/localmanager/LocalResourceCatalog;->memoryExchange:Ljava/util/Map;

    .line 24
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 26
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p0, v5}, Lcom/project7/localmanager/LocalHeroGrowthEngine;->count([BI)I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 28
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p1, Lcom/project7/localmanager/LocalResourceCatalog;->memoryExchange:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v12

    .line 29
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    new-array v5, v10, [Ljava/lang/Integer;

    aput-object v4, v5, v9

    aput-object v3, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    goto/16 :goto_0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u8bb0\u5fc6\u7ed3\u6676\u4e0d\u8db3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u8bb0\u5fc6\u7ed3\u6676\u79cd\u7c7b\u6216\u6570\u91cf\u65e0\u6548"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u5151\u6362\u5217\u8868\u65e0\u6548"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_4
    if-lez v12, :cond_6

    .line 32
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v7, v2, v1}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    goto :goto_1

    .line 33
    :cond_5
    const-string v3, "item"

    const/16 v4, 0x18

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p1

    move v5, v12

    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 34
    const-string p1, "replyMemoryCrystalExchangeSuipian"

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v9

    aput-object v11, p2, v8

    const-string v0, "sp"

    aput-object v0, p2, v10

    const/4 v0, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 38
    goto :goto_3

    .line 31
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u8bf7\u9009\u62e9\u5151\u6362\u6570\u91cf"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u8bf7\u9009\u62e9\u9700\u8981\u5151\u6362\u7684\u8bb0\u5fc6\u7ed3\u6676"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 36
    :goto_2
    new-instance v7, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v7, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 37
    new-array p0, v10, [Ljava/lang/Object;

    const-string p2, "m"

    aput-object p2, p0, v9

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v8

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    const-string p1, "showMessageStr"

    invoke-virtual {v7, p1, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 39
    :goto_3
    return-object v7
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 7
    const-string v0, "memoryCrystalExchangeSuipian"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
