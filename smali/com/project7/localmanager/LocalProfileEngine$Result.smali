.class final Lcom/project7/localmanager/LocalProfileEngine$Result;
.super Ljava/lang/Object;
.source "LocalProfileEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalProfileEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field final callback:Ljava/lang/String;

.field final extras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/project7/localmanager/LocalResourceEngine$Reply;",
            ">;"
        }
    .end annotation
.end field

.field final profile:[B

.field final reply:[B


# direct methods
.method constructor <init>([BLjava/lang/String;[B)V
    .locals 1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalProfileEngine$Result;->extras:Ljava/util/List;

    .line 336
    iput-object p1, p0, Lcom/project7/localmanager/LocalProfileEngine$Result;->profile:[B

    .line 337
    iput-object p2, p0, Lcom/project7/localmanager/LocalProfileEngine$Result;->callback:Ljava/lang/String;

    .line 338
    iput-object p3, p0, Lcom/project7/localmanager/LocalProfileEngine$Result;->reply:[B

    .line 339
    return-void
.end method
