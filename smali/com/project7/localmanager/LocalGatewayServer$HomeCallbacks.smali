.class final Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;
.super Ljava/lang/Object;
.source "LocalGatewayServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalGatewayServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HomeCallbacks"
.end annotation


# instance fields
.field account:Ljava/lang/String;

.field owner:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;->values:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/project7/localmanager/LocalGatewayServer$1;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/project7/localmanager/LocalGatewayServer$HomeCallbacks;-><init>()V

    return-void
.end method
