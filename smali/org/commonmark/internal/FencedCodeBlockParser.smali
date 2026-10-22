.class public Lorg/commonmark/internal/FencedCodeBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "FencedCodeBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/FencedCodeBlockParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/node/FencedCodeBlock;

.field private firstLine:Ljava/lang/String;

.field private otherLines:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(CII)V
    .locals 2
    .param p1, "fenceChar"    # C
    .param p2, "fenceLength"    # I
    .param p3, "fenceIndent"    # I

    .line 18
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 13
    new-instance v0, Lorg/commonmark/node/FencedCodeBlock;

    invoke-direct {v0}, Lorg/commonmark/node/FencedCodeBlock;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->otherLines:Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p1}, Lorg/commonmark/node/FencedCodeBlock;->setFenceChar(C)V

    .line 20
    invoke-virtual {v0, p2}, Lorg/commonmark/node/FencedCodeBlock;->setFenceLength(I)V

    .line 21
    invoke-virtual {v0, p3}, Lorg/commonmark/node/FencedCodeBlock;->setFenceIndent(I)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;II)Lorg/commonmark/internal/FencedCodeBlockParser;
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 11
    invoke-static {p0, p1, p2}, Lorg/commonmark/internal/FencedCodeBlockParser;->checkOpener(Ljava/lang/CharSequence;II)Lorg/commonmark/internal/FencedCodeBlockParser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/commonmark/internal/FencedCodeBlockParser;)Lorg/commonmark/node/FencedCodeBlock;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/internal/FencedCodeBlockParser;

    .line 11
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    return-object v0
.end method

.method private static checkOpener(Ljava/lang/CharSequence;II)Lorg/commonmark/internal/FencedCodeBlockParser;
    .locals 7
    .param p0, "line"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "indent"    # I

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "backticks":I
    const/4 v1, 0x0

    .line 90
    .local v1, "tildes":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 92
    .local v2, "length":I
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 93
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 101
    goto :goto_2

    .line 98
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 99
    goto :goto_1

    .line 95
    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 96
    nop

    .line 92
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "i":I
    :cond_0
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_2

    if-nez v1, :cond_2

    .line 106
    add-int v4, p1, v0

    const/16 v5, 0x60

    invoke-static {v5, p0, v4}, Lorg/commonmark/internal/util/Parsing;->find(CLjava/lang/CharSequence;I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 107
    return-object v3

    .line 109
    :cond_1
    new-instance v3, Lorg/commonmark/internal/FencedCodeBlockParser;

    invoke-direct {v3, v5, v0, p2}, Lorg/commonmark/internal/FencedCodeBlockParser;-><init>(CII)V

    return-object v3

    .line 110
    :cond_2
    if-lt v1, v4, :cond_3

    if-nez v0, :cond_3

    .line 112
    new-instance v3, Lorg/commonmark/internal/FencedCodeBlockParser;

    const/16 v4, 0x7e

    invoke-direct {v3, v4, v1, p2}, Lorg/commonmark/internal/FencedCodeBlockParser;-><init>(CII)V

    return-object v3

    .line 114
    :cond_3
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method private isClosing(Ljava/lang/CharSequence;I)Z
    .locals 6
    .param p1, "line"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I

    .line 122
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    invoke-virtual {v0}, Lorg/commonmark/node/FencedCodeBlock;->getFenceChar()C

    move-result v0

    .line 123
    .local v0, "fenceChar":C
    iget-object v1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    invoke-virtual {v1}, Lorg/commonmark/node/FencedCodeBlock;->getFenceLength()I

    move-result v1

    .line 124
    .local v1, "fenceLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, p1, p2, v2}, Lorg/commonmark/internal/util/Parsing;->skip(CLjava/lang/CharSequence;II)I

    move-result v2

    sub-int/2addr v2, p2

    .line 125
    .local v2, "fences":I
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    .line 126
    return v3

    .line 129
    :cond_0
    add-int v4, p2, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {p1, v4, v5}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result v4

    .line 130
    .local v4, "after":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method


# virtual methods
.method public addLine(Lorg/commonmark/parser/SourceLine;)V
    .locals 2
    .param p1, "line"    # Lorg/commonmark/parser/SourceLine;

    .line 51
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->firstLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->firstLine:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->otherLines:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->otherLines:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    :goto_0
    return-void
.end method

.method public closeBlock()V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    iget-object v1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->firstLine:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/node/FencedCodeBlock;->setInfo(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    iget-object v1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->otherLines:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/node/FencedCodeBlock;->setLiteral(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    return-object v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 7
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;

    .line 31
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v0

    .line 32
    .local v0, "nextNonSpace":I
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result v1

    .line 33
    .local v1, "newIndex":I
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Lorg/commonmark/parser/SourceLine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    .line 34
    .local v2, "line":Ljava/lang/CharSequence;
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v3

    sget v4, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-ge v3, v4, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    invoke-virtual {v4}, Lorg/commonmark/node/FencedCodeBlock;->getFenceChar()C

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v2, v0}, Lorg/commonmark/internal/FencedCodeBlockParser;->isClosing(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->finished()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v3

    return-object v3

    .line 39
    :cond_0
    iget-object v3, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    invoke-virtual {v3}, Lorg/commonmark/node/FencedCodeBlock;->getFenceIndent()I

    move-result v3

    .line 40
    .local v3, "i":I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 41
    .local v4, "length":I
    :goto_0
    if-lez v3, :cond_1

    if-ge v1, v4, :cond_1

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 46
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_1
    invoke-static {v1}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v3

    return-object v3
.end method
