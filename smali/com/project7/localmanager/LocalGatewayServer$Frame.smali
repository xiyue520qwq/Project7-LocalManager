.class final Lcom/project7/localmanager/LocalGatewayServer$Frame;
.super Ljava/lang/Object;
.source "LocalGatewayServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalGatewayServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Frame"
.end annotation


# instance fields
.field final method:I

.field final payload:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .line 2418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2419
    iput p1, p0, Lcom/project7/localmanager/LocalGatewayServer$Frame;->method:I

    .line 2420
    iput-object p2, p0, Lcom/project7/localmanager/LocalGatewayServer$Frame;->payload:[B

    .line 2421
    return-void
.end method
