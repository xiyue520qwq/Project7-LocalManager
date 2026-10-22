.class final Lcom/project7/localmanager/LocalResourceEngine$Result;
.super Ljava/lang/Object;
.source "LocalResourceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalResourceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field final heroRewards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field inventoryDeliveryId:Ljava/lang/String;

.field final itemRewards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field profile:[B

.field final replies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/project7/localmanager/LocalResourceEngine$Reply;",
            ">;"
        }
    .end annotation
.end field

.field final treasureRewards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->heroRewards:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->treasureRewards:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;[B)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    new-instance v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    invoke-direct {v1, p1, p2}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method reward()[B
    .locals 3

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "item"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "hero"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->heroRewards:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "treasure"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->treasureRewards:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
