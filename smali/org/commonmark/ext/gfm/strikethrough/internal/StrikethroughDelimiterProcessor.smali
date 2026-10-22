.class public Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughDelimiterProcessor;
.super Ljava/lang/Object;
.source "StrikethroughDelimiterProcessor.java"

# interfaces
.implements Lorg/commonmark/parser/delimiter/DelimiterProcessor;


# instance fields
.field private final requireTwoTildes:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughDelimiterProcessor;-><init>(Z)V

    .line 17
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "requireTwoTildes"    # Z

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughDelimiterProcessor;->requireTwoTildes:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getClosingCharacter()C
    .locals 1

    .line 30
    const/16 v0, 0x7e

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 35
    iget-boolean v0, p0, Lorg/commonmark/ext/gfm/strikethrough/internal/StrikethroughDelimiterProcessor;->requireTwoTildes:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getOpeningCharacter()C
    .locals 1

    .line 25
    const/16 v0, 0x7e

    return v0
.end method

.method public process(Lorg/commonmark/parser/delimiter/DelimiterRun;Lorg/commonmark/parser/delimiter/DelimiterRun;)I
    .locals 6
    .param p1, "openingRun"    # Lorg/commonmark/parser/delimiter/DelimiterRun;
    .param p2, "closingRun"    # Lorg/commonmark/parser/delimiter/DelimiterRun;

    .line 40
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v0

    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 43
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->getOpener()Lorg/commonmark/node/Text;

    move-result-object v0

    .line 46
    .local v0, "opener":Lorg/commonmark/node/Text;
    new-instance v1, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;

    invoke-direct {v1}, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;-><init>()V

    .line 48
    .local v1, "strikethrough":Lorg/commonmark/node/Node;
    new-instance v2, Lorg/commonmark/node/SourceSpans;

    invoke-direct {v2}, Lorg/commonmark/node/SourceSpans;-><init>()V

    .line 49
    .local v2, "sourceSpans":Lorg/commonmark/node/SourceSpans;
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/commonmark/parser/delimiter/DelimiterRun;->getOpeners(I)Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/commonmark/node/SourceSpans;->addAllFrom(Ljava/lang/Iterable;)V

    .line 51
    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->getCloser()Lorg/commonmark/node/Text;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/commonmark/node/Nodes;->between(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/commonmark/node/Node;

    .line 52
    .local v4, "node":Lorg/commonmark/node/Node;
    invoke-virtual {v1, v4}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 53
    invoke-virtual {v4}, Lorg/commonmark/node/Node;->getSourceSpans()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/commonmark/node/SourceSpans;->addAll(Ljava/util/List;)V

    .line 54
    .end local v4    # "node":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v3

    invoke-interface {p2, v3}, Lorg/commonmark/parser/delimiter/DelimiterRun;->getClosers(I)Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/commonmark/node/SourceSpans;->addAllFrom(Ljava/lang/Iterable;)V

    .line 57
    invoke-virtual {v2}, Lorg/commonmark/node/SourceSpans;->getSourceSpans()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/commonmark/node/Node;->setSourceSpans(Ljava/util/List;)V

    .line 59
    invoke-virtual {v0, v1}, Lorg/commonmark/node/Text;->insertAfter(Lorg/commonmark/node/Node;)V

    .line 61
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result v3

    return v3

    .line 63
    .end local v0    # "opener":Lorg/commonmark/node/Text;
    .end local v1    # "strikethrough":Lorg/commonmark/node/Node;
    .end local v2    # "sourceSpans":Lorg/commonmark/node/SourceSpans;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
