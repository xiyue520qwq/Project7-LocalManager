.class public Lorg/commonmark/parser/SourceLines;
.super Ljava/lang/Object;
.source "SourceLines.java"


# instance fields
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
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/parser/SourceLines;->lines:Ljava/util/List;

    return-void
.end method

.method public static empty()Lorg/commonmark/parser/SourceLines;
    .locals 1

    .line 18
    new-instance v0, Lorg/commonmark/parser/SourceLines;

    invoke-direct {v0}, Lorg/commonmark/parser/SourceLines;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/util/List;)Lorg/commonmark/parser/SourceLines;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/SourceLine;",
            ">;)",
            "Lorg/commonmark/parser/SourceLines;"
        }
    .end annotation

    .line 28
    .local p0, "sourceLines":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/SourceLine;>;"
    new-instance v0, Lorg/commonmark/parser/SourceLines;

    invoke-direct {v0}, Lorg/commonmark/parser/SourceLines;-><init>()V

    .line 29
    .local v0, "result":Lorg/commonmark/parser/SourceLines;
    iget-object v1, v0, Lorg/commonmark/parser/SourceLines;->lines:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    return-object v0
.end method

.method public static of(Lorg/commonmark/parser/SourceLine;)Lorg/commonmark/parser/SourceLines;
    .locals 1
    .param p0, "sourceLine"    # Lorg/commonmark/parser/SourceLine;

    .line 22
    new-instance v0, Lorg/commonmark/parser/SourceLines;

    invoke-direct {v0}, Lorg/commonmark/parser/SourceLines;-><init>()V

    .line 23
    .local v0, "sourceLines":Lorg/commonmark/parser/SourceLines;
    invoke-virtual {v0, p0}, Lorg/commonmark/parser/SourceLines;->addLine(Lorg/commonmark/parser/SourceLine;)V

    .line 24
    return-object v0
.end method


# virtual methods
.method public addLine(Lorg/commonmark/parser/SourceLine;)V
    .locals 1
    .param p1, "sourceLine"    # Lorg/commonmark/parser/SourceLine;

    .line 34
    iget-object v0, p0, Lorg/commonmark/parser/SourceLines;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/commonmark/parser/SourceLines;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    iget-object v2, p0, Lorg/commonmark/parser/SourceLines;->lines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/commonmark/parser/SourceLine;

    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLine;->getContent()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/SourceLine;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/commonmark/parser/SourceLines;->lines:Ljava/util/List;

    return-object v0
.end method

.method public getSourceSpans()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/commonmark/node/SourceSpan;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "sourceSpans":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/node/SourceSpan;>;"
    iget-object v1, p0, Lorg/commonmark/parser/SourceLines;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/commonmark/parser/SourceLine;

    .line 59
    .local v2, "line":Lorg/commonmark/parser/SourceLine;
    invoke-virtual {v2}, Lorg/commonmark/parser/SourceLine;->getSourceSpan()Lorg/commonmark/node/SourceSpan;

    move-result-object v3

    .line 60
    .local v3, "sourceSpan":Lorg/commonmark/node/SourceSpan;
    if-eqz v3, :cond_0

    .line 61
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v2    # "line":Lorg/commonmark/parser/SourceLine;
    .end local v3    # "sourceSpan":Lorg/commonmark/node/SourceSpan;
    :cond_0
    goto :goto_0

    .line 64
    :cond_1
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/commonmark/parser/SourceLines;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
