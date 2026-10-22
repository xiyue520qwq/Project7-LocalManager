package org.commonmark.internal.util;

import org.commonmark.internal.inline.Scanner;

/* loaded from: classes.dex */
public class LinkScanner {
    public static boolean scanLinkLabelContent(Scanner scanner) {
        while (scanner.hasNext()) {
            switch (scanner.peek()) {
                case '[':
                    return false;
                case '\\':
                    scanner.next();
                    if (!Parsing.isEscapable(scanner.peek())) {
                        break;
                    } else {
                        scanner.next();
                        break;
                    }
                case ']':
                    return true;
                default:
                    scanner.next();
                    break;
            }
        }
        return true;
    }

    public static boolean scanLinkDestination(Scanner scanner) {
        if (!scanner.hasNext()) {
            return false;
        }
        if (scanner.next('<')) {
            while (scanner.hasNext()) {
                switch (scanner.peek()) {
                    case '\n':
                    case '<':
                        return false;
                    case '>':
                        scanner.next();
                        return true;
                    case '\\':
                        scanner.next();
                        if (!Parsing.isEscapable(scanner.peek())) {
                            break;
                        } else {
                            scanner.next();
                            break;
                        }
                    default:
                        scanner.next();
                        break;
                }
            }
            return false;
        }
        return scanLinkDestinationWithBalancedParens(scanner);
    }

    public static boolean scanLinkTitle(Scanner scanner) {
        char endDelimiter;
        if (!scanner.hasNext()) {
            return false;
        }
        switch (scanner.peek()) {
            case '\"':
                endDelimiter = '\"';
                break;
            case '\'':
                endDelimiter = '\'';
                break;
            case '(':
                endDelimiter = ')';
                break;
            default:
                return false;
        }
        scanner.next();
        if (!scanLinkTitleContent(scanner, endDelimiter) || !scanner.hasNext()) {
            return false;
        }
        scanner.next();
        return true;
    }

    public static boolean scanLinkTitleContent(Scanner scanner, char endDelimiter) {
        while (scanner.hasNext()) {
            char c = scanner.peek();
            if (c == '\\') {
                scanner.next();
                if (Parsing.isEscapable(scanner.peek())) {
                    scanner.next();
                }
            } else {
                if (c == endDelimiter) {
                    return true;
                }
                if (endDelimiter == ')' && c == '(') {
                    return false;
                }
                scanner.next();
            }
        }
        return true;
    }

    private static boolean scanLinkDestinationWithBalancedParens(Scanner scanner) {
        int parens = 0;
        boolean empty = true;
        while (scanner.hasNext()) {
            char c = scanner.peek();
            switch (c) {
                case ' ':
                    return !empty;
                case '(':
                    parens++;
                    if (parens > 32) {
                        return false;
                    }
                    scanner.next();
                    break;
                case ')':
                    if (parens != 0) {
                        parens--;
                        scanner.next();
                        break;
                    } else {
                        return true;
                    }
                case '\\':
                    scanner.next();
                    if (!Parsing.isEscapable(scanner.peek())) {
                        break;
                    } else {
                        scanner.next();
                        break;
                    }
                default:
                    if (Character.isISOControl(c)) {
                        return !empty;
                    }
                    scanner.next();
                    break;
            }
            empty = false;
        }
        return true;
    }
}
