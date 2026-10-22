.class public Lorg/commonmark/node/Paragraph;
.super Lorg/commonmark/node/Block;
.source "Paragraph.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/commonmark/node/Block;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lorg/commonmark/node/Visitor;

    .line 10
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/Paragraph;)V

    .line 11
    return-void
.end method
