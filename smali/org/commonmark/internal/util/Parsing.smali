.class public Lorg/commonmark/internal/util/Parsing;
.super Ljava/lang/Object;
.source "Parsing.java"


# static fields
.field private static final ATTRIBUTE:Ljava/lang/String; = "(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)"

.field private static final ATTRIBUTENAME:Ljava/lang/String; = "[a-zA-Z_:][a-zA-Z0-9:._-]*"

.field private static final ATTRIBUTEVALUE:Ljava/lang/String; = "(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\")"

.field private static final ATTRIBUTEVALUESPEC:Ljava/lang/String; = "(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))"

.field public static final CLOSETAG:Ljava/lang/String; = "</[A-Za-z][A-Za-z0-9-]*\\s*[>]"

.field public static CODE_BLOCK_INDENT:I = 0x0

.field private static final DOUBLEQUOTEDVALUE:Ljava/lang/String; = "\"[^\"]*\""

.field public static final OPENTAG:Ljava/lang/String; = "<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>"

.field private static final SINGLEQUOTEDVALUE:Ljava/lang/String; = "\'[^\']*\'"

.field private static final TAGNAME:Ljava/lang/String; = "[A-Za-z][A-Za-z0-9-]*"

.field private static final UNQUOTEDVALUE:Ljava/lang/String; = "[^\"\'=<>`\\x00-\\x20]+"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x4

    sput v0, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static columnsToNextTabStop(I)I
    .locals 1
    .param p0, "column"    # I

    .line 24
    rem-int/lit8 v0, p0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static find(CLjava/lang/CharSequence;I)I
    .locals 3
    .param p0, "c"    # C
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 29
    .local v0, "length":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 30
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p0, :cond_0

    .line 31
    return v1

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static findLineBreak(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "startIndex"    # I

    .line 38
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 39
    .local v0, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :sswitch_0
    return v1

    .line 46
    .end local v1    # "i":I
    :cond_0
    const/4 v1, -0x1

    return v1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private static findNonSpace(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "startIndex"    # I

    .line 230
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 231
    .local v0, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 232
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 241
    return v1

    .line 239
    :sswitch_0
    nop

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "i":I
    :cond_0
    const/4 v1, -0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static hasNonSpace(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 54
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 55
    .local v0, "length":I
    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Lorg/commonmark/internal/util/Parsing;->skip(CLjava/lang/CharSequence;II)I

    move-result v1

    .line 56
    .local v1, "skipped":I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/commonmark/internal/util/Parsing;->findNonSpace(Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEscapable(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 76
    sparse-switch p0, :sswitch_data_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 109
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLetter(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 60
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 61
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    return v1
.end method

.method public static isPunctuationCodePoint(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .line 116
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 126
    :pswitch_0
    sparse-switch p0, :sswitch_data_0

    .line 138
    const/4 v0, 0x0

    return v0

    .line 124
    :pswitch_1
    return v1

    .line 136
    :sswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x2b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x5e -> :sswitch_0
        0x60 -> :sswitch_0
        0x7c -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSpaceOrTab(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 65
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 66
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 69
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isWhitespaceCodePoint(I)Z
    .locals 3
    .param p0, "codePoint"    # I

    .line 144
    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    .line 152
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 150
    :sswitch_0
    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static prepareLine(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "line"    # Ljava/lang/CharSequence;

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 163
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 164
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 165
    .local v3, "c":C
    if-nez v3, :cond_1

    .line 166
    if-nez v0, :cond_0

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v4

    .line 168
    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    const v4, 0xfffd

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 172
    :cond_1
    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .end local v3    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 181
    :cond_4
    return-object p0
.end method

.method public static skip(CLjava/lang/CharSequence;II)I
    .locals 2
    .param p0, "skip"    # C
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 186
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 187
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, p0, :cond_0

    .line 188
    return v0

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    :cond_1
    return p3
.end method

.method public static skipBackwards(CLjava/lang/CharSequence;II)I
    .locals 2
    .param p0, "skip"    # C
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "lastIndex"    # I

    .line 195
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 196
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, p0, :cond_0

    .line 197
    return v0

    .line 195
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v0, p3, -0x1

    return v0
.end method

.method public static skipSpaceTab(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 204
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 205
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 210
    return v0

    .line 208
    :sswitch_0
    nop

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "i":I
    :cond_0
    return p2

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static skipSpaceTabBackwards(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "startIndex"    # I
    .param p2, "lastIndex"    # I

    .line 217
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 218
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 223
    return v0

    .line 221
    :sswitch_0
    nop

    .line 217
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    :cond_0
    add-int/lit8 v0, p2, -0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method
