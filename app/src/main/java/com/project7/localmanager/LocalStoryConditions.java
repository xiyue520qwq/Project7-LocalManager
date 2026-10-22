package com.project7.localmanager;

import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalStoryConditions {
    static final Set<Integer> SUPPORTED = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList(5, 6, 7, 12, 18, 19, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 33, 37, 42, 43, 44, 47, 48, 51, 52, 53)));

    LocalStoryConditions() {
    }

    static boolean matches(int i, String str, byte[] bArr, LocalTutorialStore.Progress progress) {
        return evaluate(i, str, bArr, progress).satisfied;
    }

    static final class Context {
        final int clientOperation;
        final int patrolArea;

        Context(int i, int i2) {
            this.patrolArea = i;
            this.clientOperation = i2;
        }

        boolean isPatrol() {
            int i;
            return this.clientOperation == 2 && (i = this.patrolArea) >= 1 && i <= 8;
        }
    }

    static final class Evaluation {
        final String reason;
        final boolean satisfied;
        final String status;

        Evaluation(boolean z, String str, String str2) {
            this.satisfied = z;
            this.status = str;
            this.reason = str2;
        }
    }

    static Evaluation evaluate(int i, String str, byte[] bArr, LocalTutorialStore.Progress progress) {
        return evaluate(i, str, bArr, progress, null);
    }

    static Evaluation evaluate(int i, String str, byte[] bArr, LocalTutorialStore.Progress progress, Context context) {
        String str2 = "condition-" + i + "=" + str;
        if (!SUPPORTED.contains(Integer.valueOf(i))) {
            return new Evaluation(false, "unsupported", str2);
        }
        if (bArr == null || progress == null || str == null) {
            return new Evaluation(false, "missing-state", str2);
        }
        if (i == 29 && (context == null || !context.isPatrol())) {
            return new Evaluation(false, "missing-context", str2 + ":patrol-area-required");
        }
        try {
            boolean matchesValue = matchesValue(i, str, bArr, progress, context);
            return new Evaluation(matchesValue, matchesValue ? "passed" : "unmet", str2);
        } catch (ArithmeticException | IllegalArgumentException | IndexOutOfBoundsException e) {
            return new Evaluation(false, "invalid", str2 + ":" + e.getClass().getSimpleName());
        }
    }

    private static boolean matchesValue(int i, String str, byte[] bArr, LocalTutorialStore.Progress progress, Context context) {
        String str2;
        int parseInt;
        if (bArr == null) {
            return false;
        }
        if (i != 53) {
            if (i != 51) {
                if (i != 37) {
                    if (i != 43 && i != 44) {
                        if (i != 29) {
                            if (i == 33) {
                                return LocalResourceEngine.value(bArr, "money") >= Integer.parseInt(str);
                            }
                            if (i != 19) {
                                if (i == 12) {
                                    return 24 - (progress.patrolActions >= 0 ? progress.patrolActions : LocalResourceEngine.value(LocalResourceEngine.doc(bArr, "city"), "av")) >= Integer.parseInt(str);
                                }
                                if (i != 21 && i != 26 && i != 27 && i != 28 && i != 30) {
                                    if (i != 18 && i != 22) {
                                        if (i != 52) {
                                            if (i != 24 && i != 25) {
                                                if (i != 42 && i != 48) {
                                                    if (i != 7) {
                                                        if (i != 6) {
                                                            if (i != 5) {
                                                                if (i != 23) {
                                                                    if (i == 47) {
                                                                        for (String str3 : str.split("\\|")) {
                                                                            String[] split = str3.split(":");
                                                                            if (!integers(split[1]).contains(Integer.valueOf(LocalCityProgress.status(progress, Integer.parseInt(split[0]), bArr)))) {
                                                                                return false;
                                                                            }
                                                                        }
                                                                        return true;
                                                                    }
                                                                    return false;
                                                                }
                                                                for (String str4 : str.split("\\|")) {
                                                                    String[] split2 = str4.split(":");
                                                                    int parseInt2 = Integer.parseInt(split2[0]);
                                                                    Iterator<Integer> it = LocalServiceEngine.cores(bArr).values().iterator();
                                                                    int i2 = 0;
                                                                    while (it.hasNext()) {
                                                                        if (it.next().intValue() == parseInt2) {
                                                                            i2++;
                                                                        }
                                                                    }
                                                                    if (i2 < Integer.parseInt(split2[1]) || i2 > Integer.parseInt(split2[2])) {
                                                                        return false;
                                                                    }
                                                                }
                                                                return true;
                                                            }
                                                            byte[] documentValue = BsonLite.documentValue(BsonLite.documentValue(bArr, "inv"), "items");
                                                            for (String str5 : str.split("\\|")) {
                                                                int parseInt3 = Integer.parseInt(str5.split(":")[0]);
                                                                long j = 0;
                                                                Iterator<String> it2 = BsonLite.keys(documentValue).iterator();
                                                                while (it2.hasNext()) {
                                                                    byte[] documentValue2 = BsonLite.documentValue(documentValue, it2.next());
                                                                    Integer intValue = BsonLite.intValue(documentValue2, "w");
                                                                    if (Integer.valueOf(parseInt3).equals(BsonLite.intValue(documentValue2, "i")) && intValue != null) {
                                                                        j += intValue.intValue();
                                                                    }
                                                                }
                                                                if (j < Integer.parseInt(r4[1]) || j > Integer.parseInt(r4[2])) {
                                                                    return false;
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                        for (String str6 : str.split("\\|")) {
                                                            String[] split3 = str6.split(":");
                                                            int parseInt4 = Integer.parseInt(split3[0]);
                                                            if (BsonLite.intValue(BsonLite.profileHeroDocument(bArr, parseInt4), "ef") == null) {
                                                                return false;
                                                            }
                                                            Integer valueOf = Integer.valueOf(LocalStoryFriendshipEngine.current(bArr, progress, parseInt4));
                                                            if (valueOf.intValue() < Integer.parseInt(split3[1]) || valueOf.intValue() > Integer.parseInt(split3[2])) {
                                                                return false;
                                                            }
                                                        }
                                                        return true;
                                                    }
                                                    Integer intValue2 = BsonLite.intValue(bArr, "level");
                                                    String[] split4 = str.split(",");
                                                    return intValue2 != null && intValue2.intValue() >= Integer.parseInt(split4[0]) && intValue2.intValue() <= Integer.parseInt(split4[1]);
                                                }
                                                LinkedHashSet linkedHashSet = new LinkedHashSet(BsonLite.intArrayValues(bArr, "cgs"));
                                                return i == 42 ? linkedHashSet.containsAll(integers(str)) : !Collections.disjoint(linkedHashSet, integers(str));
                                            }
                                            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                                            byte[] documentValue3 = BsonLite.documentValue(BsonLite.documentValue(bArr, "heromgr"), "hrs");
                                            Iterator<String> it3 = BsonLite.keys(documentValue3).iterator();
                                            while (it3.hasNext()) {
                                                Integer intValue3 = BsonLite.intValue(BsonLite.documentValue(documentValue3, it3.next()), "0");
                                                if (intValue3 != null) {
                                                    linkedHashSet2.add(intValue3);
                                                }
                                            }
                                            Set<Integer> integers = integers(str);
                                            return i == 24 ? linkedHashSet2.containsAll(integers) : Collections.disjoint(linkedHashSet2, integers);
                                        }
                                        String stringValue = BsonLite.stringValue(LocalResourceEngine.doc(bArr, "std"), "rt");
                                        if (stringValue == null) {
                                            stringValue = "1";
                                        }
                                        return Arrays.asList(str.split(",")).contains(stringValue);
                                    }
                                    byte[] doc = LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "city"), "areas");
                                    for (String str7 : str.split("\\|")) {
                                        String[] split5 = str7.split(":");
                                        byte[] doc2 = LocalResourceEngine.doc(doc, "area_" + split5[0]);
                                        if (i == 22) {
                                            Integer intValue4 = BsonLite.intValue(doc2, "lv");
                                            if (intValue4 == null || intValue4.intValue() < Integer.parseInt(split5[1])) {
                                                return false;
                                            }
                                        } else {
                                            Set<Integer> integers2 = integers(split5[1]);
                                            int parseInt5 = Integer.parseInt(split5[0]);
                                            if (parseInt5 < 0 || parseInt5 > 8) {
                                                throw new IllegalArgumentException("invalid building area");
                                            }
                                            if (parseInt5 == 0) {
                                                for (int i3 = 1; i3 <= 8; i3++) {
                                                    if (hasBuilding(LocalResourceEngine.doc(doc, "area_" + i3), integers2)) {
                                                        return true;
                                                    }
                                                }
                                            } else if (hasBuilding(doc2, integers2)) {
                                                return true;
                                            }
                                        }
                                    }
                                    return i == 22;
                                }
                                if (i == 21) {
                                    str2 = "bf";
                                } else if (i == 26) {
                                    str2 = "fv";
                                } else if (i == 27) {
                                    str2 = "rv";
                                } else {
                                    str2 = i == 30 ? "cc" : "dv";
                                }
                                Integer intValue5 = BsonLite.intValue(LocalResourceEngine.doc(bArr, "city"), str2);
                                String[] split6 = str.split(",");
                                int parseInt6 = Integer.parseInt(split6[0]);
                                int parseInt7 = Integer.parseInt(split6[1]);
                                if (parseInt6 <= parseInt7) {
                                    return intValue5 != null && intValue5.intValue() >= parseInt6 && intValue5.intValue() <= parseInt7;
                                }
                                throw new IllegalArgumentException("reversed interval");
                            }
                            byte[] doc3 = LocalResourceEngine.doc(bArr, "weeknum");
                            int value = LocalResourceEngine.value(doc3, "w");
                            int value2 = LocalResourceEngine.value(doc3, "d");
                            for (String str8 : str.split("\\|")) {
                                String[] split7 = str8.split(":");
                                String str9 = progress.eventDays.get(Integer.valueOf(Integer.parseInt(split7[0])));
                                if (str9 == null) {
                                    return false;
                                }
                                String[] split8 = str9.split(":");
                                if (split8.length != 2 || Integer.parseInt(split8[0]) != value || (parseInt = value2 - Integer.parseInt(split8[1])) < Integer.parseInt(split7[1]) || parseInt > Integer.parseInt(split7[2])) {
                                    return false;
                                }
                            }
                            return true;
                        }
                        Set<Integer> integers3 = integers(str);
                        byte[] doc4 = LocalResourceEngine.doc(LocalResourceEngine.doc(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "city"), "areas"), "area_" + context.patrolArea), "bd");
                        Iterator<String> it4 = BsonLite.keys(doc4).iterator();
                        while (it4.hasNext()) {
                            Integer intValue6 = BsonLite.intValue(LocalResourceEngine.doc(doc4, it4.next()), "id");
                            if (intValue6 != null && integers3.contains(intValue6)) {
                                return true;
                            }
                        }
                        return false;
                    }
                    boolean z = true;
                    boolean z2 = true;
                    for (String str10 : str.split("\\|", -1)) {
                        String[] split9 = str10.split(":", -1);
                        if (split9.length != 2) {
                            throw new IllegalArgumentException("invalid memory piece");
                        }
                        int parseInt8 = Integer.parseInt(split9[0]);
                        int parseInt9 = Integer.parseInt(split9[1]);
                        if (parseInt8 <= 0 || parseInt9 < 1 || parseInt9 > 31) {
                            throw new IllegalArgumentException("invalid memory piece index");
                        }
                        boolean z3 = ((1 << (parseInt9 + (-1))) & LocalStoryMemoryEngine.mask(bArr, parseInt8)) != 0;
                        z2 &= z3;
                        z &= !z3;
                    }
                    return i == 43 ? z2 : z;
                }
                if (str.isEmpty()) {
                    throw new IllegalArgumentException("empty fatigue condition");
                }
                for (String str11 : str.split("\\|", -1)) {
                    String[] split10 = str11.split(":", -1);
                    if (split10.length != 3) {
                        throw new IllegalArgumentException("invalid fatigue interval");
                    }
                    int parseInt10 = Integer.parseInt(split10[0]);
                    int parseInt11 = Integer.parseInt(split10[1]);
                    int parseInt12 = Integer.parseInt(split10[2]);
                    if (parseInt10 <= 0 || parseInt11 > parseInt12) {
                        throw new IllegalArgumentException("invalid fatigue bounds");
                    }
                    Integer remainingFatigue = remainingFatigue(bArr, progress, parseInt10);
                    if (remainingFatigue == null) {
                        return false;
                    }
                    if (remainingFatigue.intValue() < 0) {
                        throw new IllegalArgumentException("negative remaining fatigue");
                    }
                    if (remainingFatigue.intValue() < parseInt11 || remainingFatigue.intValue() > parseInt12) {
                        return false;
                    }
                }
                return true;
            }
            String[] split11 = str.split(",", -1);
            if (split11.length != 2) {
                throw new IllegalArgumentException("invalid baiyu interval");
            }
            int parseInt13 = Integer.parseInt(split11[0]);
            int parseInt14 = Integer.parseInt(split11[1]);
            if (parseInt13 > parseInt14) {
                throw new IllegalArgumentException("reversed baiyu interval");
            }
            Integer intValue7 = BsonLite.intValue(LocalResourceEngine.doc(bArr, "std"), "byv");
            if (intValue7 == null) {
                return false;
            }
            if (intValue7.intValue() < 0 || intValue7.intValue() > 100) {
                throw new IllegalArgumentException("invalid native baiyu value");
            }
            return intValue7.intValue() >= parseInt13 && intValue7.intValue() <= parseInt14;
        }
        String[] split12 = str.split(",", -1);
        if (split12.length != 2) {
            throw new IllegalArgumentException("invalid yisake interval");
        }
        int parseInt15 = Integer.parseInt(split12[0]);
        int parseInt16 = Integer.parseInt(split12[1]);
        if (parseInt15 > parseInt16) {
            throw new IllegalArgumentException("reversed yisake interval");
        }
        Integer intValue8 = BsonLite.intValue(LocalResourceEngine.doc(bArr, "std"), "yiv");
        if (intValue8 == null) {
            return false;
        }
        if (intValue8.intValue() < 0 || intValue8.intValue() > 100) {
            throw new IllegalArgumentException("invalid native yisake value");
        }
        return intValue8.intValue() >= parseInt15 && intValue8.intValue() <= parseInt16;
    }

    private static boolean hasBuilding(byte[] bArr, Set<Integer> set) {
        byte[] doc = LocalResourceEngine.doc(bArr, "bd");
        Iterator<String> it = BsonLite.keys(doc).iterator();
        while (it.hasNext()) {
            Integer intValue = BsonLite.intValue(LocalResourceEngine.doc(doc, it.next()), "id");
            if (intValue != null && set.contains(intValue)) {
                return true;
            }
        }
        return false;
    }

    private static Integer remainingFatigue(byte[] bArr, LocalTutorialStore.Progress progress, int i) {
        byte[] profileHeroDocument = BsonLite.profileHeroDocument(bArr, i);
        if (profileHeroDocument == null || !LocalResourceEngine.ownsHero(bArr, i)) {
            return null;
        }
        byte[] doc = LocalResourceEngine.doc(bArr, "q7EconomyCommit");
        String stringValue = BsonLite.stringValue(doc, "id");
        if (stringValue != null && !stringValue.equals(progress.economyCommit)) {
            byte[] doc2 = LocalResourceEngine.doc(doc, "cf");
            String num = Integer.toString(i);
            if (BsonLite.keys(doc2).contains(num)) {
                Integer intValue = BsonLite.intValue(doc2, num);
                if (intValue == null) {
                    throw new IllegalArgumentException("invalid pending fatigue");
                }
                return intValue;
            }
        }
        return progress.patrolFatigue.containsKey(Integer.valueOf(i)) ? progress.patrolFatigue.get(Integer.valueOf(i)) : BsonLite.intValue(profileHeroDocument, "cf");
    }

    static Set<Integer> integers(String str) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (!str.isEmpty()) {
            for (String str2 : str.split(",")) {
                linkedHashSet.add(Integer.valueOf(Integer.parseInt(str2)));
            }
        }
        return linkedHashSet;
    }
}
