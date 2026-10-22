package org.commonmark.internal;

import java.util.ArrayList;
import java.util.List;
import org.commonmark.internal.inline.Position;
import org.commonmark.internal.inline.Scanner;
import org.commonmark.internal.util.Escaping;
import org.commonmark.internal.util.LinkScanner;
import org.commonmark.node.LinkReferenceDefinition;
import org.commonmark.node.SourceSpan;
import org.commonmark.parser.SourceLine;
import org.commonmark.parser.SourceLines;

/* loaded from: classes.dex */
public class LinkReferenceDefinitionParser {
    private String destination;
    private StringBuilder label;
    private StringBuilder title;
    private char titleDelimiter;
    private State state = State.START_DEFINITION;
    private final List<SourceLine> paragraphLines = new ArrayList();
    private final List<LinkReferenceDefinition> definitions = new ArrayList();
    private final List<SourceSpan> sourceSpans = new ArrayList();
    private boolean referenceValid = false;

    enum State {
        START_DEFINITION,
        LABEL,
        DESTINATION,
        START_TITLE,
        TITLE,
        PARAGRAPH
    }

    public void parse(SourceLine line) {
        boolean success;
        this.paragraphLines.add(line);
        if (this.state == State.PARAGRAPH) {
            return;
        }
        Scanner scanner = Scanner.m94of(SourceLines.m99of(line));
        while (scanner.hasNext()) {
            switch (C00191.f22x496a1d35[this.state.ordinal()]) {
                case 1:
                    success = startDefinition(scanner);
                    break;
                case 2:
                    success = label(scanner);
                    break;
                case 3:
                    success = destination(scanner);
                    break;
                case 4:
                    success = startTitle(scanner);
                    break;
                case 5:
                    success = title(scanner);
                    break;
                default:
                    throw new IllegalStateException("Unknown parsing state: " + this.state);
            }
            if (!success) {
                this.state = State.PARAGRAPH;
                return;
            }
        }
    }

    /* renamed from: org.commonmark.internal.LinkReferenceDefinitionParser$1 */
    static /* synthetic */ class C00191 {

        /* renamed from: $SwitchMap$org$commonmark$internal$LinkReferenceDefinitionParser$State */
        static final /* synthetic */ int[] f22x496a1d35;

        static {
            int[] iArr = new int[State.values().length];
            f22x496a1d35 = iArr;
            try {
                iArr[State.START_DEFINITION.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22x496a1d35[State.LABEL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f22x496a1d35[State.DESTINATION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f22x496a1d35[State.START_TITLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f22x496a1d35[State.TITLE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public void addSourceSpan(SourceSpan sourceSpan) {
        this.sourceSpans.add(sourceSpan);
    }

    SourceLines getParagraphLines() {
        return SourceLines.m98of(this.paragraphLines);
    }

    List<SourceSpan> getParagraphSourceSpans() {
        return this.sourceSpans;
    }

    List<LinkReferenceDefinition> getDefinitions() {
        finishReference();
        return this.definitions;
    }

    State getState() {
        return this.state;
    }

    private boolean startDefinition(Scanner scanner) {
        scanner.whitespace();
        if (!scanner.next('[')) {
            return false;
        }
        this.state = State.LABEL;
        this.label = new StringBuilder();
        if (!scanner.hasNext()) {
            this.label.append('\n');
            return true;
        }
        return true;
    }

    private boolean label(Scanner scanner) {
        Position start = scanner.position();
        if (!LinkScanner.scanLinkLabelContent(scanner)) {
            return false;
        }
        this.label.append(scanner.getSource(start, scanner.position()).getContent());
        if (!scanner.hasNext()) {
            this.label.append('\n');
            return true;
        }
        if (!scanner.next(']') || !scanner.next(':') || this.label.length() > 999) {
            return false;
        }
        String normalizedLabel = Escaping.normalizeLabelContent(this.label.toString());
        if (normalizedLabel.isEmpty()) {
            return false;
        }
        this.state = State.DESTINATION;
        scanner.whitespace();
        return true;
    }

    private boolean destination(Scanner scanner) {
        scanner.whitespace();
        Position start = scanner.position();
        if (!LinkScanner.scanLinkDestination(scanner)) {
            return false;
        }
        String rawDestination = scanner.getSource(start, scanner.position()).getContent();
        this.destination = rawDestination.startsWith("<") ? rawDestination.substring(1, rawDestination.length() - 1) : rawDestination;
        int whitespace = scanner.whitespace();
        if (!scanner.hasNext()) {
            this.referenceValid = true;
            this.paragraphLines.clear();
        } else if (whitespace == 0) {
            return false;
        }
        this.state = State.START_TITLE;
        return true;
    }

    private boolean startTitle(Scanner scanner) {
        scanner.whitespace();
        if (!scanner.hasNext()) {
            this.state = State.START_DEFINITION;
            return true;
        }
        this.titleDelimiter = (char) 0;
        char c = scanner.peek();
        switch (c) {
            case '\"':
            case '\'':
                this.titleDelimiter = c;
                break;
            case '(':
                this.titleDelimiter = ')';
                break;
        }
        if (this.titleDelimiter != 0) {
            this.state = State.TITLE;
            this.title = new StringBuilder();
            scanner.next();
            if (!scanner.hasNext()) {
                this.title.append('\n');
            }
        } else {
            finishReference();
            this.state = State.START_DEFINITION;
        }
        return true;
    }

    private boolean title(Scanner scanner) {
        Position start = scanner.position();
        if (!LinkScanner.scanLinkTitleContent(scanner, this.titleDelimiter)) {
            return false;
        }
        this.title.append(scanner.getSource(start, scanner.position()).getContent());
        if (!scanner.hasNext()) {
            this.title.append('\n');
            return true;
        }
        scanner.next();
        scanner.whitespace();
        if (scanner.hasNext()) {
            return false;
        }
        this.referenceValid = true;
        finishReference();
        this.paragraphLines.clear();
        this.state = State.START_DEFINITION;
        return true;
    }

    private void finishReference() {
        if (!this.referenceValid) {
            return;
        }
        String d = Escaping.unescapeString(this.destination);
        StringBuilder sb = this.title;
        String t = sb != null ? Escaping.unescapeString(sb.toString()) : null;
        LinkReferenceDefinition definition = new LinkReferenceDefinition(this.label.toString(), d, t);
        definition.setSourceSpans(this.sourceSpans);
        this.sourceSpans.clear();
        this.definitions.add(definition);
        this.label = null;
        this.referenceValid = false;
        this.destination = null;
        this.title = null;
    }
}
