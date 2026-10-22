package org.commonmark.internal;

/* loaded from: classes.dex */
class BlockContent {
    private int lineCount;

    /* renamed from: sb */
    private final StringBuilder f21sb;

    public BlockContent() {
        this.lineCount = 0;
        this.f21sb = new StringBuilder();
    }

    public BlockContent(String content) {
        this.lineCount = 0;
        this.f21sb = new StringBuilder(content);
    }

    public void add(CharSequence line) {
        if (this.lineCount != 0) {
            this.f21sb.append('\n');
        }
        this.f21sb.append(line);
        this.lineCount++;
    }

    public String getString() {
        return this.f21sb.toString();
    }
}
