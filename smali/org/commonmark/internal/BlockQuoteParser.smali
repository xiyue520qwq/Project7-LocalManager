.class public Lorg/commonmark/internal/BlockQuoteParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "BlockQuoteParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/BlockQuoteParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/node/BlockQuote;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 10
    new-instance v0, Lorg/commonmark/node/BlockQuote;

    invoke-direct {v0}, Lorg/commonmark/node/BlockQuote;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/BlockQuoteParser;->block:Lorg/commonmark/node/BlockQuote;

    return-void
.end method

.method static synthetic access$000(Lorg/commonmark/parser/block/ParserState;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/parser/block/ParserState;
    .param p1, "x1"    # I

    .line 8
    invoke-static {p0, p1}, Lorg/commonmark/internal/BlockQuoteParser;->isMarker(Lorg/commonmark/parser/block/ParserState;I)Z

    move-result v0

    return v0
.end method

.method private static isMarker(Lorg/commonmark/parser/block/ParserState;I)Z
    .locals 3
    .param p0, "state"    # Lorg/commonmark/parser/block/ParserState;
    .param p1, "index"    # I

    .line 43
    invoke-interface {p0}, Lorg/commonmark/parser/block/ParserState;->getLine()Lorg/commonmark/parser/SourceLine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    .line 44
    .local v0, "line":Ljava/lang/CharSequence;
    invoke-interface {p0}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v1

    sget v2, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-ge v1, v2, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public canContain(Lorg/commonmark/node/Block;)Z
    .locals 1
    .param p1, "block"    # Lorg/commonmark/node/Block;

    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/commonmark/internal/BlockQuoteParser;->getBlock()Lorg/commonmark/node/BlockQuote;

    move-result-object v0

    return-object v0
.end method

.method public getBlock()Lorg/commonmark/node/BlockQuote;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/commonmark/internal/BlockQuoteParser;->block:Lorg/commonmark/node/BlockQuote;

    return-object v0
.end method

.method public isContainer()Z
    .locals 1

    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 4
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;

    .line 29
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v0

    .line 30
    .local v0, "nextNonSpace":I
    invoke-static {p1, v0}, Lorg/commonmark/internal/BlockQuoteParser;->isMarker(Lorg/commonmark/parser/block/ParserState;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result v1

    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 33
    .local v1, "newColumn":I
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Lorg/commonmark/parser/SourceLine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Lorg/commonmark/internal/util/Parsing;->isSpaceOrTab(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 36
    :cond_0
    invoke-static {v1}, Lorg/commonmark/parser/block/BlockContinue;->atColumn(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v2

    return-object v2

    .line 38
    .end local v1    # "newColumn":I
    :cond_1
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v1

    return-object v1
.end method
