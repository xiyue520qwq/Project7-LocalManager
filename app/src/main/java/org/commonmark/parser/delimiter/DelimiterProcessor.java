package org.commonmark.parser.delimiter;

/* loaded from: classes.dex */
public interface DelimiterProcessor {
    char getClosingCharacter();

    int getMinLength();

    char getOpeningCharacter();

    int process(DelimiterRun delimiterRun, DelimiterRun delimiterRun2);
}
