package org.commonmark.node;

/* loaded from: classes.dex */
public abstract class Block extends Node {
    @Override // org.commonmark.node.Node
    public Block getParent() {
        return (Block) super.getParent();
    }

    @Override // org.commonmark.node.Node
    protected void setParent(Node parent) {
        if (!(parent instanceof Block)) {
            throw new IllegalArgumentException("Parent of block must also be block (can not be inline)");
        }
        super.setParent(parent);
    }
}
