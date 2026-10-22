package org.commonmark.internal.renderer.text;

/* loaded from: classes.dex */
public abstract class ListHolder {
    private static final String INDENT_DEFAULT = "   ";
    private static final String INDENT_EMPTY = "";
    private final String indent;
    private final ListHolder parent;

    ListHolder(ListHolder parent) {
        this.parent = parent;
        if (parent != null) {
            this.indent = parent.indent + INDENT_DEFAULT;
            return;
        }
        this.indent = INDENT_EMPTY;
    }

    public ListHolder getParent() {
        return this.parent;
    }

    public String getIndent() {
        return this.indent;
    }
}
