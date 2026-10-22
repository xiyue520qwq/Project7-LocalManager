.class Lorg/commonmark/node/Nodes$NodeIterable;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/node/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/commonmark/node/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private final end:Lorg/commonmark/node/Node;

.field private final first:Lorg/commonmark/node/Node;


# direct methods
.method private constructor <init>(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V
    .locals 0
    .param p1, "first"    # Lorg/commonmark/node/Node;
    .param p2, "end"    # Lorg/commonmark/node/Node;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/commonmark/node/Nodes$NodeIterable;->first:Lorg/commonmark/node/Node;

    .line 29
    iput-object p2, p0, Lorg/commonmark/node/Nodes$NodeIterable;->end:Lorg/commonmark/node/Node;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;Lorg/commonmark/node/Nodes$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/commonmark/node/Node;
    .param p2, "x1"    # Lorg/commonmark/node/Node;
    .param p3, "x2"    # Lorg/commonmark/node/Nodes$1;

    .line 22
    invoke-direct {p0, p1, p2}, Lorg/commonmark/node/Nodes$NodeIterable;-><init>(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/commonmark/node/Node;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/commonmark/node/Nodes$NodeIterator;

    iget-object v1, p0, Lorg/commonmark/node/Nodes$NodeIterable;->first:Lorg/commonmark/node/Node;

    iget-object v2, p0, Lorg/commonmark/node/Nodes$NodeIterable;->end:Lorg/commonmark/node/Node;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/commonmark/node/Nodes$NodeIterator;-><init>(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;Lorg/commonmark/node/Nodes$1;)V

    return-object v0
.end method
