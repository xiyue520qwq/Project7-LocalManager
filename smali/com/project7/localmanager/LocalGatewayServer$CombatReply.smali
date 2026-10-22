.class final Lcom/project7/localmanager/LocalGatewayServer$CombatReply;
.super Ljava/lang/Object;
.source "LocalGatewayServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalGatewayServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CombatReply"
.end annotation


# instance fields
.field acceptedAtPreparation:Ljava/lang/Integer;

.field final controls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/project7/localmanager/LocalResourceEngine$Reply;",
            ">;"
        }
    .end annotation
.end field

.field final cores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/project7/localmanager/LocalResourceEngine$Reply;",
            ">;"
        }
    .end annotation
.end field

.field day:I

.field delivered:Z

.field fight:Ljava/lang/String;

.field owners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field parameters:[B

.field profileHash:[B

.field requestHash:[B

.field scene:I

.field type:I

.field week:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->owners:Ljava/util/Set;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->controls:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->cores:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/project7/localmanager/LocalGatewayServer$1;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;-><init>()V

    return-void
.end method


# virtual methods
.method size()I
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->parameters:[B

    array-length v0, v0

    .line 113
    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->controls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    array-length v2, v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->cores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v2, v2, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    array-length v2, v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 115
    :cond_1
    return v0
.end method
