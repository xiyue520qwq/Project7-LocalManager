.class final Lcom/project7/localmanager/LocalResourceCatalog$Hero;
.super Ljava/lang/Object;
.source "LocalResourceCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalResourceCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Hero"
.end annotation


# instance fields
.field final duplicate:I

.field final files:I

.field final id:I

.field final name:Ljava/lang/String;

.field final rank:I


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->id:I

    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->name:Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->files:I

    .line 48
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->rank:I

    const/4 v0, 0x5

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->duplicate:I

    return-void
.end method
