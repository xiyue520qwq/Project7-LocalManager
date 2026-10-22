.class public Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;
.super Lorg/commonmark/ext/gfm/tables/internal/TableNodeRenderer;
.source "TableHtmlNodeRenderer.java"


# instance fields
.field private final context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

.field private final htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;


# direct methods
.method public constructor <init>(Lorg/commonmark/renderer/html/HtmlNodeRendererContext;)V
    .locals 1
    .param p1, "context"    # Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    .line 16
    invoke-direct {p0}, Lorg/commonmark/ext/gfm/tables/internal/TableNodeRenderer;-><init>()V

    .line 17
    invoke-interface {p1}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->getWriter()Lorg/commonmark/renderer/html/HtmlWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    .line 18
    iput-object p1, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    .line 19
    return-void
.end method

.method private static getAlignValue(Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;)Ljava/lang/String;
    .locals 3
    .param p0, "alignment"    # Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

    .line 75
    sget-object v0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer$1;->$SwitchMap$org$commonmark$ext$gfm$tables$TableCell$Alignment:[I

    invoke-virtual {p0}, Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    const-string v0, "right"

    return-object v0

    .line 79
    :pswitch_1
    const-string v0, "center"

    return-object v0

    .line 77
    :pswitch_2
    const-string v0, "left"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "node"    # Lorg/commonmark/node/Node;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/node/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->extendAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getCellAttributes(Lorg/commonmark/ext/gfm/tables/TableCell;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "tableCell"    # Lorg/commonmark/ext/gfm/tables/TableCell;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/ext/gfm/tables/TableCell;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lorg/commonmark/ext/gfm/tables/TableCell;->getAlignment()Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-virtual {p1}, Lorg/commonmark/ext/gfm/tables/TableCell;->getAlignment()Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

    move-result-object v1

    invoke-static {v1}, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->getAlignValue(Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "align"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->extendAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->extendAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private renderChildren(Lorg/commonmark/node/Node;)V
    .locals 3
    .param p1, "parent"    # Lorg/commonmark/node/Node;

    .line 87
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 88
    .local v0, "node":Lorg/commonmark/node/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 90
    .local v1, "next":Lorg/commonmark/node/Node;
    iget-object v2, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-interface {v2, v0}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->render(Lorg/commonmark/node/Node;)V

    .line 91
    move-object v0, v1

    .line 92
    .end local v1    # "next":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getNodeTypes()Ljava/util/Set;
    .locals 1

    .line 11
    invoke-super {p0}, Lorg/commonmark/ext/gfm/tables/internal/TableNodeRenderer;->getNodeTypes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic render(Lorg/commonmark/node/Node;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lorg/commonmark/ext/gfm/tables/internal/TableNodeRenderer;->render(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method protected renderBlock(Lorg/commonmark/ext/gfm/tables/TableBlock;)V
    .locals 3
    .param p1, "tableBlock"    # Lorg/commonmark/ext/gfm/tables/TableBlock;

    .line 22
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 23
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "table"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->getAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    invoke-direct {p0, p1}, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->renderChildren(Lorg/commonmark/node/Node;)V

    .line 25
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "/table"

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 27
    return-void
.end method

.method protected renderBody(Lorg/commonmark/ext/gfm/tables/TableBody;)V
    .locals 3
    .param p1, "tableBody"    # Lorg/commonmark/ext/gfm/tables/TableBody;

    .line 38
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 39
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "tbody"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->getAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    invoke-direct {p0, p1}, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->renderChildren(Lorg/commonmark/node/Node;)V

    .line 41
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "/tbody"

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 43
    return-void
.end method

.method protected renderCell(Lorg/commonmark/ext/gfm/tables/TableCell;)V
    .locals 4
    .param p1, "tableCell"    # Lorg/commonmark/ext/gfm/tables/TableCell;

    .line 54
    invoke-virtual {p1}, Lorg/commonmark/ext/gfm/tables/TableCell;->isHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "th"

    goto :goto_0

    :cond_0
    const-string v0, "td"

    .line 55
    .local v0, "tagName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 56
    iget-object v1, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-direct {p0, p1, v0}, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->getCellAttributes(Lorg/commonmark/ext/gfm/tables/TableCell;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    invoke-direct {p0, p1}, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->renderChildren(Lorg/commonmark/node/Node;)V

    .line 58
    iget-object v1, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 60
    return-void
.end method

.method protected renderHead(Lorg/commonmark/ext/gfm/tables/TableHead;)V
    .locals 3
    .param p1, "tableHead"    # Lorg/commonmark/ext/gfm/tables/TableHead;

    .line 30
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 31
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "thead"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->getAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    invoke-direct {p0, p1}, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->renderChildren(Lorg/commonmark/node/Node;)V

    .line 33
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "/thead"

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 35
    return-void
.end method

.method protected renderRow(Lorg/commonmark/ext/gfm/tables/TableRow;)V
    .locals 3
    .param p1, "tableRow"    # Lorg/commonmark/ext/gfm/tables/TableRow;

    .line 46
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 47
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "tr"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->getAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    invoke-direct {p0, p1}, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->renderChildren(Lorg/commonmark/node/Node;)V

    .line 49
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "/tr"

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableHtmlNodeRenderer;->htmlWriter:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 51
    return-void
.end method
