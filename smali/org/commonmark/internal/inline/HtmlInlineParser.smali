.class public Lorg/commonmark/internal/inline/HtmlInlineParser;
.super Ljava/lang/Object;
.source "HtmlInlineParser.java"

# interfaces
.implements Lorg/commonmark/internal/inline/InlineContentParser;


# static fields
.field private static final asciiLetter:Lorg/commonmark/internal/util/AsciiMatcher;

.field private static final attributeContinue:Lorg/commonmark/internal/util/AsciiMatcher;

.field private static final attributeStart:Lorg/commonmark/internal/util/AsciiMatcher;

.field private static final attributeValueEnd:Lorg/commonmark/internal/util/AsciiMatcher;

.field private static final tagNameContinue:Lorg/commonmark/internal/util/AsciiMatcher;

.field private static final tagNameStart:Lorg/commonmark/internal/util/AsciiMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    invoke-static {}, Lorg/commonmark/internal/util/AsciiMatcher;->builder()Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->build()Lorg/commonmark/internal/util/AsciiMatcher;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/inline/HtmlInlineParser;->asciiLetter:Lorg/commonmark/internal/util/AsciiMatcher;

    .line 14
    sput-object v0, Lorg/commonmark/internal/inline/HtmlInlineParser;->tagNameStart:Lorg/commonmark/internal/util/AsciiMatcher;

    .line 15
    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher;->newBuilder()Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v1

    const/16 v2, 0x30

    const/16 v3, 0x39

    invoke-virtual {v1, v2, v3}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v1

    const/16 v4, 0x2d

    invoke-virtual {v1, v4}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->build()Lorg/commonmark/internal/util/AsciiMatcher;

    move-result-object v1

    sput-object v1, Lorg/commonmark/internal/inline/HtmlInlineParser;->tagNameContinue:Lorg/commonmark/internal/util/AsciiMatcher;

    .line 19
    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher;->newBuilder()Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->build()Lorg/commonmark/internal/util/AsciiMatcher;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/inline/HtmlInlineParser;->attributeStart:Lorg/commonmark/internal/util/AsciiMatcher;

    .line 20
    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher;->newBuilder()Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->range(CC)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->build()Lorg/commonmark/internal/util/AsciiMatcher;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/inline/HtmlInlineParser;->attributeContinue:Lorg/commonmark/internal/util/AsciiMatcher;

    .line 22
    invoke-static {}, Lorg/commonmark/internal/util/AsciiMatcher;->builder()Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    .line 23
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    .line 24
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->c(C)Lorg/commonmark/internal/util/AsciiMatcher$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/commonmark/internal/util/AsciiMatcher$Builder;->build()Lorg/commonmark/internal/util/AsciiMatcher;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/inline/HtmlInlineParser;->attributeValueEnd:Lorg/commonmark/internal/util/AsciiMatcher;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static htmlInline(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Scanner;)Lorg/commonmark/internal/inline/ParsedInline;
    .locals 3
    .param p0, "start"    # Lorg/commonmark/internal/inline/Position;
    .param p1, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 70
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lorg/commonmark/node/HtmlInline;

    invoke-direct {v1}, Lorg/commonmark/node/HtmlInline;-><init>()V

    .line 72
    .local v1, "node":Lorg/commonmark/node/HtmlInline;
    invoke-virtual {v1, v0}, Lorg/commonmark/node/HtmlInline;->setLiteral(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/commonmark/internal/inline/ParsedInline;->of(Lorg/commonmark/node/Node;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v2

    return-object v2
.end method

.method private static tryCdata(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 1
    .param p0, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 172
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 174
    const-string v0, "CDATA["

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->next(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->find(C)I

    move-result v0

    if-ltz v0, :cond_1

    .line 176
    const-string v0, "]]>"

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->next(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    return v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static tryClosingTag(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 2
    .param p0, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 120
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 121
    sget-object v0, Lorg/commonmark/internal/inline/HtmlInlineParser;->tagNameStart:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->match(Lorg/commonmark/internal/util/CharMatcher;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 122
    sget-object v0, Lorg/commonmark/internal/inline/HtmlInlineParser;->tagNameContinue:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->match(Lorg/commonmark/internal/util/CharMatcher;)I

    .line 123
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    .line 124
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v0

    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static tryComment(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 4
    .param p0, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 147
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 148
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 149
    return v2

    .line 152
    :cond_0
    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "->"

    invoke-virtual {p0, v3}, Lorg/commonmark/internal/inline/Scanner;->next(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 156
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->find(C)I

    move-result v3

    if-ltz v3, :cond_3

    .line 157
    const-string v3, "--"

    invoke-virtual {p0, v3}, Lorg/commonmark/internal/inline/Scanner;->next(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    invoke-virtual {p0, v1}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v0

    return v0

    .line 160
    :cond_2
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_0

    .line 164
    :cond_3
    return v2

    .line 153
    :cond_4
    :goto_1
    return v2
.end method

.method private static tryDeclaration(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 2
    .param p0, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 190
    sget-object v0, Lorg/commonmark/internal/inline/HtmlInlineParser;->asciiLetter:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->match(Lorg/commonmark/internal/util/CharMatcher;)I

    .line 191
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 192
    return v1

    .line 194
    :cond_0
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->find(C)I

    move-result v0

    if-ltz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_1
    return v1
.end method

.method private static tryOpenTag(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 5
    .param p0, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 79
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 80
    sget-object v0, Lorg/commonmark/internal/inline/HtmlInlineParser;->tagNameContinue:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->match(Lorg/commonmark/internal/util/CharMatcher;)I

    .line 81
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 83
    .local v0, "whitespace":Z
    :cond_1
    :goto_0
    if-eqz v0, :cond_9

    sget-object v3, Lorg/commonmark/internal/inline/HtmlInlineParser;->attributeStart:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {p0, v3}, Lorg/commonmark/internal/inline/Scanner;->match(Lorg/commonmark/internal/util/CharMatcher;)I

    move-result v3

    if-lt v3, v2, :cond_9

    .line 84
    sget-object v3, Lorg/commonmark/internal/inline/HtmlInlineParser;->attributeContinue:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {p0, v3}, Lorg/commonmark/internal/inline/Scanner;->match(Lorg/commonmark/internal/util/CharMatcher;)I

    .line 87
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    move-result v3

    if-lt v3, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    move v0, v3

    .line 88
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    .line 90
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v3

    .line 91
    .local v3, "valueStart":C
    const/16 v4, 0x27

    if-ne v3, v4, :cond_4

    .line 92
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 93
    invoke-virtual {p0, v4}, Lorg/commonmark/internal/inline/Scanner;->find(C)I

    move-result v4

    if-gez v4, :cond_3

    .line 94
    return v1

    .line 96
    :cond_3
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_2

    .line 97
    :cond_4
    const/16 v4, 0x22

    if-ne v3, v4, :cond_6

    .line 98
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 99
    invoke-virtual {p0, v4}, Lorg/commonmark/internal/inline/Scanner;->find(C)I

    move-result v4

    if-gez v4, :cond_5

    .line 100
    return v1

    .line 102
    :cond_5
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_2

    .line 104
    :cond_6
    sget-object v4, Lorg/commonmark/internal/inline/HtmlInlineParser;->attributeValueEnd:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {p0, v4}, Lorg/commonmark/internal/inline/Scanner;->find(Lorg/commonmark/internal/util/CharMatcher;)I

    move-result v4

    if-gtz v4, :cond_7

    .line 105
    return v1

    .line 110
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    move-result v4

    if-lt v4, v2, :cond_8

    move v4, v2

    goto :goto_3

    :cond_8
    move v4, v1

    :goto_3
    move v0, v4

    .line 111
    .end local v3    # "valueStart":C
    goto :goto_0

    .line 114
    :cond_9
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    .line 115
    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v1

    return v1
.end method

.method private static tryProcessingInstruction(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 1
    .param p0, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 132
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 133
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->find(C)I

    move-result v0

    if-lez v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 135
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public tryParse(Lorg/commonmark/internal/inline/InlineParserState;)Lorg/commonmark/internal/inline/ParsedInline;
    .locals 4
    .param p1, "inlineParserState"    # Lorg/commonmark/internal/inline/InlineParserState;

    .line 29
    invoke-interface {p1}, Lorg/commonmark/internal/inline/InlineParserState;->scanner()Lorg/commonmark/internal/inline/Scanner;

    move-result-object v0

    .line 30
    .local v0, "scanner":Lorg/commonmark/internal/inline/Scanner;
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v1

    .line 32
    .local v1, "start":Lorg/commonmark/internal/inline/Position;
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 34
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v2

    .line 35
    .local v2, "c":C
    sget-object v3, Lorg/commonmark/internal/inline/HtmlInlineParser;->tagNameStart:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {v3, v2}, Lorg/commonmark/internal/util/AsciiMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-static {v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->tryOpenTag(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 37
    invoke-static {v1, v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->htmlInline(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Scanner;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v3

    return-object v3

    .line 39
    :cond_0
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    .line 40
    invoke-static {v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->tryClosingTag(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 41
    invoke-static {v1, v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->htmlInline(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Scanner;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v3

    return-object v3

    .line 43
    :cond_1
    const/16 v3, 0x3f

    if-ne v2, v3, :cond_2

    .line 44
    invoke-static {v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->tryProcessingInstruction(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 45
    invoke-static {v1, v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->htmlInline(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Scanner;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v3

    return-object v3

    .line 47
    :cond_2
    const/16 v3, 0x21

    if-ne v2, v3, :cond_5

    .line 49
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 50
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v2

    .line 51
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3

    .line 52
    invoke-static {v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->tryComment(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 53
    invoke-static {v1, v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->htmlInline(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Scanner;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v3

    return-object v3

    .line 55
    :cond_3
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_4

    .line 56
    invoke-static {v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->tryCdata(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 57
    invoke-static {v1, v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->htmlInline(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Scanner;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v3

    return-object v3

    .line 59
    :cond_4
    sget-object v3, Lorg/commonmark/internal/inline/HtmlInlineParser;->asciiLetter:Lorg/commonmark/internal/util/AsciiMatcher;

    invoke-virtual {v3, v2}, Lorg/commonmark/internal/util/AsciiMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 60
    invoke-static {v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->tryDeclaration(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 61
    invoke-static {v1, v0}, Lorg/commonmark/internal/inline/HtmlInlineParser;->htmlInline(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Scanner;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v3

    return-object v3

    .line 66
    :cond_5
    invoke-static {}, Lorg/commonmark/internal/inline/ParsedInline;->none()Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v3

    return-object v3
.end method
