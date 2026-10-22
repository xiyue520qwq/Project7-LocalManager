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
    private final Map<Integer, int[]> clearedWork;
    private final Map<String, Cost> costs;
    private final Map<String, int[]> starWork;
    private final Map<Integer, int[]> work;

    LocalPatrolCatalog(Context context) throws IOException {
        this(context.getApplicationContext().getAssets().open("patrol.tsv"));
    }

    LocalPatrolCatalog(InputStream inputStream) throws IOException {
        this.costs = new LinkedHashMap();
        this.work = new LinkedHashMap();
        this.starWork = new LinkedHashMap();
        this.clearedWork = new LinkedHashMap();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                        String[] split = readLine.split("\t");
                        if (split[0].equals("@hero")) {
                            this.work.put(Integer.valueOf(split[1]), values(split, 2));
                        } else if (split[0].equals("@star")) {
                            this.starWork.put(split[1] + ":" + split[2] + ":" + split[3], values(split, 4));
                        } else if (split[0].equals("@clear")) {
                            this.clearedWork.put(Integer.valueOf(split[1]), values(split, 2));
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

    private static int[] values(String[] strArr, int i) {
        int length = strArr.length - i;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = Integer.parseInt(strArr[i + i2]);
        }
        return iArr;
    }

    private static int value(int[] iArr, int i) {
        if (iArr == null || i >= iArr.length) {
            return 0;
        }
        return iArr[i];
    }

    boolean hasWork(int i, int i2) {
        return i2 >= 0 && i2 <= 2 && this.work.containsKey(Integer.valueOf(i)) && this.work.get(Integer.valueOf(i)).length > i2;
    }

    int insight(int i) {
        return value(this.work.get(Integer.valueOf(i)), 0);
    }

    int insight(byte[] bArr, int i) {
        return work(bArr, i, 0);
    }

    int work(byte[] bArr, int i, int i2) {
        int addExact = Math.addExact(value(this.work.get(Integer.valueOf(i)), i2), value(this.starWork.get(i + ":" + LocalResourceEngine.value(bArr, "sl") + ":" + LocalResourceEngine.value(bArr, "so")), i2));
        return Boolean.TRUE.equals(BsonLite.boolValue(bArr, "fd")) ? Math.addExact(addExact, value(this.clearedWork.get(Integer.valueOf(i)), i2)) : addExact;
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
