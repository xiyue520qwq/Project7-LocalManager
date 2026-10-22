.class public Lorg/commonmark/internal/ListItemParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "ListItemParser.java"


# instance fields
.field private final block:Lorg/commonmark/node/ListItem;

.field private contentIndent:I

.field private hadBlankLine:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "contentIndent"    # I

    .line 23
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 13
    new-instance v0, Lorg/commonmark/node/ListItem;

    invoke-direct {v0}, Lorg/commonmark/node/ListItem;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    .line 24
    iput p1, p0, Lorg/commonmark/internal/ListItemParser;->contentIndent:I

    .line 25
    return-void
.end method


# virtual methods
.method public canContain(Lorg/commonmark/node/Block;)Z
    .locals 3
    .param p1, "childBlock"    # Lorg/commonmark/node/Block;

    .line 34
    iget-boolean v0, p0, Lorg/commonmark/internal/ListItemParser;->hadBlankLine:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    invoke-virtual {v0}, Lorg/commonmark/node/ListItem;->getParent()Lorg/commonmark/node/Block;

    move-result-object v0

    .line 40
    .local v0, "parent":Lorg/commonmark/node/Block;
    instance-of v1, v0, Lorg/commonmark/node/ListBlock;

    if-eqz v1, :cond_0

    .line 41
    move-object v1, v0

    check-cast v1, Lorg/commonmark/node/ListBlock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/commonmark/node/ListBlock;->setTight(Z)V

    .line 44
    .end local v0    # "parent":Lorg/commonmark/node/Block;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    return-object v0
.end method

.method public isContainer()Z
    .locals 1

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 2
    .param p1, "state"    # Lorg/commonmark/parser/block/ParserState;

    .line 54
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    invoke-virtual {v0}, Lorg/commonmark/node/ListItem;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v0

    .line 61
    .local v0, "activeBlock":Lorg/commonmark/node/Block;
    instance-of v1, v0, Lorg/commonmark/node/Paragraph;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/commonmark/node/ListItem;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lorg/commonmark/internal/ListItemParser;->hadBlankLine:Z

    .line 62
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v1

    invoke-static {v1}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v1

    return-object v1

    .line 66
    .end local v0    # "activeBlock":Lorg/commonmark/node/Block;
    :cond_3
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v0

    iget v1, p0, Lorg/commonmark/internal/ListItemParser;->contentIndent:I

    if-lt v0, v1, :cond_4

    .line 67
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result v0

    iget v1, p0, Lorg/commonmark/internal/ListItemParser;->contentIndent:I

    add-int/2addr v0, v1

    invoke-static {v0}, Lorg/commonmark/parser/block/BlockContinue;->atColumn(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0

    .line 70
    :cond_4
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v0

    return-object v0
.end method
