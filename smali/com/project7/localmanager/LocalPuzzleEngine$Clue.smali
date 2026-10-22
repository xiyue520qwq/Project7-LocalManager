.class final Lcom/project7/localmanager/LocalPuzzleEngine$Clue;
.super Ljava/lang/Object;
.source "LocalPuzzleEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalPuzzleEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Clue"
.end annotation


# instance fields
.field final cg:I

.field final id:I

.field final room:I


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->id:I

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->room:I

    const/4 v3, 0x3

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->cg:I

    .line 23
    if-lez v1, :cond_0

    if-lt v2, v0, :cond_0

    if-gt v2, v3, :cond_0

    if-ltz p1, :cond_0

    .line 24
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid reviewed clue"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
