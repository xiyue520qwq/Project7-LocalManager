.class public Lorg/commonmark/internal/ThematicBreakParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "ThematicBreakParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/ThematicBreakParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/node/ThematicBreak;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 9
    new-instance v0, Lorg/commonmark/node/ThematicBreak;

    invoke-direct {v0}, Lorg/commonmark/node/ThematicBreak;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/ThematicBreakParser;->block:Lorg/commonmark/node/ThematicBreak;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;
    .param p1, "x1"    # I

    .line 7
    invoke-static {p0, p1}, Lorg/commonmark/internal/ThematicBreakParser;->isThematicBreak(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method private static isThematicBreak(Ljava/lang/CharSequence;I)Z
    .locals 7
    .param p0, "line"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "dashes":I
    const/4 v1, 0x0

    .line 44
    .local v1, "underscores":I
    const/4 v2, 0x0

    .line 45
    .local v2, "asterisks":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 46
    .local v3, "length":I
    move v4, p1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_0

    .line 47
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 62
    return v5

    .line 52
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_1

    .line 49
    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_1

    .line 55
    :sswitch_2
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_1

    .line 60
    :sswitch_3
    nop

    .line 46
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-lt v1, v4, :cond_2

    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-lt v2, v4, :cond_4

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    :cond_3
    const/4 v5, 0x1

    :cond_4
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0x20 -> :sswitch_3
        0x2a -> :sswitch_2
        0x2d -> :sswitch_1
        0x5f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/commonmark/internal/ThematicBreakParser;->block:Lorg/commonmark/node/ThematicBreak;

    return-object v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 1
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;

    .line 19
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0
.end method
