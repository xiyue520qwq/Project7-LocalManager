.class public Lorg/commonmark/internal/IndentedCodeBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "IndentedCodeBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/IndentedCodeBlockParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/node/IndentedCodeBlock;

.field private final lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 15
    new-instance v0, Lorg/commonmark/node/IndentedCodeBlock;

    invoke-direct {v0}, Lorg/commonmark/node/IndentedCodeBlock;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/IndentedCodeBlockParser;->block:Lorg/commonmark/node/IndentedCodeBlock;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/IndentedCodeBlockParser;->lines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addLine(Lorg/commonmark/parser/SourceLine;)V
    .locals 2
    .param p1, "line"    # Lorg/commonmark/parser/SourceLine;

    .line 36
    iget-object v0, p0, Lorg/commonmark/internal/IndentedCodeBlockParser;->lines:Ljava/util/List;

    invoke-virtual {p1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public closeBlock()V
    .locals 4

    .line 41
    iget-object v0, p0, Lorg/commonmark/internal/IndentedCodeBlockParser;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 42
    .local v0, "lastNonBlank":I
    :goto_0
    if-ltz v0, :cond_1

    .line 43
    iget-object v1, p0, Lorg/commonmark/internal/IndentedCodeBlockParser;->lines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/commonmark/internal/util/Parsing;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_2

    .line 51
    iget-object v3, p0, Lorg/commonmark/internal/IndentedCodeBlockParser;->lines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 52
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 55
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "literal":Ljava/lang/String;
    iget-object v3, p0, Lorg/commonmark/internal/IndentedCodeBlockParser;->block:Lorg/commonmark/node/IndentedCodeBlock;

    invoke-virtual {v3, v2}, Lorg/commonmark/node/IndentedCodeBlock;->setLiteral(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/commonmark/internal/IndentedCodeBlockParser;->block:Lorg/commonmark/node/IndentedCodeBlock;

    return-object v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 2
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;

    .line 25
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v0

    sget v1, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-lt v0, v1, :cond_0

    .line 26
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result v0

    sget v1, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    add-int/2addr v0, v1

    invoke-static {v0}, Lorg/commonmark/parser/block/BlockContinue;->atColumn(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0

    .line 27
    :cond_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v0

    invoke-static {v0}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0

    .line 30
    :cond_1
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0
.end method
