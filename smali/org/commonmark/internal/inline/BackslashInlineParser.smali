.class public Lorg/commonmark/internal/inline/BackslashInlineParser;
.super Ljava/lang/Object;
.source "BackslashInlineParser.java"

# interfaces
.implements Lorg/commonmark/internal/inline/InlineContentParser;


# static fields
.field private static final ESCAPABLE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "^[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/inline/BackslashInlineParser;->ESCAPABLE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tryParse(Lorg/commonmark/internal/inline/InlineParserState;)Lorg/commonmark/internal/inline/ParsedInline;
    .locals 4
    .param p1, "inlineParserState"    # Lorg/commonmark/internal/inline/InlineParserState;

    .line 20
    invoke-interface {p1}, Lorg/commonmark/internal/inline/InlineParserState;->scanner()Lorg/commonmark/internal/inline/Scanner;

    move-result-object v0

    .line 22
    .local v0, "scanner":Lorg/commonmark/internal/inline/Scanner;
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 24
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v1

    .line 25
    .local v1, "next":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 26
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 27
    new-instance v2, Lorg/commonmark/node/HardLineBreak;

    invoke-direct {v2}, Lorg/commonmark/node/HardLineBreak;-><init>()V

    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/commonmark/internal/inline/ParsedInline;->of(Lorg/commonmark/node/Node;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v2

    return-object v2

    .line 28
    :cond_0
    sget-object v2, Lorg/commonmark/internal/inline/BackslashInlineParser;->ESCAPABLE:Ljava/util/regex/Pattern;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 30
    new-instance v2, Lorg/commonmark/node/Text;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/commonmark/internal/inline/ParsedInline;->of(Lorg/commonmark/node/Node;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v2

    return-object v2

    .line 32
    :cond_1
    new-instance v2, Lorg/commonmark/node/Text;

    const-string v3, "\\"

    invoke-direct {v2, v3}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/commonmark/internal/inline/ParsedInline;->of(Lorg/commonmark/node/Node;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v2

    return-object v2
.end method
