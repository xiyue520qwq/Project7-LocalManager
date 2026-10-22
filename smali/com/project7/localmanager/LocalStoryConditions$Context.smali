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

.field final heroes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final patrolArea:I

.field final work:Lcom/project7/localmanager/LocalPatrolCatalog;


# direct methods
.method constructor <init>(II)V
    .locals 2

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/project7/localmanager/LocalStoryConditions$Context;-><init>(IILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)V

    .line 22
    return-void
.end method

.method constructor <init>(IILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/project7/localmanager/LocalPatrolCatalog;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/project7/localmanager/LocalStoryConditions$Context;->patrolArea:I

    iput p2, p0, Lcom/project7/localmanager/LocalStoryConditions$Context;->clientOperation:I

    .line 25
    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/project7/localmanager/LocalStoryConditions$Context;->heroes:Ljava/util/List;

    .line 26
    iput-object p4, p0, Lcom/project7/localmanager/LocalStoryConditions$Context;->work:Lcom/project7/localmanager/LocalPatrolCatalog;

    .line 27
    return-void
.end method


# virtual methods
.method isPatrol()Z
    .locals 3

    .line 28
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
