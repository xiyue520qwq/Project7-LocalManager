.class Lorg/commonmark/node/Nodes$NodeIterator;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/node/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/commonmark/node/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private final end:Lorg/commonmark/node/Node;

.field private node:Lorg/commonmark/node/Node;


# direct methods
.method private constructor <init>(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V
    .locals 0
    .param p1, "first"    # Lorg/commonmark/node/Node;
    .param p2, "end"    # Lorg/commonmark/node/Node;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/commonmark/node/Nodes$NodeIterator;->node:Lorg/commonmark/node/Node;

    .line 45
    iput-object p2, p0, Lorg/commonmark/node/Nodes$NodeIterator;->end:Lorg/commonmark/node/Node;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;Lorg/commonmark/node/Nodes$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/commonmark/node/Node;
    .param p2, "x1"    # Lorg/commonmark/node/Node;
    .param p3, "x2"    # Lorg/commonmark/node/Nodes$1;

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/commonmark/node/Nodes$NodeIterator;-><init>(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/commonmark/node/Nodes$NodeIterator;->node:Lorg/commonmark/node/Node;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/commonmark/node/Nodes$NodeIterator;->end:Lorg/commonmark/node/Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/commonmark/node/Nodes$NodeIterator;->next()Lorg/commonmark/node/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/commonmark/node/Node;
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/commonmark/node/Nodes$NodeIterator;->node:Lorg/commonmark/node/Node;

    .line 56
    .local v0, "result":Lorg/commonmark/node/Node;
    iget-object v1, p0, Lorg/commonmark/node/Nodes$NodeIterator;->node:Lorg/commonmark/node/Node;

    invoke-virtual {v1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    iput-object v1, p0, Lorg/commonmark/node/Nodes$NodeIterator;->node:Lorg/commonmark/node/Node;

    .line 57
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
