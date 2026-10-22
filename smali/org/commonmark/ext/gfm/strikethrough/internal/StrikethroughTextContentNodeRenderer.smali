.class public Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughTextContentNodeRenderer;
.super Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughNodeRenderer;
.source "StrikethroughTextContentNodeRenderer.java"


# instance fields
.field private final context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

.field private final textContent:Lorg/commonmark/renderer/text/TextContentWriter;


# direct methods
.method public constructor <init>(Lorg/commonmark/renderer/text/TextContentNodeRendererContext;)V
    .locals 1
    .param p1, "context"    # Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    .line 12
    invoke-direct {p0}, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughNodeRenderer;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    .line 14
    invoke-interface {p1}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->getWriter()Lorg/commonmark/renderer/text/TextContentWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    .line 15
    return-void
.end method

.method private renderChildren(Lorg/commonmark/node/Node;)V
    .locals 3
    .param p1, "parent"    # Lorg/commonmark/node/Node;

    .line 25
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 26
    .local v0, "node":Lorg/commonmark/node/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 28
    .local v1, "next":Lorg/commonmark/node/Node;
    iget-object v2, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    invoke-interface {v2, v0}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->render(Lorg/commonmark/node/Node;)V

    .line 29
    move-object v0, v1

    .line 30
    .end local v1    # "next":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getNodeTypes()Ljava/util/Set;
    .locals 1

    .line 7
    invoke-super {p0}, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughNodeRenderer;->getNodeTypes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public render(Lorg/commonmark/node/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 19
    iget-object v0, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(C)V

    .line 20
    invoke-direct {p0, p1}, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughTextContentNodeRenderer;->renderChildren(Lorg/commonmark/node/Node;)V

    .line 21
    iget-object v0, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(C)V

    .line 22
    return-void
.end method
