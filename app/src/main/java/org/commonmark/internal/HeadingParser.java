package org.commonmark.internal;

import org.commonmark.internal.inline.Position;
import org.commonmark.internal.inline.Scanner;
import org.commonmark.internal.util.Parsing;
import org.commonmark.node.Block;
import org.commonmark.node.Heading;
import org.commonmark.parser.InlineParser;
import org.commonmark.parser.SourceLine;
import org.commonmark.parser.SourceLines;
import org.commonmark.parser.block.AbstractBlockParser;
import org.commonmark.parser.block.AbstractBlockParserFactory;
import org.commonmark.parser.block.BlockContinue;
import org.commonmark.parser.block.BlockStart;
import org.commonmark.parser.block.MatchedBlockParser;
import org.commonmark.parser.block.ParserState;

/* loaded from: classes.dex */
public class HeadingParser extends AbstractBlockParser {
    private final Heading block;
    private final SourceLines content;

    public HeadingParser(int level, SourceLines content) {
        Heading heading = new Heading();
        this.block = heading;
        heading.setLevel(level);
        this.content = content;
    }

    @Override // org.commonmark.parser.block.BlockParser
    public Block getBlock() {
        return this.block;
    }

    @Override // org.commonmark.parser.block.BlockParser
    public BlockContinue tryContinue(ParserState parserState) {
        return BlockContinue.none();
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public void parseInlines(InlineParser inlineParser) {
        inlineParser.parse(this.content, this.block);
    }

    public static class Factory extends AbstractBlockParserFactory {
        @Override // org.commonmark.parser.block.BlockParserFactory
        public BlockStart tryStart(ParserState state, MatchedBlockParser matchedBlockParser) {
            HeadingParser atxHeading;
            if (state.getIndent() >= Parsing.CODE_BLOCK_INDENT) {
                return BlockStart.none();
            }
            SourceLine line = state.getLine();
            int nextNonSpace = state.getNextNonSpaceIndex();
            if (line.getContent().charAt(nextNonSpace) == '#' && (atxHeading = HeadingParser.getAtxHeading(line.substring(nextNonSpace, line.getContent().length()))) != null) {
                return BlockStart.m100of(atxHeading).atIndex(line.getContent().length());
            }
            int setextHeadingLevel = HeadingParser.getSetextHeadingLevel(line.getContent(), nextNonSpace);
            if (setextHeadingLevel > 0) {
                SourceLines paragraph = matchedBlockParser.getParagraphLines();
                if (!paragraph.isEmpty()) {
                    return BlockStart.m100of(new HeadingParser(setextHeadingLevel, paragraph)).atIndex(line.getContent().length()).replaceActiveBlockParser();
                }
            }
            return BlockStart.none();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HeadingParser getAtxHeading(SourceLine line) {
        Scanner scanner = Scanner.m94of(SourceLines.m99of(line));
        int level = scanner.matchMultiple('#');
        if (level == 0 || level > 6) {
            return null;
        }
        if (!scanner.hasNext()) {
            return new HeadingParser(level, SourceLines.empty());
        }
        char next = scanner.peek();
        if (next != ' ' && next != '\t') {
            return null;
        }
        scanner.whitespace();
        Position start = scanner.position();
        Position end = start;
        boolean hashCanEnd = true;
        while (scanner.hasNext()) {
            char c = scanner.peek();
            switch (c) {
                case '\t':
                case ' ':
                    hashCanEnd = true;
                    scanner.next();
                    break;
                case '#':
                    if (hashCanEnd) {
                        scanner.matchMultiple('#');
                        int whitespace = scanner.whitespace();
                        if (scanner.hasNext()) {
                            end = scanner.position();
                        }
                        hashCanEnd = whitespace > 0;
                        break;
                    } else {
                        scanner.next();
                        end = scanner.position();
                        break;
                    }
                default:
                    hashCanEnd = false;
                    scanner.next();
                    end = scanner.position();
                    break;
            }
        }
        SourceLines source = scanner.getSource(start, end);
        String content = source.getContent();
        if (content.isEmpty()) {
            return new HeadingParser(level, SourceLines.empty());
        }
        return new HeadingParser(level, source);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getSetextHeadingLevel(CharSequence line, int index) {
        switch (line.charAt(index)) {
            case '-':
                break;
            case '=':
                if (isSetextHeadingRest(line, index + 1, '=')) {
                    return 1;
                }
                break;
            default:
                return 0;
        }
        if (isSetextHeadingRest(line, index + 1, '-')) {
            return 2;
        }
        return 0;
    }

    private static boolean isSetextHeadingRest(CharSequence line, int index, char marker) {
        int afterMarker = Parsing.skip(marker, line, index, line.length());
        int afterSpace = Parsing.skipSpaceTab(line, afterMarker, line.length());
        return afterSpace >= line.length();
    }
}
