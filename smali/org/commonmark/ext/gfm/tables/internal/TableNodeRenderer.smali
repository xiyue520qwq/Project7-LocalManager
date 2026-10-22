.class abstract Lorg/commonmark/ext/gfm/tables/internal/TableNodeRenderer;
.super Ljava/lang/Object;
.source "TableNodeRenderer.java"

# interfaces
.implements Lorg/commonmark/renderer/NodeRenderer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNodeTypes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;>;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/commonmark/ext/gfm/tables/TableBlock;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/commonmark/ext/gfm/tables/TableHead;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/commonmark/ext/gfm/tables/TableBody;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/commonmark/ext/gfm/tables/TableRow;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lorg/commonmark/ext/gfm/tables/TableCell;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public render(Lorg/commonmark/node/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 30
    instance-of v0, p1, Lorg/commonmark/ext/gfm/tables/TableBlock;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p1

    check-cast v0, Lorg/commonmark/ext/gfm/tables/TableBlock;

    invoke-virtual {p0, v0}, Lorg/commonmark/ext/gfm/tables/internal/TableNodeRenderer;->renderBlock(Lorg/commonmark/ext/gfm/tables/TableBlock;)V

    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, p1, Lorg/commonmark/ext/gfm/tables/TableHead;

    if-eqz v0, :cond_1

    .line 33
    move-object v0, p1

    check-cast v0, Lorg/commonmark/ext/gfm/tables/TableHead;

    invoke-virtual {p0, v0}, Lorg/commonmark/ext/gfm/tables/internal/TableNodeRenderer;->renderHead(Lorg/commonmark/ext/gfm/tables/TableHead;)V

    goto :goto_0

    .line 34
    :cond_1
    instance-of v0, p1, Lorg/commonmark/ext/gfm/tables/TableBody;

    if-eqz v0, :cond_2

    .line 35
    move-object v0, p1

    check-cast v0, Lorg/commonmark/ext/gfm/tables/TableBody;

    invoke-virtual {p0, v0}, Lorg/commonmark/ext/gfm/tables/internal/TableNodeRenderer;->renderBody(Lorg/commonmark/ext/gfm/tables/TableBody;)V

    goto :goto_0

    .line 36
    :cond_2
    instance-of v0, p1, Lorg/commonmark/ext/gfm/tables/TableRow;

    if-eqz v0, :cond_3

    .line 37
    move-object v0, p1

    check-cast v0, Lorg/commonmark/ext/gfm/tables/TableRow;

    invoke-virtual {p0, v0}, Lorg/commonmark/ext/gfm/tables/internal/TableNodeRenderer;->renderRow(Lorg/commonmark/ext/gfm/tables/TableRow;)V

    goto :goto_0

    .line 38
    :cond_3
    instance-of v0, p1, Lorg/commonmark/ext/gfm/tables/TableCell;

    if-eqz v0, :cond_4

    .line 39
    move-object v0, p1

    check-cast v0, Lorg/commonmark/ext/gfm/tables/TableCell;

    invoke-virtual {p0, v0}, Lorg/commonmark/ext/gfm/tables/internal/TableNodeRenderer;->renderCell(Lorg/commonmark/ext/gfm/tables/TableCell;)V

    .line 41
    :cond_4
    :goto_0
    return-void
.end method

.method protected abstract renderBlock(Lorg/commonmark/ext/gfm/tables/TableBlock;)V
.end method

.method protected abstract renderBody(Lorg/commonmark/ext/gfm/tables/TableBody;)V
.end method

.method protected abstract renderCell(Lorg/commonmark/ext/gfm/tables/TableCell;)V
.end method

.method protected abstract renderHead(Lorg/commonmark/ext/gfm/tables/TableHead;)V
.end method

.method protected abstract renderRow(Lorg/commonmark/ext/gfm/tables/TableRow;)V
.end method
