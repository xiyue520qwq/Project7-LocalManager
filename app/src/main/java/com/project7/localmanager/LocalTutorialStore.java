package com.project7.localmanager;

import android.content.Context;
import android.system.ErrnoException;
import android.system.Os;
import com.project7.localmanager.LocalTutorialStore;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes.dex */
final class LocalTutorialStore {
    private final File directory;

    LocalTutorialStore(Context context) {
        this(new File(context.getApplicationContext().getFilesDir(), "tutorials"));
    }

    LocalTutorialStore(File file) {
        this.directory = file;
    }

    synchronized Progress load(String str) throws IOException {
        if ("hakopania".equalsIgnoreCase(str)) {
            return Progress.completed();
        }
        if (!this.directory.isDirectory() && !this.directory.mkdirs()) {
            throw new IOException("cannot create tutorial directory");
        }
        File fileFor = fileFor(str);
        if (!fileFor.isFile()) {
            return Progress.fresh();
        }
        Properties properties = new Properties();
        FileInputStream fileInputStream = new FileInputStream(fileFor);
        try {
            properties.load(fileInputStream);
            fileInputStream.close();
            return Progress.fromProperties(properties);
        } finally {
        }
    }

    synchronized void save(String str, Progress progress) throws IOException {
        if ("hakopania".equalsIgnoreCase(str)) {
            return;
        }
        if (!this.directory.isDirectory() && !this.directory.mkdirs()) {
            throw new IOException("cannot create tutorial directory");
        }
        File fileFor = fileFor(str);
        File file = new File(this.directory, fileFor.getName() + ".tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            progress.toProperties().store(fileOutputStream, "Project7 local event progress v2");
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            try {
                Os.rename(file.getAbsolutePath(), fileFor.getAbsolutePath());
            } catch (ErrnoException e) {
                throw new IOException("cannot atomically commit tutorial progress", e);
            }
        } finally {
        }
    }

    synchronized boolean delete(String str) throws IOException {
        boolean z;
        File fileFor = fileFor(LocalAccountStore.normalizeUsername(str));
        if (fileFor.isFile()) {
            z = fileFor.delete();
        }
        return z;
    }

    private File fileFor(String str) {
        return new File(this.directory, str + ".properties");
    }

    static final class Progress {
        final Set<Integer> availableEvents;
        final Set<Integer> completedEvents;
        final Map<String, Set<Integer>> eventConditions;
        final Set<Integer> finishedNewbees;
        boolean inEmergency;
        boolean initPrologue;
        int patrolArea;
        int patrolCount;
        int patrolFavor;
        boolean patrolRewardPending;
        final Set<Integer> processingEvents;
        final Set<Integer> processingNewbees;
        String scene;
        String status;
        int weekIndex;
        String patrolDay = "";
        final Map<Integer, String> eventDays = new LinkedHashMap();
        final Map<Integer, Integer> eventCompletions = new LinkedHashMap();
        int patrolActions = -1;
        int sandglassActions = -1;
        String economyCommit = "";
        String weekCommit = "";
        final Set<Integer> patrolHeroes = new LinkedHashSet();
        final Set<Integer> patrolEvents = new LinkedHashSet();
        final Set<Integer> patrolReplays = new LinkedHashSet();
        final Map<Integer, Integer> patrolFatigue = new LinkedHashMap();
        final Map<Integer, Integer> patrolFriendly = new LinkedHashMap();

        private Progress(Set<Integer> set, Set<Integer> set2, boolean z, Set<Integer> set3, Set<Integer> set4, Set<Integer> set5, Map<String, Set<Integer>> map, boolean z2, String str, String str2) {
            this.availableEvents = set;
            this.processingEvents = set2;
            this.initPrologue = z;
            this.completedEvents = set3;
            this.processingNewbees = set4;
            this.finishedNewbees = set5;
            this.eventConditions = map;
            this.inEmergency = z2;
            this.status = str;
            this.scene = str2;
        }

        static Progress fresh() {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            linkedHashSet.add(1000);
            return new Progress(linkedHashSet, new LinkedHashSet(), true, new LinkedHashSet(), new LinkedHashSet(), new LinkedHashSet(), new LinkedHashMap(), true, "emergency", "");
        }

        static Progress completed() {
            return new Progress(new LinkedHashSet(), new LinkedHashSet(), false, new LinkedHashSet(), new LinkedHashSet(), new LinkedHashSet(), new LinkedHashMap(), false, "city", "city");
        }

        static Progress fromProperties(Properties properties) {
            int integer;
            Set<Integer> parseSet = parseSet(properties.getProperty("availableEvents", ""));
            Set<Integer> parseSet2 = parseSet(properties.getProperty("processingEvents", ""));
            Set<Integer> parseSet3 = parseSet(properties.getProperty("completedEvents", ""));
            if (!properties.containsKey("schemaVersion")) {
                addLegacyEvent(parseSet, properties.getProperty("availableEvent"));
                addLegacyEvent(parseSet2, properties.getProperty("processingEvent"));
            }
            if (parseSet.isEmpty() && parseSet2.isEmpty() && parseSet3.isEmpty()) {
                parseSet.add(1000);
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : properties.stringPropertyNames()) {
                if (str.startsWith("condition.")) {
                    linkedHashMap.put(str.substring("condition.".length()), parseSet(properties.getProperty(str)));
                }
            }
            boolean z = parseSet.contains(1000) || parseSet2.contains(1000);
            Progress progress = new Progress(parseSet, parseSet2, Boolean.parseBoolean(properties.getProperty("initPrologue", "true")) && !parseSet3.contains(1047), parseSet3, parseSet(properties.getProperty("processingNewbees", "")), parseSet(properties.getProperty("finishedNewbees", "")), linkedHashMap, Boolean.parseBoolean(properties.getProperty("inEmergency", Boolean.toString(z))), properties.getProperty("status", z ? "emergency" : "city"), properties.getProperty("scene", ""));
            progress.patrolCount = integer(properties, "patrol.count", 0);
            progress.patrolArea = integer(properties, "patrol.area", 0);
            progress.patrolDay = properties.getProperty("patrol.day", "");
            for (String str2 : properties.stringPropertyNames()) {
                if (str2.startsWith("event.day.")) {
                    progress.eventDays.put(Integer.valueOf(Integer.parseInt(str2.substring(10))), properties.getProperty(str2));
                }
                if (str2.startsWith("event.completed.") && (integer = integer(properties, str2, 0)) > 0) {
                    progress.eventCompletions.put(Integer.valueOf(Integer.parseInt(str2.substring(16))), Integer.valueOf(integer));
                }
            }
            progress.patrolActions = integer(properties, "patrol.actions", -1);
            progress.sandglassActions = integer(properties, "patrol.sandglass", -1);
            progress.economyCommit = properties.getProperty("economy.commit", "");
            progress.weekCommit = properties.getProperty("week.commit", "");
            progress.weekIndex = integer(properties, "week.index", 0);
            progress.patrolFavor = integer(properties, "patrol.favor", 0);
            progress.patrolRewardPending = Boolean.parseBoolean(properties.getProperty("patrol.rewardPending", "false"));
            progress.patrolHeroes.addAll(parseSet(properties.getProperty("patrol.heroes", "")));
            progress.patrolEvents.addAll(parseSet(properties.getProperty("patrol.events", "")));
            progress.patrolReplays.addAll(parseSet(properties.getProperty("patrol.replays", "")));
            for (String str3 : properties.stringPropertyNames()) {
                String[] strArr = {"patrol.fatigue.", "patrol.friendly."};
                for (int i = 0; i < 2; i++) {
                    String str4 = strArr[i];
                    if (str3.startsWith(str4)) {
                        try {
                            (str4.equals("patrol.fatigue.") ? progress.patrolFatigue : progress.patrolFriendly).put(Integer.valueOf(Integer.parseInt(str3.substring(str4.length()))), Integer.valueOf(integer(properties, str3, 0)));
                        } catch (NumberFormatException e) {
                        }
                    }
                }
            }
            return progress;
        }

        private static int integer(Properties properties, String str, int i) {
            try {
                return Integer.parseInt(properties.getProperty(str, Integer.toString(i)));
            } catch (NumberFormatException e) {
                return i;
            }
        }

        static /* synthetic */ Set lambda$recordCondition$0(String str) {
            return new LinkedHashSet();
        }

        void recordCondition(String str, Collection<Integer> collection) {
            this.eventConditions.computeIfAbsent(str, new Function() { // from class: com.project7.localmanager.LocalTutorialStore$Progress$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return LocalTutorialStore.Progress.lambda$recordCondition$0((String) obj);
                }
            }).addAll(collection);
        }

        Properties toProperties() {
            Properties properties = new Properties();
            properties.setProperty("schemaVersion", "2");
            properties.setProperty("availableEvents", join(this.availableEvents));
            properties.setProperty("processingEvents", join(this.processingEvents));
            properties.setProperty("initPrologue", Boolean.toString(this.initPrologue));
            properties.setProperty("completedEvents", joinOrdered(this.completedEvents));
            for (Map.Entry<Integer, Integer> entry : this.eventCompletions.entrySet()) {
                properties.setProperty("event.completed." + entry.getKey(), entry.getValue().toString());
            }
            properties.setProperty("processingNewbees", join(this.processingNewbees));
            properties.setProperty("finishedNewbees", join(this.finishedNewbees));
            properties.setProperty("inEmergency", Boolean.toString(this.inEmergency));
            String str = this.status;
            if (str == null) {
                str = "";
            }
            properties.setProperty("status", str);
            String str2 = this.scene;
            properties.setProperty("scene", str2 != null ? str2 : "");
            properties.setProperty("patrol.count", Integer.toString(this.patrolCount));
            properties.setProperty("patrol.area", Integer.toString(this.patrolArea));
            properties.setProperty("patrol.day", this.patrolDay);
            for (Map.Entry<Integer, String> entry2 : this.eventDays.entrySet()) {
                properties.setProperty("event.day." + entry2.getKey(), entry2.getValue());
            }
            properties.setProperty("patrol.actions", Integer.toString(this.patrolActions));
            properties.setProperty("patrol.sandglass", Integer.toString(this.sandglassActions));
            properties.setProperty("economy.commit", this.economyCommit);
            properties.setProperty("week.commit", this.weekCommit);
            properties.setProperty("week.index", Integer.toString(this.weekIndex));
            properties.setProperty("patrol.favor", Integer.toString(this.patrolFavor));
            properties.setProperty("patrol.rewardPending", Boolean.toString(this.patrolRewardPending));
            properties.setProperty("patrol.heroes", join(this.patrolHeroes));
            properties.setProperty("patrol.events", join(this.patrolEvents));
            properties.setProperty("patrol.replays", join(this.patrolReplays));
            for (Map.Entry<Integer, Integer> entry3 : this.patrolFatigue.entrySet()) {
                properties.setProperty("patrol.fatigue." + entry3.getKey(), entry3.getValue().toString());
            }
            for (Map.Entry<Integer, Integer> entry4 : this.patrolFriendly.entrySet()) {
                properties.setProperty("patrol.friendly." + entry4.getKey(), entry4.getValue().toString());
            }
            for (Map.Entry<String, Set<Integer>> entry5 : this.eventConditions.entrySet()) {
                properties.setProperty("condition." + entry5.getKey(), join(entry5.getValue()));
            }
            return properties;
        }

        private static void addLegacyEvent(Set<Integer> set, String str) {
            if (str == null) {
                str = "0";
            }
            try {
                int parseInt = Integer.parseInt(str);
                if (parseInt != 0) {
                    set.add(Integer.valueOf(parseInt));
                }
            } catch (NumberFormatException e) {
            }
        }

        private static Set<Integer> parseSet(String str) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (str == null || str.trim().isEmpty()) {
                return linkedHashSet;
            }
            for (String str2 : str.split(",")) {
                try {
                    int parseInt = Integer.parseInt(str2.trim());
                    if (parseInt != 0) {
                        linkedHashSet.add(Integer.valueOf(parseInt));
                    }
                } catch (NumberFormatException e) {
                }
            }
            return linkedHashSet;
        }

        private static String join(Set<Integer> set) {
            ArrayList arrayList = new ArrayList(set);
            Collections.sort(arrayList);
            return joinOrdered(arrayList);
        }

        private static String joinOrdered(Iterable<Integer> iterable) {
            StringBuilder sb = new StringBuilder();
            for (Integer num : iterable) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append(num);
            }
            return sb.toString();
        }
    }
}
