.class final Lcom/project7/localmanager/LocalGatewayServer$ClientSession;
.super Ljava/lang/Object;
.source "LocalGatewayServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalGatewayServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientSession"
.end annotation


# instance fields
.field volatile cancelled:Z

.field final client:Ljava/net/Socket;

.field final done:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->done:Ljava/util/concurrent/CountDownLatch;

    .line 161
    iput-object p1, p0, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->client:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->cancelled:Z

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$ClientSession;->client:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 165
    :goto_0
    return-void
.end method
