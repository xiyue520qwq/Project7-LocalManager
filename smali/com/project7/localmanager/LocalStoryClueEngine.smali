.class final Lcom/project7/localmanager/LocalStoryClueEngine;
.super Ljava/lang/Object;
.source "LocalStoryClueEngine.java"


# static fields
.field static final FIELDS:[[Ljava/lang/String;

.field static final METHODS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 7
    const-string v0, "readClue"

    const-string v1, "readClueWithDetail"

    const-string v2, "readWuluClue"

    const-string v3, "readWuluClueWithDetail"

    const-string v4, "readJiaohuiClue"

    const-string v5, "readJiaohuiClueWithDetail"

    const-string v6, "readAlanClue"

    const-string v7, "readAlanClueWithDetail"

    const-string v8, "readDaerweilaClue"

    const-string v9, "readdaerweilaClueWithDetail"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalStoryClueEngine;->METHODS:[Ljava/lang/String;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "g"

    const-string v2, "cl"

    const-string v3, "cr"

    const-string v4, "dr"

    const-string v5, "fc"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "w"

    const-string v2, "wlc"

    const-string v3, "wlr"

    const-string v4, "wldr"

    const-string v5, ""

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "j"

    const-string v2, "jhc"

    const-string v3, "jhcr"

    const-string v4, "jhdr"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "a"

    const-string v2, "alc"

    const-string v3, "alr"

    const-string v4, "aldr"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "d"

    const-string v2, "dwc"

    const-string v3, "dwcr"

    const-string v4, "dwdr"

    const-string v5, "dwfc"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/project7/localmanager/LocalStoryClueEngine;->FIELDS:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 14
    sget-object v0, Lcom/project7/localmanager/LocalStoryClueEngine;->METHODS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static pairs(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
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

    .line 95
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_0
    return-object v0
.end method

.method static read([BLcom/project7/localmanager/LocalEventCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 12

    .line 39
    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v0, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 40
    const-string v1, "Wulu"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "w"

    goto :goto_0

    :cond_0
    const-string v1, "Jiaohui"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "j"

    goto :goto_0

    .line 41
    :cond_1
    const-string v1, "Alan"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "a"

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "daerweila"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "d"

    goto :goto_0

    :cond_3
    const-string v1, "g"

    .line 42
    :goto_0
    sget-object v2, Lcom/project7/localmanager/LocalStoryClueEngine;->FIELDS:[[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_8

    aget-object v6, v2, v5

    aget-object v7, v6, v4

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 43
    invoke-static {p0}, Lcom/project7/localmanager/LocalStoryClueEngine;->story([B)[B

    move-result-object v7

    .line 44
    const-string v8, "WithDetail"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    .line 45
    const-string v8, "c"

    invoke-static {p3, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    .line 47
    iget-object v10, p1, Lcom/project7/localmanager/LocalEventCatalog;->clueFamilies:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    aget-object v10, v6, v9

    .line 48
    invoke-static {v7, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x4

    aget-object v11, v6, v10

    .line 49
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    aget-object v10, v6, v10

    invoke-static {v7, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    .line 50
    :cond_4
    const/4 v10, 0x3

    aget-object v11, v6, v10

    invoke-static {v7, v11}, Lcom/project7/localmanager/LocalStoryClueEngine;->readFlags([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 51
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v11, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    aget-object v6, v6, v10

    invoke-static {v11}, Lcom/project7/localmanager/LocalStoryClueEngine;->pairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v6

    .line 53
    goto :goto_3

    .line 49
    :cond_5
    :goto_2
    return-object v0

    .line 53
    :cond_6
    const/4 v8, 0x2

    aget-object v6, v6, v8

    invoke-static {v7, v6, v9}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v6

    .line 54
    :goto_3
    const-string v7, "std"

    invoke-static {p0, v7, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v6

    iput-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 55
    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalStoryClueEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    .line 42
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 57
    :cond_8
    return-object v0
.end method

.method private static readFlags([BLjava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 82
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 84
    if-eqz v2, :cond_0

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 85
    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "1"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 86
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v1

    :goto_1
    nop

    .line 88
    :goto_2
    goto :goto_0

    .line 89
    :cond_1
    return-object v0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 18

    .line 18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalStoryClueEngine;->story([B)[B

    move-result-object v2

    .line 19
    sget-object v3, Lcom/project7/localmanager/LocalStoryClueEngine;->FIELDS:[[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_8

    aget-object v7, v3, v6

    .line 20
    new-instance v8, Ljava/util/LinkedHashSet;

    const/4 v9, 0x1

    aget-object v10, v7, v9

    invoke-static {v2, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 21
    new-instance v10, Ljava/util/LinkedHashSet;

    const/4 v11, 0x4

    aget-object v12, v7, v11

    invoke-static {v2, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 22
    nop

    .line 23
    move-object/from16 v12, p2

    iget-object v13, v12, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v5

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 24
    iget-object v11, v1, Lcom/project7/localmanager/LocalEventCatalog;->clueEffects:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 25
    if-nez v11, :cond_0

    const/4 v11, 0x4

    goto :goto_1

    .line 26
    :cond_0
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget-object v9, v7, v5

    iget-object v5, v1, Lcom/project7/localmanager/LocalEventCatalog;->clueFamilies:Ljava/util/Map;

    move-object/from16 v17, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v14

    move v14, v3

    :cond_1
    move-object/from16 v3, v17

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v17, v3

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x0

    aget-object v11, v7, v9

    iget-object v9, v1, Lcom/project7/localmanager/LocalEventCatalog;->clueFamilies:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v14, v5

    goto :goto_3

    .line 28
    :cond_4
    move-object/from16 v3, v17

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x4

    goto/16 :goto_1

    .line 29
    :cond_5
    move-object/from16 v17, v3

    if-nez v14, :cond_6

    const/4 v5, 0x0

    goto :goto_4

    .line 30
    :cond_6
    const/4 v3, 0x1

    aget-object v3, v7, v3

    invoke-static {v2, v3, v8}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v2

    .line 31
    const/4 v3, 0x4

    aget-object v5, v7, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    aget-object v3, v7, v3

    invoke-static {v2, v3, v10}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v2

    .line 32
    :cond_7
    const/4 v3, 0x2

    aget-object v3, v7, v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 33
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "std"

    invoke-static {v3, v8, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 34
    aget-object v3, v7, v5

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalStoryClueEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    .line 19
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v17

    goto/16 :goto_0

    .line 36
    :cond_8
    return-void
.end method

.method static reset([B)[B
    .locals 8

    .line 100
    invoke-static {p0}, Lcom/project7/localmanager/LocalStoryClueEngine;->story([B)[B

    move-result-object v0

    .line 101
    sget-object v1, Lcom/project7/localmanager/LocalStoryClueEngine;->FIELDS:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 102
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    .line 103
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v0, v6, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 104
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 105
    const/4 v6, 0x4

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v5, v5, v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    .line 101
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const-string v1, "std"

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static story([B)[B
    .locals 1

    .line 15
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static sync(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V
    .locals 19

    .line 61
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalStoryClueEngine;->story([B)[B

    move-result-object v2

    .line 62
    sget-object v3, Lcom/project7/localmanager/LocalStoryClueEngine;->FIELDS:[[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v7, v3, v6

    aget-object v8, v7, v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 63
    const/4 v8, 0x3

    aget-object v9, v7, v8

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalStoryClueEngine;->readFlags([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/LocalStoryClueEngine;->pairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v9

    .line 64
    const/4 v10, 0x1

    aget-object v11, v7, v10

    invoke-static {v2, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 65
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v13, 0x2

    aget-object v14, v7, v13

    invoke-static {v2, v14}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 66
    const-string v14, "g"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/16 v15, 0xa

    const/16 v16, 0x7

    const/4 v8, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    if-eqz v14, :cond_0

    new-array v14, v15, [Ljava/lang/Object;

    const-string v15, "cl"

    aput-object v15, v14, v5

    aput-object v11, v14, v10

    const-string v10, "cr"

    aput-object v10, v14, v13

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v14, v11

    const-string v10, "dr"

    aput-object v10, v14, v18

    aput-object v9, v14, v17

    const-string v9, "fc"

    aput-object v9, v14, v8

    aget-object v7, v7, v18

    .line 67
    invoke-static {v2, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v14, v16

    const-string v7, "ie"

    const/16 v8, 0x8

    aput-object v7, v14, v8

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v14, v8

    .line 66
    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    const-string v8, "syncClueInfo"

    invoke-virtual {v0, v8, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 68
    :cond_0
    const-string v14, "w"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const-string v14, "wlc"

    aput-object v14, v7, v5

    aput-object v11, v7, v10

    const-string v10, "wlr"

    aput-object v10, v7, v13

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v7, v11

    const-string v10, "wldr"

    aput-object v10, v7, v18

    aput-object v9, v7, v17

    const-string v9, "wsg"

    aput-object v9, v7, v8

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v16

    .line 68
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    const-string v8, "syncWuluLineData"

    invoke-virtual {v0, v8, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 70
    :cond_1
    const-string v14, "j"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    new-array v7, v8, [Ljava/lang/Object;

    const-string v8, "jhc"

    aput-object v8, v7, v5

    aput-object v11, v7, v10

    const-string v8, "jhcr"

    aput-object v8, v7, v13

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v7, v10

    const-string v8, "jhdr"

    aput-object v8, v7, v18

    aput-object v9, v7, v17

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    const-string v8, "syncJiaohuiLineData"

    invoke-virtual {v0, v8, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 71
    :cond_2
    const-string v14, "a"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    const-string v14, "alc"

    aput-object v14, v7, v5

    aput-object v11, v7, v10

    const-string v11, "alr"

    aput-object v11, v7, v13

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v7, v12

    const-string v11, "aldr"

    aput-object v11, v7, v18

    aput-object v9, v7, v17

    const-string v9, "alsg"

    aput-object v9, v7, v8

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 72
    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v16

    const-string v8, "alxl"

    const/16 v9, 0x8

    aput-object v8, v7, v9

    .line 73
    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x9

    aput-object v8, v7, v9

    const-string v8, "u"

    aput-object v8, v7, v15

    const/16 v8, 0xb

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    .line 71
    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    const-string v8, "syncAlanLineData"

    invoke-virtual {v0, v8, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_1

    .line 74
    :cond_3
    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "dwc"

    aput-object v15, v14, v5

    aput-object v11, v14, v10

    const-string v10, "dwcr"

    aput-object v10, v14, v13

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v14, v11

    const-string v10, "dwdr"

    aput-object v10, v14, v18

    aput-object v9, v14, v17

    const-string v9, "dwfc"

    aput-object v9, v14, v8

    aget-object v7, v7, v18

    .line 75
    invoke-static {v2, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v14, v16

    .line 74
    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    const-string v8, "syncDaerweilaClueData"

    invoke-virtual {v0, v8, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 62
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 77
    :cond_5
    return-void
.end method
