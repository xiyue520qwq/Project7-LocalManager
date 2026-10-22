.class final Lcom/project7/localmanager/LocalCommerceCatalog$Product;
.super Ljava/lang/Object;
.source "LocalCommerceCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalCommerceCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Product"
.end annotation


# instance fields
.field final costs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field final item:I

.field final level:I

.field final limits:[I

.field final max:I

.field final quantity:I

.field final storyLimit:I

.field final wrap:I


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 9

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->limits:[I

    .line 60
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->costs:Ljava/util/Map;

    .line 63
    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->id:I

    .line 64
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->item:I

    .line 65
    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->quantity:I

    .line 66
    aget-object v2, p1, v0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 67
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 68
    iget-object v7, p0, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->costs:Ljava/util/Map;

    aget-object v8, v6, v4

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    :cond_0
    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->limits:[I

    add-int/lit8 v3, v1, 0x5

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_1
    const/16 v0, 0x9

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->max:I

    .line 72
    const/16 v0, 0xa

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->level:I

    .line 73
    const/16 v0, 0xb

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->wrap:I

    .line 74
    array-length v0, p1

    const/16 v1, 0xc

    if-le v0, v1, :cond_2

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_2
    iput v4, p0, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->storyLimit:I

    .line 75
    return-void
.end method
