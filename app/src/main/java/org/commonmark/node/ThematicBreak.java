package org.commonmark.node;

/* loaded from: classes.dex */
public class ThematicBreak extends Block {
    @Override // org.commonmark.node.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
