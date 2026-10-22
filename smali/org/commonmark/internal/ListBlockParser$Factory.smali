.class public Lorg/commonmark/internal/ListBlockParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "ListBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/ListBlockParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 11
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;
    .param p2, "matchedBlockParser"    # Lorg/commonmark/parser/block/MatchedBlockParser;

    .line 206
    invoke-interface {p2}, Lorg/commonmark/parser/block/MatchedBlockParser;->getMatchedBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    .line 208
    .local v0, "matched":Lorg/commonmark/parser/block/BlockParser;
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v1

    sget v2, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-lt v1, v2, :cond_0

    .line 209
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v1

    return-object v1

    .line 211
    :cond_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v1

    .line 212
    .local v1, "markerIndex":I
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result v2

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v3

    add-int/2addr v2, v3

    .line 213
    .local v2, "markerColumn":I
    invoke-interface {p2}, Lorg/commonmark/parser/block/MatchedBlockParser;->getParagraphLines()Lorg/commonmark/parser/SourceLines;

    move-result-object v3

    invoke-virtual {v3}, Lorg/commonmark/parser/SourceLines;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 214
    .local v3, "inParagraph":Z
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Lorg/commonmark/parser/SourceLine;

    move-result-object v5

    invoke-virtual {v5}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v1, v2, v3}, Lorg/commonmark/internal/ListBlockParser;->access$000(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;

    move-result-object v5

    .line 215
    .local v5, "listData":Lorg/commonmark/internal/ListBlockParser$ListData;
    if-nez v5, :cond_1

    .line 216
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    return-object v4

    .line 219
    :cond_1
    iget v6, v5, Lorg/commonmark/internal/ListBlockParser$ListData;->contentColumn:I

    .line 220
    .local v6, "newColumn":I
    new-instance v7, Lorg/commonmark/internal/ListItemParser;

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result v8

    sub-int v8, v6, v8

    invoke-direct {v7, v8}, Lorg/commonmark/internal/ListItemParser;-><init>(I)V

    .line 223
    .local v7, "listItemParser":Lorg/commonmark/internal/ListItemParser;
    instance-of v8, v0, Lorg/commonmark/internal/ListBlockParser;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 224
    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v8

    check-cast v8, Lorg/commonmark/node/ListBlock;

    iget-object v10, v5, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    invoke-static {v8, v10}, Lorg/commonmark/internal/ListBlockParser;->access$100(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 232
    :cond_2
    new-array v4, v4, [Lorg/commonmark/parser/block/BlockParser;

    aput-object v7, v4, v9

    invoke-static {v4}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/commonmark/parser/block/BlockStart;->atColumn(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    return-object v4

    .line 226
    :cond_3
    :goto_0
    new-instance v8, Lorg/commonmark/internal/ListBlockParser;

    iget-object v10, v5, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    invoke-direct {v8, v10}, Lorg/commonmark/internal/ListBlockParser;-><init>(Lorg/commonmark/node/ListBlock;)V

    .line 228
    .local v8, "listBlockParser":Lorg/commonmark/internal/ListBlockParser;
    iget-object v10, v5, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    invoke-virtual {v10, v4}, Lorg/commonmark/node/ListBlock;->setTight(Z)V

    .line 230
    const/4 v10, 0x2

    new-array v10, v10, [Lorg/commonmark/parser/block/BlockParser;

    aput-object v8, v10, v9

    aput-object v7, v10, v4

    invoke-static {v10}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/commonmark/parser/block/BlockStart;->atColumn(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    return-object v4
.end method
