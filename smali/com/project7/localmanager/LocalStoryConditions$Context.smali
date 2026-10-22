.class final Lcom/project7/localmanager/LocalStoryConditions$Context;
.super Ljava/lang/Object;
.source "LocalStoryConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalStoryConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Context"
.end annotation


# instance fields
.field final clientOperation:I

.field final patrolArea:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/project7/localmanager/LocalStoryConditions$Context;->patrolArea:I

    iput p2, p0, Lcom/project7/localmanager/LocalStoryConditions$Context;->clientOperation:I

    .line 20
    return-void
.end method


# virtual methods
.method isPatrol()Z
    .locals 3

    .line 21
    iget v0, p0, Lcom/project7/localmanager/LocalStoryConditions$Context;->clientOperation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/project7/localmanager/LocalStoryConditions$Context;->patrolArea:I

    if-lt v0, v1, :cond_0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
