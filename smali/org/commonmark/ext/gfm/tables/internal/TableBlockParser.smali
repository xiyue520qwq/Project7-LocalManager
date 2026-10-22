.class public Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "TableBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/ext/gfm/tables/TableBlock;

.field private canHaveLazyContinuationLines:Z

.field private final columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;",
            ">;"
        }
    .end annotation
.end field

.field private final rowLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/SourceLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lorg/commonmark/parser/SourceLine;)V
    .locals 2
    .param p2, "headerLine"    # Lorg/commonmark/parser/SourceLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;",
            ">;",
            "Lorg/commonmark/parser/SourceLine;",
            ")V"
        }
    .end annotation

    .line 24
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;>;"
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 18
    new-instance v0, Lorg/commonmark/ext/gfm/tables/TableBlock;

    invoke-direct {v0}, Lorg/commonmark/ext/gfm/tables/TableBlock;-><init>()V

    iput-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->block:Lorg/commonmark/ext/gfm/tables/TableBlock;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->rowLines:Ljava/util/List;

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->canHaveLazyContinuationLines:Z

    .line 25
    iput-object p1, p0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->columns:Ljava/util/List;

    .line 26
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/commonmark/parser/SourceLine;Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lorg/commonmark/parser/SourceLine;
    .param p3, "x2"    # Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser$1;

    .line 16
    invoke-direct {p0, p1, p2}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;-><init>(Ljava/util/List;Lorg/commonmark/parser/SourceLine;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .line 16
    invoke-static {p0}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->parseSeparator(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/commonmark/parser/SourceLine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/parser/SourceLine;

    .line 16
    invoke-static {p0}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->split(Lorg/commonmark/parser/SourceLine;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getAlignment(ZZ)Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;
    .locals 1
    .param p0, "left"    # Z
    .param p1, "right"    # Z

    .line 254
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 255
    sget-object v0, Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;->CENTER:Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

    return-object v0

    .line 256
    :cond_0
    if-eqz p0, :cond_1

    .line 257
    sget-object v0, Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;->LEFT:Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

    return-object v0

    .line 258
    :cond_1
    if-eqz p1, :cond_2

    .line 259
    sget-object v0, Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;->RIGHT:Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

    return-object v0

    .line 261
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseCell(Lorg/commonmark/parser/SourceLine;ILorg/commonmark/parser/InlineParser;)Lorg/commonmark/ext/gfm/tables/TableCell;
    .locals 6
    .param p1, "cell"    # Lorg/commonmark/parser/SourceLine;
    .param p2, "column"    # I
    .param p3, "inlineParser"    # Lorg/commonmark/parser/InlineParser;

    .line 116
    new-instance v0, Lorg/commonmark/ext/gfm/tables/TableCell;

    invoke-direct {v0}, Lorg/commonmark/ext/gfm/tables/TableCell;-><init>()V

    .line 117
    .local v0, "tableCell":Lorg/commonmark/ext/gfm/tables/TableCell;
    invoke-virtual {p1}, Lorg/commonmark/parser/SourceLine;->getSourceSpan()Lorg/commonmark/node/SourceSpan;

    move-result-object v1

    .line 118
    .local v1, "sourceSpan":Lorg/commonmark/node/SourceSpan;
    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0, v1}, Lorg/commonmark/ext/gfm/tables/TableCell;->addSourceSpan(Lorg/commonmark/node/SourceSpan;)V

    .line 122
    :cond_0
    iget-object v2, p0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->columns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 123
    iget-object v2, p0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->columns:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

    invoke-virtual {v0, v2}, Lorg/commonmark/ext/gfm/tables/TableCell;->setAlignment(Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;)V

    .line 126
    :cond_1
    invoke-virtual {p1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    .line 127
    .local v2, "content":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 128
    .local v3, "start":I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4, v3}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTabBackwards(Ljava/lang/CharSequence;II)I

    move-result v4

    .line 129
    .local v4, "end":I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v3, v5}, Lorg/commonmark/parser/SourceLine;->substring(II)Lorg/commonmark/parser/SourceLine;

    move-result-object v5

    invoke-static {v5}, Lorg/commonmark/parser/SourceLines;->of(Lorg/commonmark/parser/SourceLine;)Lorg/commonmark/parser/SourceLines;

    move-result-object v5

    invoke-interface {p3, v5, v0}, Lorg/commonmark/parser/InlineParser;->parse(Lorg/commonmark/parser/SourceLines;Lorg/commonmark/node/Node;)V

    .line 131
    return-object v0
.end method

.method private static parseSeparator(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 12
    .param p0, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;>;"
    const/4 v1, 0x0

    .line 193
    .local v1, "pipes":I
    const/4 v2, 0x0

    .line 194
    .local v2, "valid":Z
    const/4 v3, 0x0

    .line 195
    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_6

    .line 196
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 197
    .local v4, "c":C
    sparse-switch v4, :sswitch_data_0

    .line 244
    return-object v5

    .line 199
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 201
    const/4 v6, 0x1

    if-le v1, v6, :cond_0

    .line 203
    return-object v5

    .line 206
    :cond_0
    const/4 v2, 0x1

    .line 207
    goto :goto_2

    .line 210
    :sswitch_1
    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 212
    return-object v5

    .line 214
    :cond_1
    const/4 v6, 0x0

    .line 215
    .local v6, "left":Z
    const/4 v7, 0x0

    .line 216
    .local v7, "right":Z
    const/16 v8, 0x3a

    if-ne v4, v8, :cond_2

    .line 217
    const/4 v6, 0x1

    .line 218
    add-int/lit8 v3, v3, 0x1

    .line 220
    :cond_2
    const/4 v9, 0x0

    .line 221
    .local v9, "haveDash":Z
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v3, v10, :cond_3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_3

    .line 222
    add-int/lit8 v3, v3, 0x1

    .line 223
    const/4 v9, 0x1

    goto :goto_1

    .line 225
    :cond_3
    if-nez v9, :cond_4

    .line 227
    return-object v5

    .line 229
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_5

    .line 230
    const/4 v7, 0x1

    .line 231
    add-int/lit8 v3, v3, 0x1

    .line 233
    :cond_5
    invoke-static {v6, v7}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->getAlignment(ZZ)Lorg/commonmark/ext/gfm/tables/TableCell$Alignment;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const/4 v1, 0x0

    .line 236
    goto :goto_2

    .line 240
    .end local v6    # "left":Z
    .end local v7    # "right":Z
    .end local v9    # "haveDash":Z
    :sswitch_2
    add-int/lit8 v3, v3, 0x1

    .line 241
    nop

    .line 246
    .end local v4    # "c":C
    :goto_2
    goto :goto_0

    .line 247
    :cond_6
    if-nez v2, :cond_7

    .line 248
    return-object v5

    .line 250
    :cond_7
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x20 -> :sswitch_2
        0x2d -> :sswitch_1
        0x3a -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private static split(Lorg/commonmark/parser/SourceLine;)Ljava/util/List;
    .locals 12
    .param p0, "line"    # Lorg/commonmark/parser/SourceLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/parser/SourceLine;",
            ")",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/SourceLine;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    .local v0, "row":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 137
    .local v1, "nonSpace":I
    move v3, v1

    .line 138
    .local v3, "cellStart":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 139
    .local v4, "cellEnd":I
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x7c

    if-ne v5, v6, :cond_0

    .line 141
    add-int/lit8 v3, v1, 0x1

    .line 143
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5, v3}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTabBackwards(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 144
    .local v5, "nonSpaceEnd":I
    add-int/lit8 v4, v5, 0x1

    .line 146
    .end local v5    # "nonSpaceEnd":I
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v5, "cells":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/SourceLine;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v7, "sb":Ljava/lang/StringBuilder;
    move v8, v3

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 149
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 150
    .local v9, "c":C
    sparse-switch v9, :sswitch_data_0

    .line 172
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 164
    :sswitch_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "content":Ljava/lang/String;
    invoke-virtual {p0, v3, v8}, Lorg/commonmark/parser/SourceLine;->substring(II)Lorg/commonmark/parser/SourceLine;

    move-result-object v11

    invoke-virtual {v11}, Lorg/commonmark/parser/SourceLine;->getSourceSpan()Lorg/commonmark/node/SourceSpan;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/commonmark/parser/SourceLine;->of(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)Lorg/commonmark/parser/SourceLine;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 169
    add-int/lit8 v3, v8, 0x1

    .line 170
    goto :goto_1

    .line 152
    .end local v10    # "content":Ljava/lang/String;
    :sswitch_1
    add-int/lit8 v10, v8, 0x1

    if-ge v10, v4, :cond_1

    add-int/lit8 v10, v8, 0x1

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_1

    .line 156
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 160
    :cond_1
    const/16 v10, 0x5c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    nop

    .line 148
    .end local v9    # "c":C
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 175
    .end local v8    # "i":I
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 176
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {p0, v3, v6}, Lorg/commonmark/parser/SourceLine;->substring(II)Lorg/commonmark/parser/SourceLine;

    move-result-object v6

    invoke-virtual {v6}, Lorg/commonmark/parser/SourceLine;->getSourceSpan()Lorg/commonmark/node/SourceSpan;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/commonmark/parser/SourceLine;->of(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)Lorg/commonmark/parser/SourceLine;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v2    # "content":Ljava/lang/String;
    :cond_3
    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x5c -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public addLine(Lorg/commonmark/parser/SourceLine;)V
    .locals 1
    .param p1, "line"    # Lorg/commonmark/parser/SourceLine;

    .line 60
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->rowLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public canHaveLazyContinuationLines()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->canHaveLazyContinuationLines:Z

    return v0
.end method

.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->block:Lorg/commonmark/ext/gfm/tables/TableBlock;

    return-object v0
.end method

.method public parseInlines(Lorg/commonmark/parser/InlineParser;)V
    .locals 17
    .param p1, "inlineParser"    # Lorg/commonmark/parser/InlineParser;

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->block:Lorg/commonmark/ext/gfm/tables/TableBlock;

    invoke-virtual {v2}, Lorg/commonmark/ext/gfm/tables/TableBlock;->getSourceSpans()Ljava/util/List;

    move-result-object v2

    .line 67
    .local v2, "sourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/node/SourceSpan;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 68
    .local v3, "headerSourceSpan":Lorg/commonmark/node/SourceSpan;
    :goto_0
    new-instance v6, Lorg/commonmark/ext/gfm/tables/TableHead;

    invoke-direct {v6}, Lorg/commonmark/ext/gfm/tables/TableHead;-><init>()V

    .line 69
    .local v6, "head":Lorg/commonmark/node/Node;
    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v6, v3}, Lorg/commonmark/node/Node;->addSourceSpan(Lorg/commonmark/node/SourceSpan;)V

    .line 72
    :cond_1
    iget-object v7, v0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->block:Lorg/commonmark/ext/gfm/tables/TableBlock;

    invoke-virtual {v7, v6}, Lorg/commonmark/ext/gfm/tables/TableBlock;->appendChild(Lorg/commonmark/node/Node;)V

    .line 74
    new-instance v7, Lorg/commonmark/ext/gfm/tables/TableRow;

    invoke-direct {v7}, Lorg/commonmark/ext/gfm/tables/TableRow;-><init>()V

    .line 75
    .local v7, "headerRow":Lorg/commonmark/ext/gfm/tables/TableRow;
    invoke-virtual {v6}, Lorg/commonmark/node/Node;->getSourceSpans()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/commonmark/ext/gfm/tables/TableRow;->setSourceSpans(Ljava/util/List;)V

    .line 76
    invoke-virtual {v6, v7}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 78
    iget-object v8, v0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->rowLines:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/commonmark/parser/SourceLine;

    invoke-static {v4}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->split(Lorg/commonmark/parser/SourceLine;)Ljava/util/List;

    move-result-object v4

    .line 79
    .local v4, "headerCells":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/SourceLine;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .line 80
    .local v8, "headerColumns":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 81
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/commonmark/parser/SourceLine;

    .line 82
    .local v10, "cell":Lorg/commonmark/parser/SourceLine;
    invoke-direct {v0, v10, v9, v1}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->parseCell(Lorg/commonmark/parser/SourceLine;ILorg/commonmark/parser/InlineParser;)Lorg/commonmark/ext/gfm/tables/TableCell;

    move-result-object v11

    .line 83
    .local v11, "tableCell":Lorg/commonmark/ext/gfm/tables/TableCell;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/commonmark/ext/gfm/tables/TableCell;->setHeader(Z)V

    .line 84
    invoke-virtual {v7, v11}, Lorg/commonmark/ext/gfm/tables/TableRow;->appendChild(Lorg/commonmark/node/Node;)V

    .line 80
    .end local v10    # "cell":Lorg/commonmark/parser/SourceLine;
    .end local v11    # "tableCell":Lorg/commonmark/ext/gfm/tables/TableCell;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 87
    .end local v9    # "i":I
    :cond_2
    const/4 v9, 0x0

    .line 89
    .local v9, "body":Lorg/commonmark/ext/gfm/tables/TableBody;
    const/4 v10, 0x2

    .local v10, "rowIndex":I
    :goto_2
    iget-object v11, v0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->rowLines:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_8

    .line 90
    iget-object v11, v0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->rowLines:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/commonmark/parser/SourceLine;

    .line 91
    .local v11, "rowLine":Lorg/commonmark/parser/SourceLine;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_3

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/commonmark/node/SourceSpan;

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 92
    .local v12, "sourceSpan":Lorg/commonmark/node/SourceSpan;
    :goto_3
    invoke-static {v11}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->split(Lorg/commonmark/parser/SourceLine;)Ljava/util/List;

    move-result-object v13

    .line 93
    .local v13, "cells":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/SourceLine;>;"
    new-instance v14, Lorg/commonmark/ext/gfm/tables/TableRow;

    invoke-direct {v14}, Lorg/commonmark/ext/gfm/tables/TableRow;-><init>()V

    .line 94
    .local v14, "row":Lorg/commonmark/ext/gfm/tables/TableRow;
    if-eqz v12, :cond_4

    .line 95
    invoke-virtual {v14, v12}, Lorg/commonmark/ext/gfm/tables/TableRow;->addSourceSpan(Lorg/commonmark/node/SourceSpan;)V

    .line 99
    :cond_4
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    if-ge v15, v8, :cond_6

    .line 100
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_5

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/commonmark/parser/SourceLine;

    move-object/from16 v16, v2

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    const-string v5, ""

    move-object/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "sourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    .local v16, "sourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    invoke-static {v5, v2}, Lorg/commonmark/parser/SourceLine;->of(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)Lorg/commonmark/parser/SourceLine;

    move-result-object v5

    .line 101
    .local v5, "cell":Lorg/commonmark/parser/SourceLine;
    :goto_5
    invoke-direct {v0, v5, v15, v1}, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->parseCell(Lorg/commonmark/parser/SourceLine;ILorg/commonmark/parser/InlineParser;)Lorg/commonmark/ext/gfm/tables/TableCell;

    move-result-object v2

    .line 102
    .local v2, "tableCell":Lorg/commonmark/ext/gfm/tables/TableCell;
    invoke-virtual {v14, v2}, Lorg/commonmark/ext/gfm/tables/TableRow;->appendChild(Lorg/commonmark/node/Node;)V

    .line 99
    .end local v2    # "tableCell":Lorg/commonmark/ext/gfm/tables/TableCell;
    .end local v5    # "cell":Lorg/commonmark/parser/SourceLine;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v16

    goto :goto_4

    .end local v16    # "sourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    .local v2, "sourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    :cond_6
    move-object/from16 v16, v2

    .line 105
    .end local v2    # "sourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    .end local v15    # "i":I
    .restart local v16    # "sourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    if-nez v9, :cond_7

    .line 107
    new-instance v2, Lorg/commonmark/ext/gfm/tables/TableBody;

    invoke-direct {v2}, Lorg/commonmark/ext/gfm/tables/TableBody;-><init>()V

    .line 108
    .end local v9    # "body":Lorg/commonmark/ext/gfm/tables/TableBody;
    .local v2, "body":Lorg/commonmark/ext/gfm/tables/TableBody;
    iget-object v5, v0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->block:Lorg/commonmark/ext/gfm/tables/TableBlock;

    invoke-virtual {v5, v2}, Lorg/commonmark/ext/gfm/tables/TableBlock;->appendChild(Lorg/commonmark/node/Node;)V

    move-object v9, v2

    .line 110
    .end local v2    # "body":Lorg/commonmark/ext/gfm/tables/TableBody;
    .restart local v9    # "body":Lorg/commonmark/ext/gfm/tables/TableBody;
    :cond_7
    invoke-virtual {v9, v14}, Lorg/commonmark/ext/gfm/tables/TableBody;->appendChild(Lorg/commonmark/node/Node;)V

    .line 111
    invoke-virtual {v9, v12}, Lorg/commonmark/ext/gfm/tables/TableBody;->addSourceSpan(Lorg/commonmark/node/SourceSpan;)V

    .line 89
    .end local v11    # "rowLine":Lorg/commonmark/parser/SourceLine;
    .end local v12    # "sourceSpan":Lorg/commonmark/node/SourceSpan;
    .end local v13    # "cells":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/SourceLine;>;"
    .end local v14    # "row":Lorg/commonmark/ext/gfm/tables/TableRow;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v16

    goto :goto_2

    .line 113
    .end local v10    # "rowIndex":I
    .end local v16    # "sourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    .local v2, "sourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    :cond_8
    return-void
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 4
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;

    .line 41
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Lorg/commonmark/parser/SourceLine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    .line 42
    .local v0, "content":Ljava/lang/CharSequence;
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v1

    const/16 v2, 0x7c

    invoke-static {v2, v0, v1}, Lorg/commonmark/internal/util/Parsing;->find(CLjava/lang/CharSequence;I)I

    move-result v1

    .line 43
    .local v1, "pipe":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 44
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 46
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 48
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/commonmark/ext/gfm/tables/internal/TableBlockParser;->canHaveLazyContinuationLines:Z

    .line 49
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v2

    return-object v2

    .line 52
    :cond_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result v2

    invoke-static {v2}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v2

    return-object v2

    .line 54
    :cond_1
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v2

    return-object v2
.end method
