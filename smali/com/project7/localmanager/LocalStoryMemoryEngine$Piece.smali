.class final Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;
.super Ljava/lang/Object;
.source "LocalStoryMemoryEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalStoryMemoryEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Piece"
.end annotation


# instance fields
.field final files:I

.field final hero:I

.field final index:I

.field final item:I

.field final rank:I


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->item:I

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->hero:I

    .line 11
    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->index:I

    const/4 v4, 0x4

    aget-object v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->files:I

    const/4 v6, 0x5

    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->rank:I

    .line 12
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    if-lt v3, v0, :cond_0

    if-gt v3, v5, :cond_0

    const/16 v1, 0x1f

    if-gt v5, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-gt p1, v4, :cond_0

    .line 14
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid original memory definition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
