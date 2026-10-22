package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes.dex */
final class LocalHomeWishDailyEngine {
    LocalHomeWishDailyEngine() {
    }

    /* renamed from: d */
    static byte[] m40d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m41v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static void require(boolean z, String str) {
        LocalHomeEngine.require(z, str);
    }

    static String generation(byte[] bArr) {
        String stringValue;
        byte[] m40d = m40d(bArr, "q7HomeWishDaily");
        if (m41v(m40d, "version") != 1 || (stringValue = BsonLite.stringValue(m40d, "generation")) == null || (!stringValue.isEmpty() && !LocalHomeDailyEngine.validDay(stringValue))) {
            return null;
        }
        if (!stringValue.isEmpty()) {
            if (BsonLite.arrayValue(m40d, "changed") == null || BsonLite.arrayValue(m40d, "deleted") == null) {
                return null;
            }
            HashSet hashSet = new HashSet();
            Iterator<String> it = BsonLite.keys(m40d(m40d, "changed")).iterator();
            while (it.hasNext()) {
                Integer intValue = BsonLite.intValue(m40d(m40d, "changed"), it.next());
                if (intValue == null || intValue.intValue() < 1 || intValue.intValue() > 3 || !hashSet.add(intValue)) {
                    return null;
                }
            }
            if (hashSet.isEmpty()) {
                return null;
            }
            try {
                ids(m40d(m40d, "deleted"));
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
        return stringValue;
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x0255, code lost:
    
        if (m41v(r30.get("WS", r6 + ":" + com.project7.localmanager.LocalHomeWishEngine.level(r11, r6.intValue())), "task") == r2.intValue()) goto L95;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02c6 A[Catch: ArithmeticException -> 0x0317, ArithmeticException | IllegalArgumentException -> 0x0319, TryCatch #8 {ArithmeticException | IllegalArgumentException -> 0x0319, blocks: (B:45:0x0121, B:50:0x0134, B:58:0x015e, B:61:0x0179, B:64:0x018a, B:68:0x01ab, B:70:0x01b1, B:72:0x01b7, B:75:0x01c4, B:77:0x01d1, B:79:0x01d7, B:81:0x01dd, B:122:0x02fc, B:84:0x01ed, B:86:0x0212, B:89:0x025a, B:91:0x0267, B:93:0x0273, B:98:0x02a2, B:100:0x02c6, B:103:0x02cf, B:107:0x027d, B:109:0x0289, B:111:0x028f, B:117:0x0229, B:155:0x0343, B:162:0x0351, B:165:0x0364, B:168:0x036a, B:171:0x0371, B:180:0x0393), top: B:44:0x0121 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x04e9 A[LOOP:2: B:143:0x04e1->B:145:0x04e9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a2 A[Catch: ArithmeticException -> 0x04d1, ArithmeticException | IllegalArgumentException -> 0x04d3, TryCatch #14 {ArithmeticException | IllegalArgumentException -> 0x04d3, blocks: (B:13:0x004a, B:16:0x0062, B:18:0x0068, B:20:0x006f, B:22:0x0079, B:26:0x0083, B:30:0x008d, B:32:0x00a2, B:35:0x00ad, B:36:0x00d6, B:38:0x00dc, B:40:0x00ea, B:41:0x0113, B:53:0x014b, B:55:0x0151, B:132:0x0167, B:134:0x016d), top: B:12:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0267 A[Catch: ArithmeticException -> 0x0317, ArithmeticException | IllegalArgumentException -> 0x0319, TryCatch #8 {ArithmeticException | IllegalArgumentException -> 0x0319, blocks: (B:45:0x0121, B:50:0x0134, B:58:0x015e, B:61:0x0179, B:64:0x018a, B:68:0x01ab, B:70:0x01b1, B:72:0x01b7, B:75:0x01c4, B:77:0x01d1, B:79:0x01d7, B:81:0x01dd, B:122:0x02fc, B:84:0x01ed, B:86:0x0212, B:89:0x025a, B:91:0x0267, B:93:0x0273, B:98:0x02a2, B:100:0x02c6, B:103:0x02cf, B:107:0x027d, B:109:0x0289, B:111:0x028f, B:117:0x0229, B:155:0x0343, B:162:0x0351, B:165:0x0364, B:168:0x036a, B:171:0x0371, B:180:0x0393), top: B:44:0x0121 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void refresh(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, long j) {
        LocalResourceEngine.Result result2;
        int i;
        RuntimeException runtimeException;
        byte[] m40d;
        boolean z;
        byte[] bArr;
        String str;
        String str2;
        String str3;
        boolean z2;
        String str4;
        String str5;
        byte[] bArr2;
        boolean z3;
        String str6;
        boolean z4;
        HashSet hashSet;
        boolean z5;
        String str7;
        String str8;
        TreeMap treeMap;
        boolean z6;
        String str9;
        String str10;
        boolean z7;
        String str11 = "心愿槽位格式未知";
        byte[] bArr3 = result.profile;
        int size = result.replies.size();
        try {
            m40d = m40d(bArr3, "hhd");
        } catch (ArithmeticException | IllegalArgumentException e) {
            e = e;
            result2 = result;
            i = size;
        }
        if (BsonLite.keys(m40d).contains("tls") && !BsonLite.keys(m40d(m40d, "tls")).isEmpty()) {
            Map<Integer, byte[]> numericPairs = LocalHomeWishEngine.numericPairs(m40d, "tls");
            String day = LocalHomeDailyEngine.day(j);
            byte[] m40d2 = m40d(bArr3, "q7HomeWishDaily");
            int i2 = size;
            try {
                z = !BsonLite.keys(bArr3).contains("q7HomeWishDaily");
                bArr = m40d;
                str = "lt";
                str2 = "day";
                str3 = "et";
            } catch (ArithmeticException | IllegalArgumentException e2) {
                e = e2;
                result2 = result;
            }
            if (!z && (BsonLite.documentValue(bArr3, "q7HomeWishDaily") == null || m41v(m40d2, "version") != 1 || !LocalHomeDailyEngine.validDay(BsonLite.stringValue(m40d2, "day")) || generation(bArr3) == null)) {
                z2 = false;
                require(z2, "每日心愿记录格式未知");
                String str12 = "generation";
                if (!z) {
                    result.profile = BsonLite.withProfileDocument(bArr3, "q7HomeWishDaily", BsonLite.withProfileString(BsonLite.withProfileString(BsonLite.withProfileInt(m40d2, "version", 1), "day", day), "generation", ""));
                    return;
                }
                if (day.compareTo(BsonLite.stringValue(m40d2, "day")) <= 0) {
                    return;
                }
                HashSet hashSet2 = new HashSet();
                TreeMap treeMap2 = new TreeMap();
                LocalHomeWishEngine.tasks(bArr3);
                LocalHomeWishEngine.syncMembership(new LocalResourceEngine.Result(bArr3));
                Iterator<byte[]> it = LocalResourceEngine.array(m40d(m40d(bArr3, "tsd"), "td")).iterator();
                while (it.hasNext()) {
                    LocalHomeWishEngine.task(bArr3, LocalHomeWishEngine.key(it.next()));
                }
                require(Collections.disjoint(ids(m40d(m40d(bArr3, "tsd"), "ptl")), ids(m40d(m40d(bArr3, "tsd"), "ctl"))), "候选与进行中任务列表重叠");
                Iterator<Integer> it2 = numericPairs.keySet().iterator();
                while (true) {
                    str4 = str12;
                    str5 = str2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    try {
                        int intValue = it2.next().intValue();
                        require(intValue >= 1 && intValue <= 3, str11);
                        byte[] slot = LocalHomeWishEngine.slot(bArr3, intValue);
                        Iterator<Integer> it3 = it2;
                        Integer intValue2 = BsonLite.intValue(slot, "h");
                        Integer intValue3 = BsonLite.intValue(slot, "t");
                        if (intValue2 == null || intValue3 == null || intValue2.intValue() < 0 || intValue3.intValue() < 0) {
                            bArr2 = m40d2;
                            z3 = false;
                        } else {
                            bArr2 = m40d2;
                            z3 = true;
                        }
                        require(z3, str11);
                        if (intValue3.intValue() == 0) {
                            if (intValue2.intValue() > 0) {
                                hashSet2.add(intValue2);
                            }
                            str12 = str4;
                            str2 = str5;
                            it2 = it3;
                            m40d2 = bArr2;
                        } else {
                            String taskUuid = LocalHomeWishEngine.taskUuid(bArr3, intValue3.intValue());
                            if (taskUuid != null) {
                                str6 = str11;
                                z4 = true;
                            } else {
                                str6 = str11;
                                z4 = false;
                            }
                            String str13 = day;
                            require(z4, "心愿槽位缺少任务记录");
                            byte[] task = LocalHomeWishEngine.task(bArr3, taskUuid);
                            Integer intValue4 = BsonLite.intValue(task, "at");
                            Integer intValue5 = BsonLite.intValue(task, "ft");
                            Integer intValue6 = BsonLite.intValue(task, "rt");
                            if (intValue4 == null || intValue5 == null || intValue6 == null || intValue4.intValue() < 0 || intValue5.intValue() < 0 || intValue6.intValue() < 0) {
                                hashSet = hashSet2;
                                z5 = false;
                            } else {
                                hashSet = hashSet2;
                                z5 = true;
                            }
                            TreeMap treeMap3 = treeMap2;
                            require(z5, "心愿阶段格式未知");
                            if (intValue4.intValue() > 0 || intValue5.intValue() > 0 || intValue6.intValue() > 0) {
                                str7 = str;
                                str8 = str3;
                                treeMap = treeMap3;
                            } else if (intValue > LocalHomeWishEngine.slots(bArr3)) {
                                str7 = str;
                                str8 = str3;
                                treeMap = treeMap3;
                            } else {
                                require(LocalResourceEngine.ownsHero(bArr3, intValue2.intValue()), "候选心愿角色未拥有");
                                LocalHomeWishEngine.binding(task, intValue2.intValue(), intValue);
                                int m41v = m41v(localFeatureCatalog.get("WT", intValue3), "group");
                                if (m41v != 1 || LocalHomeWishEngine.normalTask(localFeatureCatalog, intValue2.intValue(), m41v(slot, "s")) != intValue3.intValue()) {
                                    if (m41v == 2) {
                                    }
                                    z6 = false;
                                    require(z6, "候选心愿与原版配置不符");
                                    if (m41v(task, "ct") <= 0) {
                                        str10 = str3;
                                        if (BsonLite.keys(task).contains(str10) && m41v(task, str10) != 0) {
                                            str9 = str;
                                        }
                                        str9 = str;
                                        if ((!BsonLite.keys(task).contains(str9) || m41v(task, str9) == 0) && !BsonLite.keys(task).contains("validTime")) {
                                            z7 = true;
                                            require(z7, "带时间限制的候选心愿保留");
                                            require((Collections.frequency(ids(m40d(m40d(bArr3, "tsd"), "ptl")), taskUuid) == 1 || ids(m40d(m40d(bArr3, "tsd"), "ctl")).contains(taskUuid)) ? false : true, "候选心愿任务列表不一致");
                                            treeMap3.put(Integer.valueOf(intValue), taskUuid);
                                            str3 = str10;
                                            str = str9;
                                            treeMap2 = treeMap3;
                                            str2 = str5;
                                            it2 = it3;
                                            m40d2 = bArr2;
                                            str11 = str6;
                                            day = str13;
                                            hashSet2 = hashSet;
                                            str12 = str4;
                                        }
                                    } else {
                                        str9 = str;
                                        str10 = str3;
                                    }
                                    z7 = false;
                                    require(z7, "带时间限制的候选心愿保留");
                                    require((Collections.frequency(ids(m40d(m40d(bArr3, "tsd"), "ptl")), taskUuid) == 1 || ids(m40d(m40d(bArr3, "tsd"), "ctl")).contains(taskUuid)) ? false : true, "候选心愿任务列表不一致");
                                    treeMap3.put(Integer.valueOf(intValue), taskUuid);
                                    str3 = str10;
                                    str = str9;
                                    treeMap2 = treeMap3;
                                    str2 = str5;
                                    it2 = it3;
                                    m40d2 = bArr2;
                                    str11 = str6;
                                    day = str13;
                                    hashSet2 = hashSet;
                                    str12 = str4;
                                }
                                z6 = true;
                                require(z6, "候选心愿与原版配置不符");
                                if (m41v(task, "ct") <= 0) {
                                }
                                z7 = false;
                                require(z7, "带时间限制的候选心愿保留");
                                require((Collections.frequency(ids(m40d(m40d(bArr3, "tsd"), "ptl")), taskUuid) == 1 || ids(m40d(m40d(bArr3, "tsd"), "ctl")).contains(taskUuid)) ? false : true, "候选心愿任务列表不一致");
                                treeMap3.put(Integer.valueOf(intValue), taskUuid);
                                str3 = str10;
                                str = str9;
                                treeMap2 = treeMap3;
                                str2 = str5;
                                it2 = it3;
                                m40d2 = bArr2;
                                str11 = str6;
                                day = str13;
                                hashSet2 = hashSet;
                                str12 = str4;
                            }
                            HashSet hashSet3 = hashSet;
                            hashSet3.add(intValue2);
                            hashSet2 = hashSet3;
                            str3 = str8;
                            str = str7;
                            treeMap2 = treeMap;
                            str2 = str5;
                            it2 = it3;
                            m40d2 = bArr2;
                            str11 = str6;
                            day = str13;
                            str12 = str4;
                        }
                    } catch (ArithmeticException | IllegalArgumentException e3) {
                        e = e3;
                        result2 = result;
                    }
                    e = e3;
                    result2 = result;
                    runtimeException = e;
                    i = i2;
                    result2.profile = bArr3;
                    while (result2.replies.size() > i) {
                        result2.replies.remove(result2.replies.size() - 1);
                    }
                    LocalDiagnosticLog.m16i("Project7Gateway", "Home wish daily preserved reason=" + runtimeException.getMessage());
                    return;
                }
                HashSet hashSet4 = hashSet2;
                TreeMap treeMap4 = treeMap2;
                byte[] bArr4 = m40d2;
                String str14 = day;
                try {
                    ArrayList arrayList = new ArrayList();
                    Iterator it4 = new TreeSet(localFeatureCatalog.entries.keySet()).iterator();
                    while (it4.hasNext()) {
                        String str15 = (String) it4.next();
                        if (str15.startsWith("WN:")) {
                            int parseInt = Integer.parseInt(str15.substring(3));
                            if (!hashSet4.contains(Integer.valueOf(parseInt)) && LocalResourceEngine.ownsHero(bArr3, parseInt) && LocalHomeWishEngine.level(bArr3, parseInt) < 5) {
                                arrayList.add(Integer.valueOf(parseInt));
                            }
                        }
                    }
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it5 = treeMap4.entrySet().iterator();
                    while (it5.hasNext()) {
                        Map.Entry entry = (Map.Entry) it5.next();
                        int intValue7 = ((Integer) entry.getKey()).intValue();
                        String str16 = (String) entry.getValue();
                        result2 = result;
                        try {
                            LocalHomeWishEngine.removeTask(result2, str16);
                            arrayList3.add(new BsonLite.UuidValue(str16));
                            arrayList2.add(Integer.valueOf(intValue7));
                            if (arrayList.isEmpty()) {
                                LocalHomeWishEngine.setSlot(result2, intValue7, BsonLite.EMPTY_DOCUMENT);
                            } else {
                                byte[] bArr5 = bArr;
                                int m41v2 = m41v(bArr5, "mhh");
                                Iterator it6 = it5;
                                if (!arrayList.contains(Integer.valueOf(m41v2))) {
                                    m41v2 = ((Integer) arrayList.get(LocalStoryEnvironment.nextInt(arrayList.size()))).intValue();
                                }
                                arrayList.remove(Integer.valueOf(m41v2));
                                ArrayList arrayList4 = arrayList;
                                LocalHomeWishEngine.next(result2, localFeatureCatalog, intValue7, m41v2, m41v(localFeatureCatalog.get("WN", Integer.valueOf(m41v2)), "idx"));
                                String taskUuid2 = LocalHomeWishEngine.taskUuid(result2.profile, m41v(LocalHomeWishEngine.slot(result2.profile, intValue7), "t"));
                                LocalHomeWishEngine.writeTask(result2, taskUuid2, BsonLite.withProfileInt(BsonLite.withProfileInt(LocalHomeWishEngine.task(result2.profile, taskUuid2), "at", 0), "ts", 1));
                                byte[] m40d3 = m40d(result2.profile, "tsd");
                                List<Object> uuidValues = uuidValues(ids(m40d(m40d3, "ptl")));
                                uuidValues.add(new BsonLite.UuidValue(taskUuid2));
                                List<String> ids = ids(m40d(m40d3, "ctl"));
                                ids.remove(taskUuid2);
                                result2.profile = BsonLite.withProfileDocument(result2.profile, "tsd", BsonLite.withProfileArray(BsonLite.withProfileArray(m40d3, "ptl", uuidValues), "ctl", uuidValues(ids)));
                                it5 = it6;
                                arrayList = arrayList4;
                                bArr = bArr5;
                            }
                        } catch (ArithmeticException e4) {
                            e = e4;
                        } catch (IllegalArgumentException e5) {
                            e = e5;
                        }
                    }
                    result2 = result;
                    try {
                        byte[] withProfileString = BsonLite.withProfileString(bArr4, str5, str14);
                        if (!arrayList2.isEmpty()) {
                            withProfileString = BsonLite.withProfileArray(BsonLite.withProfileArray(BsonLite.withProfileString(withProfileString, str4, str14), "changed", arrayList2), "deleted", arrayList3);
                        }
                        result2.profile = BsonLite.withProfileDocument(result2.profile, "q7HomeWishDaily", withProfileString);
                        while (true) {
                            i = i2;
                            if (result2.replies.size() <= i) {
                                return;
                            }
                            try {
                                result2.replies.remove(result2.replies.size() - 1);
                                i2 = i;
                            } catch (ArithmeticException e6) {
                                e = e6;
                                runtimeException = e;
                                result2.profile = bArr3;
                                while (result2.replies.size() > i) {
                                }
                                LocalDiagnosticLog.m16i("Project7Gateway", "Home wish daily preserved reason=" + runtimeException.getMessage());
                                return;
                            } catch (IllegalArgumentException e7) {
                                e = e7;
                                runtimeException = e;
                                result2.profile = bArr3;
                                while (result2.replies.size() > i) {
                                }
                                LocalDiagnosticLog.m16i("Project7Gateway", "Home wish daily preserved reason=" + runtimeException.getMessage());
                                return;
                            }
                        }
                    } catch (ArithmeticException e8) {
                        e = e8;
                        i = i2;
                        runtimeException = e;
                        result2.profile = bArr3;
                        while (result2.replies.size() > i) {
                        }
                        LocalDiagnosticLog.m16i("Project7Gateway", "Home wish daily preserved reason=" + runtimeException.getMessage());
                        return;
                    } catch (IllegalArgumentException e9) {
                        e = e9;
                        i = i2;
                        runtimeException = e;
                        result2.profile = bArr3;
                        while (result2.replies.size() > i) {
                        }
                        LocalDiagnosticLog.m16i("Project7Gateway", "Home wish daily preserved reason=" + runtimeException.getMessage());
                        return;
                    }
                } catch (ArithmeticException | IllegalArgumentException e10) {
                    e = e10;
                    result2 = result;
                }
            }
            z2 = true;
            require(z2, "每日心愿记录格式未知");
            String str122 = "generation";
            if (!z) {
            }
        }
    }

    static List<String> ids(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        Iterator<String> it = BsonLite.keys(bArr).iterator();
        while (it.hasNext()) {
            String uuidValue = BsonLite.uuidValue(bArr, it.next());
            require(uuidValue != null && hashSet.add(uuidValue), "任务列表格式未知或重复");
            arrayList.add(uuidValue);
        }
        return arrayList;
    }

    static List<Object> uuidValues(List<String> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new BsonLite.UuidValue(it.next()));
        }
        return arrayList;
    }

    static void sync(LocalResourceEngine.Result result, byte[] bArr) {
        String generation = generation(result.profile);
        if (generation == null || generation.isEmpty() || generation.equals(generation(bArr))) {
            return;
        }
        TreeSet treeSet = new TreeSet(BsonLite.intArrayValues(m40d(result.profile, "q7HomeWishDaily"), "changed"));
        LinkedHashSet linkedHashSet = new LinkedHashSet(ids(m40d(m40d(result.profile, "q7HomeWishDaily"), "deleted")));
        Iterator<LocalResourceEngine.Reply> it = result.replies.iterator();
        while (it.hasNext()) {
            LocalResourceEngine.Reply next = it.next();
            if ("syncTaskList".equals(next.method)) {
                it.remove();
            } else if ("syncDeleteTask".equals(next.method)) {
                linkedHashSet.addAll(ids(m40d(next.parameters, "dtl")));
                it.remove();
            } else if ("replyNewTaskLinkByHeroId".equals(next.method)) {
                treeSet.add(Integer.valueOf(m41v(next.parameters, "i")));
                it.remove();
            }
        }
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
        if (!linkedHashSet.isEmpty()) {
            result2.add("syncDeleteTask", BsonLite.document("dtl", uuidValues(new ArrayList(linkedHashSet))));
        }
        LocalHomeWishEngine.syncMembership(result2);
        Iterator it2 = treeSet.iterator();
        while (it2.hasNext()) {
            int intValue = ((Integer) it2.next()).intValue();
            result2.add("replyNewTaskLinkByHeroId", BsonLite.document("i", Integer.valueOf(intValue), "s", LocalHomeWishEngine.slot(result.profile, intValue)));
        }
        result.replies.addAll(0, result2.replies);
    }
}
