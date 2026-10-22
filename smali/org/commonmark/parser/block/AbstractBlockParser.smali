.class public abstract Lorg/commonmark/parser/block/AbstractBlockParser;
.super Ljava/lang/Object;
.source "AbstractBlockParser.java"

# interfaces
.implements Lorg/commonmark/parser/block/BlockParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLine(Lorg/commonmark/parser/SourceLine;)V
    .locals 0
    .param p1, "line"    # Lorg/commonmark/parser/SourceLine;

    .line 27
    return-void
.end method

.method public addSourceSpan(Lorg/commonmark/node/SourceSpan;)V
    .locals 1
    .param p1, "sourceSpan"    # Lorg/commonmark/node/SourceSpan;

    .line 31
    invoke-virtual {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/commonmark/node/Block;->addSourceSpan(Lorg/commonmark/node/SourceSpan;)V

    .line 32
    return-void
.end method

.method public canContain(Lorg/commonmark/node/Block;)Z
    .locals 1
    .param p1, "childBlock"    # Lorg/commonmark/node/Block;

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public canHaveLazyContinuationLines()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public closeBlock()V
    .locals 0

    .line 36
    return-void
.end method

.method public isContainer()Z
    .locals 1

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public parseInlines(Lorg/commonmark/parser/InlineParser;)V
    .locals 0
    .param p1, "inlineParser"    # Lorg/commonmark/parser/InlineParser;

    .line 40
    return-void
.end method
