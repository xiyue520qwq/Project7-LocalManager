.class public Lorg/commonmark/node/Nodes;
.super Ljava/lang/Object;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/node/Nodes$NodeIterator;,
        Lorg/commonmark/node/Nodes$NodeIterable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static between(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)Ljava/lang/Iterable;
    .locals 3
    .param p0, "start"    # Lorg/commonmark/node/Node;
    .param p1, "end"    # Lorg/commonmark/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/node/Node;",
            "Lorg/commonmark/node/Node;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/commonmark/node/Node;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/commonmark/node/Nodes$NodeIterable;

    invoke-virtual {p0}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/commonmark/node/Nodes$NodeIterable;-><init>(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;Lorg/commonmark/node/Nodes$1;)V

    return-object v0
.end method
