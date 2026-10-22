package com.project7.localmanager;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Base64;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalWeekCatalog {
    final Map<Integer, int[]> endings = new LinkedHashMap();
    final Map<Integer, Integer> entrances = new LinkedHashMap();
    final Map<Integer, List<Set<Integer>>> requires = new LinkedHashMap();
    final Map<String, int[]> difficulties = new LinkedHashMap();
    final Map<Integer, Integer> resetEvents = new LinkedHashMap();
    final Set<Integer> stay = new LinkedHashSet();
    final Set<Integer> clearItems = new LinkedHashSet();
    final Map<Integer, byte[]> scores = new LinkedHashMap();
    final Map<Integer, byte[]> scoreEvents = new LinkedHashMap();
    final Map<Integer, byte[]> settlements = new LinkedHashMap();
    final Map<Integer, Integer> cgScores = new LinkedHashMap();
    final Map<Integer, Integer> battleScores = new LinkedHashMap();
    final Map<Integer, Integer> cityScores = new LinkedHashMap();
    final Map<String, Integer> bonuses = new LinkedHashMap();

    LocalWeekCatalog(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (!readLine.isEmpty() && !readLine.startsWith("#")) {
                        String[] split = readLine.split("\t", -1);
                        int parseInt = Integer.parseInt(split[1]);
                        if ("ending".equals(split[0])) {
                            this.endings.put(Integer.valueOf(parseInt), new int[]{Integer.parseInt(split[2]), Integer.parseInt(split[3]), Integer.parseInt(split[4])});
                        } else if ("stay".equals(split[0])) {
                            this.stay.add(Integer.valueOf(parseInt));
                        } else if ("clearitem".equals(split[0])) {
                            this.clearItems.add(Integer.valueOf(parseInt));
                        } else if ("reset".equals(split[0])) {
                            this.resetEvents.put(Integer.valueOf(parseInt), Integer.valueOf(Integer.parseInt(split[2])));
                        } else if ("score".equals(split[0])) {
                            this.scores.put(Integer.valueOf(parseInt), Base64.getDecoder().decode(split[2]));
                        } else if ("scoreevent".equals(split[0])) {
                            this.scoreEvents.put(Integer.valueOf(parseInt), Base64.getDecoder().decode(split[2]));
                        } else if ("settlement".equals(split[0])) {
                            this.settlements.put(Integer.valueOf(parseInt), Base64.getDecoder().decode(split[2]));
                        } else if ("cgscore".equals(split[0])) {
                            this.cgScores.put(Integer.valueOf(parseInt), Integer.valueOf(Integer.parseInt(split[2])));
                        } else if ("battlescore".equals(split[0])) {
                            this.battleScores.put(Integer.valueOf(parseInt), Integer.valueOf(Integer.parseInt(split[2])));
                        } else if ("cityscore".equals(split[0])) {
                            this.cityScores.put(Integer.valueOf(parseInt), Integer.valueOf(Integer.parseInt(split[2])));
                        } else if ("scorebonus".equals(split[0])) {
                            this.bonuses.put(split[1] + ":" + split[2], Integer.valueOf(Integer.parseInt(split[3])));
                        } else if ("route".equals(split[0])) {
                            this.entrances.put(Integer.valueOf(parseInt), Integer.valueOf(Integer.parseInt(split[2])));
                            ArrayList arrayList = new ArrayList();
                            if (!split[3].isEmpty()) {
                                for (String str : split[3].split("\\|")) {
                                    arrayList.add(LocalStoryConditions.integers(str));
                                }
                            }
                            this.requires.put(Integer.valueOf(parseInt), arrayList);
                        } else if ("difficulty".equals(split[0])) {
                            this.difficulties.put(split[1] + ":" + split[2], new int[]{Integer.parseInt(split[3]), Integer.parseInt(split[4]), Integer.parseInt(split[5])});
                        } else {
                            throw new IOException("unknown lifecycle row " + split[0]);
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
}
