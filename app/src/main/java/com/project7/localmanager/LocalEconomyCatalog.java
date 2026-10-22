package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.function.Function;

/* loaded from: classes.dex */
final class LocalEconomyCatalog {
    static final int MAX_LEVEL = 110;
    final Map<Integer, int[]> levels = new LinkedHashMap();
    final Map<Integer, int[]> missions = new LinkedHashMap();
    final Map<Integer, int[]> missionGates = new LinkedHashMap();
    final Map<String, int[]> rest = new LinkedHashMap();
    final Map<Integer, int[]> dailyFatigue = new LinkedHashMap();
    final Map<Integer, int[]> rewardPools = new LinkedHashMap();
    final Map<Integer, List<int[]>> drops = new LinkedHashMap();

    LocalEconomyCatalog(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.US_ASCII));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                        String[] split = readLine.split("\t");
                        try {
                            int[] iArr = new int[split.length - 2];
                            for (int i = 2; i < split.length; i++) {
                                iArr[i - 2] = Integer.parseInt(split[i]);
                            }
                            if ("L".equals(split[0]) && split.length == 6) {
                                this.levels.put(Integer.valueOf(Integer.parseInt(split[1])), iArr);
                            } else if ("M".equals(split[0]) && split.length == 9) {
                                this.missions.put(Integer.valueOf(Integer.parseInt(split[1])), iArr);
                            } else if ("G".equals(split[0]) && split.length >= 3) {
                                this.missionGates.put(Integer.valueOf(Integer.parseInt(split[1])), iArr);
                            } else if ("R".equals(split[0]) && split.length == 6) {
                                this.rest.put(split[1] + ":" + split[2], iArr);
                            } else if ("F".equals(split[0]) && split.length == 4) {
                                this.dailyFatigue.put(Integer.valueOf(Integer.parseInt(split[1])), iArr);
                            } else if ("I".equals(split[0]) && split.length >= 3) {
                                this.rewardPools.put(Integer.valueOf(Integer.parseInt(split[1])), iArr);
                            } else if (!"D".equals(split[0]) || split.length != 6 || iArr[0] <= 0) {
                                break;
                            } else {
                                this.drops.computeIfAbsent(Integer.valueOf(Integer.parseInt(split[1])), new Function() { // from class: com.project7.localmanager.LocalEconomyCatalog$$ExternalSyntheticLambda0
                                    @Override // java.util.function.Function
                                    public final Object apply(Object obj) {
                                        return LocalEconomyCatalog.lambda$new$0((Integer) obj);
                                    }
                                }).add(iArr);
                            }
                        } catch (RuntimeException e) {
                            throw new IOException("invalid economy catalog", e);
                        }
                    }
                } else {
                    bufferedReader.close();
                    for (int i2 = 1; i2 <= MAX_LEVEL; i2++) {
                        if (!this.levels.containsKey(Integer.valueOf(i2)) || this.levels.get(Integer.valueOf(i2))[0] <= 0) {
                            throw new IOException("missing player level " + i2);
                        }
                        if (!this.rewardPools.containsKey(Integer.valueOf(i2))) {
                            throw new IOException("missing battle drop pools " + i2);
                        }
                        for (int i3 : this.rewardPools.get(Integer.valueOf(i2))) {
                            if (!this.drops.containsKey(Integer.valueOf(i3))) {
                                throw new IOException("missing battle drop pool " + i3);
                            }
                        }
                    }
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
        throw new IllegalArgumentException("invalid economy row");
    }

    static /* synthetic */ List lambda$new$0(Integer num) {
        return new ArrayList();
    }

    void grantDrops(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, int i, Random random) {
        for (int i2 : this.rewardPools.get(Integer.valueOf(i))) {
            long j = 0;
            Iterator<int[]> it = this.drops.get(Integer.valueOf(i2)).iterator();
            while (it.hasNext()) {
                j = Math.addExact(j, it.next()[0]);
            }
            double nextDouble = random.nextDouble() * j;
            Iterator<int[]> it2 = this.drops.get(Integer.valueOf(i2)).iterator();
            while (true) {
                if (it2.hasNext()) {
                    int[] next = it2.next();
                    nextDouble -= next[0];
                    if (nextDouble < 0.0d) {
                        if (next[1] != 0) {
                            LocalResourceEngine.grant(result, localResourceCatalog, "treasure", next[1], next[3], next[2]);
                        }
                    }
                }
            }
        }
    }
}
