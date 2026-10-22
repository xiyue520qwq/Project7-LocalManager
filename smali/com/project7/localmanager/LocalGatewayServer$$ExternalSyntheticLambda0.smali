.class public final synthetic Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/LocalGatewayServer;

.field public final synthetic f$1:Lcom/project7/localmanager/LocalGatewayServer$ClientSession;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/LocalGatewayServer;Lcom/project7/localmanager/LocalGatewayServer$ClientSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda0;->f$0:Lcom/project7/localmanager/LocalGatewayServer;

    iput-object p2, p0, Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda0;->f$1:Lcom/project7/localmanager/LocalGatewayServer$ClientSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda0;->f$0:Lcom/project7/localmanager/LocalGatewayServer;

    iget-object v1, p0, Lcom/project7/localmanager/LocalGatewayServer$$ExternalSyntheticLambda0;->f$1:Lcom/project7/localmanager/LocalGatewayServer$ClientSession;

    invoke-virtual {v0, v1}, Lcom/project7/localmanager/LocalGatewayServer;->lambda$run$3$LocalGatewayServer(Lcom/project7/localmanager/LocalGatewayServer$ClientSession;)V

    return-void
.end method
