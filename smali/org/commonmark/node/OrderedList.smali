.class public Lorg/commonmark/node/OrderedList;
.super Lorg/commonmark/node/ListBlock;
.source "OrderedList.java"


# instance fields
.field private delimiter:C

.field private startNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/commonmark/node/ListBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/commonmark/node/Visitor;

    .line 10
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/OrderedList;)V

    .line 11
    return-void
.end method

.method public getDelimiter()C
    .locals 1

    .line 22
    iget-char v0, p0, Lorg/commonmark/node/OrderedList;->delimiter:C

    return v0
.end method

.method public getStartNumber()I
    .locals 1

    .line 14
    iget v0, p0, Lorg/commonmark/node/OrderedList;->startNumber:I

    return v0
.end method

.method public setDelimiter(C)V
    .locals 0
    .param p1, "delimiter"    # C

    .line 26
    iput-char p1, p0, Lorg/commonmark/node/OrderedList;->delimiter:C

    .line 27
    return-void
.end method

.method public setStartNumber(I)V
    .locals 0
    .param p1, "startNumber"    # I

    .line 18
    iput p1, p0, Lorg/commonmark/node/OrderedList;->startNumber:I

    .line 19
    return-void
.end method
