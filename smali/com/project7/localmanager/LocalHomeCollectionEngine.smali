.class final Lcom/project7/localmanager/LocalHomeCollectionEngine;
.super Ljava/lang/Object;
.source "LocalHomeCollectionEngine.java"


# static fields
.field static final METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "sellFurnitureByID"

    const-string v2, "sellFurnitureByItemList"

    const-string v3, "doBuyFurniture"

    const-string v4, "doAddSawFurniture"

    const-string v5, "addKnownFurnitureScheme"

    const-string v6, "requestBuyMusicByMusicCoin"

    const-string v7, "requestSetHeroHomeCurMusic"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/project7/localmanager/LocalHomeCollectionEngine;->METHODS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)V
    .locals 4

    .line 78
    const-string v0, "sellFurniture"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->sell(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)V

    goto/16 :goto_2

    .line 79
    :cond_0
    const-string p2, "doBuyFurniture"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 80
    const-string p2, "doAddSawFurniture"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const-string v1, "fnd"

    if-eqz p2, :cond_3

    .line 81
    const-string p2, "fi"

    invoke-static {p4, p2}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "F"

    invoke-virtual {p1, p4, p3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    const-string p4, "\u5bb6\u5177\u4e0d\u5b58\u5728"

    invoke-static {p1, p4}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    new-instance p4, Ljava/util/ArrayList;

    const-string v2, "hsf"

    invoke-static {p1, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, v2, p4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 85
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, p3

    aput-object p4, p1, v0

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "syncSawFurnitureData"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 86
    goto/16 :goto_2

    :cond_3
    const-string p2, "addKnownFurnitureScheme"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 87
    const-string p1, "st"

    invoke-static {p4, p1}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    const-string p3, "s"

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    const-string p3, "\u623f\u578b\u5c1a\u672a\u89e3\u9501"

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    const-string p3, "kns"

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-static {p4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p4, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_5
    const-string p4, "player_home"

    invoke-interface {v0, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_7
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, p3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 92
    goto :goto_2

    :cond_8
    invoke-static {p0, p1, p3, p4}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->music(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)V

    .line 93
    :goto_2
    return-void

    .line 79
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5bb6\u5177\u56de\u8d2d\u6709\u6548\u671f\u5c1a\u5f85\u539f\u7248\u89c4\u5219\u6838\u67e5\uff0c\u6682\u672a\u5f00\u653e"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static baseInfo([B)[B
    .locals 7

    .line 41
    const-string v0, "fnd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 42
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 42
    const-string v3, "sc"

    aput-object v3, v0, v1

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v5, "nm"

    aput-object v5, v0, v3

    invoke-static {p0, v5}, Lcom/project7/localmanager/LocalHomeEngine;->text([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const/4 v5, 0x4

    const-string v6, "th"

    aput-object v6, v0, v5

    invoke-static {p0, v6}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v0, v6

    const/4 v5, 0x6

    const-string v6, "vt"

    aput-object v6, v0, v5

    invoke-static {p0, v6}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v0, v6

    const/16 v5, 0x8

    const-string v6, "vh"

    aput-object v6, v0, v5

    new-instance v5, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 43
    invoke-static {p0, v6}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/16 v6, 0x9

    aput-object v5, v0, v6

    const/16 v5, 0xa

    const-string v6, "vw"

    aput-object v6, v0, v5

    invoke-static {p0, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-array p0, v3, [Ljava/lang/Integer;

    aput-object v2, p0, v1

    aput-object v2, p0, v4

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    const/16 v1, 0xb

    aput-object p0, v0, v1

    .line 42
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static furnitureByItem(Lcom/project7/localmanager/LocalFeatureCatalog;I)[B
    .locals 3

    .line 95
    iget-object p0, p0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "F:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "itemid"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 96
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u4e0d\u662f\u5df2\u53d1\u5e03\u5bb6\u5177"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static initialize(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;)V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "hhd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "hhm"

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    iget-object v4, p1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "M:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const-string v7, "init"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 53
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 56
    return-void
.end method

.method static inventoryChanged(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->inventoryChanged(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;J)V

    .line 59
    return-void
.end method

.method static inventoryChanged(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;J)V
    .locals 8

    .line 61
    const-string v0, "inv"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 62
    const-string p3, "heromgr"

    invoke-static {p1, p3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    const-string p4, "hrs"

    invoke-static {p1, p4}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 63
    invoke-static {v0, p3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p3

    invoke-static {p3, p4}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p3

    invoke-static {p3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-eq p1, p3, :cond_0

    .line 64
    invoke-static {p0, p2, v1}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 65
    :cond_0
    return-void

    .line 67
    :cond_1
    invoke-static {p0, p2, v1}, Lcom/project7/localmanager/LocalHomeSpecialGiftEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 68
    invoke-static {p1}, Lcom/project7/localmanager/LocalHomeEngine;->inventoryCounts([B)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalHomeEngine;->inventoryCounts([B)Ljava/util/Map;

    move-result-object v2

    .line 69
    iget-object v3, p2, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "F:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v5, "itemid"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 72
    invoke-static {p0, p1, p2, p3, p4}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->inventoryChanged(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;J)V

    .line 73
    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->markLacking(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;)V

    invoke-static {p0, p2, v1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalHomeEngine;->syncOwned(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;)V

    return-void

    .line 69
    :cond_2
    goto :goto_0

    .line 76
    :cond_3
    return-void
.end method

.method static synthetic lambda$score$0(Ljava/lang/Integer;)Ljava/util/PriorityQueue;
    .locals 0

    .line 23
    new-instance p0, Ljava/util/PriorityQueue;

    invoke-direct {p0}, Ljava/util/PriorityQueue;-><init>()V

    return-object p0
.end method

.method private static markLacking(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;)V
    .locals 25

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeEngine;->inventoryCounts([B)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "fnd"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v4, "s"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    .line 140
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 141
    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    .line 142
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 143
    invoke-static {v8, v10}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v11

    if-nez v11, :cond_0

    goto :goto_1

    .line 144
    :cond_0
    const-string v12, "e"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 145
    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object/from16 v16, v6

    move-object v6, v13

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    if-eqz v17, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v9

    move-object/from16 v9, v17

    check-cast v9, Ljava/lang/String;

    .line 146
    move-object/from16 v17, v15

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    move-object/from16 v21, v3

    const-string v3, "id"

    invoke-static {v15, v3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v22, v2

    const-string v2, "F"

    move-object/from16 v23, v4

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v15, v17

    move-object/from16 v9, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    move-object/from16 v4, v23

    goto :goto_2

    .line 147
    :cond_1
    const-string v3, "itemid"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v24, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v3, v2, :cond_2

    move/from16 v2, v18

    goto :goto_3

    :cond_2
    move/from16 v2, v19

    :goto_3
    const-string v3, "il"

    invoke-static {v15, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    invoke-static {v6, v9, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v6

    .line 149
    move-object/from16 v15, v17

    move-object/from16 v9, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_2

    .line 150
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v20, v9

    invoke-static {v13, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    .line 151
    invoke-static {v11, v12, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    invoke-static {v8, v10, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 152
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "st"

    aput-object v5, v4, v19

    aput-object v7, v4, v18

    const/4 v5, 0x2

    const-string v6, "sk"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v10, v4, v5

    const/4 v5, 0x4

    const-string v6, "d"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v4, "syncScheme"

    invoke-virtual {v0, v4, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    move-object v8, v3

    .line 154
    :cond_4
    move-object/from16 v6, v16

    move-object/from16 v9, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    goto/16 :goto_1

    .line 155
    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v16, v6

    invoke-static {v5, v7, v8}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v5

    .line 156
    goto/16 :goto_0

    .line 157
    :cond_6
    move-object/from16 v22, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v3, v23

    invoke-static {v2, v3, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    move-object/from16 v3, v21

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 158
    return-void
.end method

.method private static music(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)V
    .locals 16

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "hhd"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v5, "requestBuyMusicByMusicCoin"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "k"

    if-eqz v6, :cond_0

    const-string v6, "key"

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v6

    .line 161
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "M"

    move-object/from16 v10, p1

    invoke-virtual {v10, v9, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    move v11, v10

    :goto_1
    const-string v12, "\u4e50\u7ae0\u4e0d\u5b58\u5728"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    const-string v12, "hhm"

    invoke-static {v3, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    const-string v13, "hgr"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    if-nez v14, :cond_2

    sget-object v14, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    goto :goto_2

    :cond_2
    const-string v15, "1"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    .line 163
    :goto_2
    new-instance v15, Ljava/util/ArrayList;

    const-string v9, "music"

    invoke-static {v14, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "init"

    if-eqz v1, :cond_7

    .line 165
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 166
    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v2, "cost"

    if-nez v1, :cond_3

    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    const-string v5, "\u6b64\u4e50\u7ae0\u987b\u901a\u8fc7\u5176\u4ed6\u9014\u5f84\u83b7\u53d6"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    .line 167
    const-string v1, "need_cg"

    invoke-static {v8, v1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v10, "cgs"

    invoke-static {v5, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, 0x1

    :goto_5
    const-string v5, "\u5c1a\u672a\u83b7\u5f97\u6240\u9700CG"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    .line 168
    const/16 v1, 0x1059

    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-static {v14, v9, v15}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v3, v13, v2, v1}, Lcom/project7/localmanager/LocalHomeEngine;->pairSet([BLjava/lang/String;ILjava/lang/Object;)[B

    move-result-object v1

    .line 170
    invoke-static {v1, v12, v11}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    .line 172
    :cond_6
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "r"

    const/4 v9, 0x0

    aput-object v2, v1, v9

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v5, "i"

    const/4 v8, 0x2

    aput-object v5, v1, v8

    const/4 v5, 0x3

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v7, v10, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v2

    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v5, "replyBuyMusicByMusicCoin"

    invoke-virtual {v0, v5, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 173
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v12, v1, v9

    aput-object v11, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "syncHeroHomeMusic"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_8

    .line 175
    :cond_7
    const/4 v9, 0x0

    const-string v1, "h"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    move v2, v9

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v2, 0x1

    :goto_7
    const-string v7, "\u795e\u5668\u4f7f\u5c1a\u672a\u83b7\u5f97"

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    .line 176
    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    move v9, v5

    :cond_b
    const-string v2, "\u4e50\u7ae0\u5c1a\u672a\u83b7\u5f97"

    invoke-static {v9, v2}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "hhcm"

    invoke-static {v3, v5, v1, v2}, Lcom/project7/localmanager/LocalHomeEngine;->pairSet([BLjava/lang/String;ILjava/lang/Object;)[B

    move-result-object v3

    .line 178
    :goto_8
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 179
    return-void
.end method

.method private static pairList(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static quantities([BLjava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    if-gt p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const-string v3, "\u5bb6\u5177\u5217\u8868\u8fc7\u5927"

    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 101
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    move v3, v2

    :goto_2
    const-string v4, "\u5bb6\u5177\u6570\u91cf\u683c\u5f0f\u65e0\u6548"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    .line 102
    const-string v3, "0"

    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v4, "1"

    invoke-static {p1, v4}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result p1

    if-lez v3, :cond_2

    if-lez p1, :cond_2

    move v4, v1

    goto :goto_3

    :cond_2
    move v4, v2

    :goto_3
    const-string v5, "\u5bb6\u5177\u6570\u91cf\u65e0\u6548"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    return-object v0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "fnd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, p1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->score([BLcom/project7/localmanager/LocalFeatureCatalog;)I

    move-result p1

    const-string v2, "sc"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 47
    if-ne p1, v3, :cond_0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 48
    :cond_1
    if-eqz p2, :cond_2

    if-eq p1, v3, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->baseInfo([B)[B

    move-result-object v0

    aput-object v0, p1, p2

    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "syncRoomBaseInfo"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 49
    :cond_2
    return-void
.end method

.method static require(ZLjava/lang/String;)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    return-void
.end method

.method static score([BLcom/project7/localmanager/LocalFeatureCatalog;)I
    .locals 12

    .line 15
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeEngine;->inventoryCounts([B)Ljava/util/Map;

    move-result-object p0

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    iget-object v1, p1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "score"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "F:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 18
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const-string v7, "itemid"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p0, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 19
    const-string v8, "star"

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "C"

    invoke-static {p1, v9, v8}, Lcom/project7/localmanager/LocalHomeEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    const-string v9, "count"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v8

    .line 20
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v9, "S"

    invoke-static {p1, v9, v2}, Lcom/project7/localmanager/LocalHomeEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 21
    if-lez v7, :cond_0

    if-lez v8, :cond_0

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 23
    :cond_2
    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v9, Lcom/project7/localmanager/LocalHomeCollectionEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalHomeCollectionEngine$$ExternalSyntheticLambda0;

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/PriorityQueue;

    .line 25
    nop

    :goto_2
    add-int v9, v5, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-gt v4, v9, :cond_8

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_3

    move-object v9, v3

    .line 27
    :cond_3
    if-nez v9, :cond_4

    goto :goto_3

    .line 28
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_6

    :cond_5
    move-object v3, v9

    .line 29
    :cond_6
    invoke-virtual {v6, v9}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->size()I

    move-result v9

    if-le v9, v8, :cond_7

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 25
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 17
    :cond_8
    goto/16 :goto_0

    .line 32
    :cond_9
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v5

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    goto :goto_4

    .line 33
    :cond_b
    iget-object p1, p1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "TH:"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string v6, "items"

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    .line 35
    xor-int/2addr v6, v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p0, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gtz v7, :cond_c

    move v6, v5

    .line 36
    :cond_d
    if-eqz v6, :cond_e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    move v1, v0

    .line 33
    :cond_e
    goto :goto_5

    .line 38
    :cond_f
    return v1
.end method

.method private static sell(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)V
    .locals 19

    .line 111
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    const-string v10, "sellFurnitureByID"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v11, "a"

    const-string v12, "id"

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 115
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    if-eqz v1, :cond_1

    invoke-static {v8, v12}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-lez v1, :cond_0

    if-lez v3, :cond_0

    move v4, v13

    goto :goto_0

    :cond_0
    move v4, v14

    :goto_0
    const-string v5, "\u5bb6\u5177\u6570\u91cf\u65e0\u6548"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v0

    goto :goto_2

    .line 114
    :cond_1
    const-string v0, "uul"

    invoke-static {v8, v0}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->quantities([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "ul"

    invoke-static {v8, v0}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->quantities([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v9, v5, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v15, v0

    .line 117
    :goto_2
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v13

    const-string v1, "\u6ca1\u6709\u9009\u62e9\u5bb6\u5177"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 118
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->furnitureByItem(Lcom/project7/localmanager/LocalFeatureCatalog;I)[B

    move-result-object v3

    const-string v14, "sell_list"

    invoke-static {v3, v14}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v13, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v13, v0}, Lcom/project7/localmanager/LocalHomeEngine;->count([BI)I

    move-result v0

    if-gt v14, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v17, v0

    :cond_4
    const/4 v0, 0x0

    :goto_4
    const-string v13, "\u5bb6\u5177\u4e0d\u53ef\u51fa\u552e\u6216\u6570\u91cf\u4e0d\u8db3"

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    .line 121
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 122
    const-string v13, "0"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v13

    const-string v14, "1"

    invoke-static {v3, v14}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v3, v14}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v3

    if-lez v13, :cond_5

    if-lez v3, :cond_5

    const/4 v14, 0x1

    goto :goto_6

    :cond_5
    const/4 v14, 0x0

    :goto_6
    move-object/from16 v16, v0

    const-string v0, "\u5bb6\u5177\u51fa\u552e\u4ef7\u683c\u65e0\u6548"

    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    .line 123
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-object/from16 v0, v16

    goto :goto_5

    .line 125
    :cond_6
    move-object/from16 v0, v17

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto/16 :goto_3

    .line 126
    :cond_7
    move-object/from16 v4, p1

    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v13, "q7HomeSold"

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 127
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v14, v0

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v6, v2, v3}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    invoke-static {v14, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v14

    .line 130
    goto :goto_7

    .line 131
    :cond_8
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x1

    const-string v2, "item"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v4, v17

    move-object/from16 v17, v5

    move/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    move-object/from16 v4, p1

    move-object/from16 v5, v17

    goto :goto_8

    .line 132
    :cond_9
    move-object/from16 v17, v5

    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v13, v14}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static/range {p0 .. p1}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->markLacking(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;)V

    .line 133
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const-string v4, "r"

    const/4 v5, 0x2

    const/4 v7, 0x6

    if-eqz v0, :cond_b

    .line 134
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_a

    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_9
    const-string v9, "\u6b64\u5bb6\u5177\u9700\u8981\u4f7f\u7528\u6279\u91cf\u51fa\u552e"

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->require(ZLjava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v7, v9

    invoke-static {v8, v12}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    aput-object v4, v7, v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v3

    aput-object v11, v7, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "sellFurnitureByIDReply"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 136
    goto :goto_a

    :cond_b
    new-array v0, v7, [Ljava/lang/Object;

    const-string v7, "i"

    const/4 v8, 0x0

    aput-object v7, v0, v8

    invoke-static {v9}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v0, v8

    aput-object v4, v0, v5

    invoke-static/range {v17 .. v17}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "u"

    aput-object v3, v0, v2

    invoke-static {v15}, Lcom/project7/localmanager/LocalHomeCollectionEngine;->pairList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "sellFurnitureByItemListReply"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 137
    :goto_a
    return-void
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
