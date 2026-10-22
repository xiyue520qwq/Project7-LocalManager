.class public Lorg/commonmark/internal/ListBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "ListBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/ListBlockParser$ListMarkerData;,
        Lorg/commonmark/internal/ListBlockParser$ListData;,
        Lorg/commonmark/internal/ListBlockParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/node/ListBlock;

.field private hadBlankLine:Z

.field private linesAfterBlank:I


# direct methods
.method public constructor <init>(Lorg/commonmark/node/ListBlock;)V
    .locals 0
    .param p1, "block"    # Lorg/commonmark/node/ListBlock;

    .line 14
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/commonmark/internal/ListBlockParser;->block:Lorg/commonmark/node/ListBlock;

    .line 16
    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 7
    invoke-static {p0, p1, p2, p3}, Lorg/commonmark/internal/ListBlockParser;->parseList(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/node/ListBlock;
    .param p1, "x1"    # Lorg/commonmark/node/ListBlock;

    .line 7
    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->listsMatch(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z

    move-result v0

    return v0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 199
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static isSpaceTabOrEnd(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "line"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 171
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    .line 172
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 177
    const/4 v0, 0x0

    return v0

    .line 175
    :sswitch_0
    return v1

    .line 180
    :cond_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static listsMatch(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z
    .locals 2
    .param p0, "a"    # Lorg/commonmark/node/ListBlock;
    .param p1, "b"    # Lorg/commonmark/node/ListBlock;

    .line 190
    instance-of v0, p0, Lorg/commonmark/node/BulletList;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/commonmark/node/BulletList;

    if-eqz v0, :cond_0

    .line 191
    move-object v0, p0

    check-cast v0, Lorg/commonmark/node/BulletList;

    invoke-virtual {v0}, Lorg/commonmark/node/BulletList;->getBulletMarker()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/commonmark/node/BulletList;

    invoke-virtual {v1}, Lorg/commonmark/node/BulletList;->getBulletMarker()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/commonmark/internal/ListBlockParser;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 192
    :cond_0
    instance-of v0, p0, Lorg/commonmark/node/OrderedList;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/commonmark/node/OrderedList;

    if-eqz v0, :cond_1

    .line 193
    move-object v0, p0

    check-cast v0, Lorg/commonmark/node/OrderedList;

    invoke-virtual {v0}, Lorg/commonmark/node/OrderedList;->getDelimiter()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/commonmark/node/OrderedList;

    invoke-virtual {v1}, Lorg/commonmark/node/OrderedList;->getDelimiter()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/commonmark/internal/ListBlockParser;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 195
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static parseList(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;
    .locals 12
    .param p0, "line"    # Ljava/lang/CharSequence;
    .param p1, "markerIndex"    # I
    .param p2, "markerColumn"    # I
    .param p3, "inParagraph"    # Z

    .line 63
    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->parseListMarker(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    move-result-object v0

    .line 64
    .local v0, "listMarker":Lorg/commonmark/internal/ListBlockParser$ListMarkerData;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    return-object v1

    .line 67
    :cond_0
    iget-object v2, v0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;->listBlock:Lorg/commonmark/node/ListBlock;

    .line 69
    .local v2, "listBlock":Lorg/commonmark/node/ListBlock;
    iget v3, v0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;->indexAfterMarker:I

    .line 70
    .local v3, "indexAfterMarker":I
    sub-int v4, v3, p1

    .line 72
    .local v4, "markerLength":I
    add-int v5, p2, v4

    .line 74
    .local v5, "columnAfterMarker":I
    move v6, v5

    .line 77
    .local v6, "contentColumn":I
    const/4 v7, 0x0

    .line 78
    .local v7, "hasContent":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 79
    .local v8, "length":I
    move v9, v3

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_3

    .line 80
    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 81
    .local v10, "c":C
    const/16 v11, 0x9

    if-ne v10, v11, :cond_1

    .line 82
    invoke-static {v6}, Lorg/commonmark/internal/util/Parsing;->columnsToNextTabStop(I)I

    move-result v11

    add-int/2addr v6, v11

    goto :goto_1

    .line 83
    :cond_1
    const/16 v11, 0x20

    if-ne v10, v11, :cond_2

    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 79
    .end local v10    # "c":C
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 86
    .restart local v10    # "c":C
    :cond_2
    const/4 v7, 0x1

    .line 91
    .end local v9    # "i":I
    .end local v10    # "c":C
    :cond_3
    if-eqz p3, :cond_5

    .line 93
    instance-of v9, v2, Lorg/commonmark/node/OrderedList;

    if-eqz v9, :cond_4

    move-object v9, v2

    check-cast v9, Lorg/commonmark/node/OrderedList;

    invoke-virtual {v9}, Lorg/commonmark/node/OrderedList;->getStartNumber()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    .line 94
    return-object v1

    .line 97
    :cond_4
    if-nez v7, :cond_5

    .line 98
    return-object v1

    .line 102
    :cond_5
    if-eqz v7, :cond_6

    sub-int v1, v6, v5

    sget v9, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-le v1, v9, :cond_7

    .line 104
    :cond_6
    add-int/lit8 v6, v5, 0x1

    .line 107
    :cond_7
    new-instance v1, Lorg/commonmark/internal/ListBlockParser$ListData;

    invoke-direct {v1, v2, v6}, Lorg/commonmark/internal/ListBlockParser$ListData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    return-object v1
.end method

.method private static parseListMarker(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;
    .locals 4
    .param p0, "line"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 111
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 112
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 125
    :pswitch_0
    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->parseOrderedList(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    move-result-object v1

    return-object v1

    .line 117
    :pswitch_1
    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1}, Lorg/commonmark/internal/ListBlockParser;->isSpaceTabOrEnd(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Lorg/commonmark/node/BulletList;

    invoke-direct {v1}, Lorg/commonmark/node/BulletList;-><init>()V

    .line 119
    .local v1, "bulletList":Lorg/commonmark/node/BulletList;
    invoke-virtual {v1, v0}, Lorg/commonmark/node/BulletList;->setBulletMarker(C)V

    .line 120
    new-instance v2, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    add-int/lit8 v3, p1, 0x1

    invoke-direct {v2, v1, v3}, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    return-object v2

    .line 122
    .end local v1    # "bulletList":Lorg/commonmark/node/BulletList;
    :cond_0
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseOrderedList(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;
    .locals 8
    .param p0, "line"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "digits":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 134
    .local v1, "length":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    .line 135
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 136
    .local v4, "c":C
    packed-switch v4, :pswitch_data_0

    .line 164
    :pswitch_0
    return-object v3

    .line 147
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 148
    const/16 v5, 0x9

    if-le v0, v5, :cond_0

    .line 149
    return-object v3

    .line 134
    .end local v4    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .restart local v4    # "c":C
    :pswitch_2
    const/4 v5, 0x1

    if-lt v0, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-static {p0, v5}, Lorg/commonmark/internal/ListBlockParser;->isSpaceTabOrEnd(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 155
    invoke-interface {p0, p1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "number":Ljava/lang/String;
    new-instance v5, Lorg/commonmark/node/OrderedList;

    invoke-direct {v5}, Lorg/commonmark/node/OrderedList;-><init>()V

    .line 157
    .local v5, "orderedList":Lorg/commonmark/node/OrderedList;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/commonmark/node/OrderedList;->setStartNumber(I)V

    .line 158
    invoke-virtual {v5, v4}, Lorg/commonmark/node/OrderedList;->setDelimiter(C)V

    .line 159
    new-instance v6, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v5, v7}, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    return-object v6

    .line 161
    .end local v3    # "number":Ljava/lang/String;
    .end local v5    # "orderedList":Lorg/commonmark/node/OrderedList;
    :cond_1
    return-object v3

    .line 167
    .end local v2    # "i":I
    .end local v4    # "c":C
    :cond_2
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public canContain(Lorg/commonmark/node/Block;)Z
    .locals 3
    .param p1, "childBlock"    # Lorg/commonmark/node/Block;

    .line 25
    instance-of v0, p1, Lorg/commonmark/node/ListItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    if-ne v0, v2, :cond_0

    .line 31
    iget-object v0, p0, Lorg/commonmark/internal/ListBlockParser;->block:Lorg/commonmark/node/ListBlock;

    invoke-virtual {v0, v1}, Lorg/commonmark/node/ListBlock;->setTight(Z)V

    .line 32
    iput-boolean v1, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    .line 34
    :cond_0
    return v2

    .line 36
    :cond_1
    return v1
.end method

.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/commonmark/internal/ListBlockParser;->block:Lorg/commonmark/node/ListBlock;

    return-object v0
.end method

.method public isContainer()Z
    .locals 1

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 2
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;

    .line 47
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->isBlank()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 48
    iput-boolean v1, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    goto :goto_0

    .line 50
    :cond_0
    iget-boolean v0, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    if-eqz v0, :cond_1

    .line 51
    iget v0, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    .line 55
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result v0

    invoke-static {v0}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0
.end method
