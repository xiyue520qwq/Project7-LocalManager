.class public Lorg/commonmark/internal/DocumentParser;
.super Ljava/lang/Object;
.source "DocumentParser.java"

# interfaces
.implements Lorg/commonmark/parser/block/ParserState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/DocumentParser$OpenBlockParser;,
        Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;
    }
.end annotation


# static fields
.field private static final CORE_FACTORY_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final NODES_TO_CORE_FACTORIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allBlockParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParser;",
            ">;"
        }
    .end annotation
.end field

.field private blank:Z

.field private final blockParserFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;"
        }
    .end annotation
.end field

.field private column:I

.field private columnIsInTab:Z

.field private final definitions:Lorg/commonmark/internal/LinkReferenceDefinitions;

.field private final delimiterProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

.field private final includeSourceSpans:Lorg/commonmark/parser/IncludeSourceSpans;

.field private indent:I

.field private index:I

.field private final inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

.field private line:Lorg/commonmark/parser/SourceLine;

.field private lineIndex:I

.field private nextNonSpace:I

.field private nextNonSpaceColumn:I

.field private final openBlockParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/internal/DocumentParser$OpenBlockParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/commonmark/node/BlockQuote;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/commonmark/node/Heading;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/commonmark/node/FencedCodeBlock;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/commonmark/node/HtmlBlock;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lorg/commonmark/node/ThematicBreak;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lorg/commonmark/node/ListBlock;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lorg/commonmark/node/IndentedCodeBlock;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/commonmark/internal/DocumentParser;->CORE_FACTORY_TYPES:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lorg/commonmark/node/Block;>;Lorg/commonmark/parser/block/BlockParserFactory;>;"
    const-class v1, Lorg/commonmark/node/BlockQuote;

    new-instance v2, Lorg/commonmark/internal/BlockQuoteParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/BlockQuoteParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class v1, Lorg/commonmark/node/Heading;

    new-instance v2, Lorg/commonmark/internal/HeadingParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/HeadingParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-class v1, Lorg/commonmark/node/FencedCodeBlock;

    new-instance v2, Lorg/commonmark/internal/FencedCodeBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/FencedCodeBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class v1, Lorg/commonmark/node/HtmlBlock;

    new-instance v2, Lorg/commonmark/internal/HtmlBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/HtmlBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v1, Lorg/commonmark/node/ThematicBreak;

    new-instance v2, Lorg/commonmark/internal/ThematicBreakParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/ThematicBreakParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class v1, Lorg/commonmark/node/ListBlock;

    new-instance v2, Lorg/commonmark/internal/ListBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/ListBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v1, Lorg/commonmark/node/IndentedCodeBlock;

    new-instance v2, Lorg/commonmark/internal/IndentedCodeBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/IndentedCodeBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/commonmark/internal/DocumentParser;->NODES_TO_CORE_FACTORIES:Ljava/util/Map;

    .line 37
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lorg/commonmark/node/Block;>;Lorg/commonmark/parser/block/BlockParserFactory;>;"
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/commonmark/parser/InlineParserFactory;Ljava/util/List;Lorg/commonmark/parser/IncludeSourceSpans;)V
    .locals 3
    .param p2, "inlineParserFactory"    # Lorg/commonmark/parser/InlineParserFactory;
    .param p4, "includeSourceSpans"    # Lorg/commonmark/parser/IncludeSourceSpans;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;",
            "Lorg/commonmark/parser/InlineParserFactory;",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;",
            "Lorg/commonmark/parser/IncludeSourceSpans;",
            ")V"
        }
    .end annotation

    .line 77
    .local p1, "blockParserFactories":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/block/BlockParserFactory;>;"
    .local p3, "delimiterProcessors":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->lineIndex:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 54
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 61
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 62
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    .line 63
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 71
    new-instance v1, Lorg/commonmark/internal/LinkReferenceDefinitions;

    invoke-direct {v1}, Lorg/commonmark/internal/LinkReferenceDefinitions;-><init>()V

    iput-object v1, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Lorg/commonmark/internal/LinkReferenceDefinitions;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/List;

    .line 78
    iput-object p1, p0, Lorg/commonmark/internal/DocumentParser;->blockParserFactories:Ljava/util/List;

    .line 79
    iput-object p2, p0, Lorg/commonmark/internal/DocumentParser;->inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

    .line 80
    iput-object p3, p0, Lorg/commonmark/internal/DocumentParser;->delimiterProcessors:Ljava/util/List;

    .line 81
    iput-object p4, p0, Lorg/commonmark/internal/DocumentParser;->includeSourceSpans:Lorg/commonmark/parser/IncludeSourceSpans;

    .line 83
    new-instance v1, Lorg/commonmark/internal/DocumentBlockParser;

    invoke-direct {v1}, Lorg/commonmark/internal/DocumentBlockParser;-><init>()V

    iput-object v1, p0, Lorg/commonmark/internal/DocumentParser;->documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

    .line 84
    new-instance v2, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    invoke-direct {v2, v1, v0}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;-><init>(Lorg/commonmark/parser/block/BlockParser;I)V

    invoke-direct {p0, v2}, Lorg/commonmark/internal/DocumentParser;->activateBlockParser(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)V

    .line 85
    return-void
.end method

.method private activateBlockParser(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)V
    .locals 1
    .param p1, "openBlockParser"    # Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    .line 501
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    return-void
.end method

.method private addChild(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)V
    .locals 2
    .param p1, "openBlockParser"    # Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    .line 492
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    invoke-static {p1}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->access$000(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)Lorg/commonmark/parser/block/BlockParser;

    move-result-object v1

    invoke-interface {v1}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/commonmark/parser/block/BlockParser;->canContain(Lorg/commonmark/node/Block;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->closeBlockParsers(I)V

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v0

    invoke-static {p1}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->access$000(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)Lorg/commonmark/parser/block/BlockParser;

    move-result-object v1

    invoke-interface {v1}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/node/Block;->appendChild(Lorg/commonmark/node/Node;)V

    .line 497
    invoke-direct {p0, p1}, Lorg/commonmark/internal/DocumentParser;->activateBlockParser(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)V

    .line 498
    return-void
.end method

.method private addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V
    .locals 3
    .param p1, "paragraphParser"    # Lorg/commonmark/internal/ParagraphParser;

    .line 467
    invoke-virtual {p1}, Lorg/commonmark/internal/ParagraphParser;->getDefinitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/node/LinkReferenceDefinition;

    .line 469
    .local v1, "definition":Lorg/commonmark/node/LinkReferenceDefinition;
    invoke-virtual {p1}, Lorg/commonmark/internal/ParagraphParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/commonmark/node/Block;->insertBefore(Lorg/commonmark/node/Node;)V

    .line 471
    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Lorg/commonmark/internal/LinkReferenceDefinitions;

    invoke-virtual {v2, v1}, Lorg/commonmark/internal/LinkReferenceDefinitions;->add(Lorg/commonmark/node/LinkReferenceDefinition;)V

    .line 472
    .end local v1    # "definition":Lorg/commonmark/node/LinkReferenceDefinition;
    goto :goto_0

    .line 473
    :cond_0
    return-void
.end method

.method private addLine()V
    .locals 6

    .line 403
    iget-boolean v0, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    if-eqz v0, :cond_1

    .line 405
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    add-int/lit8 v0, v0, 0x1

    .line 406
    .local v0, "afterTab":I
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 407
    .local v1, "rest":Ljava/lang/CharSequence;
    iget v2, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    invoke-static {v2}, Lorg/commonmark/internal/util/Parsing;->columnsToNextTabStop(I)I

    move-result v2

    .line 408
    .local v2, "spaces":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 409
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 410
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 412
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .end local v1    # "rest":Ljava/lang/CharSequence;
    .end local v2    # "spaces":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v0, "content":Ljava/lang/CharSequence;
    goto :goto_1

    .end local v0    # "content":Ljava/lang/CharSequence;
    :cond_1
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    if-nez v0, :cond_2

    .line 415
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/CharSequence;
    goto :goto_1

    .line 417
    .end local v0    # "content":Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 419
    .restart local v0    # "content":Ljava/lang/CharSequence;
    :goto_1
    const/4 v1, 0x0

    .line 420
    .local v1, "sourceSpan":Lorg/commonmark/node/SourceSpan;
    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->includeSourceSpans:Lorg/commonmark/parser/IncludeSourceSpans;

    sget-object v3, Lorg/commonmark/parser/IncludeSourceSpans;->BLOCKS_AND_INLINES:Lorg/commonmark/parser/IncludeSourceSpans;

    if-ne v2, v3, :cond_3

    .line 423
    iget v2, p0, Lorg/commonmark/internal/DocumentParser;->lineIndex:I

    iget v3, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/commonmark/node/SourceSpan;->of(III)Lorg/commonmark/node/SourceSpan;

    move-result-object v1

    .line 425
    :cond_3
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v2

    invoke-static {v0, v1}, Lorg/commonmark/parser/SourceLine;->of(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)Lorg/commonmark/parser/SourceLine;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/commonmark/parser/block/BlockParser;->addLine(Lorg/commonmark/parser/SourceLine;)V

    .line 426
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->addSourceSpans()V

    .line 427
    return-void
.end method

.method private addSourceSpans()V
    .locals 6

    .line 430
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->includeSourceSpans:Lorg/commonmark/parser/IncludeSourceSpans;

    sget-object v1, Lorg/commonmark/parser/IncludeSourceSpans;->NONE:Lorg/commonmark/parser/IncludeSourceSpans;

    if-eq v0, v1, :cond_1

    .line 432
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 433
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    .line 434
    .local v1, "openBlockParser":Lorg/commonmark/internal/DocumentParser$OpenBlockParser;
    invoke-static {v1}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->access$100(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)I

    move-result v2

    .line 435
    .local v2, "blockIndex":I
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v3}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v2

    .line 436
    .local v3, "length":I
    if-eqz v3, :cond_0

    .line 437
    invoke-static {v1}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->access$000(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)Lorg/commonmark/parser/block/BlockParser;

    move-result-object v4

    iget v5, p0, Lorg/commonmark/internal/DocumentParser;->lineIndex:I

    invoke-static {v5, v2, v3}, Lorg/commonmark/node/SourceSpan;->of(III)Lorg/commonmark/node/SourceSpan;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/commonmark/parser/block/BlockParser;->addSourceSpan(Lorg/commonmark/node/SourceSpan;)V

    .line 432
    .end local v1    # "openBlockParser":Lorg/commonmark/internal/DocumentParser$OpenBlockParser;
    .end local v2    # "blockIndex":I
    .end local v3    # "length":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private advance()V
    .locals 3

    .line 388
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 389
    .local v0, "c":C
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 390
    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 391
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    invoke-static {v1}, Lorg/commonmark/internal/util/Parsing;->columnsToNextTabStop(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    goto :goto_0

    .line 393
    :cond_0
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 395
    :goto_0
    return-void
.end method

.method public static calculateBlockParserFactories(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;"
        }
    .end annotation

    .line 92
    .local p0, "customBlockParserFactories":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/block/BlockParserFactory;>;"
    .local p1, "enabledBlockTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lorg/commonmark/node/Block;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/block/BlockParserFactory;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 96
    .local v2, "blockType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/commonmark/node/Block;>;"
    sget-object v3, Lorg/commonmark/internal/DocumentParser;->NODES_TO_CORE_FACTORIES:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v2    # "blockType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/commonmark/node/Block;>;"
    goto :goto_0

    .line 98
    :cond_0
    return-object v0
.end method

.method public static checkEnabledBlockTypes(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "enabledBlockTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Lorg/commonmark/node/Block;>;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 103
    .local v1, "enabledBlockType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/commonmark/node/Block;>;"
    sget-object v2, Lorg/commonmark/internal/DocumentParser;->NODES_TO_CORE_FACTORIES:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    .end local v1    # "enabledBlockType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/commonmark/node/Block;>;"
    goto :goto_0

    .line 104
    .restart local v1    # "enabledBlockType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/commonmark/node/Block;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t enable block type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", possible options are: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    .end local v1    # "enabledBlockType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/commonmark/node/Block;>;"
    :cond_1
    return-void
.end method

.method private closeBlockParsers(I)V
    .locals 3
    .param p1, "count"    # I

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 536
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->deactivateBlockParser()Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    move-result-object v1

    invoke-static {v1}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->access$000(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)Lorg/commonmark/parser/block/BlockParser;

    move-result-object v1

    .line 537
    .local v1, "blockParser":Lorg/commonmark/parser/block/BlockParser;
    invoke-direct {p0, v1}, Lorg/commonmark/internal/DocumentParser;->finalize(Lorg/commonmark/parser/block/BlockParser;)V

    .line 541
    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    .end local v1    # "blockParser":Lorg/commonmark/parser/block/BlockParser;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private deactivateBlockParser()Lorg/commonmark/internal/DocumentParser$OpenBlockParser;
    .locals 2

    .line 505
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    return-object v0
.end method

.method private finalize(Lorg/commonmark/parser/block/BlockParser;)V
    .locals 1
    .param p1, "blockParser"    # Lorg/commonmark/parser/block/BlockParser;

    .line 459
    instance-of v0, p1, Lorg/commonmark/internal/ParagraphParser;

    if-eqz v0, :cond_0

    .line 460
    move-object v0, p1

    check-cast v0, Lorg/commonmark/internal/ParagraphParser;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V

    .line 463
    :cond_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/BlockParser;->closeBlock()V

    .line 464
    return-void
.end method

.method private finalizeAndProcess()Lorg/commonmark/node/Document;
    .locals 1

    .line 529
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->closeBlockParsers(I)V

    .line 530
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->processInlines()V

    .line 531
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

    invoke-virtual {v0}, Lorg/commonmark/internal/DocumentBlockParser;->getBlock()Lorg/commonmark/node/Document;

    move-result-object v0

    return-object v0
.end method

.method private findBlockStart(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/internal/BlockStartImpl;
    .locals 5
    .param p1, "blockParser"    # Lorg/commonmark/parser/block/BlockParser;

    .line 444
    new-instance v0, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;

    invoke-direct {v0, p1}, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;-><init>(Lorg/commonmark/parser/block/BlockParser;)V

    .line 445
    .local v0, "matchedBlockParser":Lorg/commonmark/parser/block/MatchedBlockParser;
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->blockParserFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/commonmark/parser/block/BlockParserFactory;

    .line 446
    .local v2, "blockParserFactory":Lorg/commonmark/parser/block/BlockParserFactory;
    invoke-interface {v2, p0, v0}, Lorg/commonmark/parser/block/BlockParserFactory;->tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v3

    .line 447
    .local v3, "result":Lorg/commonmark/parser/block/BlockStart;
    instance-of v4, v3, Lorg/commonmark/internal/BlockStartImpl;

    if-eqz v4, :cond_0

    .line 448
    move-object v1, v3

    check-cast v1, Lorg/commonmark/internal/BlockStartImpl;

    return-object v1

    .line 450
    .end local v2    # "blockParserFactory":Lorg/commonmark/parser/block/BlockParserFactory;
    .end local v3    # "result":Lorg/commonmark/parser/block/BlockStart;
    :cond_0
    goto :goto_0

    .line 451
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNextNonSpace()V
    .locals 5

    .line 327
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 328
    .local v0, "i":I
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 330
    .local v1, "cols":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 331
    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 332
    .local v2, "length":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 333
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v3}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 334
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    .line 344
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 345
    goto :goto_1

    .line 336
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 337
    add-int/lit8 v1, v1, 0x1

    .line 338
    goto :goto_0

    .line 340
    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 341
    rem-int/lit8 v4, v1, 0x4

    rsub-int/lit8 v4, v4, 0x4

    add-int/2addr v1, v4

    .line 342
    goto :goto_0

    .line 348
    .end local v3    # "c":C
    :cond_0
    :goto_1
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 349
    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    .line 350
    iget v3, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    sub-int v3, v1, v3

    iput v3, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 351
    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDefaultBlockParserTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;"
        }
    .end annotation

    .line 88
    sget-object v0, Lorg/commonmark/internal/DocumentParser;->CORE_FACTORY_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method private parseLine(Ljava/lang/CharSequence;)V
    .locals 16
    .param p1, "ln"    # Ljava/lang/CharSequence;

    .line 188
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lorg/commonmark/internal/DocumentParser;->setLine(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v1, 0x1

    .line 193
    .local v1, "matches":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_3

    .line 194
    iget-object v3, v0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    .line 195
    .local v3, "openBlockParser":Lorg/commonmark/internal/DocumentParser$OpenBlockParser;
    invoke-static {v3}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->access$000(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)Lorg/commonmark/parser/block/BlockParser;

    move-result-object v5

    .line 196
    .local v5, "blockParser":Lorg/commonmark/parser/block/BlockParser;
    invoke-direct/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->findNextNonSpace()V

    .line 198
    invoke-interface {v5, v0}, Lorg/commonmark/parser/block/BlockParser;->tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v6

    .line 199
    .local v6, "result":Lorg/commonmark/parser/block/BlockContinue;
    instance-of v7, v6, Lorg/commonmark/internal/BlockContinueImpl;

    if-eqz v7, :cond_3

    .line 200
    move-object v7, v6

    check-cast v7, Lorg/commonmark/internal/BlockContinueImpl;

    .line 201
    .local v7, "blockContinue":Lorg/commonmark/internal/BlockContinueImpl;
    invoke-virtual/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->getIndex()I

    move-result v8

    invoke-static {v3, v8}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->access$102(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;I)I

    .line 202
    invoke-virtual {v7}, Lorg/commonmark/internal/BlockContinueImpl;->isFinalize()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 203
    invoke-direct/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->addSourceSpans()V

    .line 204
    iget-object v4, v0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {v0, v4}, Lorg/commonmark/internal/DocumentParser;->closeBlockParsers(I)V

    .line 205
    return-void

    .line 207
    :cond_0
    invoke-virtual {v7}, Lorg/commonmark/internal/BlockContinueImpl;->getNewIndex()I

    move-result v8

    if-eq v8, v4, :cond_1

    .line 208
    invoke-virtual {v7}, Lorg/commonmark/internal/BlockContinueImpl;->getNewIndex()I

    move-result v4

    invoke-direct {v0, v4}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {v7}, Lorg/commonmark/internal/BlockContinueImpl;->getNewColumn()I

    move-result v8

    if-eq v8, v4, :cond_2

    .line 210
    invoke-virtual {v7}, Lorg/commonmark/internal/BlockContinueImpl;->getNewColumn()I

    move-result v4

    invoke-direct {v0, v4}, Lorg/commonmark/internal/DocumentParser;->setNewColumn(I)V

    .line 212
    :cond_2
    :goto_1
    nop

    .end local v3    # "openBlockParser":Lorg/commonmark/internal/DocumentParser$OpenBlockParser;
    .end local v5    # "blockParser":Lorg/commonmark/parser/block/BlockParser;
    .end local v6    # "result":Lorg/commonmark/parser/block/BlockContinue;
    .end local v7    # "blockContinue":Lorg/commonmark/internal/BlockContinueImpl;
    add-int/lit8 v1, v1, 0x1

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "i":I
    :cond_3
    iget-object v2, v0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 220
    .local v2, "unmatchedBlocks":I
    iget-object v3, v0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    invoke-static {v3}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->access$000(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)Lorg/commonmark/parser/block/BlockParser;

    move-result-object v3

    .line 221
    .local v3, "blockParser":Lorg/commonmark/parser/block/BlockParser;
    const/4 v5, 0x0

    .line 223
    .local v5, "startedNewBlock":Z
    iget v6, v0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 227
    .local v6, "lastIndex":I
    invoke-interface {v3}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v7

    instance-of v7, v7, Lorg/commonmark/node/Paragraph;

    const/4 v9, 0x1

    if-nez v7, :cond_5

    invoke-interface {v3}, Lorg/commonmark/parser/block/BlockParser;->isContainer()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move v7, v9

    .line 228
    .local v7, "tryBlockStarts":Z
    :goto_3
    if-eqz v7, :cond_f

    .line 229
    iget v6, v0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 230
    invoke-direct/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->findNextNonSpace()V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->isBlank()Z

    move-result v10

    if-nez v10, :cond_e

    iget v10, v0, Lorg/commonmark/internal/DocumentParser;->indent:I

    sget v11, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-ge v10, v11, :cond_6

    iget-object v10, v0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v10}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v10

    iget v11, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    invoke-static {v10, v11}, Lorg/commonmark/internal/util/Parsing;->isLetter(Ljava/lang/CharSequence;I)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_6

    .line 238
    :cond_6
    invoke-direct {v0, v3}, Lorg/commonmark/internal/DocumentParser;->findBlockStart(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/internal/BlockStartImpl;

    move-result-object v10

    .line 239
    .local v10, "blockStart":Lorg/commonmark/internal/BlockStartImpl;
    if-nez v10, :cond_7

    .line 240
    iget v4, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    invoke-direct {v0, v4}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    .line 241
    goto :goto_7

    .line 244
    :cond_7
    const/4 v5, 0x1

    .line 245
    invoke-virtual/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->getIndex()I

    move-result v11

    .line 248
    .local v11, "sourceIndex":I
    if-lez v2, :cond_8

    .line 249
    invoke-direct {v0, v2}, Lorg/commonmark/internal/DocumentParser;->closeBlockParsers(I)V

    .line 250
    const/4 v2, 0x0

    .line 253
    :cond_8
    invoke-virtual {v10}, Lorg/commonmark/internal/BlockStartImpl;->getNewIndex()I

    move-result v12

    if-eq v12, v4, :cond_9

    .line 254
    invoke-virtual {v10}, Lorg/commonmark/internal/BlockStartImpl;->getNewIndex()I

    move-result v12

    invoke-direct {v0, v12}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    goto :goto_4

    .line 255
    :cond_9
    invoke-virtual {v10}, Lorg/commonmark/internal/BlockStartImpl;->getNewColumn()I

    move-result v12

    if-eq v12, v4, :cond_a

    .line 256
    invoke-virtual {v10}, Lorg/commonmark/internal/BlockStartImpl;->getNewColumn()I

    move-result v12

    invoke-direct {v0, v12}, Lorg/commonmark/internal/DocumentParser;->setNewColumn(I)V

    .line 259
    :cond_a
    :goto_4
    const/4 v12, 0x0

    .line 260
    .local v12, "replacedSourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    invoke-virtual {v10}, Lorg/commonmark/internal/BlockStartImpl;->isReplaceActiveBlockParser()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 261
    invoke-direct/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->prepareActiveBlockParserForReplacement()Lorg/commonmark/node/Block;

    move-result-object v13

    .line 262
    .local v13, "replacedBlock":Lorg/commonmark/node/Block;
    invoke-virtual {v13}, Lorg/commonmark/node/Block;->getSourceSpans()Ljava/util/List;

    move-result-object v12

    .line 265
    .end local v13    # "replacedBlock":Lorg/commonmark/node/Block;
    :cond_b
    invoke-virtual {v10}, Lorg/commonmark/internal/BlockStartImpl;->getBlockParsers()[Lorg/commonmark/parser/block/BlockParser;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_d

    aget-object v4, v13, v15

    .line 266
    .local v4, "newBlockParser":Lorg/commonmark/parser/block/BlockParser;
    new-instance v8, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    invoke-direct {v8, v4, v11}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;-><init>(Lorg/commonmark/parser/block/BlockParser;I)V

    invoke-direct {v0, v8}, Lorg/commonmark/internal/DocumentParser;->addChild(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)V

    .line 267
    if-eqz v12, :cond_c

    .line 268
    invoke-interface {v4}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v8

    invoke-virtual {v8, v12}, Lorg/commonmark/node/Block;->setSourceSpans(Ljava/util/List;)V

    .line 270
    :cond_c
    move-object v3, v4

    .line 271
    invoke-interface {v4}, Lorg/commonmark/parser/block/BlockParser;->isContainer()Z

    move-result v7

    .line 265
    .end local v4    # "newBlockParser":Lorg/commonmark/parser/block/BlockParser;
    add-int/lit8 v15, v15, 0x1

    const/4 v4, -0x1

    goto :goto_5

    .line 273
    .end local v10    # "blockStart":Lorg/commonmark/internal/BlockStartImpl;
    .end local v11    # "sourceIndex":I
    .end local v12    # "replacedSourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    :cond_d
    const/4 v4, -0x1

    goto/16 :goto_3

    .line 234
    :cond_e
    :goto_6
    iget v4, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    invoke-direct {v0, v4}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    .line 279
    :cond_f
    :goto_7
    if-nez v5, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->isBlank()Z

    move-result v4

    if-nez v4, :cond_10

    .line 280
    invoke-virtual/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v4

    invoke-interface {v4}, Lorg/commonmark/parser/block/BlockParser;->canHaveLazyContinuationLines()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 281
    iget-object v4, v0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    invoke-static {v4, v6}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->access$102(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;I)I

    .line 283
    invoke-direct/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    goto :goto_8

    .line 288
    :cond_10
    if-lez v2, :cond_11

    .line 289
    invoke-direct {v0, v2}, Lorg/commonmark/internal/DocumentParser;->closeBlockParsers(I)V

    .line 292
    :cond_11
    invoke-interface {v3}, Lorg/commonmark/parser/block/BlockParser;->isContainer()Z

    move-result v4

    if-nez v4, :cond_12

    .line 293
    invoke-direct/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    goto :goto_8

    .line 294
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->isBlank()Z

    move-result v4

    if-nez v4, :cond_13

    .line 296
    new-instance v4, Lorg/commonmark/internal/ParagraphParser;

    invoke-direct {v4}, Lorg/commonmark/internal/ParagraphParser;-><init>()V

    .line 297
    .local v4, "paragraphParser":Lorg/commonmark/internal/ParagraphParser;
    new-instance v8, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    invoke-direct {v8, v4, v6}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;-><init>(Lorg/commonmark/parser/block/BlockParser;I)V

    invoke-direct {v0, v8}, Lorg/commonmark/internal/DocumentParser;->addChild(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)V

    .line 298
    invoke-direct/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    .line 299
    .end local v4    # "paragraphParser":Lorg/commonmark/internal/ParagraphParser;
    goto :goto_8

    .line 307
    :cond_13
    invoke-direct/range {p0 .. p0}, Lorg/commonmark/internal/DocumentParser;->addSourceSpans()V

    .line 310
    :goto_8
    return-void
.end method

.method private prepareActiveBlockParserForReplacement()Lorg/commonmark/node/Block;
    .locals 2

    .line 510
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->deactivateBlockParser()Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    move-result-object v0

    invoke-static {v0}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->access$000(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    .line 512
    .local v0, "old":Lorg/commonmark/parser/block/BlockParser;
    instance-of v1, v0, Lorg/commonmark/internal/ParagraphParser;

    if-eqz v1, :cond_0

    .line 513
    move-object v1, v0

    check-cast v1, Lorg/commonmark/internal/ParagraphParser;

    .line 519
    .local v1, "paragraphParser":Lorg/commonmark/internal/ParagraphParser;
    invoke-direct {p0, v1}, Lorg/commonmark/internal/DocumentParser;->addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V

    .line 523
    .end local v1    # "paragraphParser":Lorg/commonmark/internal/ParagraphParser;
    :cond_0
    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->closeBlock()V

    .line 524
    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/commonmark/node/Block;->unlink()V

    .line 525
    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v1

    return-object v1
.end method

.method private processInlines()V
    .locals 4

    .line 479
    new-instance v0, Lorg/commonmark/internal/InlineParserContextImpl;

    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->delimiterProcessors:Ljava/util/List;

    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Lorg/commonmark/internal/LinkReferenceDefinitions;

    invoke-direct {v0, v1, v2}, Lorg/commonmark/internal/InlineParserContextImpl;-><init>(Ljava/util/List;Lorg/commonmark/internal/LinkReferenceDefinitions;)V

    .line 480
    .local v0, "context":Lorg/commonmark/internal/InlineParserContextImpl;
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

    invoke-interface {v1, v0}, Lorg/commonmark/parser/InlineParserFactory;->create(Lorg/commonmark/parser/InlineParserContext;)Lorg/commonmark/parser/InlineParser;

    move-result-object v1

    .line 482
    .local v1, "inlineParser":Lorg/commonmark/parser/InlineParser;
    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/parser/block/BlockParser;

    .line 483
    .local v3, "blockParser":Lorg/commonmark/parser/block/BlockParser;
    invoke-interface {v3, v1}, Lorg/commonmark/parser/block/BlockParser;->parseInlines(Lorg/commonmark/parser/InlineParser;)V

    .line 484
    .end local v3    # "blockParser":Lorg/commonmark/parser/block/BlockParser;
    goto :goto_0

    .line 485
    :cond_0
    return-void
.end method

.method private setLine(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "ln"    # Ljava/lang/CharSequence;

    .line 313
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->lineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->lineIndex:I

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 315
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 316
    iput-boolean v0, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 318
    invoke-static {p1}, Lorg/commonmark/internal/util/Parsing;->prepareLine(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 319
    .local v1, "lineContent":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 320
    .local v2, "sourceSpan":Lorg/commonmark/node/SourceSpan;
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->includeSourceSpans:Lorg/commonmark/parser/IncludeSourceSpans;

    sget-object v4, Lorg/commonmark/parser/IncludeSourceSpans;->NONE:Lorg/commonmark/parser/IncludeSourceSpans;

    if-eq v3, v4, :cond_0

    .line 321
    iget v3, p0, Lorg/commonmark/internal/DocumentParser;->lineIndex:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v0, v4}, Lorg/commonmark/node/SourceSpan;->of(III)Lorg/commonmark/node/SourceSpan;

    move-result-object v2

    .line 323
    :cond_0
    invoke-static {v1, v2}, Lorg/commonmark/parser/SourceLine;->of(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)Lorg/commonmark/parser/SourceLine;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    .line 324
    return-void
.end method

.method private setNewColumn(I)V
    .locals 3
    .param p1, "newColumn"    # I

    .line 368
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    if-lt p1, v0, :cond_0

    .line 370
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 371
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 373
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 374
    .local v0, "length":I
    :goto_0
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    if-ge v1, p1, :cond_1

    iget v2, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    if-eq v2, v0, :cond_1

    .line 375
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->advance()V

    goto :goto_0

    .line 377
    :cond_1
    if-le v1, p1, :cond_2

    .line 379
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 380
    iput p1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 381
    iput-boolean v2, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    goto :goto_1

    .line 383
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 385
    :goto_1
    return-void
.end method

.method private setNewIndex(I)V
    .locals 2
    .param p1, "newIndex"    # I

    .line 354
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    if-lt p1, v0, :cond_0

    .line 356
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 357
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 360
    .local v0, "length":I
    :goto_0
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    if-ge v1, p1, :cond_1

    if-eq v1, v0, :cond_1

    .line 361
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->advance()V

    goto :goto_0

    .line 364
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 365
    return-void
.end method


# virtual methods
.method public getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;
    .locals 2

    .line 180
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->openBlockParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;

    invoke-static {v0}, Lorg/commonmark/internal/DocumentParser$OpenBlockParser;->access$000(Lorg/commonmark/internal/DocumentParser$OpenBlockParser;)Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 165
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    return v0
.end method

.method public getIndent()I
    .locals 1

    .line 170
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    return v0
.end method

.method public getLine()Lorg/commonmark/parser/SourceLine;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Lorg/commonmark/parser/SourceLine;

    return-object v0
.end method

.method public getNextNonSpaceIndex()I
    .locals 1

    .line 160
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    return v0
.end method

.method public isBlank()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    return v0
.end method

.method public parse(Ljava/io/Reader;)Lorg/commonmark/node/Document;
    .locals 3
    .param p1, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 135
    move-object v0, p1

    check-cast v0, Ljava/io/BufferedReader;

    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 137
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 141
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 142
    invoke-direct {p0, v2}, Lorg/commonmark/internal/DocumentParser;->parseLine(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->finalizeAndProcess()Lorg/commonmark/node/Document;

    move-result-object v1

    return-object v1
.end method

.method public parse(Ljava/lang/String;)Lorg/commonmark/node/Document;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "lineStart":I
    :goto_0
    invoke-static {p1, v0}, Lorg/commonmark/internal/util/Parsing;->findLineBreak(Ljava/lang/CharSequence;I)I

    move-result v1

    move v2, v1

    .local v2, "lineBreak":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 116
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "line":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/commonmark/internal/DocumentParser;->parseLine(Ljava/lang/CharSequence;)V

    .line 118
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 119
    add-int/lit8 v0, v2, 0x2

    goto :goto_1

    .line 121
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 123
    .end local v1    # "line":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 125
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    .restart local v1    # "line":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/commonmark/internal/DocumentParser;->parseLine(Ljava/lang/CharSequence;)V

    .line 129
    .end local v1    # "line":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->finalizeAndProcess()Lorg/commonmark/node/Document;

    move-result-object v1

    return-object v1
.end method
