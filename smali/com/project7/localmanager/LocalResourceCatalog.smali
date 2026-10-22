.class final Lcom/project7/localmanager/LocalResourceCatalog;
.super Ljava/lang/Object;
.source "LocalResourceCatalog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalResourceCatalog$Skin;,
        Lcom/project7/localmanager/LocalResourceCatalog$Treasure;,
        Lcom/project7/localmanager/LocalResourceCatalog$Item;,
        Lcom/project7/localmanager/LocalResourceCatalog$Hero;,
        Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;,
        Lcom/project7/localmanager/LocalResourceCatalog$Drop;,
        Lcom/project7/localmanager/LocalResourceCatalog$Pool;
    }
.end annotation


# instance fields
.field final chooseFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final drawGifts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;",
            ">;"
        }
    .end annotation
.end field

.field final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/project7/localmanager/LocalResourceCatalog$Item;",
            ">;"
        }
    .end annotation
.end field

.field final heroes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalResourceCatalog$Hero;",
            ">;"
        }
    .end annotation
.end field

.field final items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalResourceCatalog$Item;",
            ">;"
        }
    .end annotation
.end field

.field final memoryExchange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final pools:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalResourceCatalog$Pool;",
            ">;"
        }
    .end annotation
.end field

.field final skins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalResourceCatalog$Skin;",
            ">;"
        }
    .end annotation
.end field

.field final treasures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/project7/localmanager/LocalResourceCatalog$Treasure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->pools:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->drawGifts:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->memoryExchange:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->chooseFragments:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->skins:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->items:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->treasures:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->fragments:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 90
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    if-eqz p1, :cond_d

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    const-string v2, "\t"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/4 v2, 0x0

    :try_start_1
    aget-object v3, p1, v2

    const-string v4, "H"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x6

    if-eqz v3, :cond_2

    array-length v3, p1

    if-ne v3, v4, :cond_2

    new-instance v1, Lcom/project7/localmanager/LocalResourceCatalog$Hero;

    invoke-direct {v1, p1}, Lcom/project7/localmanager/LocalResourceCatalog$Hero;-><init>([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    iget v2, v1, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 95
    :cond_2
    aget-object v3, p1, v2

    const-string v5, "S"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x5

    if-eqz v3, :cond_3

    array-length v3, p1

    if-ne v3, v5, :cond_3

    new-instance v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;

    invoke-direct {v1, p1}, Lcom/project7/localmanager/LocalResourceCatalog$Skin;-><init>([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceCatalog;->skins:Ljava/util/Map;

    iget v2, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 96
    :cond_3
    aget-object v3, p1, v2

    const-string v6, "I"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, p1

    if-ne v3, v4, :cond_4

    new-instance v1, Lcom/project7/localmanager/LocalResourceCatalog$Item;

    invoke-direct {v1, p1}, Lcom/project7/localmanager/LocalResourceCatalog$Item;-><init>([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceCatalog;->items:Ljava/util/Map;

    iget v2, v1, Lcom/project7/localmanager/LocalResourceCatalog$Item;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 97
    :cond_4
    aget-object v3, p1, v2

    const-string v6, "T"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, p1

    if-ne v3, v5, :cond_5

    .line 98
    new-instance v1, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;

    invoke-direct {v1, p1}, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;-><init>([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceCatalog;->treasures:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;->item:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;->quality:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    goto/16 :goto_2

    :cond_5
    aget-object v3, p1, v2

    const-string v6, "P"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    array-length v3, p1

    if-ne v3, v4, :cond_6

    .line 100
    new-instance v1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;

    invoke-direct {v1, p1}, Lcom/project7/localmanager/LocalResourceCatalog$Pool;-><init>([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceCatalog;->pools:Ljava/util/Map;

    iget v2, v1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    goto/16 :goto_2

    :cond_6
    aget-object v3, p1, v2

    const-string v4, "B"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    array-length v3, p1

    if-ne v3, v5, :cond_7

    .line 102
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceCatalog;->drawGifts:Ljava/util/Map;

    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;

    invoke-direct {v3, p1}, Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;-><init>([Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 103
    :cond_7
    aget-object v3, p1, v2

    const-string v5, "X"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_9

    array-length v3, p1

    if-ne v3, v1, :cond_9

    .line 104
    aget-object v1, p1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 105
    if-lez v1, :cond_8

    .line 106
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceCatalog;->memoryExchange:Ljava/util/Map;

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto :goto_2

    .line 105
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid exchange rate"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_9
    aget-object v3, p1, v2

    const-string v6, "C"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    array-length v3, p1

    if-ne v3, v1, :cond_b

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    aget-object v3, p1, v5

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    :goto_1
    if-ge v2, v5, :cond_a

    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    :cond_a
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceCatalog;->chooseFragments:Ljava/util/Map;

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    goto :goto_2

    :cond_b
    aget-object v1, p1, v2

    const-string v2, "D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    array-length v1, p1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c

    .line 112
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceCatalog;->pools:Ljava/util/Map;

    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;

    iget-object v1, v1, Lcom/project7/localmanager/LocalResourceCatalog$Pool;->drops:Ljava/util/List;

    new-instance v2, Lcom/project7/localmanager/LocalResourceCatalog$Drop;

    invoke-direct {v2, p1}, Lcom/project7/localmanager/LocalResourceCatalog$Drop;-><init>([Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_2
    nop

    .line 115
    goto/16 :goto_0

    .line 113
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid resource row"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :catch_0
    move-exception p1

    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid resource catalog"

    invoke-direct {v1, v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :cond_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 117
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceCatalog;->items:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceCatalog$Item;

    iget v2, v0, Lcom/project7/localmanager/LocalResourceCatalog$Item;->type:I

    if-ne v2, v1, :cond_e

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    iget v3, v0, Lcom/project7/localmanager/LocalResourceCatalog$Item;->hero:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceCatalog;->fragments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 118
    :cond_f
    return-void

    .line 88
    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
.end method
