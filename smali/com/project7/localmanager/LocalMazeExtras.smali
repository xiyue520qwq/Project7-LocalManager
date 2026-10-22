.class final Lcom/project7/localmanager/LocalMazeExtras;
.super Ljava/lang/Object;
.source "LocalMazeExtras.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static breakables([B[BLjava/util/Random;)[B
    .locals 4

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "breakables"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x3

    if-lt p1, v1, :cond_1

    .line 28
    invoke-static {v0, p2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 29
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 31
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    .line 32
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "breakable"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->rolls([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->document(Ljava/util/Map;)[B

    move-result-object p0

    return-object p0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7f3a\u5c11\u539f\u7248\u5de1\u903b\u7834\u574f\u7269\u914d\u7f6e"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static collected([B[B)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    const-string v1, "coreGrants"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "breakableGrants"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 46
    const-string v2, "hexinzhixia_kill"

    const-string v3, "breakable_kill"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5de1\u903b\u6389\u843d\u8bb0\u5f55\u683c\u5f0f\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_1
    :goto_1
    invoke-static {p1, v5}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    .line 50
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v6, v5, :cond_2

    .line 52
    goto :goto_0

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5de1\u903b\u6389\u843d\u8bb0\u5f55\u91cd\u590d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_3
    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 55
    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object v7

    .line 56
    const-string v8, "0"

    invoke-static {v6, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "1"

    invoke-static {v6, v9}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 57
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    .line 58
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_6

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xa

    if-gt v5, v6, :cond_6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_6

    .line 60
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v5, v10, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 61
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_5

    const-string v5, "10"

    invoke-static {v7, v5}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    :cond_5
    goto/16 :goto_2

    .line 59
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5de1\u903b\u7279\u6b8a\u654c\u4eba\u51fb\u6740\u8bb0\u5f55\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_7
    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    invoke-static {p1, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 66
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 67
    invoke-static {p1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_a

    .line 68
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v5, v2, :cond_a

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 69
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v2, v5, :cond_a

    .line 71
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 72
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    goto :goto_5

    .line 73
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5de1\u903b\u7834\u574f\u7269\u4e0e\u5165\u573a\u8bb0\u5f55\u4e0d\u7b26"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_9
    goto :goto_4

    .line 70
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5de1\u903b\u7834\u574f\u7269\u8bb0\u5f55\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_b
    return-object v0
.end method

.method static coreRoom([BLjava/util/Random;)Z
    .locals 2

    .line 11
    const-string v0, "box_weight"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMazeExtras;->v([BLjava/lang/String;)I

    move-result v0

    const-string v1, "core_weight"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalMazeExtras;->v([BLjava/lang/String;)I

    move-result p0

    .line 12
    if-ltz v0, :cond_1

    if-ltz p0, :cond_1

    add-int v1, v0, p0

    if-lez v1, :cond_1

    .line 13
    invoke-static {v0, p0}, Ljava/lang/Math;->addExact(II)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7f3a\u5c11\u5de1\u903b\u5956\u52b1\u623f\u95f4\u6743\u91cd"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static cores([B[B)[B
    .locals 4

    .line 17
    const-string v0, "core_count"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalMazeExtras;->v([BLjava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const-string v0, "cube_count"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalMazeExtras;->v([BLjava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 19
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "core"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->rolls([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "cube"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->rolls([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string v0, "10"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->document(Ljava/util/Map;)[B

    move-result-object p0

    return-object p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5de1\u903b\u7279\u6b8a\u654c\u4eba\u914d\u7f6e\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d([BLjava/lang/String;)[B
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static previews([B)[B
    .locals 4

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalMazeExtras;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalMazeBattleEngine;->reward(Ljava/util/List;)[B

    move-result-object v3

    .line 38
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v0}, Lcom/project7/localmanager/LocalMazeBattleEngine;->document(Ljava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalMazeBattleEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
