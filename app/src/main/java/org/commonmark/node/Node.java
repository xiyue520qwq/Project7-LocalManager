package org.commonmark.node;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class Node {
    private Node parent = null;
    private Node firstChild = null;
    private Node lastChild = null;
    private Node prev = null;
    private Node next = null;
    private List<SourceSpan> sourceSpans = null;

    public abstract void accept(Visitor visitor);

    public Node getNext() {
        return this.next;
    }

    public Node getPrevious() {
        return this.prev;
    }

    public Node getFirstChild() {
        return this.firstChild;
    }

    public Node getLastChild() {
        return this.lastChild;
    }

    public Node getParent() {
        return this.parent;
    }

    protected void setParent(Node parent) {
        this.parent = parent;
    }

    public void appendChild(Node child) {
        child.unlink();
        child.setParent(this);
        Node node = this.lastChild;
        if (node != null) {
            node.next = child;
            child.prev = node;
            this.lastChild = child;
        } else {
            this.firstChild = child;
            this.lastChild = child;
        }
    }

    public void prependChild(Node child) {
        child.unlink();
        child.setParent(this);
        Node node = this.firstChild;
        if (node != null) {
            node.prev = child;
            child.next = node;
            this.firstChild = child;
        } else {
            this.firstChild = child;
            this.lastChild = child;
        }
    }

    public void unlink() {
        Node node = this.prev;
        if (node != null) {
            node.next = this.next;
        } else {
            Node node2 = this.parent;
            if (node2 != null) {
                node2.firstChild = this.next;
            }
        }
        Node node3 = this.next;
        if (node3 != null) {
            node3.prev = node;
        } else {
            Node node4 = this.parent;
            if (node4 != null) {
                node4.lastChild = node;
            }
        }
        this.parent = null;
        this.next = null;
        this.prev = null;
    }

    public void insertAfter(Node sibling) {
        sibling.unlink();
        Node node = this.next;
        sibling.next = node;
        if (node != null) {
            node.prev = sibling;
        }
        sibling.prev = this;
        this.next = sibling;
        Node node2 = this.parent;
        sibling.parent = node2;
        if (sibling.next == null) {
            node2.lastChild = sibling;
        }
    }

    public void insertBefore(Node sibling) {
        sibling.unlink();
        Node node = this.prev;
        sibling.prev = node;
        if (node != null) {
            node.next = sibling;
        }
        sibling.next = this;
        this.prev = sibling;
        Node node2 = this.parent;
        sibling.parent = node2;
        if (sibling.prev == null) {
            node2.firstChild = sibling;
        }
    }

    public List<SourceSpan> getSourceSpans() {
        List<SourceSpan> list = this.sourceSpans;
        return list != null ? Collections.unmodifiableList(list) : Collections.emptyList();
    }

    public void setSourceSpans(List<SourceSpan> sourceSpans) {
        if (sourceSpans.isEmpty()) {
            this.sourceSpans = null;
        } else {
            this.sourceSpans = new ArrayList(sourceSpans);
        }
    }

    public void addSourceSpan(SourceSpan sourceSpan) {
        if (this.sourceSpans == null) {
            this.sourceSpans = new ArrayList();
        }
        this.sourceSpans.add(sourceSpan);
    }

    public String toString() {
        return getClass().getSimpleName() + "{" + toStringAttributes() + "}";
    }

    protected String toStringAttributes() {
        return "";
    }
}
