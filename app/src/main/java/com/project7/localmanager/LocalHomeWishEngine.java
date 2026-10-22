package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;

/* loaded from: classes.dex */
final class LocalHomeWishEngine {
    static final Set<String> METHODS = new HashSet(Arrays.asList("requestNewTaskLinkByHeroId", "requestCompleteWishTask", "requestGetHeroHomeSpecialReward", "requestHeroHomeWishMoney", "requestShowTaskLinkResult", "clearHeroHomeTaskReward", "clearHeroHomeRecordHistory", "requestHeroHomeMark", "updateHeroHomeRed", "processClientTask", "requestGetTask", "requestGetTaskReward", "requestGiveUpTask"));

    LocalHomeWishEngine() {
    }

    /* renamed from: d */
    static byte[] m42d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m43v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static void require(boolean z, String str) {
        LocalHomeEngine.require(z, str);
    }

    static byte[] home(byte[] bArr) {
        return m42d(bArr, "hhd");
    }

    static Map<Integer, byte[]> numericPairs(byte[] bArr, String str) {
        require((BsonLite.keys(bArr).contains(str) && BsonLite.arrayValue(bArr, str) == null) ? false : true, "家园记录格式未知");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        byte[] m42d = m42d(bArr, str);
        Iterator<String> it = BsonLite.keys(m42d).iterator();
        while (it.hasNext()) {
            byte[] documentValue = BsonLite.documentValue(m42d, it.next());
            require(documentValue != null, "家园记录格式未知");
            require(BsonLite.keys(documentValue).equals(Arrays.asList("0", "1")), "家园记录格式未知");
            Integer intValue = BsonLite.intValue(documentValue, "0");
            require((intValue == null || !BsonLite.keys(documentValue).contains("1") || linkedHashMap.containsKey(intValue)) ? false : true, "家园记录重复或格式未知");
            linkedHashMap.put(intValue, documentValue);
        }
        return linkedHashMap;
    }

    static int pairInt(byte[] bArr, String str, int i, int i2) {
        byte[] bArr2 = numericPairs(bArr, str).get(Integer.valueOf(i));
        if (bArr2 == null) {
            return i2;
        }
        Integer intValue = BsonLite.intValue(bArr2, "1");
        require(intValue != null, "家园数值格式未知");
        return intValue.intValue();
    }

    static byte[] slot(byte[] bArr, int i) {
        byte[] bArr2 = numericPairs(home(bArr), "tls").get(Integer.valueOf(i));
        if (bArr2 == null) {
            return BsonLite.EMPTY_DOCUMENT;
        }
        byte[] documentValue = BsonLite.documentValue(bArr2, "1");
        require(documentValue != null, "心愿槽位格式未知");
        return documentValue;
    }

    static int level(byte[] bArr, int i) {
        int pairInt = pairInt(home(bArr), "hhl", i, 1);
        require(pairInt >= 1 && pairInt <= 5, "羁绊等级格式未知");
        return pairInt;
    }

    static int experience(byte[] bArr, int i) {
        int pairInt = pairInt(home(bArr), "hhe", i, 0);
        require(pairInt >= 0, "羁绊值格式未知");
        return pairInt;
    }

    static int storedExperience(byte[] bArr, int i) {
        boolean z = false;
        int pairInt = pairInt(home(bArr), "hehe", i, 0);
        if (pairInt >= 0 && pairInt <= 20000) {
            z = true;
        }
        require(z, "暂存羁绊值格式未知");
        return pairInt;
    }

    static byte[] setNumber(byte[] bArr, String str, int i, int i2) {
        Map<Integer, byte[]> numericPairs = numericPairs(bArr, str);
        byte[] bArr2 = numericPairs.get(Integer.valueOf(i));
        numericPairs.put(Integer.valueOf(i), bArr2 == null ? BsonLite.document("0", Integer.valueOf(i), "1", Integer.valueOf(i2)) : BsonLite.withProfileInt(bArr2, "1", i2));
        ArrayList arrayList = new ArrayList();
        Iterator<byte[]> it = numericPairs.values().iterator();
        while (it.hasNext()) {
            arrayList.add(new BsonLite.ArrayValue(it.next()));
        }
        return BsonLite.withProfileArray(bArr, str, arrayList);
    }

    static void addExperience(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, int i, int i2) {
        require(i2 > 0, "羁绊奖励配置无效");
        int m43v = m43v(localFeatureCatalog.get("WX", Integer.valueOf(level(result.profile, i))), "exp");
        require(m43v > 0, "缺少原版羁绊值上限");
        long experience = experience(result.profile, i) + i2;
        long j = m43v;
        int min = (int) Math.min(20000L, storedExperience(result.profile, i) + Math.max(0L, experience - j));
        byte[] number = setNumber(home(result.profile), "hhe", i, (int) Math.min(j, experience));
        if (min > 0 || numericPairs(number, "hehe").containsKey(Integer.valueOf(i))) {
            number = setNumber(number, "hehe", i, min);
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "hhd", number);
    }

    static int slots(byte[] bArr) {
        Iterator<byte[]> it = LocalHomeEngine.pairs(home(bArr), "fi").values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i = Math.addExact(i, BsonLite.intArrayValues(it.next(), "1").size());
        }
        if (i >= 13) {
            return 3;
        }
        return i >= 7 ? 2 : 1;
    }

    static String key(byte[] bArr) {
        String stringValue = BsonLite.stringValue(bArr, "0");
        return stringValue == null ? BsonLite.uuidValue(bArr, "0") : stringValue;
    }

    static byte[] tasks(byte[] bArr) {
        byte[] m42d = m42d(bArr, "tsd");
        require((BsonLite.keys(bArr).contains("tsd") && BsonLite.documentValue(bArr, "tsd") == null) ? false : true, "任务容器格式未知");
        for (String str : Arrays.asList("td", "ptl", "ctl")) {
            require((BsonLite.keys(m42d).contains(str) && BsonLite.arrayValue(m42d, str) == null) ? false : true, "任务列表格式未知");
        }
        byte[] m42d2 = m42d(m42d, "td");
        HashSet hashSet = new HashSet();
        Iterator<String> it = BsonLite.keys(m42d2).iterator();
        while (it.hasNext()) {
            byte[] documentValue = BsonLite.documentValue(m42d2, it.next());
            require((documentValue == null || key(documentValue) == null || !hashSet.add(key(documentValue)) || BsonLite.documentValue(documentValue, "1") == null) ? false : true, "任务记录重复或格式未知");
        }
        return m42d;
    }

    static byte[] task(byte[] bArr, String str) {
        byte[] bArr2 = null;
        for (byte[] bArr3 : LocalResourceEngine.array(m42d(tasks(bArr), "td"))) {
            if (str != null && str.equals(key(bArr3))) {
                require(bArr2 == null, "心愿任务记录重复");
                bArr2 = BsonLite.documentValue(bArr3, "1");
                require(bArr2 != null && str.equals(BsonLite.uuidValue(bArr2, "uuid")), "心愿任务记录格式未知");
            }
        }
        return bArr2;
    }

    static String taskUuid(byte[] bArr, int i) {
        String str = null;
        for (byte[] bArr2 : LocalResourceEngine.array(m42d(tasks(bArr), "td"))) {
            if (m43v(m42d(bArr2, "1"), "tid") == i) {
                require(str == null, "心愿任务记录重复");
                str = key(bArr2);
                require(str != null, "心愿任务标识格式未知");
                task(bArr, str);
            }
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void writeTask(LocalResourceEngine.Result result, String str, byte[] bArr) {
        byte[] m42d = m42d(result.profile, "tsd");
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (byte[] bArr2 : LocalResourceEngine.array(m42d(m42d, "td"))) {
            if (str.equals(key(bArr2))) {
                require(!z, "心愿任务记录重复");
                arrayList.add(Arrays.asList(str, bArr));
                z = true;
            } else {
                arrayList.add(new BsonLite.ArrayValue(bArr2));
            }
        }
        if (!z) {
            arrayList.add(Arrays.asList(str, bArr));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "tsd", BsonLite.withProfileArray(m42d, "td", arrayList));
    }

    static void removeTask(LocalResourceEngine.Result result, String str) {
        byte[] task = task(result.profile, str);
        if (task != null) {
            boolean z = !new HashSet(Arrays.asList("uuid", "tid", "ct", "at", "ft", "rt", "ts", "ext", "mi", "et", "lt", "aft", "validTime")).containsAll(BsonLite.keys(task));
            for (String str2 : Arrays.asList("ext", "mi")) {
                z |= BsonLite.keys(task).contains(str2) && BsonLite.arrayValue(task, str2) == null;
                HashSet hashSet = new HashSet("ext".equals(str2) ? Arrays.asList("target_hero", "i", "cfd") : Collections.singletonList("counter"));
                byte[] m42d = m42d(task, str2);
                Iterator<String> it = BsonLite.keys(m42d).iterator();
                while (it.hasNext()) {
                    byte[] documentValue = BsonLite.documentValue(m42d, it.next());
                    z |= documentValue == null || !hashSet.contains(BsonLite.stringValue(documentValue, "0"));
                }
            }
            if (z) {
                result.profile = BsonLite.withProfileDocument(result.profile, "q7HomeWishRetiredTasks", BsonLite.withProfileDocument(m42d(result.profile, "q7HomeWishRetiredTasks"), str, task));
            }
        }
        byte[] m42d2 = m42d(result.profile, "tsd");
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr : LocalResourceEngine.array(m42d(m42d2, "td"))) {
            if (!str.equals(key(bArr))) {
                arrayList.add(new BsonLite.ArrayValue(bArr));
            }
        }
        byte[] withProfileArray = BsonLite.withProfileArray(m42d2, "td", arrayList);
        for (String str3 : Arrays.asList("ptl", "ctl")) {
            ArrayList arrayList2 = new ArrayList();
            byte[] m42d3 = m42d(withProfileArray, str3);
            Iterator<String> it2 = BsonLite.keys(m42d3).iterator();
            while (it2.hasNext()) {
                String uuidValue = BsonLite.uuidValue(m42d3, it2.next());
                require(uuidValue != null, "任务列表标识格式未知");
                if (!str.equals(uuidValue)) {
                    arrayList2.add(new BsonLite.UuidValue(uuidValue));
                }
            }
            withProfileArray = BsonLite.withProfileArray(withProfileArray, str3, arrayList2);
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "tsd", withProfileArray);
        result.add("syncDeleteTask", BsonLite.document("dtl", Collections.singletonList(new BsonLite.UuidValue(str))));
    }

    static void syncTask(LocalResourceEngine.Result result, String str) {
        result.add("syncTasks", BsonLite.document("uuids", Collections.singletonList(new BsonLite.UuidValue(str)), "to", Collections.singletonList(task(result.profile, str))));
    }

    static void syncMembership(LocalResourceEngine.Result result) {
        byte[] m42d = m42d(result.profile, "tsd");
        ArrayList arrayList = new ArrayList();
        Iterator<byte[]> it = LocalResourceEngine.array(m42d(m42d, "td")).iterator();
        while (it.hasNext()) {
            byte[] m42d2 = m42d(it.next(), "1");
            String uuidValue = BsonLite.uuidValue(m42d2, "uuid");
            require(uuidValue != null, "任务记录标识格式未知");
            arrayList.add(Arrays.asList(new BsonLite.UuidValue(uuidValue), m42d2));
        }
        result.add("syncTaskList", BsonLite.document("ptl", new BsonLite.ArrayValue(m42d(m42d, "ptl")), "ctl", new BsonLite.ArrayValue(m42d(m42d, "ctl")), "tpd", arrayList));
    }

    static void accept(LocalResourceEngine.Result result, String str, byte[] bArr) {
        Integer num = 0;
        require(m43v(bArr, "ct") > 0 && num.equals(BsonLite.intValue(bArr, "ft")) && num.equals(BsonLite.intValue(bArr, "rt")), "心愿任务无法领取");
        Integer intValue = BsonLite.intValue(bArr, "at");
        require(intValue != null && intValue.intValue() >= 0, "心愿领取记录格式未知");
        if (intValue.intValue() > 0) {
            require(!LocalHomeWishDailyEngine.ids(m42d(tasks(result.profile), "ptl")).contains(str) && LocalHomeWishDailyEngine.ids(m42d(tasks(result.profile), "ctl")).contains(str), "已领取心愿的任务列表不一致");
            return;
        }
        byte[] tasks = tasks(result.profile);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        HashSet hashSet = new HashSet();
        Iterator<String> it = BsonLite.keys(m42d(tasks, "ptl")).iterator();
        int i = 0;
        while (it.hasNext()) {
            String uuidValue = BsonLite.uuidValue(m42d(tasks, "ptl"), it.next());
            require(uuidValue != null && hashSet.add(uuidValue), "任务列表标识重复或格式未知");
            if (str.equals(uuidValue)) {
                i++;
            } else {
                arrayList.add(new BsonLite.UuidValue(uuidValue));
            }
        }
        require(i == 1, "待领取心愿缺少唯一的候选记录");
        HashSet hashSet2 = new HashSet();
        Iterator<String> it2 = BsonLite.keys(m42d(tasks, "ctl")).iterator();
        while (it2.hasNext()) {
            String uuidValue2 = BsonLite.uuidValue(m42d(tasks, "ctl"), it2.next());
            require((uuidValue2 == null || !hashSet2.add(uuidValue2) || str.equals(uuidValue2)) ? false : true, "任务领取列表重复或格式未知");
            arrayList2.add(new BsonLite.UuidValue(uuidValue2));
        }
        Integer intValue2 = BsonLite.intValue(bArr, "et");
        require(!BsonLite.keys(bArr).contains("et") || (intValue2 != null && intValue2.intValue() >= 0), "任务过期记录格式未知");
        long max = Math.max(1L, LocalStoryEnvironment.now() / 1000);
        require(max >= ((long) m43v(bArr, "ct")), "当前设备时间早于心愿创建时间");
        require(intValue2 == null || intValue2.intValue() == 0 || max <= ((long) m43v(bArr, "ct")) + ((long) intValue2.intValue()), "心愿任务已过期");
        arrayList2.add(new BsonLite.UuidValue(str));
        result.profile = BsonLite.withProfileDocument(result.profile, "tsd", BsonLite.withProfileArray(BsonLite.withProfileArray(tasks, "ptl", arrayList), "ctl", arrayList2));
        writeTask(result, str, BsonLite.withProfileInt(BsonLite.withProfileInt(bArr, "at", Math.toIntExact(max)), "ts", 2));
        syncMembership(result);
    }

    static void binding(byte[] bArr, int i, int i2) {
        require(BsonLite.arrayValue(bArr, "ext") != null, "心愿目标格式未知");
        HashSet hashSet = new HashSet();
        Integer num = null;
        Integer num2 = null;
        for (byte[] bArr2 : LocalResourceEngine.array(m42d(bArr, "ext"))) {
            String stringValue = BsonLite.stringValue(bArr2, "0");
            require(stringValue != null && hashSet.add(stringValue) && BsonLite.keys(bArr2).equals(Arrays.asList("0", "1")), "心愿目标重复或格式未知");
            if ("target_hero".equals(stringValue)) {
                num = BsonLite.intValue(bArr2, "1");
            }
            if ("i".equals(stringValue)) {
                num2 = BsonLite.intValue(bArr2, "1");
            }
        }
        require(num != null && num2 != null && num.intValue() == i && num2.intValue() == i2, "心愿目标与槽位不匹配");
    }

    static void setSlot(LocalResourceEngine.Result result, int i, byte[] bArr) {
        if (BsonLite.keys(bArr).isEmpty()) {
            bArr = slot(result.profile, i);
            Iterator it = Arrays.asList("h", "s", "t").iterator();
            while (it.hasNext()) {
                bArr = BsonLite.withProfileInt(bArr, (String) it.next(), 0);
            }
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "hhd", LocalHomeEngine.pairSet(home(result.profile), "tls", i, bArr));
        result.add("replyNewTaskLinkByHeroId", BsonLite.document("i", Integer.valueOf(i), "s", bArr));
    }

    static int normalTask(LocalFeatureCatalog localFeatureCatalog, int i, int i2) {
        byte[] bArr = localFeatureCatalog.get("WN", Integer.valueOf(i));
        require(bArr != null, "该神器使尚无原版心愿配置");
        for (byte[] bArr2 : LocalResourceEngine.array(m42d(bArr, "links"))) {
            if (m43v(bArr2, "0") == i2) {
                return m43v(bArr2, "1");
            }
        }
        throw new IllegalArgumentException("缺少原版心愿环节");
    }

    static byte[] create(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, int i, int i2, int i3, int i4) {
        require(localFeatureCatalog.get("WT", Integer.valueOf(i4)) != null && taskUuid(result.profile, i4) == null, "心愿任务配置缺失或已有重复任务");
        String uuid = LocalResourceEngine.uuid();
        int max = Math.max(1, (int) (LocalStoryEnvironment.now() / 1000));
        byte[] document = BsonLite.document("uuid", new BsonLite.UuidValue(uuid), "tid", Integer.valueOf(i4), "ct", Integer.valueOf(max), "at", Integer.valueOf(max), "ft", 0, "rt", 0, "ts", 2, "ext", Arrays.asList(Arrays.asList("target_hero", Integer.valueOf(i2)), Arrays.asList("i", Integer.valueOf(i)), Arrays.asList("cfd", 1)), "mi", Collections.singletonList(Arrays.asList("counter", 0)));
        writeTask(result, uuid, document);
        byte[] m42d = m42d(result.profile, "tsd");
        ArrayList arrayList = new ArrayList();
        byte[] m42d2 = m42d(m42d, "ctl");
        Iterator<String> it = BsonLite.keys(m42d2).iterator();
        while (it.hasNext()) {
            String uuidValue = BsonLite.uuidValue(m42d2, it.next());
            require(uuidValue != null, "任务列表标识格式未知");
            arrayList.add(new BsonLite.UuidValue(uuidValue));
        }
        arrayList.add(new BsonLite.UuidValue(uuid));
        result.profile = BsonLite.withProfileDocument(result.profile, "tsd", BsonLite.withProfileArray(m42d, "ctl", arrayList));
        syncMembership(result);
        setSlot(result, i, BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(slot(result.profile, i), "h", i2), "s", i3), "t", i4));
        return document;
    }

    static void next(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, int i, int i2, int i3) {
        int normalTask;
        int level = level(result.profile, i2);
        int experience = experience(result.profile, i2);
        if (level == 5) {
            setSlot(result, i, BsonLite.EMPTY_DOCUMENT);
            return;
        }
        int m43v = m43v(localFeatureCatalog.get("WX", Integer.valueOf(level)), "exp");
        require(m43v > 0, "缺少原版羁绊值上限");
        if (experience >= m43v) {
            int m43v2 = m43v(localFeatureCatalog.get("WS", i2 + ":" + level), "task");
            require(m43v2 > 0, "缺少原版羁绊突破配置");
            normalTask = m43v2;
        } else {
            normalTask = normalTask(localFeatureCatalog, i2, i3);
        }
        create(result, localFeatureCatalog, i, i2, i3, normalTask);
    }

    static void select(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr) {
        boolean z;
        int m43v = m43v(bArr, "i");
        int m43v2 = m43v(bArr, "h");
        require(m43v >= 1 && m43v <= slots(result.profile), "心愿槽位尚未开放");
        require(LocalResourceEngine.ownsHero(result.profile, m43v2) && localFeatureCatalog.get("WN", Integer.valueOf(m43v2)) != null, "未拥有该神器使或其心愿尚未开放");
        require(level(result.profile, m43v2) < 5, "该神器使羁绊等级已满");
        for (int i = 1; i <= 3; i++) {
            require(m43v(slot(result.profile, i), "h") != m43v2, "该神器使已有心愿任务");
        }
        byte[] home = home(result.profile);
        if (!LocalHomeEngine.pairs(home, "hhl").containsKey(Integer.valueOf(m43v2))) {
            home = LocalHomeEngine.pairSet(home, "hhl", m43v2, 1);
            z = true;
        } else {
            z = false;
        }
        if (!LocalHomeEngine.pairs(home, "hhe").containsKey(Integer.valueOf(m43v2))) {
            home = LocalHomeEngine.pairSet(home, "hhe", m43v2, 0);
            z = true;
        }
        if (z) {
            result.profile = BsonLite.withProfileDocument(result.profile, "hhd", home);
            syncHappiness(result, result.profile);
        }
        byte[] slot = slot(result.profile, m43v);
        if (m43v(slot, "t") > 0) {
            String taskUuid = taskUuid(result.profile, m43v(slot, "t"));
            require(taskUuid != null, "现有心愿缺少任务记录，保留原进度");
            removeTask(result, taskUuid);
        }
        next(result, localFeatureCatalog, m43v, m43v2, m43v(localFeatureCatalog.get("WN", Integer.valueOf(m43v2)), "idx"));
    }

    static void syncHappiness(LocalResourceEngine.Result result, byte[] bArr) {
        byte[] home = home(bArr);
        Iterator it = Arrays.asList("hhe", "hhl", "hehe").iterator();
        while (it.hasNext()) {
            numericPairs(home, (String) it.next());
        }
        result.add("syncHeroHomeHappiness", BsonLite.document("hhe", new BsonLite.ArrayValue(m42d(home, "hhe")), "hhl", new BsonLite.ArrayValue(m42d(home, "hhl")), "hehe", new BsonLite.ArrayValue(m42d(home, "hehe"))));
    }

    static byte[] cached(byte[] bArr, String str) {
        byte[] documentValue = BsonLite.documentValue(home(bArr), str);
        if (documentValue != null && BsonLite.arrayValue(home(bArr), str) == null) {
            return documentValue;
        }
        require((BsonLite.keys(home(bArr)).contains(str) && documentValue == null) ? false : true, "心愿奖励缓存格式未知");
        byte[] bArr2 = BsonLite.EMPTY_DOCUMENT;
        for (byte[] bArr3 : LocalResourceEngine.array(m42d(home(bArr), str))) {
            String stringValue = BsonLite.stringValue(bArr3, "0");
            require(stringValue != null, "心愿奖励缓存格式未知");
            require(!BsonLite.keys(bArr2).contains(stringValue), "心愿奖励缓存字段重复");
            bArr2 = BsonLite.withCopiedValue(bArr2, stringValue, bArr3, "1");
        }
        return bArr2;
    }

    static void saveCache(LocalResourceEngine.Result result, byte[] bArr) {
        saveCache(result, "rc", bArr);
    }

    static void saveCache(LocalResourceEngine.Result result, String str, byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : BsonLite.keys(bArr)) {
            arrayList.add(new BsonLite.ArrayValue(BsonLite.withCopiedValue(BsonLite.document("0", str2), "1", bArr, str2)));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "hhd", BsonLite.withProfileArray(home(result.profile), str, arrayList));
    }

    static void cache(LocalResourceEngine.Result result, List<List<Integer>> list) {
        cache(result, "rc", list);
    }

    static void cache(LocalResourceEngine.Result result, String str, List<List<Integer>> list) {
        byte[] cached = cached(result.profile, str);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<byte[]> it = LocalResourceEngine.array(m42d(cached, "item")).iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            byte[] next = it.next();
            if (m43v(next, "0") <= 0 || ("rc".equals(str) && m43v(next, "1") <= 0)) {
                z = false;
            }
            require(z, "心愿奖励缓存无效");
            linkedHashMap.merge(Integer.valueOf(m43v(next, "0")), Integer.valueOf(m43v(next, "1")), new BiFunction() { // from class: com.project7.localmanager.LocalHomeWishEngine$$ExternalSyntheticLambda0
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Integer.valueOf(Math.addExact(((Integer) obj).intValue(), ((Integer) obj2).intValue()));
                }
            });
        }
        for (List<Integer> list2 : list) {
            linkedHashMap.merge(list2.get(0), list2.get(1), new BiFunction() { // from class: com.project7.localmanager.LocalHomeWishEngine$$ExternalSyntheticLambda0
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Integer.valueOf(Math.addExact(((Integer) obj).intValue(), ((Integer) obj2).intValue()));
                }
            });
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(Arrays.asList((Integer) entry.getKey(), (Integer) entry.getValue()));
        }
        saveCache(result, str, BsonLite.withProfileArray(cached, "item", arrayList));
    }

    static void rewardNotice(LocalResourceEngine.Result result, int i, int i2, boolean z) {
        result.add("replyDoneWishTask", BsonLite.document("r", cached(result.profile, "rc"), "a", cached(result.profile, "rac"), "c", BsonLite.document("i", Integer.valueOf(i), "s", Integer.valueOf(i2), "f", Boolean.valueOf(z))));
    }

    static void normalDone(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, int i) {
        byte[] slot = slot(result.profile, i);
        int m43v = m43v(slot, "h");
        int m43v2 = m43v(slot, "t");
        String str = "s";
        int m43v3 = m43v(slot, "s");
        String taskUuid = taskUuid(result.profile, m43v2);
        byte[] task = taskUuid == null ? null : task(result.profile, taskUuid);
        require(task != null && m43v(task, "at") > 0 && m43v(task, "rt") == 0 && m43v(localFeatureCatalog.get("WT", Integer.valueOf(m43v2)), "group") == 1 && normalTask(localFeatureCatalog, m43v, m43v3) == m43v2, "当前心愿无法完成");
        require(LocalResourceEngine.ownsHero(result.profile, m43v) && level(result.profile, m43v) < 5, "神器使或羁绊状态无效");
        int pairInt = pairInt(home(result.profile), "hxq", m43v, 0);
        double d = 1.0d;
        if (pairInt != 0) {
            Number numericValue = BsonLite.numericValue(localFeatureCatalog.get("WP", Integer.valueOf(pairInt)), "para");
            require(numericValue != null && numericValue.doubleValue() > 0.0d, "心情倍率配置未知");
            d = numericValue.doubleValue();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        byte[] bArr = localFeatureCatalog.get("WR", Integer.valueOf(m43v2));
        require(bArr != null, "缺少原版羁绊奖励");
        Iterator<byte[]> it = LocalResourceEngine.array(m42d(bArr, "grants")).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            byte[] next = it.next();
            Iterator<byte[]> it2 = it;
            String str2 = str;
            require(m43v(next, "hero") == m43v && m43v(next, "count") > 0, "羁绊奖励与神器使不匹配");
            int i3 = m43v3;
            int floor = (int) Math.floor(m43v(next, "count") * d);
            require(floor > 0, "羁绊奖励配置无效");
            i2 = Math.addExact(i2, floor);
            arrayList.add(Arrays.asList(Integer.valueOf(m43v(next, "item")), Integer.valueOf(m43v(next, "count"))));
            arrayList2.add(Arrays.asList(Integer.valueOf(m43v(next, "item")), Integer.valueOf(floor - m43v(next, "count"))));
            m43v3 = i3;
            it = it2;
            str = str2;
        }
        int i4 = m43v3;
        String str3 = str;
        require(i2 > 0, "缺少原版羁绊奖励");
        addExperience(result, localFeatureCatalog, m43v, i2);
        cache(result, arrayList);
        cache(result, "rac", arrayList2);
        removeTask(result, taskUuid);
        next(result, localFeatureCatalog, i, m43v, i4 == 7 ? 1 : i4 + 1);
        syncHappiness(result, result.profile);
        rewardNotice(result, i, m43v(slot(result.profile, i), str3), false);
    }

    static boolean specialMet(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, int i) {
        byte[] bArr2 = localFeatureCatalog.get("WT", Integer.valueOf(i));
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, "para");
        if (m43v(bArr2, "group") != 2 || intArrayValues.isEmpty()) {
            return false;
        }
        byte[] profileHeroDocument = BsonLite.profileHeroDocument(bArr, intArrayValues.get(0).intValue());
        if (BsonLite.keys(profileHeroDocument).isEmpty()) {
            return false;
        }
        if (m43v(bArr2, "type") == 28) {
            return Boolean.TRUE.equals(BsonLite.boolValue(profileHeroDocument, "fd"));
        }
        if (intArrayValues.size() < 3 || intArrayValues.get(2).intValue() != 1) {
            return false;
        }
        return m43v(bArr2, "type") == 25 ? m43v(profileHeroDocument, "ls") + 1 >= intArrayValues.get(1).intValue() : m43v(bArr2, "type") == 24 && Boolean.TRUE.equals(BsonLite.boolValue(profileHeroDocument, "oa")) && m43v(m42d(profileHeroDocument, "ar"), "o") >= intArrayValues.get(1).intValue();
    }

    static void refresh(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, boolean z) {
        if (BsonLite.keys(m42d(home(result.profile), "tls")).isEmpty()) {
            return;
        }
        for (int i = 1; i <= 3; i++) {
            byte[] bArr = result.profile;
            int size = result.replies.size();
            try {
                byte[] slot = slot(result.profile, i);
                int m43v = m43v(slot, "h");
                int m43v2 = m43v(slot, "t");
                if (m43v2 != 0 && LocalResourceEngine.ownsHero(result.profile, m43v) && specialMet(result.profile, localFeatureCatalog, m43v2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(m43v);
                    sb.append(":");
                    sb.append(level(result.profile, m43v));
                    require(m43v(localFeatureCatalog.get("WS", sb.toString()), "task") == m43v2, "羁绊突破任务与等级不匹配");
                    require(level(result.profile, m43v) < 5 && experience(result.profile, m43v) >= m43v(localFeatureCatalog.get("WX", Integer.valueOf(level(result.profile, m43v))), "exp"), "羁绊值尚未达到突破门槛");
                    String taskUuid = taskUuid(result.profile, m43v2);
                    require(taskUuid != null, "心愿任务记录缺失");
                    byte[] task = task(result.profile, taskUuid);
                    if (m43v(task, "at") != 0 && m43v(task, "ft") == 0 && m43v(task, "rt") == 0) {
                        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileInt(task, "ft", Math.max(1, (int) (LocalStoryEnvironment.now() / 1000))), "ts", 3);
                        writeTask(result, taskUuid, withProfileInt);
                        if (z) {
                            syncTask(result, taskUuid);
                            result.add("replyFinishSpecialTask", BsonLite.document("t", withProfileInt, "i", new BsonLite.UuidValue(taskUuid)));
                        }
                    }
                }
            } catch (ArithmeticException | IllegalArgumentException e) {
                result.profile = bArr;
                while (result.replies.size() > size) {
                    result.replies.remove(result.replies.size() - 1);
                }
                LocalDiagnosticLog.m16i("Project7Gateway", "Home wish preserved slot=" + i + " reason=" + e.getMessage());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void specialReward(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, int i) {
        boolean z;
        boolean z2;
        long storedExperience;
        int min;
        int i2;
        int i3;
        byte[] number;
        byte[] slot = slot(result.profile, i);
        int m43v = m43v(slot, "h");
        int m43v2 = m43v(slot, "t");
        int level = level(result.profile, m43v);
        String taskUuid = taskUuid(result.profile, m43v2);
        byte[] task = taskUuid == null ? null : task(result.profile, taskUuid);
        if (task != null && m43v(task, "ft") > 0 && m43v(task, "rt") == 0 && specialMet(result.profile, localFeatureCatalog, m43v2)) {
            if (m43v(localFeatureCatalog.get("WS", m43v + ":" + level), "task") == m43v2) {
                z = true;
                require(z, "羁绊突破任务尚未完成");
                if (level < 5 && experience(result.profile, m43v) >= m43v(localFeatureCatalog.get("WX", Integer.valueOf(level)), "exp")) {
                    if (localFeatureCatalog.get("WA", m43v + ":" + level) != null) {
                        z2 = true;
                        require(z2, "羁绊值或突破配置未满足要求");
                        storedExperience = (storedExperience(result.profile, m43v) + experience(result.profile, m43v)) - m43v(localFeatureCatalog.get("WX", Integer.valueOf(level)), "exp");
                        require(storedExperience >= 0, "羁绊值格式未知");
                        min = (int) Math.min(20000L, storedExperience);
                        i2 = level + 1;
                        if (i2 < 5) {
                            int m43v3 = m43v(localFeatureCatalog.get("WX", Integer.valueOf(i2)), "exp");
                            require(m43v3 > 0, "缺少原版羁绊值上限");
                            i3 = Math.min(min, m43v3);
                            min -= i3;
                        } else {
                            i3 = 0;
                        }
                        syncHappiness(result, result.profile);
                        number = setNumber(setNumber(home(result.profile), "hhl", m43v, i2), "hhe", m43v, i3);
                        if (storedExperience <= 0 || numericPairs(number, "hehe").containsKey(Integer.valueOf(m43v))) {
                            number = setNumber(number, "hehe", m43v, min);
                        }
                        result.profile = BsonLite.withProfileDocument(result.profile, "hhd", number);
                        removeTask(result, taskUuid);
                        next(result, localFeatureCatalog, i, m43v, m43v(slot, "s"));
                        result.add("syncHeroHappinessLevelUp", BsonLite.document("h", Integer.valueOf(m43v)));
                        if (storedExperience > 0) {
                            syncHappiness(result, result.profile);
                        }
                        rewardNotice(result, i, m43v(slot(result.profile, i), "s"), i2 == 5);
                    }
                }
                z2 = false;
                require(z2, "羁绊值或突破配置未满足要求");
                storedExperience = (storedExperience(result.profile, m43v) + experience(result.profile, m43v)) - m43v(localFeatureCatalog.get("WX", Integer.valueOf(level)), "exp");
                require(storedExperience >= 0, "羁绊值格式未知");
                min = (int) Math.min(20000L, storedExperience);
                i2 = level + 1;
                if (i2 < 5) {
                }
                syncHappiness(result, result.profile);
                number = setNumber(setNumber(home(result.profile), "hhl", m43v, i2), "hhe", m43v, i3);
                if (storedExperience <= 0) {
                }
                number = setNumber(number, "hehe", m43v, min);
                result.profile = BsonLite.withProfileDocument(result.profile, "hhd", number);
                removeTask(result, taskUuid);
                next(result, localFeatureCatalog, i, m43v, m43v(slot, "s"));
                result.add("syncHeroHappinessLevelUp", BsonLite.document("h", Integer.valueOf(m43v)));
                if (storedExperience > 0) {
                }
                rewardNotice(result, i, m43v(slot(result.profile, i), "s"), i2 == 5);
            }
        }
        z = false;
        require(z, "羁绊突破任务尚未完成");
        if (level < 5) {
            if (localFeatureCatalog.get("WA", m43v + ":" + level) != null) {
            }
        }
        z2 = false;
        require(z2, "羁绊值或突破配置未满足要求");
        storedExperience = (storedExperience(result.profile, m43v) + experience(result.profile, m43v)) - m43v(localFeatureCatalog.get("WX", Integer.valueOf(level)), "exp");
        require(storedExperience >= 0, "羁绊值格式未知");
        min = (int) Math.min(20000L, storedExperience);
        i2 = level + 1;
        if (i2 < 5) {
        }
        syncHappiness(result, result.profile);
        number = setNumber(setNumber(home(result.profile), "hhl", m43v, i2), "hhe", m43v, i3);
        if (storedExperience <= 0) {
        }
        number = setNumber(number, "hehe", m43v, min);
        result.profile = BsonLite.withProfileDocument(result.profile, "hhd", number);
        removeTask(result, taskUuid);
        next(result, localFeatureCatalog, i, m43v, m43v(slot, "s"));
        result.add("syncHeroHappinessLevelUp", BsonLite.document("h", Integer.valueOf(m43v)));
        if (storedExperience > 0) {
        }
        rewardNotice(result, i, m43v(slot(result.profile, i), "s"), i2 == 5);
    }

    static int counter(byte[] bArr) {
        require((BsonLite.keys(bArr).contains("mi") && BsonLite.arrayValue(bArr, "mi") == null) ? false : true, "心愿计数格式未知");
        Integer num = null;
        byte[] m42d = m42d(bArr, "mi");
        Iterator<String> it = BsonLite.keys(m42d).iterator();
        while (it.hasNext()) {
            byte[] documentValue = BsonLite.documentValue(m42d, it.next());
            require(documentValue != null, "心愿计数格式未知");
            if ("counter".equals(BsonLite.stringValue(documentValue, "0"))) {
                Integer intValue = BsonLite.intValue(documentValue, "1");
                require(num == null && intValue != null && intValue.intValue() >= 0, "心愿计数重复或格式未知");
                num = intValue;
            }
        }
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    static void count(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, int i, List<Integer> list, int i2) {
        count(result, localFeatureCatalog, i, list, i2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void count(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, int i, List<Integer> list, int i2, byte[] bArr) {
        int i3 = 0;
        int i4 = 1;
        require(i2 > 0, "心愿计数无效");
        int i5 = 1;
        while (i5 <= 3) {
            byte[] slot = slot(result.profile, i5);
            int m43v = m43v(slot, "h");
            int m43v2 = m43v(slot, "t");
            byte[] bArr2 = localFeatureCatalog.get("WT", Integer.valueOf(m43v2));
            if (m43v(bArr2, "group") == i4 && m43v(bArr2, "type") == i) {
                if (list.contains(Integer.valueOf(m43v))) {
                    String taskUuid = taskUuid(result.profile, m43v2);
                    require(taskUuid != null ? i4 : i3, "心愿任务记录缺失");
                    byte[] task = task(result.profile, taskUuid);
                    if ((bArr == null || taskUuid.equals(BsonLite.stringValue(bArr, Integer.toString(i5)))) && m43v(task, "at") != 0 && m43v(task, "ft") == 0 && m43v(task, "rt") == 0) {
                        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, "para");
                        require((intArrayValues.size() < 2 || !(intArrayValues.get(i3).intValue() == 0 || intArrayValues.get(i3).intValue() == m43v) || intArrayValues.get(i4).intValue() <= 0) ? i3 : i4, "心愿目标配置缺失");
                        int min = Math.min(intArrayValues.get(i4).intValue(), Math.addExact(counter(task), i2));
                        ArrayList arrayList = new ArrayList();
                        for (byte[] bArr3 : LocalResourceEngine.array(m42d(task, "mi"))) {
                            if (!"counter".equals(BsonLite.stringValue(bArr3, "0"))) {
                                arrayList.add(new BsonLite.ArrayValue(bArr3));
                            }
                        }
                        arrayList.add(Arrays.asList("counter", Integer.valueOf(min)));
                        writeTask(result, taskUuid, BsonLite.withProfileArray(task, "mi", arrayList));
                        if (min >= intArrayValues.get(1).intValue()) {
                            normalDone(result, localFeatureCatalog, i5);
                        } else {
                            syncTask(result, taskUuid);
                        }
                    }
                }
                i5++;
                i3 = 0;
                i4 = 1;
            }
            i5++;
            i3 = 0;
            i4 = 1;
        }
        refresh(result, localFeatureCatalog, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0176 A[LOOP:1: B:70:0x016e->B:72:0x0176, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void dailyChanged(LocalResourceEngine.Result result, byte[] bArr, LocalFeatureCatalog localFeatureCatalog) {
        int i;
        byte[] m42d = m42d(bArr, "q7DailyBattle");
        byte[] m42d2 = m42d(result.profile, "q7DailyBattle");
        boolean equals = Boolean.TRUE.equals(BsonLite.boolValue(m42d, "active"));
        boolean equals2 = Boolean.TRUE.equals(BsonLite.boolValue(m42d2, "active"));
        if (!equals && equals2) {
            byte[] bArr2 = BsonLite.EMPTY_DOCUMENT;
            for (int i2 = 1; i2 <= 3; i2++) {
                try {
                    int m43v = m43v(slot(result.profile, i2), "t");
                    String taskUuid = m43v == 0 ? null : taskUuid(result.profile, m43v);
                    if (taskUuid != null) {
                        bArr2 = BsonLite.withProfileString(bArr2, Integer.toString(i2), taskUuid);
                    }
                } catch (IllegalArgumentException e) {
                    LocalDiagnosticLog.m16i("Project7Gateway", "Home wish admission preserved slot=" + i2);
                }
            }
            if (!BsonLite.keys(bArr2).isEmpty()) {
                result.profile = BsonLite.withProfileDocument(result.profile, "q7HomeWishBattle", BsonLite.document("f", BsonLite.stringValue(m42d2, "f"), "tasks", bArr2));
            }
        } else if (equals && !equals2 && !Arrays.equals(bArr, result.profile)) {
            byte[] m42d3 = m42d(bArr, "q7HomeWishBattle");
            String stringValue = BsonLite.stringValue(m42d, "f");
            if (stringValue == null || !stringValue.equals(BsonLite.stringValue(m42d3, "f"))) {
                return;
            }
            boolean isEmpty = BsonLite.keys(m42d2).isEmpty();
            if (!isEmpty && (!stringValue.equals(BsonLite.stringValue(m42d2, "f")) || BsonLite.documentValue(m42d2, "reply") == null)) {
                return;
            }
            boolean z = (isEmpty || m43v(m42d(m42d2, "reply"), "w") == 0) ? false : true;
            List<Integer> intArrayValues = BsonLite.intArrayValues(m42d, "h");
            Integer intValue = BsonLite.intValue(m42d, z ? "wishCost" : "wishFailCost");
            byte[] m42d4 = m42d(m42d3, "tasks");
            byte[] bArr3 = result.profile;
            int size = result.replies.size();
            if (intValue != null) {
                try {
                } catch (ArithmeticException e2) {
                    e = e2;
                    i = size;
                    result.profile = bArr3;
                    while (result.replies.size() > i) {
                        result.replies.remove(result.replies.size() - 1);
                    }
                    LocalDiagnosticLog.m16i("Project7Gateway", "Home wish settlement preserved reason=" + e.getMessage());
                    result.profile = BsonLite.withoutProfileKey(result.profile, "q7HomeWishBattle");
                    refresh(result, localFeatureCatalog, true);
                } catch (IllegalArgumentException e3) {
                    e = e3;
                    i = size;
                    result.profile = bArr3;
                    while (result.replies.size() > i) {
                    }
                    LocalDiagnosticLog.m16i("Project7Gateway", "Home wish settlement preserved reason=" + e.getMessage());
                    result.profile = BsonLite.withoutProfileKey(result.profile, "q7HomeWishBattle");
                    refresh(result, localFeatureCatalog, true);
                }
                if (intValue.intValue() > 0) {
                    i = size;
                    try {
                        count(result, localFeatureCatalog, 81, intArrayValues, intValue.intValue(), m42d4);
                        if (z && m43v(m42d, "t") == 5) {
                            count(result, localFeatureCatalog, 11, intArrayValues, 1, m42d4);
                        }
                        if (z && m43v(m42d, "t") == 7) {
                            count(result, localFeatureCatalog, 3, intArrayValues, 1, m42d4);
                        }
                        if (z && m43v(m42d, "t") == 10) {
                            count(result, localFeatureCatalog, 4, intArrayValues, 1, m42d4);
                        }
                    } catch (ArithmeticException e4) {
                        e = e4;
                        result.profile = bArr3;
                        while (result.replies.size() > i) {
                        }
                        LocalDiagnosticLog.m16i("Project7Gateway", "Home wish settlement preserved reason=" + e.getMessage());
                        result.profile = BsonLite.withoutProfileKey(result.profile, "q7HomeWishBattle");
                        refresh(result, localFeatureCatalog, true);
                    } catch (IllegalArgumentException e5) {
                        e = e5;
                        result.profile = bArr3;
                        while (result.replies.size() > i) {
                        }
                        LocalDiagnosticLog.m16i("Project7Gateway", "Home wish settlement preserved reason=" + e.getMessage());
                        result.profile = BsonLite.withoutProfileKey(result.profile, "q7HomeWishBattle");
                        refresh(result, localFeatureCatalog, true);
                    }
                    result.profile = BsonLite.withoutProfileKey(result.profile, "q7HomeWishBattle");
                }
            }
            i = size;
            if (z) {
                count(result, localFeatureCatalog, 11, intArrayValues, 1, m42d4);
            }
            if (z) {
                count(result, localFeatureCatalog, 3, intArrayValues, 1, m42d4);
            }
            if (z) {
                count(result, localFeatureCatalog, 4, intArrayValues, 1, m42d4);
            }
            result.profile = BsonLite.withoutProfileKey(result.profile, "q7HomeWishBattle");
        }
        refresh(result, localFeatureCatalog, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:198:0x04b9, code lost:
    
        if (m43v(r18.get("WS", r13 + ":" + level(r17.profile, r13)), "task") == r4) goto L180;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void apply(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr) {
        String str2;
        boolean z;
        String taskUuid;
        if ("requestNewTaskLinkByHeroId".equals(str)) {
            select(result, localFeatureCatalog, bArr);
        } else {
            String str3 = "i";
            if ("requestCompleteWishTask".equals(str)) {
                int m43v = m43v(bArr, "i");
                byte[] slot = slot(result.profile, m43v);
                int m43v2 = m43v(slot, "s");
                require(m43v >= 1 && m43v <= slots(result.profile), "心愿槽位无效");
                byte[] bArr2 = localFeatureCatalog.get("WQ", Integer.valueOf(m43v2));
                require(m43v(bArr2, "item") > 0 && m43v(bArr2, "amount") > 0, "缺少原版心愿费用");
                String taskUuid2 = taskUuid(result.profile, m43v(slot, "t"));
                byte[] task = taskUuid2 == null ? null : task(result.profile, taskUuid2);
                require(task != null && m43v(task, "ft") == 0, "当前心愿不能快捷完成");
                LocalGiftEngine.consume(result, m43v(bArr2, "item"), m43v(bArr2, "amount"));
                normalDone(result, localFeatureCatalog, m43v);
                result.add("replyCompleteWishTask", BsonLite.document("r", true, "i", Integer.valueOf(m43v), "t", new BsonLite.UuidValue(taskUuid2)));
            } else if ("requestGetHeroHomeSpecialReward".equals(str)) {
                int m43v3 = m43v(bArr, "i");
                require(m43v3 >= 0 && m43v3 <= 3, "心愿槽位无效");
                for (int i = 1; i <= 3; i++) {
                    if (m43v3 == 0 || m43v3 == i) {
                        byte[] slot2 = slot(result.profile, i);
                        if (m43v(slot2, "t") != 0 && (taskUuid = taskUuid(result.profile, m43v(slot2, "t"))) != null && m43v(localFeatureCatalog.get("WT", Integer.valueOf(m43v(slot2, "t"))), "group") == 2 && m43v(task(result.profile, taskUuid), "ft") > 0) {
                            specialReward(result, localFeatureCatalog, i);
                        }
                    }
                }
            } else if ("processClientTask".equals(str)) {
                if (m43v(bArr, "tfid") != 8) {
                    LocalDiagnosticLog.m16i("Project7Gateway", "Home client task has no supported counter tfid=" + m43v(bArr, "tfid"));
                } else {
                    List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "pl");
                    require(intArrayValues.size() == 1 && LocalResourceEngine.ownsHero(result.profile, intArrayValues.get(0).intValue()) && LocalHomeEngine.pairs(home(result.profile), "hri").containsKey(intArrayValues.get(0)), "请在对应神器使房间交流");
                    count(result, localFeatureCatalog, 8, intArrayValues, 1);
                }
            } else if ("requestHeroHomeWishMoney".equals(str)) {
                ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(home(result.profile), "dxqr"));
                require(arrayList.size() == 3 && ((Integer) arrayList.get(0)).intValue() == 0 && ((Integer) arrayList.get(2)).intValue() > 0, "今日心愿币尚不可领取或已领取");
                Iterator<byte[]> it = LocalHomeEngine.pairs(home(result.profile), "fi").values().iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    i2 += BsonLite.intArrayValues(it.next(), "1").size();
                }
                require(((long) LocalHeroGrowthEngine.count(result.profile, 11404)) < ((long) i2) * 1000, "心愿币达到房间上限");
                LocalResourceEngine.grant(result, localResourceCatalog, "item", 11404, ((Integer) arrayList.get(2)).intValue(), 1);
                arrayList.set(0, 1);
                result.profile = BsonLite.withProfileDocument(result.profile, "hhd", BsonLite.withProfileArray(home(result.profile), "dxqr", arrayList));
                result.add("replyHeroHomeWishMoney", BsonLite.document("r", result.reward(), "i", arrayList));
            } else if ("requestShowTaskLinkResult".equals(str)) {
                Boolean boolValue = BsonLite.boolValue(bArr, "v");
                Integer intValue = BsonLite.intValue(bArr, "v");
                require(boolValue != null || (intValue != null && (intValue.intValue() == 0 || intValue.intValue() == 1)), "心愿提示设置无效");
                result.profile = BsonLite.withProfileDocument(result.profile, "hhd", BsonLite.withProfileInt(home(result.profile), "sf", boolValue == null ? intValue.intValue() : boolValue.booleanValue() ? 1 : 0));
            } else if ("requestHeroHomeMark".equals(str)) {
                require(m43v(bArr, "i") == 1, "家园引导标记无效");
                result.profile = BsonLite.withProfileDocument(result.profile, "hhd", BsonLite.withProfileInt(home(result.profile), "fm", 1));
            } else if ("updateHeroHomeRed".equals(str)) {
                result.profile = BsonLite.withProfileDocument(result.profile, "hhd", BsonLite.withProfileBool(home(result.profile), "ir", false));
            } else if ("clearHeroHomeTaskReward".equals(str)) {
                saveCache(result, BsonLite.withoutProfileKey(cached(result.profile, "rc"), "item"));
                saveCache(result, "rac", BsonLite.withoutProfileKey(cached(result.profile, "rac"), "item"));
            } else if ("clearHeroHomeRecordHistory".equals(str)) {
                Iterator<byte[]> it2 = LocalHomeEngine.pairs(home(result.profile), "rh").values().iterator();
                while (it2.hasNext()) {
                    require(BsonLite.intArrayValues(it2.next(), "1").size() == 2, "家园历史记录格式未知");
                }
                result.profile = BsonLite.withProfileDocument(result.profile, "hhd", BsonLite.withProfileArray(home(result.profile), "rh", Collections.emptyList()));
            } else {
                String uuidValue = BsonLite.uuidValue(bArr, "taskUuid");
                require(uuidValue != null, "心愿任务标识无效");
                byte[] task2 = task(result.profile, uuidValue);
                require(task2 != null, "心愿任务已结束或不存在");
                int i3 = 0;
                int i4 = 1;
                while (true) {
                    str2 = str3;
                    if (i4 > 3) {
                        break;
                    }
                    if (m43v(slot(result.profile, i4), "t") == m43v(task2, "tid")) {
                        i3 = i4;
                    }
                    i4++;
                    str3 = str2;
                }
                require(i3 != 0 && m43v(localFeatureCatalog.get("WT", Integer.valueOf(m43v(task2, "tid"))), "group") > 0, "该请求不是家园心愿任务");
                if ("requestGetTaskReward".equals(str)) {
                    require(m43v(task2, "ft") > 0 && m43v(task2, "rt") == 0, "心愿任务尚未完成");
                    if (m43v(localFeatureCatalog.get("WT", Integer.valueOf(m43v(task2, "tid"))), "group") == 2) {
                        specialReward(result, localFeatureCatalog, i3);
                    } else {
                        normalDone(result, localFeatureCatalog, i3);
                    }
                } else if ("requestGiveUpTask".equals(str)) {
                    removeTask(result, uuidValue);
                    setSlot(result, i3, BsonLite.EMPTY_DOCUMENT);
                } else {
                    byte[] slot3 = slot(result.profile, i3);
                    int m43v4 = m43v(slot3, "h");
                    int m43v5 = m43v(task2, "tid");
                    binding(task2, m43v4, i3);
                    require(LocalResourceEngine.ownsHero(result.profile, m43v4) && level(result.profile, m43v4) < 5, "心愿角色未拥有或羁绊已满级");
                    if (m43v(localFeatureCatalog.get("WT", Integer.valueOf(m43v5)), "group") != 1 || normalTask(localFeatureCatalog, m43v4, m43v(slot3, "s")) != m43v5) {
                        if (m43v(localFeatureCatalog.get("WT", Integer.valueOf(m43v5)), "group") == 2) {
                        }
                        z = false;
                        require(z, "心愿与神器使配置不匹配");
                        accept(result, uuidValue, task2);
                    }
                    z = true;
                    require(z, "心愿与神器使配置不匹配");
                    accept(result, uuidValue, task2);
                }
                result.add("requestGetTaskReward".equals(str) ? "replyGetTaskReward" : "requestGiveUpTask".equals(str) ? "replyGiveUpTask" : "replyGetTask", BsonLite.document("r", true, str2, BsonLite.document("taskUuid", new BsonLite.UuidValue(uuidValue), "r", BsonLite.EMPTY_DOCUMENT, "show", 0, "ad", true)));
            }
        }
        refresh(result, localFeatureCatalog, true);
    }

    static void enter(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog) {
        if (!BsonLite.keys(m42d(home(result.profile), "tls")).isEmpty()) {
            syncMembership(result);
        }
        if (!BsonLite.keys(m42d(cached(result.profile, "rc"), "item")).isEmpty()) {
            rewardNotice(result, 0, 0, false);
        }
        refresh(result, localFeatureCatalog, true);
        for (int i = 1; i <= 3; i++) {
            try {
                byte[] slot = slot(result.profile, i);
                int m43v = m43v(slot, "t");
                int m43v2 = m43v(slot, "h");
                if (m43v(localFeatureCatalog.get("WT", Integer.valueOf(m43v)), "group") == 2 && specialMet(result.profile, localFeatureCatalog, m43v) && level(result.profile, m43v2) < 5) {
                    if (m43v(localFeatureCatalog.get("WS", m43v2 + ":" + level(result.profile, m43v2)), "task") == m43v && experience(result.profile, m43v2) >= m43v(localFeatureCatalog.get("WX", Integer.valueOf(level(result.profile, m43v2))), "exp")) {
                        String taskUuid = taskUuid(result.profile, m43v);
                        byte[] task = taskUuid == null ? null : task(result.profile, taskUuid);
                        if (task != null && m43v(task, "at") != 0 && m43v(task, "ft") != 0 && m43v(task, "rt") == 0) {
                            boolean z = false;
                            for (LocalResourceEngine.Reply reply : result.replies) {
                                if ("replyFinishSpecialTask".equals(reply.method) && taskUuid.equals(BsonLite.uuidValue(reply.parameters, "i"))) {
                                    z = true;
                                }
                            }
                            if (!z) {
                                result.add("replyFinishSpecialTask", BsonLite.document("t", task, "i", new BsonLite.UuidValue(taskUuid)));
                            }
                        }
                    }
                }
            } catch (IllegalArgumentException e) {
                LocalDiagnosticLog.m16i("Project7Gateway", "Home wish entry preserved slot=" + i);
            }
        }
    }
}
