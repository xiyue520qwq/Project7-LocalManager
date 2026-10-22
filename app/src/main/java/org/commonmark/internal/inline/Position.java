package org.commonmark.internal.inline;

/* loaded from: classes.dex */
public class Position {
    final int index;
    final int lineIndex;

    Position(int lineIndex, int index) {
        this.lineIndex = lineIndex;
        this.index = index;
    }
}
