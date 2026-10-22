.class final Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;
.super Ljava/lang/Object;
.source "LocalGatewayServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalGatewayServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CombatReplies"
.end annotation


# instance fields
.field account:Ljava/lang/String;

.field avatar:[B

.field bytes:I

.field connection:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field latestAccepted:Ljava/lang/Integer;

.field final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalGatewayServer$CombatReply;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->values:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/project7/localmanager/LocalGatewayServer$1;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;-><init>()V

    return-void
.end method


# virtual methods
.method bind(Ljava/util/Set;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->connection:Ljava/util/Set;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->account:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->avatar:[B

    .line 127
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->connection:Ljava/util/Set;

    iput-object p2, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->account:Ljava/lang/String;

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->avatar:[B

    .line 129
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->latestAccepted:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->bytes:I

    iget-object p1, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->values:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 130
    return-void
.end method

.method put(ILcom/project7/localmanager/LocalGatewayServer$CombatReply;)V
    .locals 3

    .line 132
    iget v0, p2, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->type:I

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->latestAccepted:Ljava/lang/Integer;

    .line 134
    :cond_0
    invoke-virtual {p2}, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->size()I

    move-result v0

    const/high16 v1, 0x400000

    if-le v0, v1, :cond_1

    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->values:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->bytes:I

    invoke-virtual {p2}, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->bytes:I

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->values:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_2

    iget p1, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->bytes:I

    if-le p1, v1, :cond_5

    .line 137
    :cond_2
    const/4 p1, 0x0

    .line 138
    iget-object p2, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->values:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->latestAccepted:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object p1, v0

    .line 139
    :cond_4
    if-nez p1, :cond_6

    .line 142
    :cond_5
    return-void

    .line 140
    :cond_6
    iget p2, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->bytes:I

    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;

    invoke-virtual {p1}, Lcom/project7/localmanager/LocalGatewayServer$CombatReply;->size()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/project7/localmanager/LocalGatewayServer$CombatReplies;->bytes:I

    .line 141
    goto :goto_0
.end method
