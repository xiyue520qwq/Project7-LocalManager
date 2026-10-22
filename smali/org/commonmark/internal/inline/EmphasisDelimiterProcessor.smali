.class public abstract Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;
.super Ljava/lang/Object;
.source "EmphasisDelimiterProcessor.java"

# interfaces
.implements Lorg/commonmark/parser/delimiter/DelimiterProcessor;


# instance fields
.field private final delimiterChar:C


# direct methods
.method protected constructor <init>(C)V
    .locals 0
    .param p1, "delimiterChar"    # C

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-char p1, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    .line 13
    return-void
.end method


# virtual methods
.method public getClosingCharacter()C
    .locals 1

    .line 22
    iget-char v0, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public getOpeningCharacter()C
    .locals 1

    .line 17
    iget-char v0, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    return v0
.end method

.method public process(Lorg/commonmark/parser/delimiter/DelimiterRun;Lorg/commonmark/parser/delimiter/DelimiterRun;)I
    .locals 7
    .param p1, "openingRun"    # Lorg/commonmark/parser/delimiter/DelimiterRun;
    .param p2, "closingRun"    # Lorg/commonmark/parser/delimiter/DelimiterRun;

    .line 33
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->canClose()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->canOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->originalLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 35
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->originalLength()I

    move-result v0

    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->originalLength()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    .line 36
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_1
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 43
    const/4 v0, 0x2

    .line 44
    .local v0, "usedDelimiters":I
    new-instance v1, Lorg/commonmark/node/StrongEmphasis;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v3, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/commonmark/node/StrongEmphasis;-><init>(Ljava/lang/String;)V

    .local v1, "emphasis":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 46
    .end local v0    # "usedDelimiters":I
    .end local v1    # "emphasis":Lorg/commonmark/node/Node;
    :cond_2
    const/4 v0, 0x1

    .line 47
    .restart local v0    # "usedDelimiters":I
    new-instance v1, Lorg/commonmark/node/Emphasis;

    iget-char v2, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/commonmark/node/Emphasis;-><init>(Ljava/lang/String;)V

    .line 50
    .restart local v1    # "emphasis":Lorg/commonmark/node/Node;
    :goto_0
    invoke-static {}, Lorg/commonmark/node/SourceSpans;->empty()Lorg/commonmark/node/SourceSpans;

    move-result-object v2

    .line 51
    .local v2, "sourceSpans":Lorg/commonmark/node/SourceSpans;
    invoke-interface {p1, v0}, Lorg/commonmark/parser/delimiter/DelimiterRun;->getOpeners(I)Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/commonmark/node/SourceSpans;->addAllFrom(Ljava/lang/Iterable;)V

    .line 53
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->getOpener()Lorg/commonmark/node/Text;

    move-result-object v3

    .line 54
    .local v3, "opener":Lorg/commonmark/node/Text;
    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->getCloser()Lorg/commonmark/node/Text;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/commonmark/node/Nodes;->between(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/commonmark/node/Node;

    .line 55
    .local v5, "node":Lorg/commonmark/node/Node;
    invoke-virtual {v1, v5}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 56
    invoke-virtual {v5}, Lorg/commonmark/node/Node;->getSourceSpans()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/commonmark/node/SourceSpans;->addAll(Ljava/util/List;)V

    .line 57
    .end local v5    # "node":Lorg/commonmark/node/Node;
    goto :goto_1

    .line 59
    :cond_3
    invoke-interface {p2, v0}, Lorg/commonmark/parser/delimiter/DelimiterRun;->getClosers(I)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/commonmark/node/SourceSpans;->addAllFrom(Ljava/lang/Iterable;)V

    .line 61
    invoke-virtual {v2}, Lorg/commonmark/node/SourceSpans;->getSourceSpans()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/commonmark/node/Node;->setSourceSpans(Ljava/util/List;)V

    .line 62
    invoke-virtual {v3, v1}, Lorg/commonmark/node/Text;->insertAfter(Lorg/commonmark/node/Node;)V

    .line 64
    return v0
.end method
