package org.commonmark.parser;

import org.commonmark.node.SourceSpan;

/* loaded from: classes.dex */
public class SourceLine {
    private final CharSequence content;
    private final SourceSpan sourceSpan;

    /* renamed from: of */
    public static SourceLine m97of(CharSequence content, SourceSpan sourceSpan) {
        return new SourceLine(content, sourceSpan);
    }

    private SourceLine(CharSequence content, SourceSpan sourceSpan) {
        if (content == null) {
            throw new NullPointerException("content must not be null");
        }
        this.content = content;
        this.sourceSpan = sourceSpan;
    }

    public CharSequence getContent() {
        return this.content;
    }

    public SourceSpan getSourceSpan() {
        return this.sourceSpan;
    }

    public SourceLine substring(int beginIndex, int endIndex) {
        CharSequence newContent = this.content.subSequence(beginIndex, endIndex);
        SourceSpan newSourceSpan = null;
        SourceSpan sourceSpan = this.sourceSpan;
        if (sourceSpan != null) {
            int columnIndex = sourceSpan.getColumnIndex() + beginIndex;
            int length = endIndex - beginIndex;
            if (length != 0) {
                newSourceSpan = SourceSpan.m96of(this.sourceSpan.getLineIndex(), columnIndex, length);
            }
        }
        return m97of(newContent, newSourceSpan);
    }
}
