.class public Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "TableBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 10
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;
    .param p2, "matchedBlockParser"    # Lorg/commonmark/parser/block/MatchedBlockParser;

    .line 269
    invoke-interface {p2}, Lorg/commonmark/parser/block/MatchedBlockParser;->getParagraphLines()Lorg/commonmark/parser/SourceLines;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLines;->getLines()Ljava/util/List;

    move-result-object v0

    .line 270
    .local v0, "paragraphLines":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/SourceLine;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x7c

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v4}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lorg/commonmark/internal/util/Parsing;->find(CLjava/lang/CharSequence;I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 271
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Lorg/commonmark/parser/SourceLine;

    move-result-object v1

    .line 272
    .local v1, "line":Lorg/commonmark/parser/SourceLine;
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result v4

    invoke-virtual {v1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/commonmark/parser/SourceLine;->substring(II)Lorg/commonmark/parser/SourceLine;

    move-result-object v4

    .line 273
    .local v4, "separatorLine":Lorg/commonmark/parser/SourceLine;
    invoke-virtual {v4}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->access$000(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    .line 274
    .local v5, "columns":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 275
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/commonmark/parser/SourceLine;

    .line 276
    .local v6, "paragraph":Lorg/commonmark/parser/SourceLine;
    invoke-static {v6}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->access$100(Lorg/commonmark/parser/SourceLine;)Ljava/util/List;

    move-result-object v7

    .line 277
    .local v7, "headerCells":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/SourceLine;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 278
    new-array v2, v2, [Lorg/commonmark/parser/block/BlockParser;

    new-instance v8, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v6, v9}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;-><init>(Ljava/util/List;Lorg/commonmark/parser/SourceLine;Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser$1;)V

    aput-object v8, v2, v3

    invoke-static {v2}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v2

    .line 279
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/commonmark/parser/block/BlockStart;->atIndex(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lorg/commonmark/parser/block/BlockStart;->replaceActiveBlockParser()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v2

    .line 278
    return-object v2

    .line 284
    .end local v1    # "line":Lorg/commonmark/parser/SourceLine;
    .end local v4    # "separatorLine":Lorg/commonmark/parser/SourceLine;
    .end local v5    # "columns":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;>;"
    .end local v6    # "paragraph":Lorg/commonmark/parser/SourceLine;
    .end local v7    # "headerCells":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/SourceLine;>;"
    :cond_0
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v1

    return-object v1
.end method
