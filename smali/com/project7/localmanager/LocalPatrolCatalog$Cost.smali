.class final Lcom/project7/localmanager/LocalPatrolCatalog$Cost;
.super Ljava/lang/Object;
.source "LocalPatrolCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalPatrolCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cost"
.end annotation


# instance fields
.field final actions:I

.field final fallback:I

.field final fatigue:I

.field final favor:I

.field final insight:[I


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->insight:[I

    .line 43
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->actions:I

    .line 44
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->fatigue:I

    .line 45
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->favor:I

    .line 46
    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->fallback:I

    .line 47
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->insight:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x6

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method requiredInsight(I)I
    .locals 3

    .line 50
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->insight:[I

    array-length v2, v1

    if-gt p1, v2, :cond_0

    sub-int/2addr p1, v0

    aget p1, v1, p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/project7/localmanager/LocalPatrolCatalog$Cost;->fallback:I

    :goto_0
    return p1
.end method
