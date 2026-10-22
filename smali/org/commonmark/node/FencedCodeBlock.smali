.class public Lorg/commonmark/node/FencedCodeBlock;
.super Lorg/commonmark/node/Block;
.source "FencedCodeBlock.java"


# instance fields
.field private fenceChar:C

.field private fenceIndent:I

.field private fenceLength:I

.field private info:Ljava/lang/String;

.field private literal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/commonmark/node/Block;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/commonmark/node/Visitor;

    .line 14
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/FencedCodeBlock;)V

    .line 15
    return-void
.end method

.method public getFenceChar()C
    .locals 1

    .line 18
    iget-char v0, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceChar:C

    return v0
.end method

.method public getFenceIndent()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceIndent:I

    return v0
.end method

.method public getFenceLength()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceLength:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/commonmark/node/FencedCodeBlock;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/commonmark/node/FencedCodeBlock;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public setFenceChar(C)V
    .locals 0
    .param p1, "fenceChar"    # C

    .line 22
    iput-char p1, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceChar:C

    .line 23
    return-void
.end method

.method public setFenceIndent(I)V
    .locals 0
    .param p1, "fenceIndent"    # I

    .line 38
    iput p1, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceIndent:I

    .line 39
    return-void
.end method

.method public setFenceLength(I)V
    .locals 0
    .param p1, "fenceLength"    # I

    .line 30
    iput p1, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceLength:I

    .line 31
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/commonmark/node/FencedCodeBlock;->info:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setLiteral(Ljava/lang/String;)V
    .locals 0
    .param p1, "literal"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lorg/commonmark/node/FencedCodeBlock;->literal:Ljava/lang/String;

    .line 58
    return-void
.end method
