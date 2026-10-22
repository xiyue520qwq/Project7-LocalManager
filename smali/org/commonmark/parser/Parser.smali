.class public Lorg/commonmark/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/parser/Parser$ParserExtension;,
        Lorg/commonmark/parser/Parser$Builder;
    }
.end annotation


# instance fields
.field private final blockParserFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final delimiterProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final includeSourceSpans:Lorg/commonmark/parser/IncludeSourceSpans;

.field private final inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

.field private final postProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/PostProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/commonmark/parser/Parser$Builder;)V
    .locals 4
    .param p1, "builder"    # Lorg/commonmark/parser/Parser$Builder;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lorg/commonmark/parser/Parser$Builder;->access$000(Lorg/commonmark/parser/Parser$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lorg/commonmark/parser/Parser$Builder;->access$100(Lorg/commonmark/parser/Parser$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/commonmark/internal/DocumentParser;->calculateBlockParserFactories(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/parser/Parser;->blockParserFactories:Ljava/util/List;

    .line 38
    invoke-static {p1}, Lorg/commonmark/parser/Parser$Builder;->access$200(Lorg/commonmark/parser/Parser$Builder;)Lorg/commonmark/parser/InlineParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/parser/Parser;->inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

    .line 39
    invoke-static {p1}, Lorg/commonmark/parser/Parser$Builder;->access$300(Lorg/commonmark/parser/Parser$Builder;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/commonmark/parser/Parser;->postProcessors:Ljava/util/List;

    .line 40
    invoke-static {p1}, Lorg/commonmark/parser/Parser$Builder;->access$400(Lorg/commonmark/parser/Parser$Builder;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/commonmark/parser/Parser;->delimiterProcessors:Ljava/util/List;

    .line 41
    invoke-static {p1}, Lorg/commonmark/parser/Parser$Builder;->access$500(Lorg/commonmark/parser/Parser$Builder;)Lorg/commonmark/parser/IncludeSourceSpans;

    move-result-object v2

    iput-object v2, p0, Lorg/commonmark/parser/Parser;->includeSourceSpans:Lorg/commonmark/parser/IncludeSourceSpans;

    .line 45
    new-instance v2, Lorg/commonmark/internal/InlineParserContextImpl;

    new-instance v3, Lorg/commonmark/internal/LinkReferenceDefinitions;

    invoke-direct {v3}, Lorg/commonmark/internal/LinkReferenceDefinitions;-><init>()V

    invoke-direct {v2, v1, v3}, Lorg/commonmark/internal/InlineParserContextImpl;-><init>(Ljava/util/List;Lorg/commonmark/internal/LinkReferenceDefinitions;)V

    invoke-interface {v0, v2}, Lorg/commonmark/parser/InlineParserFactory;->create(Lorg/commonmark/parser/InlineParserContext;)Lorg/commonmark/parser/InlineParser;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lorg/commonmark/parser/Parser$Builder;Lorg/commonmark/parser/Parser$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/commonmark/parser/Parser$Builder;
    .param p2, "x1"    # Lorg/commonmark/parser/Parser$1;

    .line 28
    invoke-direct {p0, p1}, Lorg/commonmark/parser/Parser;-><init>(Lorg/commonmark/parser/Parser$Builder;)V

    return-void
.end method

.method public static builder()Lorg/commonmark/parser/Parser$Builder;
    .locals 1

    .line 54
    new-instance v0, Lorg/commonmark/parser/Parser$Builder;

    invoke-direct {v0}, Lorg/commonmark/parser/Parser$Builder;-><init>()V

    return-object v0
.end method

.method private createDocumentParser()Lorg/commonmark/internal/DocumentParser;
    .locals 5

    .line 103
    new-instance v0, Lorg/commonmark/internal/DocumentParser;

    iget-object v1, p0, Lorg/commonmark/parser/Parser;->blockParserFactories:Ljava/util/List;

    iget-object v2, p0, Lorg/commonmark/parser/Parser;->inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

    iget-object v3, p0, Lorg/commonmark/parser/Parser;->delimiterProcessors:Ljava/util/List;

    iget-object v4, p0, Lorg/commonmark/parser/Parser;->includeSourceSpans:Lorg/commonmark/parser/IncludeSourceSpans;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/commonmark/internal/DocumentParser;-><init>(Ljava/util/List;Lorg/commonmark/parser/InlineParserFactory;Ljava/util/List;Lorg/commonmark/parser/IncludeSourceSpans;)V

    return-object v0
.end method

.method private postProcess(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;
    .locals 2
    .param p1, "document"    # Lorg/commonmark/node/Node;

    .line 107
    iget-object v0, p0, Lorg/commonmark/parser/Parser;->postProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/parser/PostProcessor;

    .line 108
    .local v1, "postProcessor":Lorg/commonmark/parser/PostProcessor;
    invoke-interface {v1, p1}, Lorg/commonmark/parser/PostProcessor;->process(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;

    move-result-object p1

    .line 109
    .end local v1    # "postProcessor":Lorg/commonmark/parser/PostProcessor;
    goto :goto_0

    .line 110
    :cond_0
    return-object p1
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lorg/commonmark/node/Node;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .line 66
    if-eqz p1, :cond_0

    .line 69
    invoke-direct {p0}, Lorg/commonmark/parser/Parser;->createDocumentParser()Lorg/commonmark/internal/DocumentParser;

    move-result-object v0

    .line 70
    .local v0, "documentParser":Lorg/commonmark/internal/DocumentParser;
    invoke-virtual {v0, p1}, Lorg/commonmark/internal/DocumentParser;->parse(Ljava/lang/String;)Lorg/commonmark/node/Document;

    move-result-object v1

    .line 71
    .local v1, "document":Lorg/commonmark/node/Node;
    invoke-direct {p0, v1}, Lorg/commonmark/parser/Parser;->postProcess(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;

    move-result-object v2

    return-object v2

    .line 67
    .end local v0    # "documentParser":Lorg/commonmark/internal/DocumentParser;
    .end local v1    # "document":Lorg/commonmark/node/Node;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseReader(Ljava/io/Reader;)Lorg/commonmark/node/Node;
    .locals 3
    .param p1, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0}, Lorg/commonmark/parser/Parser;->createDocumentParser()Lorg/commonmark/internal/DocumentParser;

    move-result-object v0

    .line 98
    .local v0, "documentParser":Lorg/commonmark/internal/DocumentParser;
    invoke-virtual {v0, p1}, Lorg/commonmark/internal/DocumentParser;->parse(Ljava/io/Reader;)Lorg/commonmark/node/Document;

    move-result-object v1

    .line 99
    .local v1, "document":Lorg/commonmark/node/Node;
    invoke-direct {p0, v1}, Lorg/commonmark/parser/Parser;->postProcess(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;

    move-result-object v2

    return-object v2

    .line 94
    .end local v0    # "documentParser":Lorg/commonmark/internal/DocumentParser;
    .end local v1    # "document":Lorg/commonmark/node/Node;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
