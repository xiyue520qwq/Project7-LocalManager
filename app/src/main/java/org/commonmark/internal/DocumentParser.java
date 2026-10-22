package org.commonmark.internal;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.commonmark.internal.BlockQuoteParser;
import org.commonmark.internal.FencedCodeBlockParser;
import org.commonmark.internal.HeadingParser;
import org.commonmark.internal.HtmlBlockParser;
import org.commonmark.internal.IndentedCodeBlockParser;
import org.commonmark.internal.ListBlockParser;
import org.commonmark.internal.ThematicBreakParser;
import org.commonmark.internal.util.Parsing;
import org.commonmark.node.Block;
import org.commonmark.node.BlockQuote;
import org.commonmark.node.Document;
import org.commonmark.node.FencedCodeBlock;
import org.commonmark.node.Heading;
import org.commonmark.node.HtmlBlock;
import org.commonmark.node.IndentedCodeBlock;
import org.commonmark.node.LinkReferenceDefinition;
import org.commonmark.node.ListBlock;
import org.commonmark.node.SourceSpan;
import org.commonmark.node.ThematicBreak;
import org.commonmark.parser.IncludeSourceSpans;
import org.commonmark.parser.InlineParser;
import org.commonmark.parser.InlineParserFactory;
import org.commonmark.parser.SourceLine;
import org.commonmark.parser.SourceLines;
import org.commonmark.parser.block.BlockContinue;
import org.commonmark.parser.block.BlockParser;
import org.commonmark.parser.block.BlockParserFactory;
import org.commonmark.parser.block.BlockStart;
import org.commonmark.parser.block.MatchedBlockParser;
import org.commonmark.parser.block.ParserState;
import org.commonmark.parser.delimiter.DelimiterProcessor;

/* loaded from: classes.dex */
public class DocumentParser implements ParserState {
    private static final Set<Class<? extends Block>> CORE_FACTORY_TYPES = new LinkedHashSet(Arrays.asList(BlockQuote.class, Heading.class, FencedCodeBlock.class, HtmlBlock.class, ThematicBreak.class, ListBlock.class, IndentedCodeBlock.class));
    private static final Map<Class<? extends Block>, BlockParserFactory> NODES_TO_CORE_FACTORIES;
    private boolean blank;
    private final List<BlockParserFactory> blockParserFactories;
    private boolean columnIsInTab;
    private final List<DelimiterProcessor> delimiterProcessors;
    private final DocumentBlockParser documentBlockParser;
    private final IncludeSourceSpans includeSourceSpans;
    private final InlineParserFactory inlineParserFactory;
    private SourceLine line;
    private int lineIndex = -1;
    private int index = 0;
    private int column = 0;
    private int nextNonSpace = 0;
    private int nextNonSpaceColumn = 0;
    private int indent = 0;
    private final LinkReferenceDefinitions definitions = new LinkReferenceDefinitions();
    private final List<OpenBlockParser> openBlockParsers = new ArrayList();
    private final List<BlockParser> allBlockParsers = new ArrayList();

    static {
        Map<Class<? extends Block>, BlockParserFactory> map = new HashMap<>();
        map.put(BlockQuote.class, new BlockQuoteParser.Factory());
        map.put(Heading.class, new HeadingParser.Factory());
        map.put(FencedCodeBlock.class, new FencedCodeBlockParser.Factory());
        map.put(HtmlBlock.class, new HtmlBlockParser.Factory());
        map.put(ThematicBreak.class, new ThematicBreakParser.Factory());
        map.put(ListBlock.class, new ListBlockParser.Factory());
        map.put(IndentedCodeBlock.class, new IndentedCodeBlockParser.Factory());
        NODES_TO_CORE_FACTORIES = Collections.unmodifiableMap(map);
    }

    public DocumentParser(List<BlockParserFactory> blockParserFactories, InlineParserFactory inlineParserFactory, List<DelimiterProcessor> delimiterProcessors, IncludeSourceSpans includeSourceSpans) {
        this.blockParserFactories = blockParserFactories;
        this.inlineParserFactory = inlineParserFactory;
        this.delimiterProcessors = delimiterProcessors;
        this.includeSourceSpans = includeSourceSpans;
        DocumentBlockParser documentBlockParser = new DocumentBlockParser();
        this.documentBlockParser = documentBlockParser;
        activateBlockParser(new OpenBlockParser(documentBlockParser, 0));
    }

    public static Set<Class<? extends Block>> getDefaultBlockParserTypes() {
        return CORE_FACTORY_TYPES;
    }

    public static List<BlockParserFactory> calculateBlockParserFactories(List<BlockParserFactory> customBlockParserFactories, Set<Class<? extends Block>> enabledBlockTypes) {
        List<BlockParserFactory> list = new ArrayList<>();
        list.addAll(customBlockParserFactories);
        for (Class<? extends Block> blockType : enabledBlockTypes) {
            list.add(NODES_TO_CORE_FACTORIES.get(blockType));
        }
        return list;
    }

    public static void checkEnabledBlockTypes(Set<Class<? extends Block>> enabledBlockTypes) {
        for (Class<? extends Block> enabledBlockType : enabledBlockTypes) {
            Map<Class<? extends Block>, BlockParserFactory> map = NODES_TO_CORE_FACTORIES;
            if (!map.containsKey(enabledBlockType)) {
                throw new IllegalArgumentException("Can't enable block type " + enabledBlockType + ", possible options are: " + map.keySet());
            }
        }
    }

    public Document parse(String input) {
        int lineStart = 0;
        while (true) {
            int lineBreak = Parsing.findLineBreak(input, lineStart);
            if (lineBreak == -1) {
                break;
            }
            String line = input.substring(lineStart, lineBreak);
            parseLine(line);
            if (lineBreak + 1 < input.length() && input.charAt(lineBreak) == '\r' && input.charAt(lineBreak + 1) == '\n') {
                lineStart = lineBreak + 2;
            } else {
                lineStart = lineBreak + 1;
            }
        }
        if (input.length() > 0 && (lineStart == 0 || lineStart < input.length())) {
            String line2 = input.substring(lineStart);
            parseLine(line2);
        }
        return finalizeAndProcess();
    }

    public Document parse(Reader input) throws IOException {
        BufferedReader bufferedReader;
        if (input instanceof BufferedReader) {
            bufferedReader = (BufferedReader) input;
        } else {
            bufferedReader = new BufferedReader(input);
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                parseLine(line);
            } else {
                return finalizeAndProcess();
            }
        }
    }

    @Override // org.commonmark.parser.block.ParserState
    public SourceLine getLine() {
        return this.line;
    }

    @Override // org.commonmark.parser.block.ParserState
    public int getIndex() {
        return this.index;
    }

    @Override // org.commonmark.parser.block.ParserState
    public int getNextNonSpaceIndex() {
        return this.nextNonSpace;
    }

    @Override // org.commonmark.parser.block.ParserState
    public int getColumn() {
        return this.column;
    }

    @Override // org.commonmark.parser.block.ParserState
    public int getIndent() {
        return this.indent;
    }

    @Override // org.commonmark.parser.block.ParserState
    public boolean isBlank() {
        return this.blank;
    }

    @Override // org.commonmark.parser.block.ParserState
    public BlockParser getActiveBlockParser() {
        return this.openBlockParsers.get(r0.size() - 1).blockParser;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0066, code lost:
    
        r2 = r16.openBlockParsers.size() - r1;
        r3 = r16.openBlockParsers.get(r1 - 1).blockParser;
        r5 = false;
        r6 = r16.index;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0085, code lost:
    
        if ((r3.getBlock() instanceof org.commonmark.node.Paragraph) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008b, code lost:
    
        if (r3.isContainer() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008e, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0091, code lost:
    
        if (r7 == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0093, code lost:
    
        r6 = r16.index;
        findNextNonSpace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009c, code lost:
    
        if (isBlank() != false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a2, code lost:
    
        if (r16.indent >= org.commonmark.internal.util.Parsing.CODE_BLOCK_INDENT) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b0, code lost:
    
        if (org.commonmark.internal.util.Parsing.isLetter(r16.line.getContent(), r16.nextNonSpace) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x011b, code lost:
    
        setNewIndex(r16.nextNonSpace);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0120, code lost:
    
        if (r5 != false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0126, code lost:
    
        if (isBlank() != false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0130, code lost:
    
        if (getActiveBlockParser().canHaveLazyContinuationLines() == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0132, code lost:
    
        r4 = r16.openBlockParsers;
        r4.get(r4.size() - 1).sourceIndex = r6;
        addLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0146, code lost:
    
        if (r2 <= 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0148, code lost:
    
        closeBlockParsers(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x014f, code lost:
    
        if (r3.isContainer() != false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0151, code lost:
    
        addLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0159, code lost:
    
        if (isBlank() != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x015b, code lost:
    
        r4 = new org.commonmark.internal.ParagraphParser();
        addChild(new org.commonmark.internal.DocumentParser.OpenBlockParser(r4, r6));
        addLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x016c, code lost:
    
        addSourceSpans();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x016f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b3, code lost:
    
        r10 = findBlockStart(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b7, code lost:
    
        if (r10 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00bf, code lost:
    
        r5 = true;
        r11 = getIndex();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00c4, code lost:
    
        if (r2 <= 0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00c6, code lost:
    
        closeBlockParsers(r2);
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ce, code lost:
    
        if (r10.getNewIndex() == r4) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d0, code lost:
    
        setNewIndex(r10.getNewIndex());
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00e5, code lost:
    
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00ea, code lost:
    
        if (r10.isReplaceActiveBlockParser() == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ec, code lost:
    
        r13 = prepareActiveBlockParserForReplacement();
        r12 = r13.getSourceSpans();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00f4, code lost:
    
        r13 = r10.getBlockParsers();
        r14 = r13.length;
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00fa, code lost:
    
        if (r15 >= r14) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00fc, code lost:
    
        r4 = r13[r15];
        addChild(new org.commonmark.internal.DocumentParser.OpenBlockParser(r4, r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0106, code lost:
    
        if (r12 == null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0108, code lost:
    
        r4.getBlock().setSourceSpans(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x010f, code lost:
    
        r3 = r4;
        r7 = r4.isContainer();
        r15 = r15 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0118, code lost:
    
        r4 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00dc, code lost:
    
        if (r10.getNewColumn() == r4) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00de, code lost:
    
        setNewColumn(r10.getNewColumn());
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00b9, code lost:
    
        setNewIndex(r16.nextNonSpace);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0090, code lost:
    
        r7 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void parseLine(CharSequence ln) {
        setLine(ln);
        int matches = 1;
        int i = 1;
        while (true) {
            int i2 = -1;
            if (i >= this.openBlockParsers.size()) {
                break;
            }
            OpenBlockParser openBlockParser = this.openBlockParsers.get(i);
            BlockParser blockParser = openBlockParser.blockParser;
            findNextNonSpace();
            BlockContinue result = blockParser.tryContinue(this);
            if (!(result instanceof BlockContinueImpl)) {
                break;
            }
            BlockContinueImpl blockContinue = (BlockContinueImpl) result;
            openBlockParser.sourceIndex = getIndex();
            if (blockContinue.isFinalize()) {
                addSourceSpans();
                closeBlockParsers(this.openBlockParsers.size() - i);
                return;
            }
            if (blockContinue.getNewIndex() != -1) {
                setNewIndex(blockContinue.getNewIndex());
            } else if (blockContinue.getNewColumn() != -1) {
                setNewColumn(blockContinue.getNewColumn());
            }
            matches++;
            i++;
        }
    }

    private void setLine(CharSequence ln) {
        this.lineIndex++;
        this.index = 0;
        this.column = 0;
        this.columnIsInTab = false;
        CharSequence lineContent = Parsing.prepareLine(ln);
        SourceSpan sourceSpan = null;
        if (this.includeSourceSpans != IncludeSourceSpans.NONE) {
            sourceSpan = SourceSpan.m96of(this.lineIndex, 0, lineContent.length());
        }
        this.line = SourceLine.m97of(lineContent, sourceSpan);
    }

    private void findNextNonSpace() {
        int i = this.index;
        int cols = this.column;
        this.blank = true;
        int length = this.line.getContent().length();
        while (true) {
            if (i < length) {
                char c = this.line.getContent().charAt(i);
                switch (c) {
                    case '\t':
                        i++;
                        cols += 4 - (cols % 4);
                        break;
                    case ' ':
                        i++;
                        cols++;
                        break;
                    default:
                        this.blank = false;
                        break;
                }
            }
        }
        this.nextNonSpace = i;
        this.nextNonSpaceColumn = cols;
        this.indent = cols - this.column;
    }

    private void setNewIndex(int newIndex) {
        int i = this.nextNonSpace;
        if (newIndex >= i) {
            this.index = i;
            this.column = this.nextNonSpaceColumn;
        }
        int length = this.line.getContent().length();
        while (true) {
            int i2 = this.index;
            if (i2 >= newIndex || i2 == length) {
                break;
            } else {
                advance();
            }
        }
        this.columnIsInTab = false;
    }

    private void setNewColumn(int newColumn) {
        int i;
        int i2 = this.nextNonSpaceColumn;
        if (newColumn >= i2) {
            this.index = this.nextNonSpace;
            this.column = i2;
        }
        int length = this.line.getContent().length();
        while (true) {
            i = this.column;
            if (i >= newColumn || this.index == length) {
                break;
            } else {
                advance();
            }
        }
        if (i > newColumn) {
            this.index--;
            this.column = newColumn;
            this.columnIsInTab = true;
            return;
        }
        this.columnIsInTab = false;
    }

    private void advance() {
        char c = this.line.getContent().charAt(this.index);
        this.index++;
        if (c == '\t') {
            int i = this.column;
            this.column = i + Parsing.columnsToNextTabStop(i);
        } else {
            this.column++;
        }
    }

    private void addLine() {
        CharSequence content;
        if (this.columnIsInTab) {
            int afterTab = this.index + 1;
            CharSequence rest = this.line.getContent().subSequence(afterTab, this.line.getContent().length());
            int spaces = Parsing.columnsToNextTabStop(this.column);
            StringBuilder sb = new StringBuilder(rest.length() + spaces);
            for (int i = 0; i < spaces; i++) {
                sb.append(' ');
            }
            sb.append(rest);
            content = sb.toString();
        } else if (this.index == 0) {
            content = this.line.getContent();
        } else {
            content = this.line.getContent().subSequence(this.index, this.line.getContent().length());
        }
        SourceSpan sourceSpan = null;
        if (this.includeSourceSpans == IncludeSourceSpans.BLOCKS_AND_INLINES) {
            sourceSpan = SourceSpan.m96of(this.lineIndex, this.index, content.length());
        }
        getActiveBlockParser().addLine(SourceLine.m97of(content, sourceSpan));
        addSourceSpans();
    }

    private void addSourceSpans() {
        if (this.includeSourceSpans != IncludeSourceSpans.NONE) {
            for (int i = 1; i < this.openBlockParsers.size(); i++) {
                OpenBlockParser openBlockParser = this.openBlockParsers.get(i);
                int blockIndex = openBlockParser.sourceIndex;
                int length = this.line.getContent().length() - blockIndex;
                if (length != 0) {
                    openBlockParser.blockParser.addSourceSpan(SourceSpan.m96of(this.lineIndex, blockIndex, length));
                }
            }
        }
    }

    private BlockStartImpl findBlockStart(BlockParser blockParser) {
        MatchedBlockParser matchedBlockParser = new MatchedBlockParserImpl(blockParser);
        for (BlockParserFactory blockParserFactory : this.blockParserFactories) {
            BlockStart result = blockParserFactory.tryStart(this, matchedBlockParser);
            if (result instanceof BlockStartImpl) {
                return (BlockStartImpl) result;
            }
        }
        return null;
    }

    private void finalize(BlockParser blockParser) {
        if (blockParser instanceof ParagraphParser) {
            addDefinitionsFrom((ParagraphParser) blockParser);
        }
        blockParser.closeBlock();
    }

    private void addDefinitionsFrom(ParagraphParser paragraphParser) {
        for (LinkReferenceDefinition definition : paragraphParser.getDefinitions()) {
            paragraphParser.getBlock().insertBefore(definition);
            this.definitions.add(definition);
        }
    }

    private void processInlines() {
        InlineParserContextImpl context = new InlineParserContextImpl(this.delimiterProcessors, this.definitions);
        InlineParser inlineParser = this.inlineParserFactory.create(context);
        for (BlockParser blockParser : this.allBlockParsers) {
            blockParser.parseInlines(inlineParser);
        }
    }

    private void addChild(OpenBlockParser openBlockParser) {
        while (!getActiveBlockParser().canContain(openBlockParser.blockParser.getBlock())) {
            closeBlockParsers(1);
        }
        getActiveBlockParser().getBlock().appendChild(openBlockParser.blockParser.getBlock());
        activateBlockParser(openBlockParser);
    }

    private void activateBlockParser(OpenBlockParser openBlockParser) {
        this.openBlockParsers.add(openBlockParser);
    }

    private OpenBlockParser deactivateBlockParser() {
        return this.openBlockParsers.remove(r0.size() - 1);
    }

    private Block prepareActiveBlockParserForReplacement() {
        BlockParser old = deactivateBlockParser().blockParser;
        if (old instanceof ParagraphParser) {
            ParagraphParser paragraphParser = (ParagraphParser) old;
            addDefinitionsFrom(paragraphParser);
        }
        old.closeBlock();
        old.getBlock().unlink();
        return old.getBlock();
    }

    private Document finalizeAndProcess() {
        closeBlockParsers(this.openBlockParsers.size());
        processInlines();
        return this.documentBlockParser.getBlock();
    }

    private void closeBlockParsers(int count) {
        for (int i = 0; i < count; i++) {
            BlockParser blockParser = deactivateBlockParser().blockParser;
            finalize(blockParser);
            this.allBlockParsers.add(blockParser);
        }
    }

    private static class MatchedBlockParserImpl implements MatchedBlockParser {
        private final BlockParser matchedBlockParser;

        public MatchedBlockParserImpl(BlockParser matchedBlockParser) {
            this.matchedBlockParser = matchedBlockParser;
        }

        @Override // org.commonmark.parser.block.MatchedBlockParser
        public BlockParser getMatchedBlockParser() {
            return this.matchedBlockParser;
        }

        @Override // org.commonmark.parser.block.MatchedBlockParser
        public SourceLines getParagraphLines() {
            BlockParser blockParser = this.matchedBlockParser;
            if (blockParser instanceof ParagraphParser) {
                ParagraphParser paragraphParser = (ParagraphParser) blockParser;
                return paragraphParser.getParagraphLines();
            }
            return SourceLines.empty();
        }
    }

    private static class OpenBlockParser {
        private final BlockParser blockParser;
        private int sourceIndex;

        OpenBlockParser(BlockParser blockParser, int sourceIndex) {
            this.blockParser = blockParser;
            this.sourceIndex = sourceIndex;
        }
    }
}
