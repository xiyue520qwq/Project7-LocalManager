.class public Lorg/commonmark/internal/HtmlBlockParser$Factory;
.super Lorg/commonmark/parser/block/AbstractBlockParserFactory;
.source "HtmlBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/HtmlBlockParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParserFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 10
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;
    .param p2, "matchedBlockParser"    # Lorg/commonmark/parser/block/MatchedBlockParser;

    .line 110
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v0

    .line 111
    .local v0, "nextNonSpace":I
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Lorg/commonmark/parser/SourceLine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    .line 113
    .local v1, "line":Ljava/lang/CharSequence;
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 114
    const/4 v2, 0x1

    .local v2, "blockType":I
    :goto_0
    const/4 v3, 0x7

    if-gt v2, v3, :cond_2

    .line 116
    if-ne v2, v3, :cond_0

    .line 117
    invoke-interface {p2}, Lorg/commonmark/parser/block/MatchedBlockParser;->getMatchedBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v3

    invoke-interface {v3}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v3

    instance-of v3, v3, Lorg/commonmark/node/Paragraph;

    if-nez v3, :cond_1

    .line 118
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v3

    invoke-interface {v3}, Lorg/commonmark/parser/block/BlockParser;->canHaveLazyContinuationLines()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    goto :goto_1

    .line 121
    :cond_0
    invoke-static {}, Lorg/commonmark/internal/HtmlBlockParser;->access$000()[[Ljava/util/regex/Pattern;

    move-result-object v3

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 122
    .local v3, "opener":Ljava/util/regex/Pattern;
    invoke-static {}, Lorg/commonmark/internal/HtmlBlockParser;->access$000()[[Ljava/util/regex/Pattern;

    move-result-object v5

    aget-object v5, v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 123
    .local v5, "closer":Ljava/util/regex/Pattern;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v1, v0, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    .line 124
    .local v7, "matches":Z
    if-eqz v7, :cond_1

    .line 125
    new-array v6, v6, [Lorg/commonmark/parser/block/BlockParser;

    new-instance v8, Lorg/commonmark/internal/HtmlBlockParser;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9}, Lorg/commonmark/internal/HtmlBlockParser;-><init>(Ljava/util/regex/Pattern;Lorg/commonmark/internal/HtmlBlockParser$1;)V

    aput-object v8, v6, v4

    invoke-static {v6}, Lorg/commonmark/parser/block/BlockStart;->of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/commonmark/parser/block/BlockStart;->atIndex(I)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v4

    return-object v4

    .line 114
    .end local v3    # "opener":Ljava/util/regex/Pattern;
    .end local v5    # "closer":Ljava/util/regex/Pattern;
    .end local v7    # "matches":Z
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v2    # "blockType":I
    :cond_2
    invoke-static {}, Lorg/commonmark/parser/block/BlockStart;->none()Lorg/commonmark/parser/block/BlockStart;

    move-result-object v2

    return-object v2
.end method
