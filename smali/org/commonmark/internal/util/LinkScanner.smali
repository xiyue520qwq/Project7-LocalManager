.class public Lorg/commonmark/internal/util/LinkScanner;
.super Ljava/lang/Object;
.source "LinkScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scanLinkDestination(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 2
    .param p0, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 38
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 39
    return v1

    .line 42
    :cond_0
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 58
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_0

    .line 46
    :sswitch_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 47
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v0

    invoke-static {v0}, Lorg/commonmark/internal/util/Parsing;->isEscapable(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_0

    .line 55
    :sswitch_1
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 56
    const/4 v0, 0x1

    return v0

    .line 53
    :sswitch_2
    return v1

    .line 61
    :cond_2
    return v1

    .line 63
    :cond_3
    invoke-static {p0}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkDestinationWithBalancedParens(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x3c -> :sswitch_2
        0x3e -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private static scanLinkDestinationWithBalancedParens(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 4
    .param p0, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "parens":I
    const/4 v1, 0x1

    .line 124
    .local v1, "empty":Z
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 125
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v2

    .line 126
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_0

    .line 153
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    goto :goto_1

    .line 130
    :sswitch_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 131
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v3

    invoke-static {v3}, Lorg/commonmark/internal/util/Parsing;->isEscapable(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_2

    .line 144
    :sswitch_1
    if-nez v0, :cond_0

    .line 145
    return v3

    .line 147
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 149
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 150
    goto :goto_2

    .line 136
    :sswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 138
    const/16 v3, 0x20

    if-le v0, v3, :cond_1

    .line 139
    const/4 v3, 0x0

    return v3

    .line 141
    :cond_1
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 142
    goto :goto_2

    .line 128
    :sswitch_3
    xor-int/lit8 v3, v1, 0x1

    return v3

    .line 154
    :goto_1
    xor-int/lit8 v3, v1, 0x1

    return v3

    .line 156
    :cond_2
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 159
    :cond_3
    :goto_2
    const/4 v1, 0x0

    .line 160
    .end local v2    # "c":C
    goto :goto_0

    .line 161
    :cond_4
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_3
        0x28 -> :sswitch_2
        0x29 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static scanLinkLabelContent(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 2
    .param p0, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 13
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 28
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_0

    .line 22
    :pswitch_0
    return v1

    .line 16
    :pswitch_1
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 17
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v0

    invoke-static {v0}, Lorg/commonmark/internal/util/Parsing;->isEscapable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_0

    .line 26
    :pswitch_2
    const/4 v0, 0x0

    return v0

    .line 31
    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static scanLinkTitle(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 3
    .param p0, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 68
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    return v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 84
    return v1

    .line 81
    :sswitch_0
    const/16 v0, 0x29

    .line 82
    .local v0, "endDelimiter":C
    goto :goto_0

    .line 78
    .end local v0    # "endDelimiter":C
    :sswitch_1
    const/16 v0, 0x27

    .line 79
    .restart local v0    # "endDelimiter":C
    goto :goto_0

    .line 75
    .end local v0    # "endDelimiter":C
    :sswitch_2
    const/16 v0, 0x22

    .line 76
    .restart local v0    # "endDelimiter":C
    nop

    .line 86
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 88
    invoke-static {p0, v0}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkTitleContent(Lorg/commonmark/internal/inline/Scanner;C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    return v1

    .line 91
    :cond_1
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    return v1

    .line 94
    :cond_2
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 95
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method public static scanLinkTitleContent(Lorg/commonmark/internal/inline/Scanner;C)Z
    .locals 3
    .param p0, "scanner"    # Lorg/commonmark/internal/inline/Scanner;
    .param p1, "endDelimiter"    # C

    .line 99
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v0

    .line 101
    .local v0, "c":C
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 103
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v1

    invoke-static {v1}, Lorg/commonmark/internal/util/Parsing;->isEscapable(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_1

    .line 106
    :cond_0
    if-ne v0, p1, :cond_1

    .line 107
    return v1

    .line 108
    :cond_1
    const/16 v1, 0x29

    if-ne p1, v1, :cond_2

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 110
    const/4 v1, 0x0

    return v1

    .line 112
    :cond_2
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 114
    .end local v0    # "c":C
    :cond_3
    :goto_1
    goto :goto_0

    .line 115
    :cond_4
    return v1
.end method
