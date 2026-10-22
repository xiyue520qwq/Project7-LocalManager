package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceCatalog;
import com.project7.localmanager.LocalResourceEngine;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.function.Function;

/* loaded from: classes.dex */
final class LocalHomeEngine {
    static final String CALLBACK = "q7HomeCallback";
    static final String[] METHODS = {"requestEnterHeroHome", "requestBuyRoom", "requestHeroEnterRoom", "requestHeroEnterRoomBatch", "requestChangeMainHomeHero", "requestRoomBaseInfo", "createFurnitureScheme", "switchFurnitureScheme", "generaSchemeType", "saveFurnitureScheme", "getServerOneSchemeData", "getServerOneFurnitureData", "canAddFurnitureToScheme", "changeFurnitureEffState", "renameRoom", "modifyVisitSet", "modifyXinwuSet", "requestCheckLuckyDrawFurnitureOpen", "requestLuckyDrawFurnitureCard", "requestLuckyDrawFurnitureLianchouCard", "sellFurnitureByID", "sellFurnitureByItemList", "doBuyFurniture", "doAddSawFurniture", "addKnownFurnitureScheme", "requestBuyMusicByMusicCoin", "requestSetHeroHomeCurMusic", "requestRoomJiejingOpen", "calcCrystal", "activeSkill", "upgradeSkill", "breakSkill", "swapSkillOption", "upRoomLevel", "requestGiveRoomGift", "requestGiveHeroSpecialGift", "requestNewTaskLinkByHeroId", "requestCompleteWishTask", "requestGetHeroHomeSpecialReward", "requestHeroHomeWishMoney", "requestShowTaskLinkResult", "clearHeroHomeTaskReward", "requestAddHeroHomeResource", "requestSaveHeroCamera", "clearHeroHomeRecordHistory", "requestHeroHomeMark", "updateHeroHomeRed", "processClientTask", "requestGetTask", "requestGetTaskReward", "requestGiveUpTask"};
    private static final Random RANDOM = new SecureRandom();

    LocalHomeEngine() {
    }

    static boolean handles(String str) {
        return Arrays.asList(METHODS).contains(str);
    }

    /* renamed from: d */
    static byte[] m34d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m35v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static byte[] rule(LocalFeatureCatalog localFeatureCatalog, String str, Object obj) {
        byte[] bArr = localFeatureCatalog.get(str, obj);
        return bArr == null ? BsonLite.EMPTY_DOCUMENT : bArr;
    }

    static void callback(LocalResourceEngine.Result result, Object obj) {
        result.add(CALLBACK, BsonLite.document("_result_", obj));
    }

    static LinkedHashMap<Integer, byte[]> pairs(byte[] bArr, String str) {
        LinkedHashMap<Integer, byte[]> linkedHashMap = new LinkedHashMap<>();
        for (byte[] bArr2 : LocalResourceEngine.array(m34d(bArr, str))) {
            linkedHashMap.put(Integer.valueOf(m35v(bArr2, "0")), bArr2);
        }
        return linkedHashMap;
    }

    static byte[] pairSet(byte[] bArr, String str, int i, Object obj) {
        LinkedHashMap<Integer, byte[]> pairs = pairs(bArr, str);
        pairs.put(Integer.valueOf(i), BsonLite.document("0", Integer.valueOf(i), "1", obj));
        ArrayList arrayList = new ArrayList();
        Iterator<byte[]> it = pairs.values().iterator();
        while (it.hasNext()) {
            arrayList.add(new BsonLite.ArrayValue(it.next()));
        }
        return BsonLite.withProfileArray(bArr, str, arrayList);
    }

    static int count(byte[] bArr, int i) {
        int i2 = 0;
        for (byte[] bArr2 : LocalResourceEngine.array(m34d(m34d(bArr, "inv"), "items"))) {
            if (m35v(bArr2, "i") == i) {
                i2 = Math.addExact(i2, m35v(bArr2, "w"));
            }
        }
        return i2;
    }

    static Map<Integer, Integer> inventoryCounts(byte[] bArr) {
        HashMap hashMap = new HashMap();
        for (byte[] bArr2 : LocalResourceEngine.array(m34d(m34d(bArr, "inv"), "items"))) {
            int m35v = m35v(bArr2, "i");
            hashMap.put(Integer.valueOf(m35v), Integer.valueOf(Math.addExact(((Integer) hashMap.getOrDefault(Integer.valueOf(m35v), 0)).intValue(), m35v(bArr2, "w"))));
        }
        return hashMap;
    }

    static byte[] defaultScheme(LocalFeatureCatalog localFeatureCatalog, String str) {
        byte[] bArr = BsonLite.EMPTY_DOCUMENT;
        byte[] rule = rule(localFeatureCatalog, "T", str);
        int i = 18;
        int i2 = 1;
        if ("player_home".equals(str)) {
            for (String str2 : localFeatureCatalog.entries.keySet()) {
                if (str2.startsWith("I:")) {
                    byte[] bArr2 = localFeatureCatalog.entries.get(str2);
                    if (m35v(bArr2, "isPlaced") == i2) {
                        String str3 = "init_" + m35v(bArr2, "id");
                        Object[] objArr = new Object[i];
                        objArr[0] = "id";
                        objArr[i2] = Integer.valueOf(m35v(bArr2, "id"));
                        objArr[2] = "k";
                        objArr[3] = str3;
                        objArr[4] = "pos";
                        objArr[5] = new BsonLite.ArrayValue(m34d(bArr2, "pos"));
                        objArr[6] = "np";
                        objArr[7] = new BsonLite.ArrayValue(m34d(bArr2, "pos"));
                        objArr[8] = "r";
                        objArr[9] = new BsonLite.ArrayValue(m34d(bArr2, "rot"));
                        objArr[10] = "s";
                        objArr[11] = Double.valueOf(1.0d);
                        objArr[12] = "p";
                        objArr[13] = "";
                        objArr[14] = "c";
                        objArr[15] = Collections.emptyList();
                        objArr[16] = "il";
                        objArr[17] = false;
                        bArr = BsonLite.withProfileDocument(bArr, str3, BsonLite.document(objArr));
                    }
                }
                i = 18;
                i2 = 1;
            }
        }
        return BsonLite.document("t", str, "e", bArr, "cp", new BsonLite.ArrayValue(m34d(rule, "initCameraPos")), "cr", new BsonLite.ArrayValue(m34d(rule, "initCameraRot")), "cc", new BsonLite.ArrayValue(m34d(rule, "initCameraCenter")), "ct", "", "c", "", "l", 0, "cb", null);
    }

    static LocalResourceEngine.Result initialize(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog) {
        return initialize(bArr, localFeatureCatalog, localResourceCatalog, LocalStoryEnvironment.now());
    }

    static LocalResourceEngine.Result initialize(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, long j) {
        String str;
        String str2;
        String str3;
        byte[] bArr2;
        String str4;
        byte[] bArr3;
        String str5;
        String str6;
        byte[] bArr4;
        String str7;
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        byte[] m34d = m34d(bArr, "hhd");
        if (!BsonLite.keys(m34d).contains("fi")) {
            TreeMap treeMap = new TreeMap();
            for (String str8 : localFeatureCatalog.entries.keySet()) {
                if (str8.startsWith("R:")) {
                    byte[] bArr5 = localFeatureCatalog.entries.get(str8);
                    if (m35v(bArr5, "init") == 1 && m35v(bArr5, "release") == 1) {
                        ((List) treeMap.computeIfAbsent(Integer.valueOf(m35v(bArr5, "louceng_id")), new Function() { // from class: com.project7.localmanager.LocalHomeEngine$$ExternalSyntheticLambda0
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                return LocalHomeEngine.lambda$initialize$0((Integer) obj);
                            }
                        })).add(Integer.valueOf(m35v(bArr5, "room_id")));
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : treeMap.entrySet()) {
                arrayList.add(Arrays.asList(entry.getKey(), entry.getValue()));
            }
            result.profile = BsonLite.withProfileDocument(result.profile, "hhd", BsonLite.withProfileArray(m34d, "fi", arrayList));
        }
        byte[] m34d2 = m34d(result.profile, "fnd");
        byte[] m34d3 = m34d(m34d2, "s");
        String str9 = "player_home";
        byte[] m34d4 = m34d(m34d3, "player_home");
        String str10 = "cur";
        String stringValue = BsonLite.stringValue(m34d4, "cur");
        if (stringValue == null || stringValue.isEmpty()) {
            stringValue = "local_default";
        }
        String str11 = stringValue;
        Iterator<String> it = BsonLite.keys(m34d4).iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (BsonLite.documentValue(m34d4, it.next()) != null) {
                z = true;
            }
        }
        if (z) {
            str = "cur";
            str2 = "player_home";
            if (BsonLite.documentValue(m34d4, str11) == null) {
                Iterator<String> it2 = BsonLite.keys(m34d4).iterator();
                while (it2.hasNext()) {
                    str3 = it2.next();
                    if (BsonLite.documentValue(m34d4, str3) != null) {
                        bArr2 = m34d4;
                        break;
                    }
                }
            }
            str3 = str11;
            bArr2 = m34d4;
        } else {
            if (Boolean.TRUE.equals(BsonLite.boolValue(result.profile, "q7HomeInit"))) {
                str4 = str11;
                str = "cur";
                bArr3 = m34d4;
                str2 = "player_home";
            } else {
                for (String str12 : localFeatureCatalog.entries.keySet()) {
                    if (!str12.startsWith("I:")) {
                        str5 = str11;
                        str6 = str10;
                        bArr4 = m34d4;
                        str7 = str9;
                    } else {
                        byte[] bArr6 = localFeatureCatalog.entries.get(str12);
                        int m35v = m35v(rule(localFeatureCatalog, "F", Integer.valueOf(m35v(bArr6, "id"))), "itemid");
                        int m35v2 = m35v(bArr6, "count") - count(result.profile, m35v);
                        if (m35v <= 0 || m35v2 <= 0) {
                            str5 = str11;
                            str6 = str10;
                            bArr4 = m34d4;
                            str7 = str9;
                        } else {
                            str5 = str11;
                            str6 = str10;
                            bArr4 = m34d4;
                            str7 = str9;
                            LocalResourceEngine.grant(result, localResourceCatalog, "item", m35v, m35v2, 1);
                        }
                    }
                    str9 = str7;
                    m34d4 = bArr4;
                    str11 = str5;
                    str10 = str6;
                }
                str4 = str11;
                str = str10;
                bArr3 = m34d4;
                str2 = str9;
            }
            String str13 = str4;
            bArr2 = BsonLite.withProfileDocument(bArr3, str13, defaultScheme(localFeatureCatalog, str2));
            str3 = str13;
        }
        byte[] withProfileDocument = BsonLite.withProfileDocument(m34d2, "s", BsonLite.withProfileDocument(m34d3, str2, BsonLite.withProfileString(bArr2, str, str3)));
        if (BsonLite.stringValue(withProfileDocument, "cst") == null) {
            withProfileDocument = BsonLite.withProfileString(withProfileDocument, "cst", str2);
        }
        if (BsonLite.stringValue(withProfileDocument, "nm") == null || "".equals(BsonLite.stringValue(withProfileDocument, "nm"))) {
            withProfileDocument = BsonLite.withProfileString(withProfileDocument, "nm", "指挥使的房间");
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "fnd", withProfileDocument);
        result.profile = BsonLite.withProfileBool(result.profile, "q7HomeInit", true);
        byte[] state = LocalDrawEngine.state(result.profile, 162);
        if (!BsonLite.keys(state).isEmpty() && !day(j).equals(text(state, "q7DrawDay"))) {
            LocalDrawEngine.saveState(result, BsonLite.withProfileString(BsonLite.withProfileInt(state, "cctd", 0), "q7DrawDay", day(j)), 162);
        }
        LocalHomeCollectionEngine.initialize(result, localFeatureCatalog);
        result.profile = LocalRoomCrystalEngine.initialize(result.profile, j);
        LocalHomeSpecialGiftEngine.reconcile(result, localFeatureCatalog, false);
        result.profile = LocalHomeDailyEngine.refresh(result.profile, localFeatureCatalog, j, true);
        LocalHomeWishDailyEngine.refresh(result, localFeatureCatalog, j);
        return result;
    }

    static /* synthetic */ List lambda$initialize$0(Integer num) {
        return new ArrayList();
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2, long j) {
        return apply(bArr, localFeatureCatalog, localResourceCatalog, str, bArr2, j, RANDOM);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x0468: MOVE (r6 I:??[OBJECT, ARRAY]) = (r20 I:??[OBJECT, ARRAY]), block:B:333:0x0465 */
    /* JADX WARN: Not initialized variable reg: 31, insn: 0x046a: MOVE (r9 I:??[OBJECT, ARRAY]) = (r31 I:??[OBJECT, ARRAY]), block:B:333:0x0465 */
    static com.project7.localmanager.LocalResourceEngine.Result apply(byte[] r35, com.project7.localmanager.LocalFeatureCatalog r36, com.project7.localmanager.LocalResourceCatalog r37, java.lang.String r38, byte[] r39, long r40, java.util.Random r42) {
        /*
            Method dump skipped, instructions count: 2583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.project7.localmanager.LocalHomeEngine.apply(byte[], com.project7.localmanager.LocalFeatureCatalog, com.project7.localmanager.LocalResourceCatalog, java.lang.String, byte[], long, java.util.Random):com.project7.localmanager.LocalResourceEngine$Result");
    }

    static void require(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    static String text(byte[] bArr, String str) {
        String stringValue = BsonLite.stringValue(bArr, str);
        return stringValue == null ? "" : stringValue;
    }

    static boolean roomOwned(byte[] bArr, int i, int i2) {
        byte[] bArr2 = pairs(m34d(bArr, "hhd"), "fi").get(Integer.valueOf(i));
        return bArr2 != null && BsonLite.intArrayValues(bArr2, "1").contains(Integer.valueOf(i2));
    }

    private static void buyRoom(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr) {
        int m35v = m35v(bArr, "f");
        int m35v2 = m35v(bArr, "r");
        byte[] rule = rule(localFeatureCatalog, "R", m35v + ":" + m35v2);
        require(m35v(rule, "release") == 1, "房间未开放");
        if (!roomOwned(result.profile, m35v, m35v2)) {
            require(m35v(rule, "init") == 0 && m35v(rule, "cost") > 0, "房间无法购买");
            LocalGiftEngine.spend(result, "yuanbao", m35v(rule, "cost"));
            byte[] m34d = m34d(result.profile, "hhd");
            byte[] bArr2 = pairs(m34d, "fi").get(Integer.valueOf(m35v));
            ArrayList arrayList = bArr2 == null ? new ArrayList() : new ArrayList(BsonLite.intArrayValues(bArr2, "1"));
            arrayList.add(Integer.valueOf(m35v2));
            result.profile = BsonLite.withProfileDocument(result.profile, "hhd", pairSet(m34d, "fi", m35v, arrayList));
            LocalResourceEngine.syncCurrencies(result);
        }
        result.add("replyBuyRoom", BsonLite.document("r", true, "i", BsonLite.document("f", Integer.valueOf(m35v), "r", Integer.valueOf(m35v2))));
    }

    private static void enter(LocalResourceEngine.Result result, byte[] bArr) {
        int m35v = m35v(bArr, "f");
        int m35v2 = m35v(bArr, "r");
        int m35v3 = m35v(bArr, "h");
        require(roomOwned(result.profile, m35v, m35v2), "房间尚未购买");
        require(m35v3 == 0 || LocalResourceEngine.ownsHero(result.profile, m35v3), "神器使尚未获得");
        byte[] m34d = m34d(result.profile, "hhd");
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr2 : LocalResourceEngine.array(m34d(m34d, "hri"))) {
            List<Integer> intArrayValues = BsonLite.intArrayValues(bArr2, "1");
            if (m35v(bArr2, "0") != m35v3 && !intArrayValues.equals(Arrays.asList(Integer.valueOf(m35v), Integer.valueOf(m35v2)))) {
                arrayList.add(new BsonLite.ArrayValue(bArr2));
            }
        }
        if (m35v3 != 0) {
            arrayList.add(Arrays.asList(Integer.valueOf(m35v3), Arrays.asList(Integer.valueOf(m35v), Integer.valueOf(m35v2))));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "hhd", BsonLite.withProfileArray(m34d, "hri", arrayList));
    }

    private static void batch(LocalResourceEngine.Result result, byte[] bArr) {
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "fs");
        List<Integer> intArrayValues2 = BsonLite.intArrayValues(bArr, "rs");
        List<Integer> intArrayValues3 = BsonLite.intArrayValues(bArr, "hs");
        require(!intArrayValues.isEmpty() && intArrayValues.size() <= 108 && intArrayValues.size() == intArrayValues2.size() && intArrayValues.size() == intArrayValues3.size(), "批量入住数据无效");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < intArrayValues.size(); i++) {
            byte[] document = BsonLite.document("f", intArrayValues.get(i), "r", intArrayValues2.get(i), "h", intArrayValues3.get(i));
            arrayList2.add(document);
            try {
                enter(result, document);
                arrayList.add(true);
            } catch (IllegalArgumentException e) {
                arrayList.add(false);
            }
        }
        result.add("replyHeroEnterRoomBatch", BsonLite.document("r", true, "i", BsonLite.document("r", arrayList, "i", arrayList2)));
    }

    private static void scheme(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr) {
        String str2;
        byte[] bArr2;
        byte[] bArr3;
        byte[] withProfileDocument;
        boolean z;
        String text = text(bArr, "st");
        String text2 = text(bArr, "sk");
        byte[] m34d = m34d(result.profile, "fnd");
        byte[] m34d2 = m34d(m34d, "s");
        byte[] m34d3 = m34d(m34d2, text);
        require(!BsonLite.keys(rule(localFeatureCatalog, "T", text)).isEmpty(), "房间类型不存在");
        if ("generaSchemeType".equals(str)) {
            if (BsonLite.keys(m34d3).isEmpty()) {
                int i = 0;
                for (String str3 : localFeatureCatalog.entries.keySet()) {
                    if (str3.startsWith("F:")) {
                        byte[] bArr4 = localFeatureCatalog.entries.get(str3);
                        if (m35v(bArr4, "category") != 10 && count(result.profile, m35v(bArr4, "itemid")) > 0) {
                            i++;
                        }
                    }
                }
                require("player_home2".equals(text) && i >= 40, "扩展房间需要40种家具；海滨房型解锁合同尚待核对");
                m34d3 = BsonLite.document("cur", "local_default", "local_default", defaultScheme(localFeatureCatalog, text));
                result.add("syncSchemeData", BsonLite.document("st", text, "sd", m34d3));
            }
            result.add("replyGeneraSchemeType", BsonLite.document("r", true, "st", text));
            str2 = "s";
            bArr2 = m34d2;
        } else {
            require((BsonLite.keys(m34d3).isEmpty() || text2.isEmpty() || text2.length() > 100 || "cur".equals(text2)) ? false : true, "装饰方案不存在");
            byte[] documentValue = BsonLite.documentValue(m34d3, text2);
            str2 = "s";
            bArr2 = m34d2;
            if ("createFurnitureScheme".equals(str)) {
                if (documentValue == null) {
                    require(BsonLite.keys(m34d3).size() < 16, "装饰方案数量已达上限");
                    documentValue = defaultScheme(localFeatureCatalog, text);
                }
                m34d3 = BsonLite.withProfileDocument(m34d3, text2, documentValue);
                result.add("syncScheme", BsonLite.document("st", text, "sk", text2, "d", documentValue));
                result.add("replyCreateFurnitureScheme", BsonLite.document("r", 1, "st", text, "sk", text2));
            } else {
                require(documentValue != null, "装饰方案不存在");
                if ("switchFurnitureScheme".equals(str)) {
                    m34d3 = BsonLite.withProfileString(m34d3, "cur", text2);
                    m34d = BsonLite.withProfileString(m34d, "cst", text);
                    callback(result, true);
                } else if ("getServerOneSchemeData".equals(str)) {
                    result.add("syncScheme", BsonLite.document("st", text, "sk", text2, "d", documentValue));
                    callback(result, true);
                } else if ("getServerOneFurnitureData".equals(str)) {
                    byte[] documentValue2 = BsonLite.documentValue(m34d(documentValue, "e"), text(bArr, "fk"));
                    require(documentValue2 != null, "家具不存在");
                    callback(result, documentValue2);
                } else if ("saveFurnitureScheme".equals(str) || "canAddFurnitureToScheme".equals(str)) {
                    if ("saveFurnitureScheme".equals(str)) {
                        withProfileDocument = BsonLite.documentValue(bArr, "sd");
                        require(withProfileDocument != null, "装饰数据缺失");
                        bArr3 = m34d;
                    } else {
                        byte[] m34d4 = m34d(bArr, "fd");
                        String text3 = text(m34d4, "k");
                        bArr3 = m34d;
                        require(!text3.isEmpty(), "家具标识缺失");
                        withProfileDocument = BsonLite.withProfileDocument(documentValue, "e", BsonLite.withProfileDocument(m34d(documentValue, "e"), text3, m34d4));
                    }
                    byte[] validate = validate(result.profile, localFeatureCatalog, text, withProfileDocument);
                    if (!"saveFurnitureScheme".equals(str)) {
                        z = true;
                    } else {
                        m34d3 = BsonLite.withProfileDocument(m34d3, text2, validate);
                        z = true;
                        result.add("syncScheme", BsonLite.document("st", text, "sk", text2, "d", validate));
                    }
                    callback(result, Boolean.valueOf(z));
                    m34d = bArr3;
                } else {
                    if (!"changeFurnitureEffState".equals(str)) {
                        throw new IllegalArgumentException("房间操作未接入");
                    }
                    String text4 = text(bArr, "fk");
                    byte[] documentValue3 = BsonLite.documentValue(m34d(documentValue, "e"), text4);
                    require(documentValue3 != null && m35v(bArr, "es") >= 0 && m35v(bArr, "es") <= 4, "家具效果无效");
                    require(m35v(rule(localFeatureCatalog, "F", Integer.valueOf(m35v(documentValue3, "id"))), "effType") != 1, "一次性家具效果不应持久化");
                    m34d3 = BsonLite.withProfileDocument(m34d3, text2, BsonLite.withProfileDocument(documentValue, "e", BsonLite.withProfileDocument(m34d(documentValue, "e"), text4, BsonLite.withProfileInt(documentValue3, "es", m35v(bArr, "es")))));
                    callback(result, true);
                }
            }
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "fnd", BsonLite.withProfileDocument(m34d, str2, BsonLite.withProfileDocument(bArr2, text, m34d3)));
    }

    static byte[] validate(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr2) {
        require(bArr2.length <= 262144 && BsonLite.keys(m34d(bArr2, "e")).size() <= 500, "装饰方案过大");
        require(str.equals(text(bArr2, "t")), "装饰方案的房间类型不匹配");
        byte[] m34d = m34d(bArr2, "e");
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        Map<Integer, Integer> inventoryCounts = inventoryCounts(bArr);
        Iterator<String> it = BsonLite.keys(m34d).iterator();
        while (it.hasNext()) {
            String next = it.next();
            byte[] m34d2 = m34d(m34d, next);
            byte[] rule = rule(localFeatureCatalog, "F", Integer.valueOf(m35v(m34d2, "id")));
            require(!BsonLite.keys(rule).isEmpty() && next.equals(text(m34d2, "k")), "家具数据无效");
            Iterator<String> it2 = it;
            vector(m34d2, "pos", 3, true);
            vector(m34d2, "r", 3, true);
            vector(m34d2, "np", 3, false);
            Number numericValue = BsonLite.numericValue(m34d2, "s");
            require(numericValue == null || (Double.isFinite(numericValue.doubleValue()) && numericValue.doubleValue() > 0.0d && numericValue.doubleValue() <= 100.0d), "家具缩放无效");
            String text = text(m34d2, "p");
            require(text.isEmpty() || (!text.equals(next) && BsonLite.keys(m34d).contains(text)), "家具父节点无效");
            HashSet hashSet = new HashSet();
            String str2 = next;
            while (!str2.isEmpty()) {
                require(hashSet.add(str2), "家具附着关系循环");
                str2 = text(m34d(m34d, str2), "p");
                hashSet = hashSet;
            }
            int m35v = m35v(m34d2, "id");
            int intValue = ((Integer) hashMap.getOrDefault(Integer.valueOf(m35v), 0)).intValue() + 1;
            hashMap.put(Integer.valueOf(m35v), Integer.valueOf(intValue));
            int m35v2 = m35v(rule, "category");
            int intValue2 = ((Integer) hashMap2.getOrDefault(Integer.valueOf(m35v2), 0)).intValue() + 1;
            hashMap2.put(Integer.valueOf(m35v2), Integer.valueOf(intValue2));
            int m35v3 = m35v(m34d(rule(localFeatureCatalog, "T", str), "maxCount"), Integer.toString(m35v2));
            require(m35v3 <= 0 || intValue2 <= m35v3, "此类家具放置数量已达上限");
            m34d = BsonLite.withProfileDocument(m34d, next, BsonLite.withProfileBool(m34d2, "il", intValue > inventoryCounts.getOrDefault(Integer.valueOf(m35v(rule, "itemid")), 0).intValue()));
            it = it2;
        }
        return BsonLite.withProfileDocument(bArr2, "e", m34d);
    }

    static void syncOwned(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog) {
        int intValue;
        byte[] bArr = BsonLite.EMPTY_DOCUMENT;
        Map<Integer, Integer> inventoryCounts = inventoryCounts(result.profile);
        for (String str : localFeatureCatalog.entries.keySet()) {
            if (str.startsWith("F:") && (intValue = inventoryCounts.getOrDefault(Integer.valueOf(m35v(localFeatureCatalog.entries.get(str), "itemid")), 0).intValue()) > 0) {
                bArr = BsonLite.withProfileInt(bArr, str.substring(2), intValue);
            }
        }
        result.add("syncOwnFurniture", BsonLite.document("d", bArr));
    }

    private static void vector(byte[] bArr, String str, int i, boolean z) {
        if (!BsonLite.keys(bArr).contains(str)) {
            require(!z, "家具坐标缺失");
            return;
        }
        byte[] m34d = m34d(bArr, str);
        require(BsonLite.keys(m34d).size() == i, "家具坐标无效");
        for (int i2 = 0; i2 < i; i2++) {
            Number numericValue = BsonLite.numericValue(m34d, Integer.toString(i2));
            require(numericValue != null && Double.isFinite(numericValue.doubleValue()), "家具坐标无效");
        }
    }

    private static byte[] choose(List<byte[]> list, Random random) {
        Iterator<byte[]> it = list.iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            d += number(it.next(), "w");
        }
        require(d > 0.0d, "配送奖励合同无效");
        double nextDouble = random.nextDouble() * d;
        for (byte[] bArr : list) {
            nextDouble -= number(bArr, "w");
            if (nextDouble < 0.0d) {
                return bArr;
            }
        }
        return list.get(list.size() - 1);
    }

    private static double number(byte[] bArr, String str) {
        Number numericValue = BsonLite.numericValue(bArr, str);
        if (numericValue == null) {
            return 0.0d;
        }
        return numericValue.doubleValue();
    }

    private static String day(long j) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ROOT);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("Asia/Shanghai"));
        return simpleDateFormat.format(new Date(j - 25200000));
    }

    private static void draw(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr, long j, Random random) {
        String str2;
        int i;
        int i2;
        String str3;
        String str4;
        int i3;
        String str5;
        int i4;
        LocalFeatureCatalog localFeatureCatalog2 = localFeatureCatalog;
        Random random2 = random;
        String str6 = "t";
        int m35v = m35v(bArr, "t");
        int i5 = str.contains("Lianchou") ? 10 : 1;
        byte[] rule = rule(localFeatureCatalog2, "P", Integer.valueOf(m35v));
        require(m35v(result.profile, "level") >= m35v(rule, "level") && m35v == 162, "仅常驻都市配送已接入");
        byte[] state = LocalDrawEngine.state(result.profile, m35v);
        String day = day(j);
        String str7 = "q7DrawDay";
        String str8 = "cctd";
        int m35v2 = (day.equals(text(state, "q7DrawDay")) ? m35v(state, "cctd") : 0) + i5;
        require(m35v2 <= 500, "今日配送次数已达上限");
        List<Integer> intArrayValues = BsonLite.intArrayValues(rule, "cost");
        require(intArrayValues.size() == 2, "配送费用合同缺失");
        int m35v3 = m35v(rule, "ticket");
        int min = m35v3 == 0 ? 0 : Math.min(i5, count(result.profile, m35v3));
        if (min > 0) {
            LocalGiftEngine.consume(result, m35v3, min);
        }
        int multiplyExact = Math.multiplyExact(i5 - min, intArrayValues.get(1).intValue());
        int m35v4 = m35v(state, "lt") + (i5 == 10 ? 1 : 0);
        if (i5 == 10) {
            Iterator<byte[]> it = LocalResourceEngine.array(m34d(rule, "discount")).iterator();
            i2 = multiplyExact;
            while (it.hasNext()) {
                Iterator<byte[]> it2 = it;
                String str9 = str6;
                if (m35v(it.next(), "0") == m35v4) {
                    i4 = m35v;
                    i2 = (int) ((i2 * m35v(r7, "1")) / 10);
                } else {
                    i4 = m35v;
                }
                str6 = str9;
                it = it2;
                m35v = i4;
            }
            str2 = str6;
            i = m35v;
        } else {
            str2 = "t";
            i = m35v;
            i2 = multiplyExact;
        }
        LocalGiftEngine.consume(result, intArrayValues.get(0).intValue(), i2);
        ArrayList arrayList = new ArrayList();
        for (String str10 : localFeatureCatalog2.entries.keySet()) {
            if (str10.startsWith("D:")) {
                arrayList.add(localFeatureCatalog2.entries.get(str10));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int m35v5 = m35v(state, "ct");
        int i6 = 1;
        while (true) {
            str3 = day;
            str4 = str7;
            if (i6 > i5) {
                break;
            }
            int i7 = m35v4;
            byte[] bArr2 = localFeatureCatalog2.get("G", Integer.valueOf(m35v5 + i6));
            if (bArr2 == null) {
                bArr2 = choose(arrayList, random2);
            }
            byte[] choose = choose(LocalResourceEngine.array(m34d(bArr2, "options")), random2);
            LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
            Iterator<byte[]> it3 = LocalResourceEngine.array(m34d(choose, "g")).iterator();
            int i8 = 1;
            while (it3.hasNext()) {
                Iterator<byte[]> it4 = it3;
                byte[] next = it3.next();
                int m35v6 = m35v(next, "skin");
                int m35v7 = m35v(next, "i");
                int m35v8 = m35v(next, "n");
                if (m35v6 > 0) {
                    skinCopies(result2, localResourceCatalog, m35v6, m35v8, j);
                    i3 = m35v2;
                    str5 = str8;
                    i8 = 2;
                } else if (BsonLite.intArrayValues(next, "pendant").isEmpty()) {
                    i3 = m35v2;
                    str5 = str8;
                    LocalResourceEngine.grant(result2, localResourceCatalog, "item", m35v7, m35v8, 1);
                    if (m35v(next, "furniture") > 0) {
                        i8 = 4;
                    }
                } else {
                    i3 = m35v2;
                    str5 = str8;
                    pendant(result2, localResourceCatalog, next, j);
                    i8 = 3;
                }
                it3 = it4;
                str8 = str5;
                m35v2 = i3;
            }
            result.profile = result2.profile;
            result.replies.addAll(result2.replies);
            arrayList2.add(BsonLite.withProfileInt(result2.reward(), "rtype", i8));
            i6++;
            localFeatureCatalog2 = localFeatureCatalog;
            random2 = random;
            day = str3;
            str7 = str4;
            m35v4 = i7;
            str8 = str8;
            m35v2 = m35v2;
        }
        int i9 = m35v4;
        byte[] withProfileString = BsonLite.withProfileString(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(state, "ct", Math.addExact(m35v5, i5)), str8, m35v2), "lt", i9), str4, str3);
        int i10 = i;
        LocalDrawEngine.saveState(result, withProfileString, i10);
        result.add("syncLuckyDrawActivityData", BsonLite.document(str2, Integer.valueOf(i10), "d", withProfileString));
        String str11 = i5 == 10 ? "replyLuckyDrawFurnitureLianchouCard" : "replyLuckyDrawFurnitureCard";
        Object[] objArr = new Object[4];
        objArr[0] = "rs";
        objArr[1] = true;
        objArr[2] = "i";
        Object[] objArr2 = new Object[8];
        objArr2[0] = str2;
        objArr2[1] = Integer.valueOf(i10);
        objArr2[2] = "ct";
        objArr2[3] = Integer.valueOf(m35v2);
        objArr2[4] = "lt";
        objArr2[5] = Integer.valueOf(i9);
        objArr2[6] = "rwd";
        Object obj = arrayList2;
        if (i5 != 10) {
            obj = arrayList2.get(0);
        }
        objArr2[7] = obj;
        objArr[3] = BsonLite.document(objArr2);
        result.add(str11, BsonLite.document(objArr));
    }

    private static void skinCopies(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, int i, int i2, long j) {
        LocalResourceCatalog.Skin skin = localResourceCatalog.skins.get(Integer.valueOf(i));
        require(skin != null, "配送时装合同缺失");
        for (int i3 = 0; i3 < i2; i3++) {
            if (!LocalResourceEngine.ownsHero(result.profile, skin.hero)) {
                byte[] m34d = m34d(result.profile, "heromgr");
                byte[] m34d2 = m34d(m34d, "ps");
                ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(m34d2, Integer.toString(skin.hero)));
                require(arrayList.size() < 500, "待领取衣橱空间不足");
                arrayList.add(Integer.valueOf(i));
                byte[] withProfileDocument = BsonLite.withProfileDocument(m34d, "ps", BsonLite.withProfileArray(m34d2, Integer.toString(skin.hero), arrayList));
                result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", withProfileDocument);
                result.add("syncHeroMgrPendingData", BsonLite.document("d", withProfileDocument));
            } else {
                byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, skin.hero);
                byte[] m34d3 = m34d(profileHeroDocument, "sk");
                require(BsonLite.keys(m34d3).size() < 500, "衣橱空间不足");
                String uuid = LocalResourceEngine.uuid();
                byte[] purchasedSkin = LocalCommerceEngine.purchasedSkin(i, uuid, j / 1000);
                result.profile = BsonLite.withHeroDocument(result.profile, skin.hero, BsonLite.withProfileDocument(profileHeroDocument, "sk", BsonLite.withProfileDocument(m34d3, uuid, purchasedSkin)));
                result.add("syncOneSkinData", BsonLite.document("h", Integer.valueOf(skin.hero), "s", new BsonLite.UuidValue(uuid), "d", purchasedSkin));
            }
            result.itemRewards.add(Arrays.asList(Integer.valueOf(skin.item), 1));
        }
        byte[] m34d4 = m34d(result.profile, "heromgr");
        ArrayList arrayList2 = new ArrayList(BsonLite.intArrayValues(m34d4, "es"));
        if (!arrayList2.contains(Integer.valueOf(i))) {
            arrayList2.add(Integer.valueOf(i));
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", BsonLite.withProfileArray(m34d4, "es", arrayList2));
    }

    private static void pendant(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, byte[] bArr, long j) {
        int i;
        String str;
        String str2;
        byte[] withProfileArray;
        byte[] bArr2;
        String str3;
        ArrayList arrayList;
        int i2;
        boolean z;
        boolean z2;
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "pendant");
        require(intArrayValues.size() == 2, "挂饰合同无效");
        int intValue = intArrayValues.get(0).intValue();
        int intValue2 = intArrayValues.get(1).intValue();
        byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, intValue);
        String str4 = "heromgr";
        byte[] m34d = m34d(result.profile, "heromgr");
        String str5 = "pp";
        byte[] m34d2 = m34d(m34d, "pp");
        String str6 = "pa";
        ArrayList arrayList2 = new ArrayList(BsonLite.intArrayValues(profileHeroDocument, "pa"));
        arrayList2.addAll(BsonLite.intArrayValues(m34d2, Integer.toString(intValue)));
        byte[] bArr3 = profileHeroDocument;
        byte[] bArr4 = m34d;
        int i3 = 0;
        while (i3 < m35v(bArr, "n")) {
            if (arrayList2.contains(Integer.valueOf(intValue2))) {
                String str7 = "trans";
                for (byte[] bArr5 : LocalResourceEngine.array(m34d(bArr, "trans"))) {
                    LocalResourceEngine.grant(result, localResourceCatalog, "item", m35v(bArr5, "0"), m35v(bArr5, "1"), 1);
                    bArr3 = bArr3;
                    str6 = str6;
                    str7 = str7;
                    i3 = i3;
                    m34d2 = m34d2;
                    bArr4 = bArr4;
                }
                i = i3;
                byte[] bArr6 = m34d2;
                byte[] bArr7 = bArr3;
                require(!BsonLite.keys(m34d(bArr, str7)).isEmpty(), "重复挂饰转换合同缺失");
                str3 = str6;
                str = str4;
                str2 = str5;
                withProfileArray = bArr6;
                bArr4 = bArr4;
                i2 = 2;
                z2 = true;
                z = false;
                bArr2 = bArr7;
                arrayList = arrayList2;
            } else {
                i = i3;
                byte[] bArr8 = m34d2;
                byte[] bArr9 = bArr4;
                byte[] bArr10 = bArr3;
                String str8 = str6;
                arrayList2.add(Integer.valueOf(intValue2));
                if (LocalResourceEngine.ownsHero(result.profile, intValue)) {
                    ArrayList arrayList3 = new ArrayList(BsonLite.intArrayValues(bArr10, str8));
                    arrayList3.add(Integer.valueOf(intValue2));
                    ArrayList arrayList4 = new ArrayList();
                    Iterator<byte[]> it = LocalResourceEngine.array(m34d(bArr10, "pat")).iterator();
                    while (it.hasNext()) {
                        arrayList4.add(new BsonLite.ArrayValue(it.next()));
                    }
                    str = str4;
                    str2 = str5;
                    arrayList4.add(Arrays.asList(Integer.valueOf(intValue2), Integer.valueOf((int) (j / 1000))));
                    byte[] withProfileArray2 = BsonLite.withProfileArray(BsonLite.withProfileArray(bArr10, str8, arrayList3), "pat", arrayList4);
                    result.profile = BsonLite.withHeroDocument(result.profile, intValue, withProfileArray2);
                    result.add("updateHeroData", BsonLite.document("h", Integer.valueOf(intValue), "d", withProfileArray2));
                    str3 = str8;
                    arrayList = arrayList2;
                    withProfileArray = bArr8;
                    bArr4 = bArr9;
                    bArr2 = withProfileArray2;
                    i2 = 2;
                } else {
                    str = str4;
                    str2 = str5;
                    ArrayList arrayList5 = new ArrayList(BsonLite.intArrayValues(bArr8, Integer.toString(intValue)));
                    arrayList5.add(Integer.valueOf(intValue2));
                    withProfileArray = BsonLite.withProfileArray(bArr8, Integer.toString(intValue), arrayList5);
                    byte[] m34d3 = m34d(bArr9, "ppc");
                    ArrayList arrayList6 = new ArrayList();
                    Iterator<byte[]> it2 = LocalResourceEngine.array(m34d(m34d3, Integer.toString(intValue))).iterator();
                    while (it2.hasNext()) {
                        arrayList6.add(new BsonLite.ArrayValue(it2.next()));
                        str8 = str8;
                        bArr10 = bArr10;
                    }
                    bArr2 = bArr10;
                    str3 = str8;
                    arrayList = arrayList2;
                    arrayList6.add(Arrays.asList(Integer.valueOf(intValue2), Integer.valueOf((int) (j / 1000))));
                    bArr4 = BsonLite.withProfileDocument(BsonLite.withProfileDocument(bArr9, str2, withProfileArray), "ppc", BsonLite.withProfileArray(m34d3, Integer.toString(intValue), arrayList6));
                    result.profile = BsonLite.withProfileDocument(result.profile, str, bArr4);
                    i2 = 2;
                    result.add("syncHeroMgrPendingData", BsonLite.document("d", bArr4));
                }
                List<List<Integer>> list = result.itemRewards;
                Integer[] numArr = new Integer[i2];
                z = false;
                numArr[0] = Integer.valueOf(m35v(bArr, "i"));
                z2 = true;
                numArr[1] = 1;
                list.add(Arrays.asList(numArr));
            }
            i3 = i + 1;
            arrayList2 = arrayList;
            str5 = str2;
            str6 = str3;
            bArr3 = bArr2;
            str4 = str;
            m34d2 = withProfileArray;
        }
    }
}
