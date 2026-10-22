.class public Lorg/commonmark/internal/inline/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"


# static fields
.field public static final END:C


# instance fields
.field private index:I

.field private line:Lorg/commonmark/parser/SourceLine;

.field private lineIndex:I

.field private lineLength:I

.field private final lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/SourceLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;II)V
    .locals 2
    .param p2, "lineIndex"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/SourceLine;",
            ">;II)V"
        }
    .end annotation

    .line 33
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/SourceLine;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/commonmark/parser/SourceLine;->of(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)Lorg/commonmark/parser/SourceLine;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/inline/Scanner;->line:Lorg/commonmark/parser/SourceLine;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/inline/Scanner;->lineLength:I

    .line 34
    iput-object p1, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    .line 35
    iput p2, p0, Lorg/commonmark/internal/inline/Scanner;->lineIndex:I

    .line 36
    iput p3, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    .line 37
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-direct {p0, p2, p3}, Lorg/commonmark/internal/inline/Scanner;->checkPosition(II)V

    .line 39
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/parser/SourceLine;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->setLine(Lorg/commonmark/parser/SourceLine;)V

    .line 41
    :cond_0
    return-void
.end method

.method private checkPosition(II)V
    .locals 4
    .param p1, "lineIndex"    # I
    .param p2, "index"    # I

    .line 273
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 276
    iget-object v0, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/parser/SourceLine;

    .line 277
    .local v0, "line":Lorg/commonmark/parser/SourceLine;
    if-ltz p2, :cond_0

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 280
    return-void

    .line 278
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " out of range, line length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    .end local v0    # "line":Lorg/commonmark/parser/SourceLine;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Line index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range, number of lines: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Lorg/commonmark/parser/SourceLines;)Lorg/commonmark/internal/inline/Scanner;
    .locals 3
    .param p0, "lines"    # Lorg/commonmark/parser/SourceLines;

    .line 44
    new-instance v0, Lorg/commonmark/internal/inline/Scanner;

    invoke-virtual {p0}, Lorg/commonmark/parser/SourceLines;->getLines()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/commonmark/internal/inline/Scanner;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method private setLine(Lorg/commonmark/parser/SourceLine;)V
    .locals 1
    .param p1, "line"    # Lorg/commonmark/parser/SourceLine;

    .line 268
    iput-object p1, p0, Lorg/commonmark/internal/inline/Scanner;->line:Lorg/commonmark/parser/SourceLine;

    .line 269
    invoke-virtual {p1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/commonmark/internal/inline/Scanner;->lineLength:I

    .line 270
    return-void
.end method


# virtual methods
.method public find(C)I
    .locals 3
    .param p1, "c"    # C

    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v1

    .line 200
    .local v1, "cur":C
    if-nez v1, :cond_0

    .line 201
    const/4 v2, -0x1

    return v2

    .line 202
    :cond_0
    if-ne v1, p1, :cond_1

    .line 203
    return v0

    .line 205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 206
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 207
    .end local v1    # "cur":C
    goto :goto_0
.end method

.method public find(Lorg/commonmark/internal/util/CharMatcher;)I
    .locals 3
    .param p1, "matcher"    # Lorg/commonmark/internal/util/CharMatcher;

    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v1

    .line 214
    .local v1, "c":C
    if-nez v1, :cond_0

    .line 215
    const/4 v2, -0x1

    return v2

    .line 216
    :cond_0
    invoke-interface {p1, v1}, Lorg/commonmark/internal/util/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    return v0

    .line 219
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 220
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 221
    .end local v1    # "c":C
    goto :goto_0
.end method

.method public getSource(Lorg/commonmark/internal/inline/Position;Lorg/commonmark/internal/inline/Position;)Lorg/commonmark/parser/SourceLines;
    .locals 7
    .param p1, "begin"    # Lorg/commonmark/internal/inline/Position;
    .param p2, "end"    # Lorg/commonmark/internal/inline/Position;

    .line 240
    iget v0, p1, Lorg/commonmark/internal/inline/Position;->lineIndex:I

    iget v1, p2, Lorg/commonmark/internal/inline/Position;->lineIndex:I

    if-ne v0, v1, :cond_1

    .line 242
    iget-object v0, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    iget v1, p1, Lorg/commonmark/internal/inline/Position;->lineIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/parser/SourceLine;

    .line 243
    .local v0, "line":Lorg/commonmark/parser/SourceLine;
    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lorg/commonmark/internal/inline/Position;->index:I

    iget v3, p2, Lorg/commonmark/internal/inline/Position;->index:I

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 244
    .local v1, "newContent":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 245
    .local v2, "newSourceSpan":Lorg/commonmark/node/SourceSpan;
    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getSourceSpan()Lorg/commonmark/node/SourceSpan;

    move-result-object v3

    .line 246
    .local v3, "sourceSpan":Lorg/commonmark/node/SourceSpan;
    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {v3}, Lorg/commonmark/node/SourceSpan;->getLineIndex()I

    move-result v4

    invoke-virtual {v3}, Lorg/commonmark/node/SourceSpan;->getColumnIndex()I

    move-result v5

    iget v6, p1, Lorg/commonmark/internal/inline/Position;->index:I

    add-int/2addr v5, v6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/commonmark/node/SourceSpan;->of(III)Lorg/commonmark/node/SourceSpan;

    move-result-object v2

    .line 249
    :cond_0
    invoke-static {v1, v2}, Lorg/commonmark/parser/SourceLine;->of(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)Lorg/commonmark/parser/SourceLine;

    move-result-object v4

    invoke-static {v4}, Lorg/commonmark/parser/SourceLines;->of(Lorg/commonmark/parser/SourceLine;)Lorg/commonmark/parser/SourceLines;

    move-result-object v4

    return-object v4

    .line 251
    .end local v0    # "line":Lorg/commonmark/parser/SourceLine;
    .end local v1    # "newContent":Ljava/lang/CharSequence;
    .end local v2    # "newSourceSpan":Lorg/commonmark/node/SourceSpan;
    .end local v3    # "sourceSpan":Lorg/commonmark/node/SourceSpan;
    :cond_1
    invoke-static {}, Lorg/commonmark/parser/SourceLines;->empty()Lorg/commonmark/parser/SourceLines;

    move-result-object v0

    .line 253
    .local v0, "sourceLines":Lorg/commonmark/parser/SourceLines;
    iget-object v1, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    iget v2, p1, Lorg/commonmark/internal/inline/Position;->lineIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/parser/SourceLine;

    .line 254
    .local v1, "firstLine":Lorg/commonmark/parser/SourceLine;
    iget v2, p1, Lorg/commonmark/internal/inline/Position;->index:I

    invoke-virtual {v1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/commonmark/parser/SourceLine;->substring(II)Lorg/commonmark/parser/SourceLine;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/commonmark/parser/SourceLines;->addLine(Lorg/commonmark/parser/SourceLine;)V

    .line 257
    iget v2, p1, Lorg/commonmark/internal/inline/Position;->lineIndex:I

    add-int/lit8 v2, v2, 0x1

    .local v2, "line":I
    :goto_0
    iget v3, p2, Lorg/commonmark/internal/inline/Position;->lineIndex:I

    if-ge v2, v3, :cond_2

    .line 258
    iget-object v3, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v0, v3}, Lorg/commonmark/parser/SourceLines;->addLine(Lorg/commonmark/parser/SourceLine;)V

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "line":I
    :cond_2
    iget-object v2, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    iget v3, p2, Lorg/commonmark/internal/inline/Position;->lineIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/commonmark/parser/SourceLine;

    .line 262
    .local v2, "lastLine":Lorg/commonmark/parser/SourceLine;
    const/4 v3, 0x0

    iget v4, p2, Lorg/commonmark/internal/inline/Position;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/commonmark/parser/SourceLine;->substring(II)Lorg/commonmark/parser/SourceLine;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/commonmark/parser/SourceLines;->addLine(Lorg/commonmark/parser/SourceLine;)V

    .line 263
    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .line 101
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->lineLength:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 102
    return v2

    .line 105
    :cond_0
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->lineIndex:I

    iget-object v1, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public match(Lorg/commonmark/internal/util/CharMatcher;)I
    .locals 2
    .param p1, "matcher"    # Lorg/commonmark/internal/util/CharMatcher;

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v1

    invoke-interface {p1, v1}, Lorg/commonmark/internal/util/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_0

    .line 174
    :cond_0
    return v0
.end method

.method public matchMultiple(C)I
    .locals 2
    .param p1, "c"    # C

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 163
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    goto :goto_0

    .line 165
    :cond_0
    return v0
.end method

.method public next()V
    .locals 2

    .line 110
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    .line 111
    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->lineLength:I

    if-le v0, v1, :cond_1

    .line 112
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->lineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/inline/Scanner;->lineIndex:I

    .line 113
    iget-object v1, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->lineIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/parser/SourceLine;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->setLine(Lorg/commonmark/parser/SourceLine;)V

    goto :goto_0

    .line 116
    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v1, v0}, Lorg/commonmark/parser/SourceLine;->of(Ljava/lang/CharSequence;Lorg/commonmark/node/SourceSpan;)Lorg/commonmark/parser/SourceLine;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->setLine(Lorg/commonmark/parser/SourceLine;)V

    .line 118
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    .line 120
    :cond_1
    return-void
.end method

.method public next(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 129
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v0

    if-ne v0, p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 131
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next(Ljava/lang/String;)Z
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .line 145
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->lineLength:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->lineLength:I

    if-gt v0, v1, :cond_2

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 148
    iget-object v1, p0, Lorg/commonmark/internal/inline/Scanner;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    iget v3, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    add-int/2addr v3, v0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_0

    .line 149
    return v2

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    .line 153
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_2
    return v2
.end method

.method public peek()C
    .locals 2

    .line 48
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->lineLength:I

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lorg/commonmark/internal/inline/Scanner;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 51
    :cond_0
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->lineIndex:I

    iget-object v1, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 52
    const/16 v0, 0xa

    return v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public peekCodePoint()I
    .locals 3

    .line 61
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->lineLength:I

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lorg/commonmark/internal/inline/Scanner;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v0}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 63
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/commonmark/internal/inline/Scanner;->lineLength:I

    if-ge v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Lorg/commonmark/internal/inline/Scanner;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 65
    .local v1, "low":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 69
    .end local v1    # "low":C
    :cond_0
    return v0

    .line 71
    .end local v0    # "c":C
    :cond_1
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->lineIndex:I

    iget-object v1, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 72
    const/16 v0, 0xa

    return v0

    .line 75
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public peekPreviousCodePoint()I
    .locals 4

    .line 81
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    if-lez v0, :cond_1

    .line 82
    add-int/lit8 v0, v0, -0x1

    .line 83
    .local v0, "prev":I
    iget-object v1, p0, Lorg/commonmark/internal/inline/Scanner;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v1}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 84
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 85
    iget-object v2, p0, Lorg/commonmark/internal/inline/Scanner;->line:Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 86
    .local v2, "high":C
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-static {v2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    .line 90
    .end local v2    # "high":C
    :cond_0
    return v1

    .line 92
    .end local v0    # "prev":I
    .end local v1    # "c":C
    :cond_1
    iget v0, p0, Lorg/commonmark/internal/inline/Scanner;->lineIndex:I

    if-lez v0, :cond_2

    .line 93
    const/16 v0, 0xa

    return v0

    .line 95
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public position()Lorg/commonmark/internal/inline/Position;
    .locals 3

    .line 227
    new-instance v0, Lorg/commonmark/internal/inline/Position;

    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->lineIndex:I

    iget v2, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    invoke-direct {v0, v1, v2}, Lorg/commonmark/internal/inline/Position;-><init>(II)V

    return-object v0
.end method

.method public setPosition(Lorg/commonmark/internal/inline/Position;)V
    .locals 2
    .param p1, "position"    # Lorg/commonmark/internal/inline/Position;

    .line 231
    iget v0, p1, Lorg/commonmark/internal/inline/Position;->lineIndex:I

    iget v1, p1, Lorg/commonmark/internal/inline/Position;->index:I

    invoke-direct {p0, v0, v1}, Lorg/commonmark/internal/inline/Scanner;->checkPosition(II)V

    .line 232
    iget v0, p1, Lorg/commonmark/internal/inline/Position;->lineIndex:I

    iput v0, p0, Lorg/commonmark/internal/inline/Scanner;->lineIndex:I

    .line 233
    iget v0, p1, Lorg/commonmark/internal/inline/Position;->index:I

    iput v0, p0, Lorg/commonmark/internal/inline/Scanner;->index:I

    .line 234
    iget-object v0, p0, Lorg/commonmark/internal/inline/Scanner;->lines:Ljava/util/List;

    iget v1, p0, Lorg/commonmark/internal/inline/Scanner;->lineIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/parser/SourceLine;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/inline/Scanner;->setLine(Lorg/commonmark/parser/SourceLine;)V

    .line 235
    return-void
.end method

.method public whitespace()I
    .locals 2

    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->peek()C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 191
    return v0

    .line 187
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 188
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/Scanner;->next()V

    .line 189
    goto :goto_0

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
