package org.commonmark.node;

import java.util.Objects;

/* loaded from: classes.dex */
public class SourceSpan {
    private final int columnIndex;
    private final int length;
    private final int lineIndex;

    /* renamed from: of */
    public static SourceSpan m96of(int lineIndex, int columnIndex, int length) {
        return new SourceSpan(lineIndex, columnIndex, length);
    }

    private SourceSpan(int lineIndex, int columnIndex, int length) {
        this.lineIndex = lineIndex;
        this.columnIndex = columnIndex;
        this.length = length;
    }

    public int getLineIndex() {
        return this.lineIndex;
    }

    public int getColumnIndex() {
        return this.columnIndex;
    }

    public int getLength() {
        return this.length;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SourceSpan that = (SourceSpan) o;
        if (this.lineIndex == that.lineIndex && this.columnIndex == that.columnIndex && this.length == that.length) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.lineIndex), Integer.valueOf(this.columnIndex), Integer.valueOf(this.length));
    }

    public String toString() {
        return "SourceSpan{line=" + this.lineIndex + ", column=" + this.columnIndex + ", length=" + this.length + "}";
    }
}
