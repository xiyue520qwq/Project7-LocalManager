package com.project7.localmanager;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalStoryEntryPolicy {
    static final Set<Integer> SUPPORTED = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList(1, 2, 3, 5, 6, 11, 13)));

    LocalStoryEntryPolicy() {
    }

    static boolean supports(int i) {
        return SUPPORTED.contains(Integer.valueOf(i));
    }
}
