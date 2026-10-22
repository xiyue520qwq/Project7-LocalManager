.class public Lorg/commonmark/internal/inline/EntityInlineParser;
.super Ljava/lang/Object;
.source "EntityInlineParser.java"

# interfaces
.implements Lorg/commonmark/internal/inline/InlineContentParser;


# static fields
.field private static final dec:Lorg/commonmark/internal/util/AsciiMatcher;

.field private static final entityContinue:Lorg/commonmark/internal/util/AsciiMatcher;

.field private static final entityStart:Lorg/commonmark/internal/util/AsciiMatcher;

.field private static final hex:Lorg/commonmark/internal/util/AsciiMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    invoke-static {}, Lorg/commonmark/internal/util/AsciiMatcher;->builder()Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v3, 0x41

    const/16 v4, 0x46

    invoke-virtual {v0, v3, v4}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v4, 0x61

    const/16 v5, 0x66

    invoke-virtual {v0, v4, v5}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->build()Lorg/commonmark/internal/util/AsciiMatcher;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/inline/EntityInlineParser;->hex:Lorg/commonmark/internal/util/AsciiMatcher;

    .line 13
    invoke-static {}, Lorg/commonmark/internal/util/AsciiMatcher;->builder()Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->build()Lorg/commonmark/internal/util/AsciiMatcher;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/inline/EntityInlineParser;->dec:Lorg/commonmark/internal/util/AsciiMatcher;

    .line 14
    invoke-static {}, Lorg/commonmark/internal/util/AsciiMatcher;->builder()Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v5, 0x5a

    invoke-virtual {v0, v3, v5}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v3, 0x7a

    invoke-virtual {v0, v4, v3}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->build()Lorg/commonmark/internal/util/AsciiMatcher;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/inline/EntityInlineParser;->entityStart:Lorg/commonmark/internal/util/AsciiMatcher;

    .line 15
    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher;->newBuilder()Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->build()Lorg/commonmark/internal/util/AsciiMatcher;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/inline/EntityInlineParser;->entityContinue:Lorg/commonmark/internal/util/AsciiMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private entity(Lorg/commonmark/internal/inline/Scanner;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;
    .locals 3
    .param p1, "scanner"    # Lorg/commonmark/internal/inline/Scanner;
    .param p2, "start"    # Lorg/commonmark/internal/inline/Position;

    .line 50
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lorg/commonmark/node/Text;

    invoke-static {v0}, Lorg/commonmark/internal/util/Html5Entities;->entityToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/commonmark/internal/inline/ParsedInline;->of(Lorg/commonmark/node/Node;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public tryParse(Lorg/commonmark/internal/inline/InlineParserState;)Lorg/commonmark/internal/inline/ParsedInline;
    .locals 6
    .param p1, "inlineParserState"    # Lorg/commonmark/internal/inline/InlineParserState;

    .line 19
    invoke-interface {p1}, Lorg/commonmark/internal/inline/InlineParserState;->scanner()Lorg/commonmark/internal/inline/Scanner;

    move-result-object v0

    .line 20
    .local v0, "scanner":Lorg/commonmark/internal/inline/Scanner;
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v1

    .line 22
    .local v1, "start":Lorg/commonmark/internal/inline/Position;
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 24
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v2

    .line 25
    .local v2, "c":C
    const/16 v3, 0x3b

    const/16 v4, 0x23

    if-ne v2, v4, :cond_4

    .line 27
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 28
    const/16 v4, 0x78

    invoke-virtual {v0, v4}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    const/16 v4, 0x58

    invoke-virtual {v0, v4}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v4, Lorg/commonmark/internal/inline/EntityInlineParser;->dec:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {v0, v4}, Lorg/commonmark/internal/inline/Scanner;->match(Lorg/commonmark/internal/util/CharMatcher;)I

    move-result v4

    .line 35
    .local v4, "digits":I
    if-gt v5, v4, :cond_1

    const/4 v5, 0x7

    if-gt v4, v5, :cond_1

    invoke-virtual {v0, v3}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-direct {p0, v0, v1}, Lorg/commonmark/internal/inline/EntityInlineParser;->entity(Lorg/commonmark/internal/inline/Scanner;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v3

    return-object v3

    .line 38
    .end local v4    # "digits":I
    :cond_1
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    sget-object v4, Lorg/commonmark/internal/inline/EntityInlineParser;->hex:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {v0, v4}, Lorg/commonmark/internal/inline/Scanner;->match(Lorg/commonmark/internal/util/CharMatcher;)I

    move-result v4

    .line 30
    .restart local v4    # "digits":I
    if-gt v5, v4, :cond_3

    const/4 v5, 0x6

    if-gt v4, v5, :cond_3

    invoke-virtual {v0, v3}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 31
    invoke-direct {p0, v0, v1}, Lorg/commonmark/internal/inline/EntityInlineParser;->entity(Lorg/commonmark/internal/inline/Scanner;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v3

    return-object v3

    .line 33
    .end local v4    # "digits":I
    :cond_3
    goto :goto_1

    .line 39
    :cond_4
    sget-object v4, Lorg/commonmark/internal/inline/EntityInlineParser;->entityStart:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {v4, v2}, Lorg/commonmark/internal/util/AsciiMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 40
    sget-object v4, Lorg/commonmark/internal/inline/EntityInlineParser;->entityContinue:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {v0, v4}, Lorg/commonmark/internal/inline/Scanner;->match(Lorg/commonmark/internal/util/CharMatcher;)I

    .line 41
    invoke-virtual {v0, v3}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 42
    invoke-direct {p0, v0, v1}, Lorg/commonmark/internal/inline/EntityInlineParser;->entity(Lorg/commonmark/internal/inline/Scanner;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v3

    return-object v3

    .line 46
    :cond_5
    :goto_1
    invoke-static {}, Lorg/commonmark/internal/inline/ParsedInline;->none()Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v3

    return-object v3
.end method
