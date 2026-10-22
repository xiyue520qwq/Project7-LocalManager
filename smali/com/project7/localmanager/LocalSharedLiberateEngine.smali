.class final Lcom/project7/localmanager/LocalSharedLiberateEngine;
.super Ljava/lang/Object;
.source "LocalSharedLiberateEngine.java"


# static fields
.field static final FIELDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    const-string v0, "ls"

    const-string v1, "lh"

    const-string v2, "la"

    const-string v3, "ld"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalSharedLiberateEngine;->FIELDS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquired(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;)V
    .locals 5

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 17
    const-string v1, "heromgr"

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    const-string v2, "hrs"

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "0"

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 18
    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 20
    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;IZ)V

    return-void

    .line 21
    :cond_2
    return-void
.end method

.method static normalize([BLcom/project7/localmanager/LocalFeatureCatalog;)[B
    .locals 1

    .line 9
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->normalize([BLcom/project7/localmanager/LocalFeatureCatalog;I)[B

    move-result-object p0

    return-object p0
.end method

.method static normalize([BLcom/project7/localmanager/LocalFeatureCatalog;I)[B
    .locals 1

    .line 12
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 13
    const/4 p0, 0x0

    invoke-static {v0, p1, p2, p0}, Lcom/project7/localmanager/LocalSharedLiberateEngine;->reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;IZ)V

    iget-object p0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    return-object p0
.end method

.method static reconcile(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;IZ)V
    .locals 16

    .line 23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v4, Ljava/util/TreeSet;

    iget-object v5, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v9, "LS:"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 25
    const-string v9, "liberate_share"

    if-eqz v2, :cond_1

    iget-object v10, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v10, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x4

    new-array v12, v11, [I

    .line 27
    iget-object v13, v1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 28
    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14, v13}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_1

    .line 29
    :cond_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14, v13}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v13

    .line 30
    const/4 v14, 0x0

    :goto_2
    sget-object v15, Lcom/project7/localmanager/LocalSharedLiberateEngine;->FIELDS:[Ljava/lang/String;

    array-length v7, v15

    if-ge v14, v7, :cond_7

    .line 31
    aget-object v7, v15, v14

    invoke-static {v13, v7}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 32
    if-nez v7, :cond_3

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    aget-object v15, v15, v14

    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v9, 0x0

    .line 33
    :cond_3
    if-nez v7, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 34
    :goto_3
    if-ltz v7, :cond_5

    if-nez v14, :cond_6

    if-le v7, v11, :cond_6

    :cond_5
    const/4 v9, 0x0

    .line 35
    :cond_6
    aget v8, v12, v14

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v12, v14

    .line 30
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 37
    :cond_7
    goto :goto_1

    .line 38
    :cond_8
    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v6, :cond_9

    goto/16 :goto_0

    .line 39
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 40
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v7}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v8

    .line 41
    move-object v10, v8

    const/4 v9, 0x0

    :goto_5
    sget-object v11, Lcom/project7/localmanager/LocalSharedLiberateEngine;->FIELDS:[Ljava/lang/String;

    array-length v13, v11

    if-ge v9, v13, :cond_b

    .line 42
    aget-object v13, v11, v9

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v13

    aget v14, v12, v9

    if-eq v13, v14, :cond_a

    aget-object v11, v11, v9

    aget v13, v12, v9

    invoke-static {v10, v11, v13}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v10

    .line 41
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 43
    :cond_b
    invoke-static {v8, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_c

    .line 44
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v7, v10}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v8

    iput-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 45
    if-eq v7, v2, :cond_c

    new-array v8, v6, [Ljava/io/Serializable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    aput-object v10, v8, v7

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_c
    goto :goto_4

    .line 24
    :cond_d
    goto/16 :goto_0

    .line 49
    :cond_e
    if-eqz p3, :cond_f

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "d"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "syncHeroesData"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 50
    :cond_f
    return-void
.end method
