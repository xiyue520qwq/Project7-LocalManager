.class final Lcom/project7/localmanager/LocalEventCatalog$Effect;
.super Ljava/lang/Object;
.source "LocalEventCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalEventCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Effect"
.end annotation


# instance fields
.field final cores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final noteIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final privateMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final socialMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 8

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Effect;->cores:Ljava/util/Map;

    .line 391
    const/4 v0, 0x2

    aget-object v0, p1, v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 392
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 394
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventCatalog$Effect;->cores:Ljava/util/Map;

    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalEventCatalog;->access$000(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Effect;->privateMessages:Ljava/util/Set;

    .line 397
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalEventCatalog;->access$000(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog$Effect;->socialMessages:Ljava/util/Set;

    .line 398
    const/4 v0, 0x5

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/project7/localmanager/LocalEventCatalog;->access$000(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalEventCatalog$Effect;->noteIds:Ljava/util/Set;

    .line 399
    return-void
.end method
