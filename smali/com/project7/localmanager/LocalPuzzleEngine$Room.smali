.class final Lcom/project7/localmanager/LocalPuzzleEngine$Room;
.super Ljava/lang/Object;
.source "LocalPuzzleEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalPuzzleEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Room"
.end annotation


# instance fields
.field final clear:I

.field final clues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final event:I

.field final id:I

.field final incomplete:I

.field final routes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 6

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->event:I

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->id:I

    const/4 v1, 0x3

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clear:I

    .line 13
    const/4 v2, 0x4

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->incomplete:I

    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x5

    aget-object v3, p1, v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->routes:Ljava/util/Set;

    .line 14
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clues:Ljava/util/Set;

    const/4 v2, 0x6

    aget-object p1, p1, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    iget-object v5, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clues:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget p1, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->event:I

    if-lez p1, :cond_1

    iget p1, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->id:I

    if-lt p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    iget p1, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clear:I

    if-lez p1, :cond_1

    iget v0, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->incomplete:I

    if-lez v0, :cond_1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->clues:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 17
    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid reviewed room"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
