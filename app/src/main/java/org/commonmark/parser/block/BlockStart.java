package org.commonmark.parser.block;

import org.commonmark.internal.BlockStartImpl;

/* loaded from: classes.dex */
public abstract class BlockStart {
    public abstract BlockStart atColumn(int i);

    public abstract BlockStart atIndex(int i);

    public abstract BlockStart replaceActiveBlockParser();

    protected BlockStart() {
    }

    public static BlockStart none() {
        return null;
    }

    /* renamed from: of */
    public static BlockStart m104of(BlockParser... blockParsers) {
        return new BlockStartImpl(blockParsers);
    }
}
