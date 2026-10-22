.class public Lorg/commonmark/internal/HeadingParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "HeadingParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/HeadingParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/node/Heading;

.field private final content:Lorg/commonmark/parser/SourceLines;


# direct methods
.method public constructor <init>(ILorg/commonmark/parser/SourceLines;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "content"    # Lorg/commonmark/parser/SourceLines;

    .line 18
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 15
    new-instance v0, Lorg/commonmark/node/Heading;

    invoke-direct {v0}, Lorg/commonmark/node/Heading;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/HeadingParser;->block:Lorg/commonmark/node/Heading;

    .line 19
    invoke-virtual {v0, p1}, Lorg/commonmark/node/Heading;->setLevel(I)V

    .line 20
    iput-object p2, p0, Lorg/commonmark/internal/HeadingParser;->content:Lorg/commonmark/parser/SourceLines;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lorg/commonmark/parser/SourceLine;)Lorg/commonmark/internal/HeadingParser;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/parser/SourceLine;

    .line 13
    invoke-static {p0}, Lorg/commonmark/internal/HeadingParser;->getAtxHeading(Lorg/commonmark/parser/SourceLine;)Lorg/commonmark/internal/HeadingParser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # I

    .line 13
    invoke-static {p0, p1}, Lorg/commonmark/internal/HeadingParser;->getSetextHeadingLevel(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private static getAtxHeading(Lorg/commonmark/parser/SourceLine;)Lorg/commonmark/internal/HeadingParser;
    .locals 10
    .param p0, "line"    # Lorg/commonmark/parser/SourceLine;

    .line 75
    invoke-static {p0}, Lorg/commonmark/parser/SourceLines;->of(Lorg/commonmark/parser/SourceLine;)Lorg/commonmark/parser/SourceLines;

    move-result-object v0

    invoke-static {v0}, Lorg/commonmark/internal/inline/Scanner;->of(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/internal/inline/Scanner;

    move-result-object v0

    .line 76
    .local v0, "scanner":Lorg/commonmark/internal/inline/Scanner;
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lorg/commonmark/internal/inline/Scanner;->matchMultiple(C)I

    move-result v2

    .line 78
    .local v2, "level":I
    const/4 v3, 0x0

    if-eqz v2, :cond_8

    const/4 v4, 0x6

    if-le v2, v4, :cond_0

    goto/16 :goto_3

    .line 82
    :cond_0
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 84
    new-instance v1, Lorg/commonmark/internal/HeadingParser;

    invoke-static {}, Lorg/commonmark/parser/SourceLines;->empty()Lorg/commonmark/parser/SourceLines;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/commonmark/internal/HeadingParser;-><init>(ILorg/commonmark/parser/SourceLines;)V

    return-object v1

    .line 87
    :cond_1
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v4

    .line 88
    .local v4, "next":C
    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    .line 89
    return-object v3

    .line 92
    :cond_2
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    .line 93
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v3

    .line 94
    .local v3, "start":Lorg/commonmark/internal/inline/Position;
    move-object v5, v3

    .line 95
    .local v5, "end":Lorg/commonmark/internal/inline/Position;
    const/4 v6, 0x1

    .line 97
    .local v6, "hashCanEnd":Z
    :goto_0
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 98
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v7

    .line 99
    .local v7, "c":C
    sparse-switch v7, :sswitch_data_0

    .line 120
    const/4 v6, 0x0

    .line 121
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 122
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v5

    goto :goto_2

    .line 101
    :sswitch_0
    if-eqz v6, :cond_5

    .line 102
    invoke-virtual {v0, v1}, Lorg/commonmark/internal/inline/Scanner;->matchMultiple(C)I

    .line 103
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    move-result v8

    .line 105
    .local v8, "whitespace":I
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 106
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v5

    .line 108
    :cond_3
    if-lez v8, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    move v6, v9

    .line 109
    .end local v8    # "whitespace":I
    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 111
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v5

    .line 113
    goto :goto_2

    .line 116
    :sswitch_1
    const/4 v6, 0x1

    .line 117
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 118
    nop

    .line 124
    .end local v7    # "c":C
    :goto_2
    goto :goto_0

    .line 126
    :cond_6
    invoke-virtual {v0, v3, v5}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v1

    .line 127
    .local v1, "source":Lorg/commonmark/parser/SourceLines;
    invoke-virtual {v1}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "content":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 129
    new-instance v8, Lorg/commonmark/internal/HeadingParser;

    invoke-static {}, Lorg/commonmark/parser/SourceLines;->empty()Lorg/commonmark/parser/SourceLines;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Lorg/commonmark/internal/HeadingParser;-><init>(ILorg/commonmark/parser/SourceLines;)V

    return-object v8

    .line 131
    :cond_7
    new-instance v8, Lorg/commonmark/internal/HeadingParser;

    invoke-direct {v8, v2, v1}, Lorg/commonmark/internal/HeadingParser;-><init>(ILorg/commonmark/parser/SourceLines;)V

    return-object v8

    .line 79
    .end local v1    # "source":Lorg/commonmark/parser/SourceLines;
    .end local v3    # "start":Lorg/commonmark/internal/inline/Position;
    .end local v4    # "next":C
    .end local v5    # "end":Lorg/commonmark/internal/inline/Position;
    .end local v6    # "hashCanEnd":Z
    .end local v7    # "content":Ljava/lang/String;
    :cond_8
    :goto_3
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getSetextHeadingLevel(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "line"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 137
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 139
    :sswitch_0
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x3d

    invoke-static {p0, v0, v1}, Lorg/commonmark/internal/HeadingParser;->isSetextHeadingRest(Ljava/lang/CharSequence;IC)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    :sswitch_1
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    invoke-static {p0, v0, v1}, Lorg/commonmark/internal/HeadingParser;->isSetextHeadingRest(Ljava/lang/CharSequence;IC)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const/4 v0, 0x2

    return v0

    .line 147
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static isSetextHeadingRest(Ljava/lang/CharSequence;IC)Z
    .locals 3
    .param p0, "line"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "marker"    # C

    .line 151
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, p0, p1, v0}, Lorg/commonmark/internal/util/Parsing;->skip(CLjava/lang/CharSequence;II)I

    move-result v0

    .line 152
    .local v0, "afterMarker":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 153
    .local v1, "afterSpace":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/commonmark/internal/HeadingParser;->block:Lorg/commonmark/node/Heading;

    return-object v0
.end method

.method public parseInlines(Lorg/commonmark/parser/InlineParser;)V
    .locals 2
    .param p1, "inlineParser"    # Lorg/commonmark/parser/InlineParser;

    .line 36
    iget-object v0, p0, Lorg/commonmark/internal/HeadingParser;->content:Lorg/commonmark/parser/SourceLines;

    iget-object v1, p0, Lorg/commonmark/internal/HeadingParser;->block:Lorg/commonmark/node/Heading;

    invoke-interface {p1, v0, v1}, Lorg/commonmark/parser/InlineParser;->parse(Lorg/commonmark/parser/SourceLines;Lorg/commonmark/node/Node;)V

    .line 37
    return-void
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 1
    .param p1, "parserState"    # Lorg/commonmark/parser/block/ParserState;

    .line 31
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0
.end method
