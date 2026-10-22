.class public Lorg/commonmark/internal/HeadingParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "HeadingParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/HeadingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 7
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;
    .param p2, "matchedBlockParser"    # Lorg/commonmark/parser/block/MatchedBlockParser;

    .line 43
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v0

    sget v1, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-lt v0, v1, :cond_0

    .line 44
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Lorg/commonmark/parser/SourceLine;

    move-result-object v0

    .line 48
    .local v0, "line":Lorg/commonmark/parser/SourceLine;
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v1

    .line 49
    .local v1, "nextNonSpace":I
    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    .line 50
    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/parser/SourceLine;->substring(II)Lorg/commonmark/parser/SourceLine;

    move-result-object v2

    invoke-static {v2}, Lorg/commonmark/internal/HeadingParser;->access$000(Lorg/commonmark/parser/SourceLine;)Lorg/commonmark/internal/HeadingParser;

    move-result-object v2

    .line 51
    .local v2, "atxHeading":Lorg/commonmark/internal/HeadingParser;
    if-eqz v2, :cond_1

    .line 52
    new-array v3, v5, [Lorg/commonmark/parser/block/BlockParser;

    aput-object v2, v3, v4

    invoke-static {v3}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v3

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/commonmark/parser/block/BlockStart;->atIndex(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v3

    return-object v3

    .line 56
    .end local v2    # "atxHeading":Lorg/commonmark/internal/HeadingParser;
    :cond_1
    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/commonmark/internal/HeadingParser;->access$100(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 57
    .local v2, "setextHeadingLevel":I
    if-lez v2, :cond_2

    .line 58
    invoke-interface {p2}, Lorg/commonmark/parser/block/MatchedBlockParser;->getParagraphLines()Lorg/commonmark/parser/SourceLines;

    move-result-object v3

    .line 59
    .local v3, "paragraph":Lorg/commonmark/parser/SourceLines;
    invoke-virtual {v3}, Lorg/commonmark/parser/SourceLines;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 60
    new-array v5, v5, [Lorg/commonmark/parser/block/BlockParser;

    new-instance v6, Lorg/commonmark/internal/HeadingParser;

    invoke-direct {v6, v2, v3}, Lorg/commonmark/internal/HeadingParser;-><init>(ILorg/commonmark/parser/SourceLines;)V

    aput-object v6, v5, v4

    invoke-static {v5}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    .line 61
    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/commonmark/parser/block/BlockStart;->atIndex(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lorg/commonmark/parser/block/BlockStart;->replaceActiveBlockParser()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    .line 60
    return-object v4

    .line 66
    .end local v3    # "paragraph":Lorg/commonmark/parser/SourceLines;
    :cond_2
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v3

    return-object v3
.end method
