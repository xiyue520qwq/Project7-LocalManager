.class final Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;
.super Ljava/lang/Object;
.source "LocalStoryItemRewardEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalStoryItemRewardEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reward"
.end annotation


# instance fields
.field final event:I

.field final item:Lcom/project7/localmanager/LocalResourceCatalog$Item;

.field final parent:I

.field final quantity:I

.field final reward:I


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 13

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->event:I

    const/4 v2, 0x2

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->reward:I

    .line 12
    const/4 v4, 0x4

    aget-object v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->quantity:I

    const/4 v6, 0x5

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->parent:I

    .line 13
    new-instance v8, Lcom/project7/localmanager/LocalResourceCatalog$Item;

    const/4 v9, 0x6

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "I"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aget-object v12, p1, v11

    aput-object v12, v10, v0

    const-string v12, ""

    aput-object v12, v10, v2

    aget-object v9, p1, v9

    aput-object v9, v10, v11

    const/4 v9, 0x7

    aget-object p1, p1, v9

    aput-object p1, v10, v4

    const-string p1, "0"

    aput-object p1, v10, v6

    invoke-direct {v8, v10}, Lcom/project7/localmanager/LocalResourceCatalog$Item;-><init>([Ljava/lang/String;)V

    iput-object v8, p0, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->item:Lcom/project7/localmanager/LocalResourceCatalog$Item;

    .line 14
    if-lez v1, :cond_0

    if-lez v3, :cond_0

    if-lez v7, :cond_0

    iget p1, v8, Lcom/project7/localmanager/LocalResourceCatalog$Item;->id:I

    if-lez p1, :cond_0

    if-lt v5, v0, :cond_0

    iget p1, v8, Lcom/project7/localmanager/LocalResourceCatalog$Item;->wrap:I

    if-lt p1, v0, :cond_0

    iget p1, v8, Lcom/project7/localmanager/LocalResourceCatalog$Item;->type:I

    if-ne p1, v2, :cond_0

    .line 17
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid physical story reward definition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
