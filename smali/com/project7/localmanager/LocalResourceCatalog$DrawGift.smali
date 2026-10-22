.class final Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;
.super Ljava/lang/Object;
.source "LocalResourceCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalResourceCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DrawGift"
.end annotation


# instance fields
.field final coin:I

.field final count:I

.field final interval:I


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;->interval:I

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;->count:I

    const/4 v2, 0x4

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/project7/localmanager/LocalResourceCatalog$DrawGift;->coin:I

    .line 38
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    .line 39
    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid draw gift"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
