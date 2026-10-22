.class public Lorg/commonmark/internal/HtmlBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "HtmlBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/HtmlBlockParser$Factory;
    }
.end annotation


# static fields
.field private static final BLOCK_PATTERNS:[[Ljava/util/regex/Pattern;


# instance fields
.field private final block:Lorg/commonmark/node/HtmlBlock;

.field private final closingPattern:Ljava/util/regex/Pattern;

.field private content:Lorg/commonmark/internal/BlockContent;

.field private finished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/util/regex/Pattern;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/regex/Pattern;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/util/regex/Pattern;

    .line 17
    const-string v6, "^<(?:script|pre|style|textarea)(?:\\s|>|$)"

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v2, v3

    .line 18
    const-string v6, "</(?:script|pre|style|textarea)>"

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/util/regex/Pattern;

    .line 21
    const-string v6, "^<!--"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v2, v3

    .line 22
    const-string v6, "-->"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/util/regex/Pattern;

    .line 25
    const-string v6, "^<[?]"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v2, v3

    .line 26
    const-string v6, "\\?>"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v6, 0x3

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/util/regex/Pattern;

    .line 29
    const-string v6, "^<![A-Z]"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v2, v3

    .line 30
    const-string v6, ">"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/util/regex/Pattern;

    .line 33
    const-string v6, "^<!\\[CDATA\\["

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v2, v3

    .line 34
    const-string v6, "\\]\\]>"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v6, 0x5

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/util/regex/Pattern;

    .line 37
    const-string v6, "^</?(?:address|article|aside|base|basefont|blockquote|body|caption|center|col|colgroup|dd|details|dialog|dir|div|dl|dt|fieldset|figcaption|figure|footer|form|frame|frameset|h1|h2|h3|h4|h5|h6|head|header|hr|html|iframe|legend|li|link|main|menu|menuitem|nav|noframes|ol|optgroup|option|p|param|section|source|summary|table|tbody|td|tfoot|th|thead|title|tr|track|ul)(?:\\s|[/]?[>]|$)"

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    aput-object v6, v2, v3

    aput-object v4, v2, v5

    const/4 v6, 0x6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/util/regex/Pattern;

    .line 57
    const-string v6, "^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>])\\s*$"

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    aput-object v1, v2, v3

    aput-object v4, v2, v5

    const/4 v1, 0x7

    aput-object v2, v0, v1

    sput-object v0, Lorg/commonmark/internal/HtmlBlockParser;->BLOCK_PATTERNS:[[Ljava/util/regex/Pattern;

    .line 14
    return-void
.end method

.method private constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "closingPattern"    # Ljava/util/regex/Pattern;

    .line 68
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 62
    new-instance v0, Lorg/commonmark/node/HtmlBlock;

    invoke-direct {v0}, Lorg/commonmark/node/HtmlBlock;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->block:Lorg/commonmark/node/HtmlBlock;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->finished:Z

    .line 66
    new-instance v0, Lorg/commonmark/internal/BlockContent;

    invoke-direct {v0}, Lorg/commonmark/internal/BlockContent;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->content:Lorg/commonmark/internal/BlockContent;

    .line 69
    iput-object p1, p0, Lorg/commonmark/internal/HtmlBlockParser;->closingPattern:Ljava/util/regex/Pattern;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/regex/Pattern;Lorg/commonmark/internal/HtmlBlockParser$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/regex/Pattern;
    .param p2, "x1"    # Lorg/commonmark/internal/HtmlBlockParser$1;

    .line 12
    invoke-direct {p0, p1}, Lorg/commonmark/internal/HtmlBlockParser;-><init>(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method static synthetic access$000()[[Ljava/util/regex/Pattern;
    .locals 1

    .line 12
    sget-object v0, Lorg/commonmark/internal/HtmlBlockParser;->BLOCK_PATTERNS:[[Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public addLine(Lorg/commonmark/parser/SourceLine;)V
    .locals 2
    .param p1, "line"    # Lorg/commonmark/parser/SourceLine;

    .line 93
    iget-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->content:Lorg/commonmark/internal/BlockContent;

    invoke-virtual {p1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/BlockContent;->add(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->closingPattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->finished:Z

    .line 98
    :cond_0
    return-void
.end method

.method public closeBlock()V
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->block:Lorg/commonmark/node/HtmlBlock;

    iget-object v1, p0, Lorg/commonmark/internal/HtmlBlockParser;->content:Lorg/commonmark/internal/BlockContent;

    invoke-virtual {v1}, Lorg/commonmark/internal/BlockContent;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/node/HtmlBlock;->setLiteral(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->content:Lorg/commonmark/internal/BlockContent;

    .line 104
    return-void
.end method

.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->block:Lorg/commonmark/node/HtmlBlock;

    return-object v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 1
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;

    .line 79
    iget-boolean v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->finished:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->closingPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    .line 85
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0

    .line 87
    :cond_1
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result v0

    invoke-static {v0}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0
.end method
