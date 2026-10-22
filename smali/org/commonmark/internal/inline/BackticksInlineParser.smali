.class public Lorg/commonmark/internal/inline/BackticksInlineParser;
.super Ljava/lang/Object;
.source "BackticksInlineParser.java"

# interfaces
.implements Lorg/commonmark/internal/inline/InlineContentParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tryParse(Lorg/commonmark/internal/inline/InlineParserState;)Lorg/commonmark/internal/inline/ParsedInline;
    .locals 11
    .param p1, "inlineParserState"    # Lorg/commonmark/internal/inline/InlineParserState;

    .line 15
    invoke-interface {p1}, Lorg/commonmark/internal/inline/InlineParserState;->scanner()Lorg/commonmark/internal/inline/Scanner;

    move-result-object v0

    .line 16
    .local v0, "scanner":Lorg/commonmark/internal/inline/Scanner;
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v1

    .line 17
    .local v1, "start":Lorg/commonmark/internal/inline/Position;
    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Lorg/commonmark/internal/inline/Scanner;->matchMultiple(C)I

    move-result v3

    .line 18
    .local v3, "openingTicks":I
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v4

    .line 20
    .local v4, "afterOpening":Lorg/commonmark/internal/inline/Position;
    :goto_0
    invoke-virtual {v0, v2}, Lorg/commonmark/internal/inline/Scanner;->find(C)I

    move-result v5

    if-lez v5, :cond_2

    .line 21
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v5

    .line 22
    .local v5, "beforeClosing":Lorg/commonmark/internal/inline/Position;
    invoke-virtual {v0, v2}, Lorg/commonmark/internal/inline/Scanner;->matchMultiple(C)I

    move-result v6

    .line 23
    .local v6, "count":I
    if-ne v6, v3, :cond_1

    .line 24
    new-instance v2, Lorg/commonmark/node/Code;

    invoke-direct {v2}, Lorg/commonmark/node/Code;-><init>()V

    .line 26
    .local v2, "node":Lorg/commonmark/node/Code;
    invoke-virtual {v0, v4, v5}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v7

    invoke-virtual {v7}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v7

    .line 27
    .local v7, "content":Ljava/lang/String;
    const/16 v8, 0xa

    const/16 v9, 0x20

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x3

    if-lt v8, v10, :cond_0

    const/4 v8, 0x0

    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_0

    .line 33
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_0

    .line 34
    invoke-static {v7}, Lorg/commonmark/internal/util/Parsing;->hasNonSpace(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 35
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 38
    :cond_0
    invoke-virtual {v2, v7}, Lorg/commonmark/node/Code;->setLiteral(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v8

    invoke-static {v2, v8}, Lorg/commonmark/internal/inline/ParsedInline;->of(Lorg/commonmark/node/Node;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v8

    return-object v8

    .line 41
    .end local v2    # "node":Lorg/commonmark/node/Code;
    .end local v5    # "beforeClosing":Lorg/commonmark/internal/inline/Position;
    .end local v6    # "count":I
    .end local v7    # "content":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0, v1, v4}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v2

    .line 45
    .local v2, "source":Lorg/commonmark/parser/SourceLines;
    new-instance v5, Lorg/commonmark/node/Text;

    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 46
    .local v5, "text":Lorg/commonmark/node/Text;
    invoke-static {v5, v4}, Lorg/commonmark/internal/inline/ParsedInline;->of(Lorg/commonmark/node/Node;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/internal/inline/ParsedInline;

    move-result-object v6

    return-object v6
.end method
