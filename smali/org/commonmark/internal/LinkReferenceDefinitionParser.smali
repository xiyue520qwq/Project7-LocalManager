.class public Lorg/commonmark/internal/LinkReferenceDefinitionParser;
.super Ljava/lang/Object;
.source "LinkReferenceDefinitionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;
    }
.end annotation


# instance fields
.field private final definitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/node/LinkReferenceDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private destination:Ljava/lang/String;

.field private label:Ljava/lang/StringBuilder;

.field private final paragraphLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/SourceLine;",
            ">;"
        }
    .end annotation
.end field

.field private referenceValid:Z

.field private final sourceSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/node/SourceSpan;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

.field private title:Ljava/lang/StringBuilder;

.field private titleDelimiter:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraphLines:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->definitions:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->sourceSpans:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    return-void
.end method

.method private destination(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 6
    .param p1, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 155
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    .line 156
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v0

    .line 157
    .local v0, "start":Lorg/commonmark/internal/inline/Position;
    invoke-static {p1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkDestination(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 158
    return v2

    .line 161
    :cond_0
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v1

    invoke-virtual {v1}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "rawDestination":Ljava/lang/String;
    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    iput-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    move-result v3

    .line 167
    .local v3, "whitespace":I
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 170
    iput-boolean v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    .line 171
    iget-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraphLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 172
    :cond_2
    if-nez v3, :cond_3

    .line 174
    return v2

    .line 177
    :cond_3
    :goto_1
    sget-object v2, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 178
    return v4
.end method

.method private finishReference()V
    .locals 5

    .line 247
    iget-boolean v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    if-nez v0, :cond_0

    .line 248
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination:Ljava/lang/String;

    invoke-static {v0}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "d":Ljava/lang/String;
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 253
    .local v1, "t":Ljava/lang/String;
    :goto_0
    new-instance v3, Lorg/commonmark/node/LinkReferenceDefinition;

    iget-object v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lorg/commonmark/node/LinkReferenceDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .local v3, "definition":Lorg/commonmark/node/LinkReferenceDefinition;
    iget-object v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->sourceSpans:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/commonmark/node/LinkReferenceDefinition;->setSourceSpans(Ljava/util/List;)V

    .line 255
    iget-object v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->sourceSpans:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 256
    iget-object v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->definitions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    .line 259
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    .line 260
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination:Ljava/lang/String;

    .line 261
    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    .line 262
    return-void
.end method

.method private label(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 5
    .param p1, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 118
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v0

    .line 119
    .local v0, "start":Lorg/commonmark/internal/inline/Position;
    invoke-static {p1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkLabelContent(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 120
    return v2

    .line 123
    :cond_0
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v3

    invoke-virtual {v3}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 127
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    return v3

    .line 129
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    return v2

    .line 136
    :cond_2
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v4, 0x3e7

    if-le v1, v4, :cond_3

    .line 137
    return v2

    .line 140
    :cond_3
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/commonmark/internal/util/Escaping;->normalizeLabelContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "normalizedLabel":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 142
    return v2

    .line 145
    :cond_4
    sget-object v2, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->DESTINATION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 147
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    .line 148
    return v3

    .line 150
    .end local v1    # "normalizedLabel":Ljava/lang/String;
    :cond_5
    return v2
.end method

.method private startDefinition(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 2
    .param p1, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 103
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    .line 104
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lorg/commonmark/internal/inline/Scanner;->next(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->LABEL:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private startTitle(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 4
    .param p1, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 182
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    .line 183
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 185
    return v1

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    .line 189
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v0

    .line 190
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 196
    :sswitch_0
    const/16 v2, 0x29

    iput-char v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    goto :goto_0

    .line 193
    :sswitch_1
    iput-char v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    .line 194
    nop

    .line 200
    :goto_0
    iget-char v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    if-eqz v2, :cond_1

    .line 201
    sget-object v2, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->TITLE:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 204
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 205
    iget-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 208
    :cond_1
    invoke-direct {p0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 210
    sget-object v2, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 212
    :cond_2
    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method private title(Lorg/commonmark/internal/inline/Scanner;)Z
    .locals 4
    .param p1, "scanner"    # Lorg/commonmark/internal/inline/Scanner;

    .line 216
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v0

    .line 217
    .local v0, "start":Lorg/commonmark/internal/inline/Position;
    iget-char v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->titleDelimiter:C

    invoke-static {p1, v1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkTitleContent(Lorg/commonmark/internal/inline/Scanner;C)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 219
    return v2

    .line 222
    :cond_0
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->position()Lorg/commonmark/internal/inline/Position;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/commonmark/internal/inline/Scanner;->getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;

    move-result-object v3

    invoke-virtual {v3}, Lorg/commonmark/parser/SourceLines;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 226
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    return v3

    .line 231
    :cond_1
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 232
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->whitespace()I

    .line 233
    invoke-virtual {p1}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    return v2

    .line 237
    :cond_2
    iput-boolean v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->referenceValid:Z

    .line 238
    invoke-direct {p0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 239
    iget-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraphLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 242
    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->START_DEFINITION:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v1, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 243
    return v3
.end method


# virtual methods
.method public addSourceSpan(Lorg/commonmark/node/SourceSpan;)V
    .locals 1
    .param p1, "sourceSpan"    # Lorg/commonmark/node/SourceSpan;

    .line 79
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->sourceSpans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method getDefinitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/commonmark/node/LinkReferenceDefinition;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 95
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->definitions:Ljava/util/List;

    return-object v0
.end method

.method getParagraphLines()Lorg/commonmark/parser/SourceLines;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraphLines:Ljava/util/List;

    invoke-static {v0}, Lorg/commonmark/parser/SourceLines;->of(Ljava/util/List;)Lorg/commonmark/parser/SourceLines;

    move-result-object v0

    return-object v0
.end method

.method getParagraphSourceSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/commonmark/node/SourceSpan;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->sourceSpans:Ljava/util/List;

    return-object v0
.end method

.method getState()Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    return-object v0
.end method

.method public parse(Lorg/commonmark/parser/SourceLine;)V
    .locals 4
    .param p1, "line"    # Lorg/commonmark/parser/SourceLine;

    .line 35
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraphLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->PARAGRAPH:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    if-ne v0, v1, :cond_0

    .line 39
    return-void

    .line 42
    :cond_0
    invoke-static {p1}, Lorg/commonmark/parser/SourceLines;->of(Lorg/commonmark/parser/SourceLine;)Lorg/commonmark/parser/SourceLines;

    move-result-object v0

    invoke-static {v0}, Lorg/commonmark/internal/inline/Scanner;->of(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/internal/inline/Scanner;

    move-result-object v0

    .line 43
    .local v0, "scanner":Lorg/commonmark/internal/inline/Scanner;
    :goto_0
    invoke-virtual {v0}, Lorg/commonmark/internal/inline/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    sget-object v1, Lorg/commonmark/internal/LinkReferenceDefinitionParser$1;->$SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State:[I

    iget-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-virtual {v2}, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 67
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown parsing state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->title(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v1

    .line 64
    .local v1, "success":Z
    goto :goto_1

    .line 59
    .end local v1    # "success":Z
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->startTitle(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v1

    .line 60
    .restart local v1    # "success":Z
    goto :goto_1

    .line 55
    .end local v1    # "success":Z
    :pswitch_2
    invoke-direct {p0, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->destination(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v1

    .line 56
    .restart local v1    # "success":Z
    goto :goto_1

    .line 51
    .end local v1    # "success":Z
    :pswitch_3
    invoke-direct {p0, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->label(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v1

    .line 52
    .restart local v1    # "success":Z
    goto :goto_1

    .line 47
    .end local v1    # "success":Z
    :pswitch_4
    invoke-direct {p0, v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->startDefinition(Lorg/commonmark/internal/inline/Scanner;)Z

    move-result v1

    .line 48
    .restart local v1    # "success":Z
    nop

    .line 71
    :goto_1
    if-nez v1, :cond_1

    .line 72
    sget-object v2, Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;->PARAGRAPH:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    iput-object v2, p0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->state:Lorg/commonmark/internal/LinkReferenceDefinitionParser$State;

    .line 73
    return-void

    .line 75
    .end local v1    # "success":Z
    :cond_1
    goto :goto_0

    .line 76
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
