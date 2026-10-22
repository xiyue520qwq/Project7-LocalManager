.class final Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;
.super Ljava/lang/Object;
.source "LocalHomeSpecialGiftEngine.java"


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

.method static gifts([BI)[B
    .locals 2

    .line 10
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    const-string v1, "hg"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 12
    if-nez p0, :cond_1

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    goto :goto_0

    :cond_1
    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static give(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V
    .locals 9

    .line 44
    const-string v0, "h"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v2, "k"

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->v([BLjava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HSG"

    invoke-virtual {p1, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    .line 45
    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v3

    const-string v4, "\u795e\u5668\u4f7f\u5c1a\u672a\u83b7\u5f97"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "hhd"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v5, "hri"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "\u8bf7\u5148\u8ba9\u795e\u5668\u4f7f\u5165\u4f4f"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 47
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    const-string v6, "heroid"

    invoke-static {p1, v6}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-ne v6, v1, :cond_0

    const-string v6, "text"

    invoke-static {p1, v6}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    const-string v7, "\u7279\u6b8a\u793c\u7269\u4e0e\u795e\u5668\u4f7f\u4e0d\u5339\u914d"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 48
    const-string v6, "item_id"

    invoke-static {p1, v6}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->v([BLjava/lang/String;)I

    move-result p1

    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->gifts([BI)[B

    move-result-object v6

    invoke-static {v6, p1}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->state([BI)Ljava/lang/Integer;

    move-result-object v6

    .line 49
    const/4 v7, 0x2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v5, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_2

    :cond_1
    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    const-string v8, "\u5c1a\u672a\u83b7\u5f97\u8be5\u7279\u6b8a\u793c\u7269"

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 50
    invoke-static {p0, p1, v5}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 51
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v8, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v1, p1, v7}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->setState([BIII)[B

    move-result-object p1

    invoke-static {v6, v4, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 52
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 53
    const/4 p1, 0x4

    new-array v4, p1, [Ljava/lang/Object;

    const-string v6, "r"

    aput-object v6, v4, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v6, "i"

    aput-object v6, v4, v7

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    aput-object v2, p1, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "replyGiveHeroSpecialGift"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 54
    return-void
.end method

.method static synthetic lambda$sync$0(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Z
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v0, "syncHeroHomeGift"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V
    .locals 9

    .line 26
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "hhd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalHomeEngine;->inventoryCounts([B)Ljava/util/Map;

    move-result-object v2

    .line 28
    iget-object v3, p1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "HSG:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 29
    iget-object v6, p1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const-string v6, "heroid"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->v([BLjava/lang/String;)I

    move-result v6

    const-string v7, "item_id"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->v([BLjava/lang/String;)I

    move-result v5

    .line 30
    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v6}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gtz v7, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->gifts([BI)[B

    move-result-object v7

    invoke-static {v7, v5}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->state([BI)Ljava/lang/Integer;

    move-result-object v7

    .line 32
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    invoke-static {v4, v6, v5, v7}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->setState([BIII)[B

    move-result-object v4

    .line 28
    :cond_2
    goto :goto_0

    .line 34
    :cond_3
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_4

    .line 35
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, v1, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 36
    if-eqz p2, :cond_4

    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 38
    :cond_4
    return-void
.end method

.method static setState([BIII)[B
    .locals 5

    .line 21
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->gifts([BI)[B

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "\u7279\u6b8a\u793c\u7269\u8bb0\u5f55\u683c\u5f0f\u672a\u77e5\uff0c\u4fdd\u7559\u539f\u8bb0\u5f55"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "pairs"

    aput-object v3, v0, v2

    new-instance v2, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->gifts([BI)[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v0, v3, p2, p3}, Lcom/project7/localmanager/LocalHomeEngine;->pairSet([BLjava/lang/String;ILjava/lang/Object;)[B

    move-result-object p2

    .line 23
    new-instance p3, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {p2, v3}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const-string p2, "hg"

    invoke-static {p0, p2, p1, p3}, Lcom/project7/localmanager/LocalHomeEngine;->pairSet([BLjava/lang/String;ILjava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static state([BI)Ljava/lang/Integer;
    .locals 5

    .line 15
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "pairs"

    aput-object v2, v0, v1

    const/4 v3, 0x1

    new-instance v4, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v4, p0}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 17
    if-nez p0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 18
    :cond_1
    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static sync(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    sget-object v1, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalHomeSpecialGiftEngine$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "hg"

    aput-object v2, v0, v1

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "hhd"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "syncHeroHomeGift"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 42
    return-void
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
