.class public Lorg/commonmark/internal/BlockQuoteParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "BlockQuoteParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/BlockQuoteParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 5
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;
    .param p2, "matchedBlockParser"    # Lorg/commonmark/parser/block/MatchedBlockParser;

    .line 49
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v0

    .line 50
    .local v0, "nextNonSpace":I
    invoke-static {p1, v0}, Lorg/commonmark/internal/BlockQuoteParser;->access$000(Lorg/commonmark/parser/block/ParserState;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result v1

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 53
    .local v1, "newColumn":I
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Lorg/commonmark/parser/SourceLine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Lorg/commonmark/internal/util/Parsing;->isSpaceOrTab(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 56
    :cond_0
    new-array v2, v2, [Lorg/commonmark/parser/block/BlockParser;

    const/4 v3, 0x0

    new-instance v4, Lorg/commonmark/internal/BlockQuoteParser;

    invoke-direct {v4}, Lorg/commonmark/internal/BlockQuoteParser;-><init>()V

    aput-object v4, v2, v3

    invoke-static {v2}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/commonmark/parser/block/BlockStart;->atColumn(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v2

    return-object v2

    .line 58
    .end local v1    # "newColumn":I
    :cond_1
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v1

    return-object v1
.end method
