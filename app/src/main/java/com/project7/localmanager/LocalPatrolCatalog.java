package com.project7.localmanager;

import android.content.Context;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalPatrolCatalog {
    private final Map<String, Cost> costs;
    private final Map<Integer, Integer> insight;

    LocalPatrolCatalog(Context context) throws IOException {
        this(context.getApplicationContext().getAssets().open("patrol.tsv"));
    }

    LocalPatrolCatalog(InputStream inputStream) throws IOException {
        this.costs = new LinkedHashMap();
        this.insight = new LinkedHashMap();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                        String[] split = readLine.split("\t");
                        if (split[0].equals("@hero")) {
                            this.insight.put(Integer.valueOf(split[1]), Integer.valueOf(split[2]));
                        } else {
                            this.costs.put(split[0] + ":" + split[1], new Cost(split));
                        }
                    }
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

    Cost cost(int i, int i2) {
        return this.costs.get(i + ":" + i2);
    }

    int insight(int i) {
        return this.insight.getOrDefault(Integer.valueOf(i), 0).intValue();
    }

    static final class Cost {
        final int actions;
        final int fallback;
        final int fatigue;
        final int favor;
        final int[] insight = new int[10];

        Cost(String[] strArr) {
            this.actions = Integer.parseInt(strArr[2]);
            this.fatigue = Integer.parseInt(strArr[3]);
            this.favor = Integer.parseInt(strArr[4]);
            this.fallback = Integer.parseInt(strArr[5]);
            int i = 0;
            while (true) {
                int[] iArr = this.insight;
                if (i >= iArr.length) {
                    return;
                }
                iArr[i] = Integer.parseInt(strArr[i + 6]);
                i++;
            }
        }

        int requiredInsight(int i) {
            if (i >= 1) {
                int[] iArr = this.insight;
                if (i <= iArr.length) {
                    return iArr[i - 1];
                }
            }
            return this.fallback;
        }
    }
}
