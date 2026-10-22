.class public Lorg/commonmark/internal/inline/AutolinkInlineParser;
.super Ljava/lang/Object;
.source "AutolinkInlineParser.java"

# interfaces
.implements Lorg/commonmark/internal/inline/InlineContentParser;


# static fields
.field private static final EMAIL:Ljava/util/regex/Pattern;

.field private static final URI:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    nop

    .line 15
    const-string v0, "^[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/inline/AutolinkInlineParser;->URI:Ljava/util/regex/Pattern;

    .line 17
    nop

    .line 18
    const-string v0, "^([a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/inline/AutolinkInlineParser;->EMAIL:Ljava/util/regex/Pattern;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tryParse(Lorg/commonmark/internal/inline/InlineParserState;)Lorg/commonmark/internal/inline/ParsedInline;
    .locals 8
    .param p1, "inlineParserState"    # Lorg/commonmark/internal/inline/InlineParserState;

    .line 22
    invoke-interface {p1}, Lorg/commonmark/internal/inline/InlineParserState;->scanner()Lorg/commonmark/internal/inline/Scanner;

    move-result-object v0

    .line 23
    .local v0, "scanner":Lorg/commonmark/internal/inline/Scanner;
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 24
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v1

    .line 25
    .local v1, "textStart":Lorg/commonmark/internal/inline/Position;
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Lorg/commonmark/internal/inline/Scanner;->find(C)I

    move-result v2

    if-lez v2, :cond_2

    .line 26
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v2

    .line 27
    .local v2, "textSource":Lorg/commonmark/parser/SourceLines;
    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "content":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 30
    const/4 v4, 0x0

    .line 31
    .local v4, "destination":Ljava/lang/String;
    sget-object v5, Lorg/commonmark/internal/inline/AutolinkInlineParser;->URI:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    move-object v4, v3

    goto :goto_0

    .line 33
    :cond_0
    sget-object v5, Lorg/commonmark/internal/inline/AutolinkInlineParser;->EMAIL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 37
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 38
    new-instance v5, Lorg/commonmark/node/Link;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lorg/commonmark/node/Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .local v5, "link":Lorg/commonmark/node/Link;
    new-instance v6, Lorg/commonmark/node/Text;

    invoke-direct {v6, v3}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 40
    .local v6, "text":Lorg/commonmark/node/Text;
    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLines;->getSourceSpans()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/commonmark/node/Text;->setSourceSpans(Ljava/util/List;)V

    .line 41
    invoke-virtual {v5, v6}, Lorg/commonmark/node/Link;->appendChild(Lorg/commonmark/node/Node;)V

    .line 42
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/commonmark/internal/inline/ParsedInline;->of(Lorg/commonmark/node/Node;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v7

    return-object v7

    .line 45
    .end local v2    # "textSource":Lorg/commonmark/parser/SourceLines;
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "destination":Ljava/lang/String;
    .end local v5    # "link":Lorg/commonmark/node/Link;
    .end local v6    # "text":Lorg/commonmark/node/Text;
    :cond_2
    invoke-static {}, Lorg/commonmark/internal/inline/ParsedInline;->none()Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v2

    return-object v2
.end method
