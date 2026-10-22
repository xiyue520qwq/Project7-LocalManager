package org.commonmark.node;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class SourceSpans {
    private List<SourceSpan> sourceSpans;

    public static SourceSpans empty() {
        return new SourceSpans();
    }

    public List<SourceSpan> getSourceSpans() {
        List<SourceSpan> list = this.sourceSpans;
        return list != null ? list : Collections.emptyList();
    }

    public void addAllFrom(Iterable<? extends Node> nodes) {
        for (Node node : nodes) {
            addAll(node.getSourceSpans());
        }
    }

    public void addAll(List<SourceSpan> other) {
        if (other.isEmpty()) {
            return;
        }
        if (this.sourceSpans == null) {
            this.sourceSpans = new ArrayList();
        }
        if (this.sourceSpans.isEmpty()) {
            this.sourceSpans.addAll(other);
            return;
        }
        int lastIndex = this.sourceSpans.size() - 1;
        SourceSpan a = this.sourceSpans.get(lastIndex);
        SourceSpan b = other.get(0);
        if (a.getLineIndex() == b.getLineIndex() && a.getColumnIndex() + a.getLength() == b.getColumnIndex()) {
            this.sourceSpans.set(lastIndex, SourceSpan.m96of(a.getLineIndex(), a.getColumnIndex(), a.getLength() + b.getLength()));
            this.sourceSpans.addAll(other.subList(1, other.size()));
        } else {
            this.sourceSpans.addAll(other);
        }
    }
}
