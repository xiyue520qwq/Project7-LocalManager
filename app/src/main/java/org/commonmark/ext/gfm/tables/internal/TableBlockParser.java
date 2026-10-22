package org.commonmark.ext.gfm.tables.internal;

import java.util.ArrayList;
import java.util.List;
import org.commonmark.ext.gfm.tables.TableBlock;
import org.commonmark.ext.gfm.tables.TableBody;
import org.commonmark.ext.gfm.tables.TableCell;
import org.commonmark.ext.gfm.tables.TableHead;
import org.commonmark.ext.gfm.tables.TableRow;
import org.commonmark.internal.util.Parsing;
import org.commonmark.node.Block;
import org.commonmark.node.Node;
import org.commonmark.node.SourceSpan;
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
public class TableBlockParser extends AbstractBlockParser {
    private final TableBlock block;
    private boolean canHaveLazyContinuationLines;
    private final List<TableCell.Alignment> columns;
    private final List<SourceLine> rowLines;

    private TableBlockParser(List<TableCell.Alignment> columns, SourceLine headerLine) {
        this.block = new TableBlock();
        ArrayList arrayList = new ArrayList();
        this.rowLines = arrayList;
        this.canHaveLazyContinuationLines = true;
        this.columns = columns;
        arrayList.add(headerLine);
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public boolean canHaveLazyContinuationLines() {
        return this.canHaveLazyContinuationLines;
    }

    @Override // org.commonmark.parser.block.BlockParser
    public Block getBlock() {
        return this.block;
    }

    @Override // org.commonmark.parser.block.BlockParser
    public BlockContinue tryContinue(ParserState state) {
        CharSequence content = state.getLine().getContent();
        int pipe = Parsing.find('|', content, state.getNextNonSpaceIndex());
        if (pipe != -1) {
            if (pipe == state.getNextNonSpaceIndex() && Parsing.skipSpaceTab(content, pipe + 1, content.length()) == content.length()) {
                this.canHaveLazyContinuationLines = false;
                return BlockContinue.none();
            }
            return BlockContinue.atIndex(state.getIndex());
        }
        return BlockContinue.none();
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public void addLine(SourceLine line) {
        this.rowLines.add(line);
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser, org.commonmark.parser.block.BlockParser
    public void parseInlines(InlineParser inlineParser) {
        List<SourceSpan> sourceSpans;
        SourceLine cell;
        List<SourceSpan> sourceSpans2 = this.block.getSourceSpans();
        SourceSpan headerSourceSpan = !sourceSpans2.isEmpty() ? sourceSpans2.get(0) : null;
        Node head = new TableHead();
        if (headerSourceSpan != null) {
            head.addSourceSpan(headerSourceSpan);
        }
        this.block.appendChild(head);
        TableRow headerRow = new TableRow();
        headerRow.setSourceSpans(head.getSourceSpans());
        head.appendChild(headerRow);
        List<SourceLine> headerCells = split(this.rowLines.get(0));
        int headerColumns = headerCells.size();
        for (int i = 0; i < headerColumns; i++) {
            SourceLine cell2 = headerCells.get(i);
            TableCell tableCell = parseCell(cell2, i, inlineParser);
            tableCell.setHeader(true);
            headerRow.appendChild(tableCell);
        }
        TableBody body = null;
        int rowIndex = 2;
        while (rowIndex < this.rowLines.size()) {
            SourceLine rowLine = this.rowLines.get(rowIndex);
            SourceSpan sourceSpan = rowIndex < sourceSpans2.size() ? sourceSpans2.get(rowIndex) : null;
            List<SourceLine> cells = split(rowLine);
            TableRow row = new TableRow();
            if (sourceSpan != null) {
                row.addSourceSpan(sourceSpan);
            }
            int i2 = 0;
            while (i2 < headerColumns) {
                if (i2 < cells.size()) {
                    cell = cells.get(i2);
                    sourceSpans = sourceSpans2;
                } else {
                    sourceSpans = sourceSpans2;
                    cell = SourceLine.m101of("", null);
                }
                row.appendChild(parseCell(cell, i2, inlineParser));
                i2++;
                sourceSpans2 = sourceSpans;
            }
            List<SourceSpan> sourceSpans3 = sourceSpans2;
            if (body == null) {
                TableBody body2 = new TableBody();
                this.block.appendChild(body2);
                body = body2;
            }
            body.appendChild(row);
            body.addSourceSpan(sourceSpan);
            rowIndex++;
            sourceSpans2 = sourceSpans3;
        }
    }

    private TableCell parseCell(SourceLine cell, int column, InlineParser inlineParser) {
        TableCell tableCell = new TableCell();
        SourceSpan sourceSpan = cell.getSourceSpan();
        if (sourceSpan != null) {
            tableCell.addSourceSpan(sourceSpan);
        }
        if (column < this.columns.size()) {
            tableCell.setAlignment(this.columns.get(column));
        }
        CharSequence content = cell.getContent();
        int start = Parsing.skipSpaceTab(content, 0, content.length());
        int end = Parsing.skipSpaceTabBackwards(content, content.length() - 1, start);
        inlineParser.parse(SourceLines.m103of(cell.substring(start, end + 1)), tableCell);
        return tableCell;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<SourceLine> split(SourceLine line) {
        CharSequence row = line.getContent();
        int nonSpace = Parsing.skipSpaceTab(row, 0, row.length());
        int cellStart = nonSpace;
        int cellEnd = row.length();
        if (row.charAt(nonSpace) == '|') {
            cellStart = nonSpace + 1;
            int nonSpaceEnd = Parsing.skipSpaceTabBackwards(row, row.length() - 1, cellStart);
            cellEnd = nonSpaceEnd + 1;
        }
        List<SourceLine> cells = new ArrayList<>();
        StringBuilder sb = new StringBuilder();
        int i = cellStart;
        while (i < cellEnd) {
            char c = row.charAt(i);
            switch (c) {
                case '\\':
                    if (i + 1 < cellEnd && row.charAt(i + 1) == '|') {
                        sb.append('|');
                        i++;
                        break;
                    } else {
                        sb.append('\\');
                        break;
                    }
                case '|':
                    String content = sb.toString();
                    cells.add(SourceLine.m101of(content, line.substring(cellStart, i).getSourceSpan()));
                    sb.setLength(0);
                    cellStart = i + 1;
                    break;
                default:
                    sb.append(c);
                    break;
            }
            i++;
        }
        if (sb.length() > 0) {
            String content2 = sb.toString();
            cells.add(SourceLine.m101of(content2, line.substring(cellStart, line.getContent().length()).getSourceSpan()));
        }
        return cells;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<TableCell.Alignment> parseSeparator(CharSequence s) {
        List<TableCell.Alignment> columns = new ArrayList<>();
        int pipes = 0;
        boolean valid = false;
        int i = 0;
        while (i < s.length()) {
            char c = s.charAt(i);
            switch (c) {
                case '\t':
                case ' ':
                    i++;
                    break;
                case '-':
                case ':':
                    if (pipes == 0 && !columns.isEmpty()) {
                        return null;
                    }
                    boolean left = false;
                    boolean right = false;
                    if (c == ':') {
                        left = true;
                        i++;
                    }
                    boolean haveDash = false;
                    while (i < s.length() && s.charAt(i) == '-') {
                        i++;
                        haveDash = true;
                    }
                    if (!haveDash) {
                        return null;
                    }
                    if (i < s.length() && s.charAt(i) == ':') {
                        right = true;
                        i++;
                    }
                    columns.add(getAlignment(left, right));
                    pipes = 0;
                    break;
                    break;
                case '|':
                    i++;
                    pipes++;
                    if (pipes <= 1) {
                        valid = true;
                        break;
                    } else {
                        return null;
                    }
                default:
                    return null;
            }
        }
        if (valid) {
            return columns;
        }
        return null;
    }

    private static TableCell.Alignment getAlignment(boolean left, boolean right) {
        if (left && right) {
            return TableCell.Alignment.CENTER;
        }
        if (left) {
            return TableCell.Alignment.LEFT;
        }
        if (right) {
            return TableCell.Alignment.RIGHT;
        }
        return null;
    }

    public static class Factory extends AbstractBlockParserFactory {
        @Override // org.commonmark.parser.block.BlockParserFactory
        public BlockStart tryStart(ParserState state, MatchedBlockParser matchedBlockParser) {
            List<SourceLine> paragraphLines = matchedBlockParser.getParagraphLines().getLines();
            if (paragraphLines.size() == 1 && Parsing.find('|', paragraphLines.get(0).getContent(), 0) != -1) {
                SourceLine line = state.getLine();
                SourceLine separatorLine = line.substring(state.getIndex(), line.getContent().length());
                List<TableCell.Alignment> columns = TableBlockParser.parseSeparator(separatorLine.getContent());
                if (columns != null && !columns.isEmpty()) {
                    SourceLine paragraph = paragraphLines.get(0);
                    List<SourceLine> headerCells = TableBlockParser.split(paragraph);
                    if (columns.size() >= headerCells.size()) {
                        return BlockStart.m104of(new TableBlockParser(columns, paragraph)).atIndex(state.getIndex()).replaceActiveBlockParser();
                    }
                }
            }
            return BlockStart.none();
        }
    }
}
