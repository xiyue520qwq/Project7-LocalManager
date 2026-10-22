.class public abstract Lorg/commonmark/node/AbstractVisitor;
.super Ljava/lang/Object;
.source "AbstractVisitor.java"

# interfaces
.implements Lorg/commonmark/node/Visitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/commonmark/node/BlockQuote;)V
    .locals 0
    .param p1, "blockQuote"    # Lorg/commonmark/node/BlockQuote;

    .line 13
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 14
    return-void
.end method

.method public visit(Lorg/commonmark/node/BulletList;)V
    .locals 0
    .param p1, "bulletList"    # Lorg/commonmark/node/BulletList;

    .line 18
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 19
    return-void
.end method

.method public visit(Lorg/commonmark/node/Code;)V
    .locals 0
    .param p1, "code"    # Lorg/commonmark/node/Code;

    .line 23
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 24
    return-void
.end method

.method public visit(Lorg/commonmark/node/CustomBlock;)V
    .locals 0
    .param p1, "customBlock"    # Lorg/commonmark/node/CustomBlock;

    .line 118
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 119
    return-void
.end method

.method public visit(Lorg/commonmark/node/CustomNode;)V
    .locals 0
    .param p1, "customNode"    # Lorg/commonmark/node/CustomNode;

    .line 123
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 124
    return-void
.end method

.method public visit(Lorg/commonmark/node/Document;)V
    .locals 0
    .param p1, "document"    # Lorg/commonmark/node/Document;

    .line 28
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 29
    return-void
.end method

.method public visit(Lorg/commonmark/node/Emphasis;)V
    .locals 0
    .param p1, "emphasis"    # Lorg/commonmark/node/Emphasis;

    .line 33
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 34
    return-void
.end method

.method public visit(Lorg/commonmark/node/FencedCodeBlock;)V
    .locals 0
    .param p1, "fencedCodeBlock"    # Lorg/commonmark/node/FencedCodeBlock;

    .line 38
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 39
    return-void
.end method

.method public visit(Lorg/commonmark/node/HardLineBreak;)V
    .locals 0
    .param p1, "hardLineBreak"    # Lorg/commonmark/node/HardLineBreak;

    .line 43
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 44
    return-void
.end method

.method public visit(Lorg/commonmark/node/Heading;)V
    .locals 0
    .param p1, "heading"    # Lorg/commonmark/node/Heading;

    .line 48
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 49
    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlBlock;)V
    .locals 0
    .param p1, "htmlBlock"    # Lorg/commonmark/node/HtmlBlock;

    .line 63
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 64
    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlInline;)V
    .locals 0
    .param p1, "htmlInline"    # Lorg/commonmark/node/HtmlInline;

    .line 58
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 59
    return-void
.end method

.method public visit(Lorg/commonmark/node/Image;)V
    .locals 0
    .param p1, "image"    # Lorg/commonmark/node/Image;

    .line 68
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 69
    return-void
.end method

.method public visit(Lorg/commonmark/node/IndentedCodeBlock;)V
    .locals 0
    .param p1, "indentedCodeBlock"    # Lorg/commonmark/node/IndentedCodeBlock;

    .line 73
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 74
    return-void
.end method

.method public visit(Lorg/commonmark/node/Link;)V
    .locals 0
    .param p1, "link"    # Lorg/commonmark/node/Link;

    .line 78
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 79
    return-void
.end method

.method public visit(Lorg/commonmark/node/LinkReferenceDefinition;)V
    .locals 0
    .param p1, "linkReferenceDefinition"    # Lorg/commonmark/node/LinkReferenceDefinition;

    .line 113
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 114
    return-void
.end method

.method public visit(Lorg/commonmark/node/ListItem;)V
    .locals 0
    .param p1, "listItem"    # Lorg/commonmark/node/ListItem;

    .line 83
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 84
    return-void
.end method

.method public visit(Lorg/commonmark/node/OrderedList;)V
    .locals 0
    .param p1, "orderedList"    # Lorg/commonmark/node/OrderedList;

    .line 88
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 89
    return-void
.end method

.method public visit(Lorg/commonmark/node/Paragraph;)V
    .locals 0
    .param p1, "paragraph"    # Lorg/commonmark/node/Paragraph;

    .line 93
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 94
    return-void
.end method

.method public visit(Lorg/commonmark/node/SoftLineBreak;)V
    .locals 0
    .param p1, "softLineBreak"    # Lorg/commonmark/node/SoftLineBreak;

    .line 98
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 99
    return-void
.end method

.method public visit(Lorg/commonmark/node/StrongEmphasis;)V
    .locals 0
    .param p1, "strongEmphasis"    # Lorg/commonmark/node/StrongEmphasis;

    .line 103
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 104
    return-void
.end method

.method public visit(Lorg/commonmark/node/Text;)V
    .locals 0
    .param p1, "text"    # Lorg/commonmark/node/Text;

    .line 108
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 109
    return-void
.end method

.method public visit(Lorg/commonmark/node/ThematicBreak;)V
    .locals 0
    .param p1, "thematicBreak"    # Lorg/commonmark/node/ThematicBreak;

    .line 53
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 54
    return-void
.end method

.method protected visitChildren(Lorg/commonmark/node/Node;)V
    .locals 2
    .param p1, "parent"    # Lorg/commonmark/node/Node;

    .line 132
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 133
    .local v0, "node":Lorg/commonmark/node/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 137
    .local v1, "next":Lorg/commonmark/node/Node;
    invoke-virtual {v0, p0}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    .line 138
    move-object v0, v1

    .line 139
    .end local v1    # "next":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method
