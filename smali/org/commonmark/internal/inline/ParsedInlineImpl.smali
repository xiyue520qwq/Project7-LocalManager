.class public Lorg/commonmark/internal/inline/ParsedInlineImpl;
.super Lorg/commonmark/internal/inline/ParsedInline;
.source "ParsedInlineImpl.java"


# instance fields
.field private final node:Lorg/commonmark/node/Node;

.field private final position:Lorg/commonmark/internal/inline/Position;


# direct methods
.method constructor <init>(Lorg/commonmark/node/Node;Lorg/commonmark/internal/inline/Position;)V
    .locals 0
    .param p1, "node"    # Lorg/commonmark/node/Node;
    .param p2, "position"    # Lorg/commonmark/internal/inline/Position;

    .line 9
    invoke-direct {p0}, Lorg/commonmark/internal/inline/ParsedInline;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/commonmark/internal/inline/ParsedInlineImpl;->node:Lorg/commonmark/node/Node;

    .line 11
    iput-object p2, p0, Lorg/commonmark/internal/inline/ParsedInlineImpl;->position:Lorg/commonmark/internal/inline/Position;

    .line 12
    return-void
.end method


# virtual methods
.method public getNode()Lorg/commonmark/node/Node;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/commonmark/internal/inline/ParsedInlineImpl;->node:Lorg/commonmark/node/Node;

    return-object v0
.end method

.method public getPosition()Lorg/commonmark/internal/inline/Position;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/commonmark/internal/inline/ParsedInlineImpl;->position:Lorg/commonmark/internal/inline/Position;

    return-object v0
.end method
