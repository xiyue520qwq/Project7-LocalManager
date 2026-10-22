.class public Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughHtmlNodeRenderer;
.super Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughNodeRenderer;
.source "StrikethroughHtmlNodeRenderer.java"


# instance fields
.field private final context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

.field private final html:Lorg/commonmark/renderer/html/HtmlWriter;


# direct methods
.method public constructor <init>(Lorg/commonmark/renderer/html/HtmlNodeRendererContext;)V
    .locals 1
    .param p1, "context"    # Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    .line 15
    invoke-direct {p0}, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughNodeRenderer;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    .line 17
    invoke-interface {p1}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->getWriter()Lorg/commonmark/renderer/html/HtmlWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    .line 18
    return-void
.end method

.method private renderChildren(Lorg/commonmark/node/Node;)V
    .locals 3
    .param p1, "parent"    # Lorg/commonmark/node/Node;

    .line 29
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 30
    .local v0, "node":Lorg/commonmark/node/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 32
    .local v1, "next":Lorg/commonmark/node/Node;
    iget-object v2, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-interface {v2, v0}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->render(Lorg/commonmark/node/Node;)V

    .line 33
    move-object v0, v1

    .line 34
    .end local v1    # "next":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getNodeTypes()Ljava/util/Set;
    .locals 1

    .line 10
    invoke-super {p0}, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughNodeRenderer;->getNodeTypes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public render(Lorg/commonmark/node/Node;)V
    .locals 3
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 22
    iget-object v0, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "del"

    invoke-interface {v0, p1, v2, v1}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->extendAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 23
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v1, v2, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    invoke-direct {p0, p1}, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughHtmlNodeRenderer;->renderChildren(Lorg/commonmark/node/Node;)V

    .line 25
    iget-object v1, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v2, "/del"

    invoke-virtual {v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 26
    return-void
.end method
