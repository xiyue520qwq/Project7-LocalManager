.class final Lcom/project7/localmanager/LocalResourceCatalog$Drop;
.super Ljava/lang/Object;
.source "LocalResourceCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalResourceCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Drop"
.end annotation


# instance fields
.field final count:I

.field final design:[B

.field final id:I

.field final kind:Ljava/lang/String;

.field final quality:I

.field final weight:D


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->weight:D

    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->kind:Ljava/lang/String;

    .line 30
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->id:I

    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->count:I

    const/4 v0, 0x6

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->quality:I

    .line 31
    const/4 v0, 0x7

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceCatalog$Drop;->design:[B

    return-void
.end method
