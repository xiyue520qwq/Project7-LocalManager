.class final Lcom/project7/localmanager/LocalEventCatalog$Trigger;
.super Ljava/lang/Object;
.source "LocalEventCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalEventCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Trigger"
.end annotation


# instance fields
.field final areaClicks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final areas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final battles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final clientOps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final date:[I

.field final emergency:Ljava/lang/Integer;

.field final eventId:I

.field final mutex:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final patrolAreas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final preAll:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final preAny:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final predicates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final week:[I


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .locals 10

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->areas:Ljava/util/Map;

    .line 449
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->predicates:Ljava/util/Map;

    .line 452
    iput p1, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 453
    const/4 p1, 0x2

    aget-object v0, p2, p1

    invoke-static {v0}, Lcom/project7/localmanager/LocalEventCatalog;->access$000(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    .line 454
    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalEventCatalog;->access$000(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAny:Ljava/util/Set;

    .line 455
    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalEventCatalog;->access$000(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    .line 456
    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalEventCatalog;->access$000(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->mutex:Ljava/util/Set;

    .line 457
    const/4 v0, 0x6

    aget-object v0, p2, v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, ","

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    aget-object v6, v0, v3

    .line 458
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 459
    goto :goto_2

    .line 461
    :cond_0
    const/4 v7, -0x1

    const-string v8, ":"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 462
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 463
    aget-object v5, v6, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v8, v2

    :goto_1
    if-ge v8, v5, :cond_1

    aget-object v9, v4, v8

    .line 464
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 463
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 466
    :cond_1
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->areas:Ljava/util/Map;

    aget-object v5, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 468
    :cond_2
    const/4 v0, 0x7

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->range(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->date:[I

    .line 469
    const/16 v0, 0x8

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->range(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->week:[I

    .line 470
    const/16 v0, 0x9

    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->emergency:Ljava/lang/Integer;

    .line 471
    array-length v0, p2

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/project7/localmanager/LocalEventCatalog;->access$000(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->patrolAreas:Ljava/util/Set;

    .line 472
    array-length v0, p2

    const/16 v1, 0xb

    if-le v0, v1, :cond_5

    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/project7/localmanager/LocalEventCatalog;->access$000(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_5

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->clientOps:Ljava/util/Set;

    .line 473
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->areaClicks:Ljava/util/Set;

    .line 474
    array-length v1, p2

    const/16 v3, 0xc

    if-le v1, v3, :cond_6

    aget-object v1, p2, v3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 475
    aget-object v1, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 477
    :cond_6
    array-length v0, p2

    const/16 v1, 0xd

    if-le v0, v1, :cond_7

    aget-object v0, p2, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 478
    aget-object p2, p2, v1

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    move v1, v2

    :goto_6
    if-ge v1, v0, :cond_7

    aget-object v3, p2, v1

    .line 479
    const-string v4, "="

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 480
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->predicates:Ljava/util/Map;

    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v3, v3, v5

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 483
    :cond_7
    return-void
.end method

.method private static range(Ljava/lang/String;)[I
    .locals 3

    .line 486
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 487
    new-array p0, v1, [I

    fill-array-data p0, :array_0

    return-object p0

    .line 489
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 490
    new-array v0, v1, [I

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, v0, v1

    return-object v0

    :array_0
    .array-data 4
        -0x80000000
        0x7fffffff
    .end array-data
.end method
