.class public Lorg/commonmark/internal/ParagraphParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "ParagraphParser.java"


# instance fields
.field private final block:Lorg/commonmark/node/Paragraph;

.field private final linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 18
    new-instance v0, Lorg/commonmark/node/Paragraph;

    invoke-direct {v0}, Lorg/commonmark/node/Paragraph;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->block:Lorg/commonmark/node/Paragraph;

    .line 19
    new-instance v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    invoke-direct {v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    return-void
.end method


# virtual methods
.method public addLine(Lorg/commonmark/parser/SourceLine;)V
    .locals 1
    .param p1, "line"    # Lorg/commonmark/parser/SourceLine;

    .line 42
    iget-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    invoke-virtual {v0, p1}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->parse(Lorg/commonmark/parser/SourceLine;)V

    .line 43
    return-void
.end method

.method public addSourceSpan(Lorg/commonmark/node/SourceSpan;)V
    .locals 1
    .param p1, "sourceSpan"    # Lorg/commonmark/node/SourceSpan;

    .line 49
    iget-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    invoke-virtual {v0, p1}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->addSourceSpan(Lorg/commonmark/node/SourceSpan;)V

    .line 50
    return-void
.end method

.method public canHaveLazyContinuationLines()Z
    .locals 1

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public closeBlock()V
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    invoke-virtual {v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->getParagraphLines()Lorg/commonmark/parser/SourceLines;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLines;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->block:Lorg/commonmark/node/Paragraph;

    invoke-virtual {v0}, Lorg/commonmark/node/Paragraph;->unlink()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->block:Lorg/commonmark/node/Paragraph;

    iget-object v1, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    invoke-virtual {v1}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->getParagraphSourceSpans()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/node/Paragraph;->setSourceSpans(Ljava/util/List;)V

    .line 59
    :goto_0
    return-void
.end method

.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->block:Lorg/commonmark/node/Paragraph;

    return-object v0
.end method

.method public getDefinitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/commonmark/node/LinkReferenceDefinition;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    invoke-virtual {v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->getDefinitions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParagraphLines()Lorg/commonmark/parser/SourceLines;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    invoke-virtual {v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->getParagraphLines()Lorg/commonmark/parser/SourceLines;

    move-result-object v0

    return-object v0
.end method

.method public parseInlines(Lorg/commonmark/parser/InlineParser;)V
    .locals 2
    .param p1, "inlineParser"    # Lorg/commonmark/parser/InlineParser;

    .line 63
    iget-object v0, p0, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    invoke-virtual {v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->getParagraphLines()Lorg/commonmark/parser/SourceLines;

    move-result-object v0

    .line 64
    .local v0, "lines":Lorg/commonmark/parser/SourceLines;
    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLines;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lorg/commonmark/internal/ParagraphParser;->block:Lorg/commonmark/node/Paragraph;

    invoke-interface {p1, v0, v1}, Lorg/commonmark/parser/InlineParser;->parse(Lorg/commonmark/parser/SourceLines;Lorg/commonmark/node/Node;)V

    .line 67
    :cond_0
    return-void
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 1
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;

    .line 33
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->isBlank()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result v0

    invoke-static {v0}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0
.end method
