package com.project7.localmanager;

import android.content.Context;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes.dex */
final class LocalNewbeeCatalog {
    private final Map<Integer, Set<Integer>> completionEvents;
    final Map<Integer, Set<Integer>> externalGuideEvents;
    private final Map<Integer, Step> steps;

    LocalNewbeeCatalog(Context context) throws IOException {
        this(context.getApplicationContext().getAssets().open("newbee_graph.tsv"));
    }

    LocalNewbeeCatalog(InputStream inputStream) throws IOException {
        this.steps = new LinkedHashMap();
        this.completionEvents = new LinkedHashMap();
        this.externalGuideEvents = new LinkedHashMap();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    parseLine(readLine);
                } else {
                    bufferedReader.close();
                    return;
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    Step get(int i) {
        return this.steps.get(Integer.valueOf(i));
    }

    Set<Integer> eventsAfterCompletion(int i) {
        Set<Integer> set = this.completionEvents.get(Integer.valueOf(i));
        return set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
    }

    private void parseLine(String str) {
        if (str.isEmpty() || str.startsWith("#")) {
            return;
        }
        String[] split = str.split("\t", -1);
        if ("@externalGuide".equals(split[0]) && split.length == 3) {
            this.externalGuideEvents.computeIfAbsent(Integer.valueOf(parseInt(split[1])), new Function() { // from class: com.project7.localmanager.LocalNewbeeCatalog$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return LocalNewbeeCatalog.lambda$parseLine$0((Integer) obj);
                }
            }).add(Integer.valueOf(parseInt(split[2])));
            return;
        }
        if ("@event".equals(split[0])) {
            if (split.length >= 3) {
                int parseInt = parseInt(split[1]);
                int parseInt2 = parseInt(split[2]);
                if (parseInt != 0 && parseInt2 != 0) {
                    this.completionEvents.computeIfAbsent(Integer.valueOf(parseInt), new Function() { // from class: com.project7.localmanager.LocalNewbeeCatalog$$ExternalSyntheticLambda0
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return LocalNewbeeCatalog.lambda$parseLine$0((Integer) obj);
                        }
                    }).add(Integer.valueOf(parseInt2));
                    return;
                }
                return;
            }
            return;
        }
        if (split.length < 12) {
            return;
        }
        int parseInt3 = parseInt(split[0]);
        int parseInt4 = parseInt(split[1]);
        if (parseInt3 == 0) {
            return;
        }
        this.steps.put(Integer.valueOf(parseInt3), new Step(parseInt3, (parseInt4 & 1) != 0, (parseInt4 & 2) != 0, (parseInt4 & 4) != 0, parseInt(split[2]), parseSet(split[3]), parseSet(split[4]), parseSet(split[5]), parseSet(split[6]), parseSet(split[7]), parseSet(split[8]), parseSet(split[9]), split[10], split[11]));
    }

    static /* synthetic */ Set lambda$parseLine$0(Integer num) {
        return new LinkedHashSet();
    }

    private static Set<Integer> parseSet(String str) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (str == null || str.isEmpty()) {
            return linkedHashSet;
        }
        for (String str2 : str.split(",")) {
            int parseInt = parseInt(str2);
            if (parseInt != 0) {
                linkedHashSet.add(Integer.valueOf(parseInt));
            }
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    private static int parseInt(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    static final class Step {
        final boolean battle;
        final boolean begin;
        final Set<Integer> completes;
        final Set<Integer> endEvents;

        /* renamed from: id */
        final int f9id;
        final boolean multiTrigger;
        final int next;
        final Set<Integer> requireEventAnd;
        final Set<Integer> requireEventOr;
        final Set<Integer> requireNewbees;
        final Set<Integer> requireNotEventAnd;
        final Set<Integer> requireNotEventOr;
        final String requirePanel;
        final String uiPanel;

        Step(int i, boolean z, boolean z2, boolean z3, int i2, Set<Integer> set, Set<Integer> set2, Set<Integer> set3, Set<Integer> set4, Set<Integer> set5, Set<Integer> set6, Set<Integer> set7, String str, String str2) {
            this.f9id = i;
            this.begin = z;
            this.multiTrigger = z2;
            this.battle = z3;
            this.next = i2;
            this.completes = set;
            this.requireNewbees = set2;
            this.requireEventAnd = set3;
            this.requireEventOr = set4;
            this.requireNotEventAnd = set5;
            this.requireNotEventOr = set6;
            this.endEvents = set7;
            this.uiPanel = str;
            this.requirePanel = str2;
        }
    }
}
