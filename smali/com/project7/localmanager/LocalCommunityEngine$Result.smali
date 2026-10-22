.class final Lcom/project7/localmanager/LocalCommunityEngine$Result;
.super Ljava/lang/Object;
.source "LocalCommunityEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalCommunityEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field local:[B

.field final player:Lcom/project7/localmanager/LocalResourceEngine$Result;


# direct methods
.method constructor <init>([B[B)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalCommunityEngine$Result;->player:Lcom/project7/localmanager/LocalResourceEngine$Result;

    iput-object p2, p0, Lcom/project7/localmanager/LocalCommunityEngine$Result;->local:[B

    return-void
.end method
