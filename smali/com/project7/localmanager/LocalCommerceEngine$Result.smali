.class final Lcom/project7/localmanager/LocalCommerceEngine$Result;
.super Ljava/lang/Object;
.source "LocalCommerceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalCommerceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field profile:[B

.field final replies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    .line 419
    iput-object p1, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;[B)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
