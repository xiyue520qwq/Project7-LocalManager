package org.commonmark.node;

/* loaded from: classes.dex */
public class SoftLineBreak extends Node {
    @Override // org.commonmark.node.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
