.class public Lorg/commonmark/internal/util/Escaping;
.super Ljava/lang/Object;
.source "Escaping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/util/Escaping$Replacer;
    }
.end annotation


# static fields
.field private static final BACKSLASH_OR_AMP:Ljava/util/regex/Pattern;

.field public static final ENTITY:Ljava/lang/String; = "&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});"

.field private static final ENTITY_OR_ESCAPED_CHAR:Ljava/util/regex/Pattern;

.field public static final ESCAPABLE:Ljava/lang/String; = "[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]"

.field private static final ESCAPE_IN_URI:Ljava/util/regex/Pattern;

.field private static final HEX_DIGITS:[C

.field private static final UNESCAPE_REPLACER:Lorg/commonmark/internal/util/Escaping$Replacer;

.field private static final URI_REPLACER:Lorg/commonmark/internal/util/Escaping$Replacer;

.field private static final WHITESPACE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-string v0, "[\\\\&]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/util/Escaping;->BACKSLASH_OR_AMP:Ljava/util/regex/Pattern;

    .line 16
    nop

    .line 17
    const-string v0, "\\\\[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]|&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/util/Escaping;->ENTITY_OR_ESCAPED_CHAR:Ljava/util/regex/Pattern;

    .line 20
    nop

    .line 21
    const-string v0, "(%[a-fA-F0-9]{0,2}|[^:/?#@!$&\'()*+,;=a-zA-Z0-9\\-._~])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/util/Escaping;->ESCAPE_IN_URI:Ljava/util/regex/Pattern;

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/commonmark/internal/util/Escaping;->HEX_DIGITS:[C

    .line 26
    const-string v0, "[ \t\r\n]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/util/Escaping;->WHITESPACE:Ljava/util/regex/Pattern;

    .line 28
    new-instance v0, Lorg/commonmark/internal/util/Escaping$1;

    invoke-direct {v0}, Lorg/commonmark/internal/util/Escaping$1;-><init>()V

    sput-object v0, Lorg/commonmark/internal/util/Escaping;->UNESCAPE_REPLACER:Lorg/commonmark/internal/util/Escaping$Replacer;

    .line 39
    new-instance v0, Lorg/commonmark/internal/util/Escaping$2;

    invoke-direct {v0}, Lorg/commonmark/internal/util/Escaping$2;-><init>()V

    sput-object v0, Lorg/commonmark/internal/util/Escaping;->URI_REPLACER:Lorg/commonmark/internal/util/Escaping$Replacer;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[C
    .locals 1

    .line 8
    sget-object v0, Lorg/commonmark/internal/util/Escaping;->HEX_DIGITS:[C

    return-object v0
.end method

.method public static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .line 67
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 68
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 70
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 78
    :sswitch_0
    const-string v3, "&gt;"

    .line 79
    .local v3, "replacement":Ljava/lang/String;
    goto :goto_1

    .line 75
    .end local v3    # "replacement":Ljava/lang/String;
    :sswitch_1
    const-string v3, "&lt;"

    .line 76
    .restart local v3    # "replacement":Ljava/lang/String;
    goto :goto_1

    .line 72
    .end local v3    # "replacement":Ljava/lang/String;
    :sswitch_2
    const-string v3, "&amp;"

    .line 73
    .restart local v3    # "replacement":Ljava/lang/String;
    goto :goto_1

    .line 81
    .end local v3    # "replacement":Ljava/lang/String;
    :sswitch_3
    const-string v3, "&quot;"

    .line 82
    .restart local v3    # "replacement":Ljava/lang/String;
    nop

    .line 89
    :goto_1
    if-nez v0, :cond_0

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    .line 91
    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .end local v2    # "c":C
    .end local v3    # "replacement":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, p0

    :goto_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public static normalizeLabelContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "trimmed":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "caseFolded":Ljava/lang/String;
    sget-object v2, Lorg/commonmark/internal/util/Escaping;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static percentEncodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lorg/commonmark/internal/util/Escaping;->ESCAPE_IN_URI:Ljava/util/regex/Pattern;

    sget-object v1, Lorg/commonmark/internal/util/Escaping;->URI_REPLACER:Lorg/commonmark/internal/util/Escaping$Replacer;

    invoke-static {v0, p0, v1}, Lorg/commonmark/internal/util/Escaping;->replaceAll(Ljava/util/regex/Pattern;Ljava/lang/String;Lorg/commonmark/internal/util/Escaping$Replacer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceAll(Ljava/util/regex/Pattern;Ljava/lang/String;Lorg/commonmark/internal/util/Escaping$Replacer;)Ljava/lang/String;
    .locals 4
    .param p0, "p"    # Ljava/util/regex/Pattern;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "replacer"    # Lorg/commonmark/internal/util/Escaping$Replacer;

    .line 128
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 130
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    return-object p1

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 137
    .local v2, "lastEnd":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v1}, Lorg/commonmark/internal/util/Escaping$Replacer;->replace(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 139
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 140
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_2

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 145
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 140
    :cond_2
    goto :goto_0
.end method

.method public static unescapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 103
    sget-object v0, Lorg/commonmark/internal/util/Escaping;->BACKSLASH_OR_AMP:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lorg/commonmark/internal/util/Escaping;->ENTITY_OR_ESCAPED_CHAR:Ljava/util/regex/Pattern;

    sget-object v1, Lorg/commonmark/internal/util/Escaping;->UNESCAPE_REPLACER:Lorg/commonmark/internal/util/Escaping$Replacer;

    invoke-static {v0, p0, v1}, Lorg/commonmark/internal/util/Escaping;->replaceAll(Ljava/util/regex/Pattern;Ljava/lang/String;Lorg/commonmark/internal/util/Escaping$Replacer;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    return-object p0
.end method
