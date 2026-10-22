package org.commonmark.ext.gfm.strikethrough.internal;

import org.commonmark.ext.gfm.strikethrough.Strikethrough;
import org.commonmark.node.Node;
import org.commonmark.node.Nodes;
import org.commonmark.node.SourceSpans;
import org.commonmark.node.Text;
import org.commonmark.parser.delimiter.DelimiterProcessor;
import org.commonmark.parser.delimiter.DelimiterRun;

/* loaded from: classes.dex */
public class StrikethroughDelimiterProcessor implements DelimiterProcessor {
    private final boolean requireTwoTildes;

    public StrikethroughDelimiterProcessor() {
        this(false);
    }

    public StrikethroughDelimiterProcessor(boolean requireTwoTildes) {
        this.requireTwoTildes = requireTwoTildes;
    }

    @Override // org.commonmark.parser.delimiter.DelimiterProcessor
    public char getOpeningCharacter() {
        return '~';
    }

    @Override // org.commonmark.parser.delimiter.DelimiterProcessor
    public char getClosingCharacter() {
        return '~';
    }

    @Override // org.commonmark.parser.delimiter.DelimiterProcessor
    public int getMinLength() {
        return this.requireTwoTildes ? 2 : 1;
    }

    @Override // org.commonmark.parser.delimiter.DelimiterProcessor
    public int process(DelimiterRun openingRun, DelimiterRun closingRun) {
        if (openingRun.length() == closingRun.length() && openingRun.length() <= 2) {
            Text opener = openingRun.getOpener();
            Node strikethrough = new Strikethrough();
            SourceSpans sourceSpans = new SourceSpans();
            sourceSpans.addAllFrom(openingRun.getOpeners(openingRun.length()));
            for (Node node : Nodes.between(opener, closingRun.getCloser())) {
                strikethrough.appendChild(node);
                sourceSpans.addAll(node.getSourceSpans());
            }
            sourceSpans.addAllFrom(closingRun.getClosers(closingRun.length()));
            strikethrough.setSourceSpans(sourceSpans.getSourceSpans());
            opener.insertAfter(strikethrough);
            return openingRun.length();
        }
        return 0;
    }
}
