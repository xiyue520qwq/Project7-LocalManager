package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class LocalDailyEngine {
    static final int EXAM_SECONDS = 86400;
    static final List<String> METHODS = Arrays.asList("heroTestQuery", "heroShizhanQuery", "heroTestSelectHero", "heroTestGiveup", "heroTestGiveupManeuver", "heroTestExpire", "heroTestPickSkillTestReward", "heroTestPickHeroTestReward", "triggerHeroManeuverEvent", "battleEnterWithManeuverMode", "queryBlackGate", "getBossChoice", "memoryPalaceQuery", "memoryPalaceOpenArea", "refreshNewUIState", "refreshAreaBuff", "memoryPalaceBattleOnlineRequest", "queryMazeState", "exchangeWCoinItem", "firstEnterMaze", "updateDancengAIFlag", "mazeBattleOnlineRequest", "refreshNewModeState", "saoDangRequest", "seeLunhuizhijingUnlock", "requestLunhuizhijingAddEP", "lunhuizhijingBattleOnlineRequest");

    LocalDailyEngine() {
    }

    static boolean handles(String str) {
        return METHODS.contains(str) || str.startsWith("q7Daily");
    }

    static boolean repeatableReply(String str) {
        return Arrays.asList("heroTestQuery", "heroShizhanQuery", "queryBlackGate", "getBossChoice", "memoryPalaceQuery", "queryMazeState", "battleEnterWithManeuverMode", "memoryPalaceBattleOnlineRequest", "mazeBattleOnlineRequest", "lunhuizhijingBattleOnlineRequest").contains(str);
    }

    static void roomFailure(LocalResourceEngine.Result result, String str) {
        String str2;
        if ("memoryPalaceBattleOnlineRequest".equals(str)) {
            str2 = "gg.avatar.memoryPalaceFailed() if not gg.avatar.memoryPalaceData.inRoom() else None";
        } else if ("mazeBattleOnlineRequest".equals(str)) {
            str2 = "gg.avatar.pveMazeOnFailed() if not gg.avatar.infiniteMazeData.inRoom() else None";
        } else if ("lunhuizhijingBattleOnlineRequest".equals(str)) {
            str2 = "gg.avatar.pveLunhuizhijingOnFailed() if not gg.avatar.lunhuizhijingData.inRoom() else None";
        } else if ("battleEnterWithManeuverMode".equals(str)) {
            str2 = "gg.avatar.pveHeroTestOnFailed()";
        } else {
            str2 = "getBossChoice".equals(str) ? "gg.ui.unlock('getBossChoice')" : null;
        }
        if (str2 != null) {
            result.add("evalCode", BsonLite.document("s", str2));
        }
    }

    static boolean battleType(int i) {
        return i == 11 || i == 3 || i == 4 || i == 5 || i == 7 || i == 10 || i == 16;
    }

    /* renamed from: v */
    static int m13v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    static byte[] m12d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static boolean active(byte[] bArr) {
        return Boolean.TRUE.equals(BsonLite.boolValue(m12d(bArr, "q7DailyBattle"), "active"));
    }

    static boolean expired(byte[] bArr, long j) {
        int m13v = m13v(bArr, "st");
        int m13v2 = m13v(bArr, "ts");
        return m13v >= 2 && m13v <= 4 && m13v2 > 0 && j >= (((long) m13v2) + 86400) * 1000;
    }

    static byte[] resetExam(byte[] bArr) {
        Iterator it = Arrays.asList("hr", "ts", "csb", "stfc").iterator();
        while (it.hasNext()) {
            bArr = BsonLite.withProfileInt(bArr, (String) it.next(), 0);
        }
        return BsonLite.withProfileArray(BsonLite.withProfileArray(BsonLite.withProfileBool(BsonLite.withProfileInt(BsonLite.withProfileInt(bArr, "st", 1), "cib", 1), "ex", false), "srw", Collections.emptyList()), "iti", Collections.emptyList());
    }

    static byte[] refreshExam(byte[] bArr, long j) {
        byte[] m12d = m12d(bArr, "herotest");
        if (expired(m12d, j) && !active(bArr)) {
            return BsonLite.withProfileDocument(bArr, "herotest", resetExam(m12d));
        }
        return bArr;
    }

    static byte[] defaults(byte[] bArr) {
        byte[] m12d = m12d(bArr, "herotest");
        return !BsonLite.keys(m12d).isEmpty() ? m12d : BsonLite.document("st", 1, "ts", 0, "vl", Collections.emptyList(), "vl2", Collections.emptyList(), "hr", 0, "lv", Integer.valueOf(Math.max(1, m13v(bArr, "level"))), "se", 1, "srw", Collections.emptyList(), "csb", 0, "cib", 1, "iti", Collections.emptyList(), "ex", false, "stfc", 0, "ps2", false, "is2", BsonLite.EMPTY_DOCUMENT, "szh", 0, "szs", 6, "te", false);
    }

    static void save(LocalResourceEngine.Result result, byte[] bArr) {
        result.profile = BsonLite.withProfileDocument(result.profile, "herotest", bArr);
    }

    static void eligibility(byte[] bArr) {
        eligibility(bArr, "heroTestQuery");
    }

    static void eligibility(byte[] bArr, String str) {
        byte[] m12d = m12d(bArr, "weeknum");
        int i = "getBossChoice".equals(str) ? 0 : "queryBlackGate".equals(str) ? 2 : 1;
        if (m13v(m12d, "w") < 1 || (m13v(m12d, "w") == 1 && m13v(m12d, "d") <= i)) {
            throw new IllegalArgumentException("该玩法尚未达到原版周目解锁条件");
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:71|72|(6:(3:313|314|(11:316|75|76|(10:78|(1:85)|295|(7:297|298|299|300|301|302|303)(1:309)|116|117|118|119|(2:121|(1:123)(3:125|126|(6:229|230|231|(1:282)(2:237|(1:281)(2:241|(14:245|246|247|248|249|250|251|252|253|254|255|256|257|258)))|278|279)(6:128|129|130|131|132|(4:134|135|136|137)(6:141|142|143|(3:161|162|(1:164)(2:165|(2:167|(1:169)(2:170|171))(2:172|(1:174)(2:175|(2:177|(2:194|195)(6:185|(1:187)|188|(2:191|189)|192|193))(2:196|(2:198|(2:209|210)(1:208))(2:211|(2:213|214)(2:215|216)))))))|145|(6:147|(4:153|154|155|156)|158|154|155|156)(2:159|160)))))(1:289)|124)(1:310)|(12:95|96|97|98|99|100|101|102|103|104|105|106)|116|117|118|119|(0)(0)|124))|117|118|119|(0)(0)|124)|74|75|76|(0)(0)|(13:87|95|96|97|98|99|100|101|102|103|104|105|106)|116) */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x0223, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x0226, code lost:
    
        r1 = r0;
        r12 = r32;
        r23 = "m";
        r24 = "heroShizhanQuery";
        r25 = "heroTestQuery";
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0239 A[Catch: ArithmeticException | IllegalArgumentException -> 0x05eb, IllegalArgumentException -> 0x05ed, TryCatch #28 {ArithmeticException | IllegalArgumentException -> 0x05eb, blocks: (B:118:0x0233, B:121:0x0239, B:125:0x024c), top: B:117:0x0233 }] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x05b8  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0627  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0165 A[Catch: ArithmeticException | IllegalArgumentException -> 0x00e5, IllegalArgumentException -> 0x00e7, TRY_ENTER, TryCatch #32 {ArithmeticException | IllegalArgumentException -> 0x00e5, blocks: (B:24:0x005f, B:26:0x006b, B:28:0x0071, B:31:0x007c, B:32:0x0083, B:33:0x0084, B:35:0x008a, B:37:0x0092, B:38:0x00d6, B:45:0x00fe, B:49:0x010a, B:51:0x011c, B:52:0x011f, B:78:0x0165, B:80:0x016b, B:82:0x0171, B:295:0x017c, B:301:0x018d), top: B:22:0x005d }] */
    /* JADX WARN: Type inference failed for: r10v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r32v0, types: [long] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v34, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v37 */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 3, instructions: 6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2, long j) {
        String str2;
        String str3;
        String str4;
        String str5;
        RuntimeException runtimeException;
        int i;
        byte[] defaults;
        String str6;
        int i2;
        boolean z;
        String str7;
        LocalResourceEngine.Result result;
        String str8;
        int i3;
        int i4;
        int i5;
        byte[] resetExam;
        int i6;
        String str9 = str;
        ?? r5 = bArr2;
        String str10 = "showMessageStr";
        if (LocalLunhuiEngine.handles(bArr, str9, r5)) {
            return LocalLunhuiEngine.apply(bArr, localFeatureCatalog, localResourceCatalog, str, bArr2, j);
        }
        if (LocalMazeBattleEngine.handles(bArr, str9, r5)) {
            return LocalMazeBattleEngine.apply(bArr, localFeatureCatalog, localResourceCatalog, str, bArr2, j);
        }
        if (LocalMazeShopEngine.METHODS.contains(str9)) {
            return LocalMazeShopEngine.apply(bArr, localFeatureCatalog, localResourceCatalog, str, bArr2, j);
        }
        if (LocalMemoryPalaceEngine.handles(bArr, str9, r5)) {
            return LocalMemoryPalaceEngine.apply(bArr, localFeatureCatalog, localResourceCatalog, str, bArr2, j);
        }
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
        try {
            defaults = defaults(bArr);
            str6 = "showMessageStr";
            str10 = "s";
            try {
            } catch (ArithmeticException | IllegalArgumentException e) {
                runtimeException = e;
                str2 = "m";
                str3 = "heroShizhanQuery";
                str4 = "heroTestQuery";
            }
        } catch (ArithmeticException e2) {
            e = e2;
        } catch (IllegalArgumentException e3) {
            e = e3;
        }
        if ("q7DailyReset".equals(str9)) {
            byte[] m12d = m12d(bArr, "q7DailyBattle");
            Integer intValue = BsonLite.intValue(r5, "s");
            if (intValue != null && active(bArr) && intValue.intValue() != m13v(m12d, "s")) {
                throw new IllegalArgumentException("取消请求与当前日常战斗不匹配，未退还或扣除精神力");
            }
            if (active(bArr) && m13v(m12d, "t") == 10) {
                byte[] m12d2 = m12d(bArr, "city");
                byte[] withProfileInt = BsonLite.withProfileInt(m12d2, "jpv", Math.addExact(m13v(m12d2, "jpv"), m13v(localFeatureCatalog.get("P", 10), "consume") - m13v(localFeatureCatalog.get("P", 10), "fail_consume")));
                result2.profile = BsonLite.withProfileDocument(result2.profile, "city", withProfileInt);
                power(result2, withProfileInt);
            }
            result2.profile = BsonLite.withProfileDocument(result2.profile, "q7DailyBattle", BsonLite.EMPTY_DOCUMENT);
            result = result2;
        } else {
            try {
            } catch (ArithmeticException | IllegalArgumentException e4) {
                e = e4;
                str2 = "m";
                str3 = "heroShizhanQuery";
                str4 = "heroTestQuery";
                str5 = "Reply";
                str10 = str6;
                r5 = 2;
                runtimeException = e;
                i = r5;
                LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(bArr);
                if (!str4.equals(str9)) {
                }
                Object[] objArr = new Object[i];
                objArr[0] = "d";
                objArr[1] = BsonLite.EMPTY_DOCUMENT;
                result3.add(str9 + str5, BsonLite.document(objArr));
                roomFailure(result3, str9);
                result3.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                return result3;
            }
            if (!"q7DailyFinish".equals(str9)) {
                if (shop(localFeatureCatalog, str9, r5)) {
                    if (localFeatureCatalog.get("CS", Integer.valueOf(m13v(r5, "store_id"))) == null) {
                        eligibility(bArr);
                    }
                    try {
                        return LocalGiftEngine.apply(bArr, localResourceCatalog, localFeatureCatalog, str, bArr2, (int) (j / 1000));
                    } catch (ArithmeticException | IllegalArgumentException e5) {
                        runtimeException = e5;
                        i2 = 2;
                    }
                } else {
                    try {
                        eligibility(bArr, str9);
                        try {
                            try {
                                if (expired(defaults, j)) {
                                    try {
                                        if (!active(bArr)) {
                                            z = true;
                                            str5 = "heroTestSelectHero";
                                            if (z) {
                                                str7 = str6;
                                            } else {
                                                if (!"heroTestQuery".equals(str9) && !"heroShizhanQuery".equals(str9) && !"heroTestSelectHero".equals(str9)) {
                                                    str7 = str6;
                                                }
                                                defaults = resetExam(defaults);
                                                save(result2, defaults);
                                                if ("heroTestSelectHero".equals(str9)) {
                                                    str7 = str6;
                                                } else {
                                                    try {
                                                        Object[] objArr2 = new Object[2];
                                                        objArr2[0] = "m";
                                                        objArr2[1] = "资质考试的24小时有效期已结束，可以重新报名";
                                                        str7 = str6;
                                                        result2.add(str7, BsonLite.document(objArr2));
                                                    } catch (ArithmeticException e6) {
                                                        e = e6;
                                                        runtimeException = e;
                                                        str2 = "m";
                                                        str3 = "heroShizhanQuery";
                                                        i6 = 2;
                                                        str4 = "heroTestQuery";
                                                        i4 = i6;
                                                        str5 = "Reply";
                                                        str10 = str6;
                                                        i = i4;
                                                        LocalResourceEngine.Result result32 = new LocalResourceEngine.Result(bArr);
                                                        if (!str4.equals(str9)) {
                                                        }
                                                        Object[] objArr3 = new Object[i];
                                                        objArr3[0] = "d";
                                                        objArr3[1] = BsonLite.EMPTY_DOCUMENT;
                                                        result32.add(str9 + str5, BsonLite.document(objArr3));
                                                        roomFailure(result32, str9);
                                                        result32.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                        return result32;
                                                    } catch (IllegalArgumentException e7) {
                                                        e = e7;
                                                        runtimeException = e;
                                                        str2 = "m";
                                                        str3 = "heroShizhanQuery";
                                                        i6 = 2;
                                                        str4 = "heroTestQuery";
                                                        i4 = i6;
                                                        str5 = "Reply";
                                                        str10 = str6;
                                                        i = i4;
                                                        LocalResourceEngine.Result result322 = new LocalResourceEngine.Result(bArr);
                                                        if (!str4.equals(str9)) {
                                                        }
                                                        Object[] objArr32 = new Object[i];
                                                        objArr32[0] = "d";
                                                        objArr32[1] = BsonLite.EMPTY_DOCUMENT;
                                                        result322.add(str9 + str5, BsonLite.document(objArr32));
                                                        roomFailure(result322, str9);
                                                        result322.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                        return result322;
                                                    }
                                                }
                                                ?? r10 = defaults;
                                                if ("heroTestQuery".equals(str9)) {
                                                    result = result2;
                                                    str8 = "Reply";
                                                    i3 = 2;
                                                } else if ("heroShizhanQuery".equals(str9)) {
                                                    result = result2;
                                                    str8 = "Reply";
                                                    i3 = 2;
                                                } else {
                                                    str6 = str7;
                                                    str2 = "m";
                                                    str3 = "heroShizhanQuery";
                                                    str4 = "heroTestQuery";
                                                    if ("heroTestSelectHero".equals(str9)) {
                                                        try {
                                                            int m13v = m13v(r5, "h");
                                                            int m13v2 = m13v(r10, "st");
                                                            try {
                                                                if (m13v2 == 1 && m13v(r5, "s") == 1 && !active(bArr)) {
                                                                    if (localFeatureCatalog.get("H", Integer.valueOf(m13v)) != null && localFeatureCatalog.get("Q", Integer.valueOf(m13v)) != null) {
                                                                        if (LocalResourceEngine.ownsHero(bArr, m13v) && !Boolean.TRUE.equals(BsonLite.boolValue(BsonLite.profileHeroDocument(bArr, m13v), "pt"))) {
                                                                            i4 = 2;
                                                                            try {
                                                                            } catch (ArithmeticException e8) {
                                                                                e = e8;
                                                                                str9 = str;
                                                                                runtimeException = e;
                                                                                str5 = "Reply";
                                                                                str10 = str6;
                                                                                i = i4;
                                                                                LocalResourceEngine.Result result3222 = new LocalResourceEngine.Result(bArr);
                                                                                if (!str4.equals(str9)) {
                                                                                }
                                                                                Object[] objArr322 = new Object[i];
                                                                                objArr322[0] = "d";
                                                                                objArr322[1] = BsonLite.EMPTY_DOCUMENT;
                                                                                result3222.add(str9 + str5, BsonLite.document(objArr322));
                                                                                roomFailure(result3222, str9);
                                                                                result3222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                                                return result3222;
                                                                            } catch (IllegalArgumentException e9) {
                                                                                e = e9;
                                                                                str9 = str;
                                                                                runtimeException = e;
                                                                                str5 = "Reply";
                                                                                str10 = str6;
                                                                                i = i4;
                                                                                LocalResourceEngine.Result result32222 = new LocalResourceEngine.Result(bArr);
                                                                                if (!str4.equals(str9)) {
                                                                                }
                                                                                Object[] objArr3222 = new Object[i];
                                                                                objArr3222[0] = "d";
                                                                                objArr3222[1] = BsonLite.EMPTY_DOCUMENT;
                                                                                result32222.add(str9 + str5, BsonLite.document(objArr3222));
                                                                                roomFailure(result32222, str9);
                                                                                result32222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                                                return result32222;
                                                                            }
                                                                            try {
                                                                                byte[] withProfileBool = BsonLite.withProfileBool(BsonLite.withProfileArray(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileArray(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(r10, "hr", m13v), "st", 2), "ts", (int) (j / 1000)), "srw", Collections.emptyList()), "stfc", 0), "lv", Math.max(1, m13v(bArr, "level"))), "cib", 1), "iti", Collections.emptyList()), "ex", false);
                                                                                save(result2, withProfileBool);
                                                                                i5 = 2;
                                                                                try {
                                                                                    Object[] objArr4 = new Object[2];
                                                                                    objArr4[0] = "s";
                                                                                    objArr4[1] = "gg.avatar.heroTestData.startTs = " + m13v(withProfileBool, "ts") + "; gg.avatar.heroTestData.expired = False";
                                                                                    result2.add("evalCode", BsonLite.document(objArr4));
                                                                                    Object[] objArr5 = new Object[4];
                                                                                    objArr5[0] = "h";
                                                                                    objArr5[1] = Integer.valueOf(m13v);
                                                                                    objArr5[2] = "s";
                                                                                    objArr5[3] = 1;
                                                                                    result2.add("heroTestSelectHeroReply", BsonLite.document(objArr5));
                                                                                    result = result2;
                                                                                } catch (ArithmeticException e10) {
                                                                                    e = e10;
                                                                                    str9 = str;
                                                                                    runtimeException = e;
                                                                                    str10 = str6;
                                                                                    str5 = "Reply";
                                                                                    i = i5;
                                                                                    LocalResourceEngine.Result result322222 = new LocalResourceEngine.Result(bArr);
                                                                                    if (!str4.equals(str9)) {
                                                                                    }
                                                                                    Object[] objArr32222 = new Object[i];
                                                                                    objArr32222[0] = "d";
                                                                                    objArr32222[1] = BsonLite.EMPTY_DOCUMENT;
                                                                                    result322222.add(str9 + str5, BsonLite.document(objArr32222));
                                                                                    roomFailure(result322222, str9);
                                                                                    result322222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                                                    return result322222;
                                                                                } catch (IllegalArgumentException e11) {
                                                                                    e = e11;
                                                                                    str9 = str;
                                                                                    runtimeException = e;
                                                                                    str10 = str6;
                                                                                    str5 = "Reply";
                                                                                    i = i5;
                                                                                    LocalResourceEngine.Result result3222222 = new LocalResourceEngine.Result(bArr);
                                                                                    if (!str4.equals(str9)) {
                                                                                    }
                                                                                    Object[] objArr322222 = new Object[i];
                                                                                    objArr322222[0] = "d";
                                                                                    objArr322222[1] = BsonLite.EMPTY_DOCUMENT;
                                                                                    result3222222.add(str9 + str5, BsonLite.document(objArr322222));
                                                                                    roomFailure(result3222222, str9);
                                                                                    result3222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                                                    return result3222222;
                                                                                }
                                                                            } catch (ArithmeticException e12) {
                                                                                e = e12;
                                                                                str9 = str;
                                                                                runtimeException = e;
                                                                                str10 = str6;
                                                                                str5 = "Reply";
                                                                                i = 2;
                                                                                LocalResourceEngine.Result result32222222 = new LocalResourceEngine.Result(bArr);
                                                                                if (!str4.equals(str9)) {
                                                                                }
                                                                                Object[] objArr3222222 = new Object[i];
                                                                                objArr3222222[0] = "d";
                                                                                objArr3222222[1] = BsonLite.EMPTY_DOCUMENT;
                                                                                result32222222.add(str9 + str5, BsonLite.document(objArr3222222));
                                                                                roomFailure(result32222222, str9);
                                                                                result32222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                                                return result32222222;
                                                                            } catch (IllegalArgumentException e13) {
                                                                                e = e13;
                                                                                str9 = str;
                                                                                runtimeException = e;
                                                                                str10 = str6;
                                                                                str5 = "Reply";
                                                                                i = 2;
                                                                                LocalResourceEngine.Result result322222222 = new LocalResourceEngine.Result(bArr);
                                                                                if (!str4.equals(str9)) {
                                                                                }
                                                                                Object[] objArr32222222 = new Object[i];
                                                                                objArr32222222[0] = "d";
                                                                                objArr32222222[1] = BsonLite.EMPTY_DOCUMENT;
                                                                                result322222222.add(str9 + str5, BsonLite.document(objArr32222222));
                                                                                roomFailure(result322222222, str9);
                                                                                result322222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                                                return result322222222;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                throw new IllegalArgumentException("当前不能报名该神器使的资质考试");
                                                            } catch (ArithmeticException | IllegalArgumentException e14) {
                                                                runtimeException = e14;
                                                                i = m13v2;
                                                                str10 = r10;
                                                                str5 = "Reply";
                                                                str9 = str;
                                                            }
                                                        } catch (ArithmeticException | IllegalArgumentException e15) {
                                                            str9 = str;
                                                            runtimeException = e15;
                                                            str5 = "Reply";
                                                            str10 = str6;
                                                            i = 2;
                                                            LocalResourceEngine.Result result3222222222 = new LocalResourceEngine.Result(bArr);
                                                            if (!str4.equals(str9)) {
                                                            }
                                                            Object[] objArr322222222 = new Object[i];
                                                            objArr322222222[0] = "d";
                                                            objArr322222222[1] = BsonLite.EMPTY_DOCUMENT;
                                                            result3222222222.add(str9 + str5, BsonLite.document(objArr322222222));
                                                            roomFailure(result3222222222, str9);
                                                            result3222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                            return result3222222222;
                                                        }
                                                    } else {
                                                        str10 = str6;
                                                        str9 = str;
                                                        try {
                                                            if ("q7DailyBegin".equals(str9)) {
                                                                try {
                                                                    begin(result2, localFeatureCatalog, bArr2, r10, j);
                                                                    result = result2;
                                                                } catch (ArithmeticException | IllegalArgumentException e16) {
                                                                    runtimeException = e16;
                                                                    i5 = 2;
                                                                    str5 = "Reply";
                                                                    i = i5;
                                                                    LocalResourceEngine.Result result32222222222 = new LocalResourceEngine.Result(bArr);
                                                                    if (!str4.equals(str9)) {
                                                                    }
                                                                    Object[] objArr3222222222 = new Object[i];
                                                                    objArr3222222222[0] = "d";
                                                                    objArr3222222222[1] = BsonLite.EMPTY_DOCUMENT;
                                                                    result32222222222.add(str9 + str5, BsonLite.document(objArr3222222222));
                                                                    roomFailure(result32222222222, str9);
                                                                    result32222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                                    return result32222222222;
                                                                }
                                                            } else {
                                                                result = result2;
                                                                r5 = 2;
                                                                i5 = 2;
                                                                r5 = 2;
                                                                try {
                                                                    if (!"heroTestGiveup".equals(str9)) {
                                                                        try {
                                                                            if (!"heroTestExpire".equals(str9)) {
                                                                                if ("heroTestGiveupManeuver".equals(str9)) {
                                                                                    if (active(bArr)) {
                                                                                        throw new IllegalArgumentException("请先退出当前战斗");
                                                                                    }
                                                                                    result.add("heroTestGiveupManeuverReply", BsonLite.document(new Object[]{"d", r10}));
                                                                                } else if ("triggerHeroManeuverEvent".equals(str9)) {
                                                                                    save(result, BsonLite.withProfileBool(r10, "te", true));
                                                                                } else if ("heroTestPickSkillTestReward".equals(str9)) {
                                                                                    if (active(bArr) || !(m13v(r10, "st") == 3 || (m13v(r10, "st") == 4 && m13v(r10, "cib") == 1))) {
                                                                                        throw new IllegalArgumentException("请先完成四项技巧测试");
                                                                                    }
                                                                                    int m13v3 = m13v(r10, "st");
                                                                                    byte[] bArr3 = r10;
                                                                                    if (m13v3 == 3) {
                                                                                        byte[] withProfileInt2 = BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileArray(r10, "iti", integrationPlan(localFeatureCatalog, m13v(r10, "hr"))), "cib", 1), "st", 4);
                                                                                        save(result, withProfileInt2);
                                                                                        bArr3 = withProfileInt2;
                                                                                    }
                                                                                    ArrayList arrayList = new ArrayList();
                                                                                    for (byte[] bArr4 : LocalResourceEngine.array(m12d(bArr3, "iti"))) {
                                                                                        arrayList.add(Arrays.asList(Integer.valueOf(m13v(bArr4, "0")), m12d(bArr4, "1")));
                                                                                    }
                                                                                    result.add("heroTestPickSkillTestRewardReply", BsonLite.document("i", arrayList));
                                                                                } else {
                                                                                    if (!"heroTestPickHeroTestReward".equals(str9)) {
                                                                                        if ("getBossChoice".equals(str9)) {
                                                                                            throw new IllegalArgumentException("时空乱流已达到开放条件，但战斗流程尚未接入本地网关；未扣除资源");
                                                                                        }
                                                                                        throw new IllegalArgumentException("该挑战的联网战斗尚未接入本地网关，未扣除资源");
                                                                                    }
                                                                                    int m13v4 = m13v(r10, "hr");
                                                                                    if (active(bArr) || m13v(r10, "st") != 5 || m13v(r10, "cib") != 11 || !LocalResourceEngine.ownsHero(bArr, m13v4) || Boolean.TRUE.equals(BsonLite.boolValue(BsonLite.profileHeroDocument(bArr, m13v4), "pt"))) {
                                                                                        throw new IllegalArgumentException("请先完成全部十关综合测试；考试奖励只能领取一次");
                                                                                    }
                                                                                    rewards(result, localResourceCatalog, localFeatureCatalog.get("Q", Integer.valueOf(m13v4)));
                                                                                    result.profile = BsonLite.withHeroDocument(result.profile, m13v4, BsonLite.withProfileBool(BsonLite.profileHeroDocument(result.profile, m13v4), "pt", true));
                                                                                    save(result, BsonLite.withProfileBool(BsonLite.withProfileInt(BsonLite.withProfileInt(r10, "st", 1), "ts", 0), "ex", false));
                                                                                    LocalResourceEngine.syncCurrencies(result);
                                                                                    result.add("heroTestPickHeroTestRewardReply", BsonLite.document("rewards", result.reward()));
                                                                                }
                                                                            }
                                                                        } catch (ArithmeticException | IllegalArgumentException e17) {
                                                                            runtimeException = e17;
                                                                            str5 = "Reply";
                                                                            i = i5;
                                                                            LocalResourceEngine.Result result322222222222 = new LocalResourceEngine.Result(bArr);
                                                                            if (!str4.equals(str9)) {
                                                                            }
                                                                            Object[] objArr32222222222 = new Object[i];
                                                                            objArr32222222222[0] = "d";
                                                                            objArr32222222222[1] = BsonLite.EMPTY_DOCUMENT;
                                                                            result322222222222.add(str9 + str5, BsonLite.document(objArr32222222222));
                                                                            roomFailure(result322222222222, str9);
                                                                            result322222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                                            return result322222222222;
                                                                        }
                                                                    }
                                                                    if (active(bArr)) {
                                                                        throw new IllegalArgumentException("请先退出当前战斗");
                                                                    }
                                                                    if (!"heroTestGiveup".equals(str9) && !expired(r10, j)) {
                                                                        resetExam = BsonLite.withProfileBool(r10, "ex", false);
                                                                        save(result, resetExam);
                                                                        StringBuilder sb = new StringBuilder();
                                                                        sb.append(str9);
                                                                        sb.append("Reply");
                                                                        result.add(sb.toString(), BsonLite.document("d", resetExam));
                                                                    }
                                                                    resetExam = resetExam(r10);
                                                                    save(result, resetExam);
                                                                    StringBuilder sb2 = new StringBuilder();
                                                                    sb2.append(str9);
                                                                    sb2.append("Reply");
                                                                    result.add(sb2.toString(), BsonLite.document("d", resetExam));
                                                                } catch (ArithmeticException e18) {
                                                                    e = e18;
                                                                    str5 = "Reply";
                                                                    runtimeException = e;
                                                                    i = r5;
                                                                    LocalResourceEngine.Result result3222222222222 = new LocalResourceEngine.Result(bArr);
                                                                    if (!str4.equals(str9)) {
                                                                    }
                                                                    Object[] objArr322222222222 = new Object[i];
                                                                    objArr322222222222[0] = "d";
                                                                    objArr322222222222[1] = BsonLite.EMPTY_DOCUMENT;
                                                                    result3222222222222.add(str9 + str5, BsonLite.document(objArr322222222222));
                                                                    roomFailure(result3222222222222, str9);
                                                                    result3222222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                                    return result3222222222222;
                                                                } catch (IllegalArgumentException e19) {
                                                                    e = e19;
                                                                    str5 = "Reply";
                                                                    runtimeException = e;
                                                                    i = r5;
                                                                    LocalResourceEngine.Result result32222222222222 = new LocalResourceEngine.Result(bArr);
                                                                    if (!str4.equals(str9)) {
                                                                    }
                                                                    Object[] objArr3222222222222 = new Object[i];
                                                                    objArr3222222222222[0] = "d";
                                                                    objArr3222222222222[1] = BsonLite.EMPTY_DOCUMENT;
                                                                    result32222222222222.add(str9 + str5, BsonLite.document(objArr3222222222222));
                                                                    roomFailure(result32222222222222, str9);
                                                                    result32222222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                                    return result32222222222222;
                                                                }
                                                            }
                                                        } catch (ArithmeticException e20) {
                                                            e = e20;
                                                            str5 = "Reply";
                                                            r5 = 2;
                                                            runtimeException = e;
                                                            i = r5;
                                                            LocalResourceEngine.Result result322222222222222 = new LocalResourceEngine.Result(bArr);
                                                            if (!str4.equals(str9)) {
                                                            }
                                                            Object[] objArr32222222222222 = new Object[i];
                                                            objArr32222222222222[0] = "d";
                                                            objArr32222222222222[1] = BsonLite.EMPTY_DOCUMENT;
                                                            result322222222222222.add(str9 + str5, BsonLite.document(objArr32222222222222));
                                                            roomFailure(result322222222222222, str9);
                                                            result322222222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                            return result322222222222222;
                                                        } catch (IllegalArgumentException e21) {
                                                            e = e21;
                                                            str5 = "Reply";
                                                            r5 = 2;
                                                            runtimeException = e;
                                                            i = r5;
                                                            LocalResourceEngine.Result result3222222222222222 = new LocalResourceEngine.Result(bArr);
                                                            if (!str4.equals(str9)) {
                                                            }
                                                            Object[] objArr322222222222222 = new Object[i];
                                                            objArr322222222222222[0] = "d";
                                                            objArr322222222222222[1] = BsonLite.EMPTY_DOCUMENT;
                                                            result3222222222222222.add(str9 + str5, BsonLite.document(objArr322222222222222));
                                                            roomFailure(result3222222222222222, str9);
                                                            result3222222222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                            return result3222222222222222;
                                                        }
                                                    }
                                                }
                                                save(result, r10);
                                                ?? r3 = new Object[i3];
                                                r3[0] = "d";
                                                r3[1] = r10;
                                                result.add(str9 + str8, BsonLite.document(r3));
                                            }
                                            if (z && ("heroTestPickSkillTestReward".equals(str9) || ("q7DailyBegin".equals(str9) && (m13v(r5, "t") == 3 || m13v(r5, "t") == 4)))) {
                                                save(result2, resetExam(defaults));
                                                try {
                                                    Object[] objArr6 = new Object[2];
                                                    objArr6[0] = "d";
                                                    objArr6[1] = m12d(result2.profile, "herotest");
                                                    result2.add("heroTestGiveupReply", BsonLite.document(objArr6));
                                                } catch (ArithmeticException | IllegalArgumentException e22) {
                                                    runtimeException = e22;
                                                    i5 = 2;
                                                    str10 = str7;
                                                    str2 = "m";
                                                    str3 = "heroShizhanQuery";
                                                    str4 = "heroTestQuery";
                                                    str5 = "Reply";
                                                    i = i5;
                                                    LocalResourceEngine.Result result32222222222222222 = new LocalResourceEngine.Result(bArr);
                                                    if (!str4.equals(str9)) {
                                                    }
                                                    Object[] objArr3222222222222222 = new Object[i];
                                                    objArr3222222222222222[0] = "d";
                                                    objArr3222222222222222[1] = BsonLite.EMPTY_DOCUMENT;
                                                    result32222222222222222.add(str9 + str5, BsonLite.document(objArr3222222222222222));
                                                    roomFailure(result32222222222222222, str9);
                                                    result32222222222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                    return result32222222222222222;
                                                }
                                                try {
                                                    Object[] objArr7 = new Object[2];
                                                    objArr7[0] = "m";
                                                    objArr7[1] = "资质考试已过期，请重新报名；未扣除资源";
                                                    result2.add(str7, BsonLite.document(objArr7));
                                                    return result2;
                                                } catch (ArithmeticException | IllegalArgumentException e23) {
                                                    e = e23;
                                                    r5 = 2;
                                                    str10 = str7;
                                                    str2 = "m";
                                                    str3 = "heroShizhanQuery";
                                                    str4 = "heroTestQuery";
                                                    str5 = "Reply";
                                                    runtimeException = e;
                                                    i = r5;
                                                    LocalResourceEngine.Result result322222222222222222 = new LocalResourceEngine.Result(bArr);
                                                    if (!str4.equals(str9)) {
                                                    }
                                                    Object[] objArr32222222222222222 = new Object[i];
                                                    objArr32222222222222222[0] = "d";
                                                    objArr32222222222222222[1] = BsonLite.EMPTY_DOCUMENT;
                                                    result322222222222222222.add(str9 + str5, BsonLite.document(objArr32222222222222222));
                                                    roomFailure(result322222222222222222, str9);
                                                    result322222222222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                                    return result322222222222222222;
                                                }
                                            }
                                            ?? r102 = defaults;
                                            if ("heroTestQuery".equals(str9)) {
                                            }
                                            save(result, r102);
                                            ?? r32 = new Object[i3];
                                            r32[0] = "d";
                                            r32[1] = r102;
                                            result.add(str9 + str8, BsonLite.document(r32));
                                        }
                                    } catch (ArithmeticException | IllegalArgumentException e24) {
                                        runtimeException = e24;
                                        i2 = 2;
                                    }
                                }
                                if ("heroTestQuery".equals(str9)) {
                                }
                                save(result, r102);
                                ?? r322 = new Object[i3];
                                r322[0] = "d";
                                r322[1] = r102;
                                result.add(str9 + str8, BsonLite.document(r322));
                            } catch (ArithmeticException e25) {
                                e = e25;
                                runtimeException = e;
                                i = r5;
                                LocalResourceEngine.Result result3222222222222222222 = new LocalResourceEngine.Result(bArr);
                                if (!str4.equals(str9)) {
                                }
                                Object[] objArr322222222222222222 = new Object[i];
                                objArr322222222222222222[0] = "d";
                                objArr322222222222222222[1] = BsonLite.EMPTY_DOCUMENT;
                                result3222222222222222222.add(str9 + str5, BsonLite.document(objArr322222222222222222));
                                roomFailure(result3222222222222222222, str9);
                                result3222222222222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                return result3222222222222222222;
                            } catch (IllegalArgumentException e26) {
                                e = e26;
                                runtimeException = e;
                                i = r5;
                                LocalResourceEngine.Result result32222222222222222222 = new LocalResourceEngine.Result(bArr);
                                if (!str4.equals(str9)) {
                                }
                                Object[] objArr3222222222222222222 = new Object[i];
                                objArr3222222222222222222[0] = "d";
                                objArr3222222222222222222[1] = BsonLite.EMPTY_DOCUMENT;
                                result32222222222222222222.add(str9 + str5, BsonLite.document(objArr3222222222222222222));
                                roomFailure(result32222222222222222222, str9);
                                result32222222222222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                                return result32222222222222222222;
                            }
                        } catch (ArithmeticException | IllegalArgumentException e27) {
                            e = e27;
                            str10 = str7;
                            str2 = "m";
                            str3 = "heroShizhanQuery";
                            str4 = "heroTestQuery";
                            str5 = "Reply";
                            r5 = 2;
                            runtimeException = e;
                            i = r5;
                            LocalResourceEngine.Result result322222222222222222222 = new LocalResourceEngine.Result(bArr);
                            if (!str4.equals(str9)) {
                            }
                            Object[] objArr32222222222222222222 = new Object[i];
                            objArr32222222222222222222[0] = "d";
                            objArr32222222222222222222[1] = BsonLite.EMPTY_DOCUMENT;
                            result322222222222222222222.add(str9 + str5, BsonLite.document(objArr32222222222222222222));
                            roomFailure(result322222222222222222222, str9);
                            result322222222222222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                            return result322222222222222222222;
                        }
                        z = false;
                        str5 = "heroTestSelectHero";
                        if (z) {
                        }
                        if (z) {
                            save(result2, resetExam(defaults));
                            Object[] objArr62 = new Object[2];
                            objArr62[0] = "d";
                            objArr62[1] = m12d(result2.profile, "herotest");
                            result2.add("heroTestGiveupReply", BsonLite.document(objArr62));
                            Object[] objArr72 = new Object[2];
                            objArr72[0] = "m";
                            objArr72[1] = "资质考试已过期，请重新报名；未扣除资源";
                            result2.add(str7, BsonLite.document(objArr72));
                            return result2;
                        }
                        ?? r1022 = defaults;
                    } catch (ArithmeticException | IllegalArgumentException e28) {
                        e = e28;
                        r5 = 2;
                        str2 = "m";
                        str3 = "heroShizhanQuery";
                        str4 = "heroTestQuery";
                        str5 = "Reply";
                        str10 = str6;
                    }
                }
                str2 = "m";
                str3 = "heroShizhanQuery";
                i6 = i2;
                str4 = "heroTestQuery";
                i4 = i6;
                str5 = "Reply";
                str10 = str6;
                i = i4;
                LocalResourceEngine.Result result3222222222222222222222 = new LocalResourceEngine.Result(bArr);
                if (!str4.equals(str9) || str3.equals(str9)) {
                    Object[] objArr322222222222222222222 = new Object[i];
                    objArr322222222222222222222[0] = "d";
                    objArr322222222222222222222[1] = BsonLite.EMPTY_DOCUMENT;
                    result3222222222222222222222.add(str9 + str5, BsonLite.document(objArr322222222222222222222));
                }
                roomFailure(result3222222222222222222222, str9);
                result3222222222222222222222.add(str10, BsonLite.stringDocument(str2, runtimeException.getMessage()));
                return result3222222222222222222222;
            }
            finish(result2, localFeatureCatalog, localResourceCatalog, r5);
            result = result2;
        }
        return result;
    }

    static boolean shop(LocalFeatureCatalog localFeatureCatalog, String str, byte[] bArr) {
        return "buyCardMallItem".equals(str) && !(localFeatureCatalog.get("S", Integer.valueOf(m13v(bArr, "store_id"))) == null && localFeatureCatalog.get("CS", Integer.valueOf(m13v(bArr, "store_id"))) == null);
    }

    private static List<List<Object>> integrationPlan(LocalFeatureCatalog localFeatureCatalog, int i) {
        byte[] document;
        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(localFeatureCatalog.get("I", "monsters"), "groups"));
        List<byte[]> array = LocalResourceEngine.array(m12d(localFeatureCatalog.get("I", "heroes"), "groups"));
        if (arrayList.isEmpty() || array.isEmpty()) {
            throw new IllegalArgumentException("缺少原版综合测试敌人目录");
        }
        Collections.shuffle(arrayList);
        Collections.shuffle(array);
        ArrayList arrayList2 = new ArrayList(BsonLite.intArrayValues(localFeatureCatalog.get("E", Integer.valueOf(i)), "heroes"));
        Collections.shuffle(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        int i2 = 1;
        while (i2 <= 10) {
            if (i2 == 10 || i2 % 3 == 0) {
                List<Integer> asList = arrayList2.size() >= 3 ? Arrays.asList((Integer) arrayList2.get((i2 - 1) % arrayList2.size()), (Integer) arrayList2.get(i2 % arrayList2.size()), (Integer) arrayList2.get((i2 + 1) % arrayList2.size())) : BsonLite.intArrayValues(BsonLite.document("h", array.get((i2 - 1) % array.size())), "h");
                if (asList.size() != 3) {
                    throw new IllegalArgumentException("综合测试敌方队伍定义无效");
                }
                Object[] objArr = new Object[4];
                objArr[0] = "type";
                objArr[1] = Integer.valueOf(i2 == 10 ? 2 : 1);
                objArr[2] = "heroes";
                objArr[3] = asList;
                document = BsonLite.document(objArr);
            } else {
                document = BsonLite.document("type", 0, "groupid", arrayList.get((i2 - 1) % arrayList.size()));
            }
            arrayList3.add(Arrays.asList(Integer.valueOf(i2), document));
            i2++;
        }
        return arrayList3;
    }

    static byte[] integrationInfo(byte[] bArr, int i) {
        for (byte[] bArr2 : LocalResourceEngine.array(m12d(bArr, "iti"))) {
            if (m13v(bArr2, "0") == i) {
                return m12d(bArr2, "1");
            }
        }
        return BsonLite.EMPTY_DOCUMENT;
    }

    private static void begin(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, byte[] bArr, byte[] bArr2, long j) {
        List<Integer> list;
        int i;
        String str;
        byte[] bArr3;
        int m13v = m13v(bArr, "t");
        if (m13v == 11) {
            result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyBattle", BsonLite.document("t", Integer.valueOf(m13v), "s", Integer.valueOf(m13v(bArr, "s")), "h", BsonLite.intArrayValues(bArr, "h"), "b", 0));
            return;
        }
        byte[] bArr4 = bArr2;
        int m13v2 = m13v(bArr, "t");
        int m13v3 = m13v(bArr, "s");
        int m13v4 = m13v(m12d(bArr, "d"), "battleId");
        LocalDiagnosticLog.m16i("Project7Gateway", "q7bgBegin t=" + m13v2 + " s=" + m13v3 + " b=" + m13v4);
        StringBuilder sb = new StringBuilder();
        sb.append(m13v2);
        sb.append(":");
        sb.append(m13v4);
        byte[] bArr5 = localFeatureCatalog.get("B", sb.toString());
        String str2 = "h";
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "h");
        if (bArr5 == null || m13v(bArr5, "scene") != m13v3 || Boolean.TRUE.equals(BsonLite.boolValue(bArr5, "online"))) {
            throw new IllegalArgumentException("此关卡尚未接入离线战斗，未扣除资源");
        }
        if (!intArrayValues.isEmpty()) {
            if (intArrayValues.size() <= (m13v2 == 4 ? 3 : 1) && new HashSet(intArrayValues).size() == intArrayValues.size()) {
                Iterator<Integer> it = intArrayValues.iterator();
                while (it.hasNext()) {
                    if (!LocalResourceEngine.ownsHero(result.profile, it.next().intValue())) {
                        throw new IllegalArgumentException("请使用已拥有的神器使出战");
                    }
                }
                byte[] m12d = m12d(result.profile, "q7DailyBattle");
                if (active(result.profile)) {
                    if (m13v(m12d, "t") != m13v2 || m13v(m12d, "s") != m13v3 || !BsonLite.intArrayValues(m12d, "h").equals(intArrayValues)) {
                        throw new IllegalArgumentException("请先结束当前日常战斗");
                    }
                    return;
                }
                if (!BsonLite.keys(m12d(result.profile, "q7Battle")).isEmpty() || Boolean.TRUE.equals(BsonLite.boolValue(m12d(result.profile, "combat"), "of"))) {
                    throw new IllegalArgumentException("请先结束当前主线战斗");
                }
                int intValue = intArrayValues.get(0).intValue();
                if (m13v2 == 3) {
                    if (m13v(bArr4, "st") == 2 && m13v(bArr4, "hr") == intValue && !passed(m12d(bArr4, "srw"), m13v4)) {
                        list = intArrayValues;
                        i = m13v2;
                        str = "h";
                    } else {
                        throw new IllegalArgumentException("当前技巧测试不满足进入条件");
                    }
                } else if (m13v2 == 4) {
                    if (m13v(bArr4, "st") == 4 && m13v4 == m13v(bArr4, "cib") && intArrayValues.contains(Integer.valueOf(m13v(bArr4, "hr"))) && !BsonLite.keys(integrationInfo(bArr4, m13v4)).isEmpty()) {
                        list = intArrayValues;
                        i = m13v2;
                        str = "h";
                    } else {
                        throw new IllegalArgumentException("请按顺序挑战综合测试，并携带报名的神器使");
                    }
                } else if (m13v2 == 10) {
                    byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, intValue);
                    list = intArrayValues;
                    if (!Boolean.TRUE.equals(BsonLite.boolValue(profileHeroDocument, "pt"))) {
                        throw new IllegalArgumentException("该神器使尚未通过资质考试");
                    }
                    Iterator<byte[]> it2 = LocalResourceEngine.array(m12d(m12d(result.profile, "heromgr"), "hrs")).iterator();
                    int i2 = 1;
                    while (it2.hasNext()) {
                        Iterator<byte[]> it3 = it2;
                        int i3 = m13v2;
                        byte[] m12d2 = m12d(it2.next(), "1");
                        String str3 = str2;
                        if (Boolean.TRUE.equals(BsonLite.boolValue(m12d2, "pt"))) {
                            Iterator<byte[]> it4 = LocalResourceEngine.array(m12d(m12d2, "htmr")).iterator();
                            while (it4.hasNext()) {
                                byte[] next = it4.next();
                                Iterator<byte[]> it5 = it4;
                                if (Boolean.TRUE.equals(BsonLite.boolValue(next, "1"))) {
                                    i2 = Math.max(i2, m13v(next, "0") + 1);
                                }
                                it4 = it5;
                            }
                            m13v2 = i3;
                            it2 = it3;
                            str2 = str3;
                        } else {
                            m13v2 = i3;
                            it2 = it3;
                            str2 = str3;
                        }
                    }
                    i = m13v2;
                    str = str2;
                    if (m13v4 > i2) {
                        throw new IllegalArgumentException("请先完成上一关实战演练");
                    }
                    if (passed(m12d(profileHeroDocument, "htmr"), m13v4)) {
                        bArr3 = localFeatureCatalog.get("M", Integer.valueOf(m13v4));
                    } else {
                        bArr3 = localFeatureCatalog.get("R", Math.max(1, m13v(result.profile, "level")) + ":" + m13v4);
                    }
                    if (bArr3 != null) {
                        result.profile = LocalServiceEngine.recover(result.profile, j);
                        byte[] m12d3 = m12d(result.profile, "city");
                        int m13v5 = m13v(localFeatureCatalog.get("P", 10), "consume");
                        if (m13v(m12d3, "jpv") >= m13v5) {
                            byte[] withProfileInt = BsonLite.withProfileInt(m12d3, "jpv", m13v(m12d3, "jpv") - m13v5);
                            result.profile = BsonLite.withProfileDocument(result.profile, "city", withProfileInt);
                            power(result, withProfileInt);
                            bArr4 = bArr2;
                            save(result, BsonLite.withProfileInt(bArr4, "szh", intValue));
                            result.add("enterManeuverBattleReply", BsonLite.document(str, Integer.valueOf(intValue), "i", Integer.valueOf(m13v4)));
                        } else {
                            throw new IllegalArgumentException("精神力不足");
                        }
                    } else {
                        throw new IllegalArgumentException("缺少原版奖励定义，未开始战斗");
                    }
                } else {
                    throw new IllegalArgumentException("不支持的日常战斗类型");
                }
                byte[] bArr6 = result.profile;
                Object[] objArr = new Object[24];
                objArr[0] = "active";
                objArr[1] = true;
                objArr[2] = "t";
                objArr[3] = Integer.valueOf(i);
                objArr[4] = "s";
                objArr[5] = Integer.valueOf(m13v3);
                objArr[6] = str;
                objArr[7] = list;
                objArr[8] = "b";
                objArr[9] = Integer.valueOf(m13v4);
                objArr[10] = "wishCost";
                int i4 = i;
                objArr[11] = Integer.valueOf(i4 == 10 ? m13v(localFeatureCatalog.get("P", 10), "consume") : 0);
                objArr[12] = "wishFailCost";
                objArr[13] = Integer.valueOf(i4 == 10 ? m13v(localFeatureCatalog.get("P", 10), "fail_consume") : 0);
                objArr[14] = "repeat";
                objArr[15] = Boolean.valueOf(i4 == 10 && passed(m12d(BsonLite.profileHeroDocument(result.profile, intValue), "htmr"), m13v4));
                objArr[16] = "lv";
                objArr[17] = Integer.valueOf(i4 == 4 ? 30 : Math.max(1, m13v(result.profile, "level")));
                objArr[18] = "ml";
                objArr[19] = Integer.valueOf(m13v(bArr5, "monster_level"));
                objArr[20] = "info";
                objArr[21] = i4 == 4 ? integrationInfo(bArr4, m13v4) : BsonLite.EMPTY_DOCUMENT;
                objArr[22] = "f";
                objArr[23] = LocalResourceEngine.uuid();
                result.profile = BsonLite.withProfileDocument(bArr6, "q7DailyBattle", BsonLite.document(objArr));
                return;
            }
        }
        throw new IllegalArgumentException("该关卡出战队伍人数无效或存在重复角色");
    }

    static byte[] combatReply(int i, int i2, List<Integer> list, byte[] bArr, String str, byte[] bArr2, LocalCombatCatalog localCombatCatalog) {
        byte[] m12d = m12d(bArr2, "q7DailyBattle");
        byte[] combatOfflineReplyDocument = BsonLite.combatOfflineReplyDocument(i, i2, BsonLite.stringValue(m12d, "f"), list, bArr, str, bArr2, localCombatCatalog, i == 3 ? 30 : Math.max(1, m13v(m12d, "lv")));
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withoutProfileKey(m12d(combatOfflineReplyDocument, "c"), "monster"), "hero_lv", i == 3 ? 30 : Math.max(1, m13v(m12d, "lv"))), "monster_lv", i != 3 ? Math.max(1, m13v(m12d, "ml")) : 30);
        if (i == 7) {
            withProfileInt = BsonLite.withProfileDocument(BsonLite.withProfileInt(withProfileInt, "mission_mode", 12), "maze", m12d(m12d, "maze"));
        }
        if (i == 5) {
            withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileBool(withProfileInt, "buff_enhance", Boolean.TRUE.equals(BsonLite.boolValue(m12d, "assist"))), "buff_count", m13v(m12d, "stacks")), "areaId", m13v(m12d, "a"));
        }
        if (i == 16) {
            withProfileInt = BsonLite.withProfileBool(BsonLite.withProfileBool(withProfileInt, "lunhuizhijing", true), "buff_enhance", false);
        }
        if (i == 4) {
            withProfileInt = BsonLite.withProfileIntArray(BsonLite.withProfileDocument(BsonLite.withProfileInt(withProfileInt, "cur_integration_test_id", m13v(m12d, "b")), "integration_test_battle_info", m12d(m12d, "info")), "select_heroes", Collections.singletonList(Integer.valueOf(m13v(defaults(bArr2), "hr"))));
        }
        return BsonLite.withProfileDocument(combatOfflineReplyDocument, "c", withProfileInt);
    }

    static boolean passed(byte[] bArr, int i) {
        for (byte[] bArr2 : LocalResourceEngine.array(bArr)) {
            if (m13v(bArr2, "0") == i && Boolean.TRUE.equals(BsonLite.boolValue(bArr2, "1"))) {
                return true;
            }
        }
        return false;
    }

    static List<List<Object>> updated(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        Iterator<byte[]> it = LocalResourceEngine.array(bArr).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            byte[] next = it.next();
            if (m13v(next, "0") != i) {
                arrayList.add(Arrays.asList(Integer.valueOf(m13v(next, "0")), Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(next, "1")))));
            }
        }
        Object[] objArr = new Object[2];
        objArr[0] = Integer.valueOf(i);
        objArr[1] = Boolean.valueOf(z || passed(bArr, i));
        arrayList.add(Arrays.asList(objArr));
        return arrayList;
    }

    private static void power(LocalResourceEngine.Result result, byte[] bArr) {
        result.add("syncJingshenliPower", BsonLite.document("p", Integer.valueOf(m13v(bArr, "jpv")), "t", Integer.valueOf(m13v(bArr, "jpvt")), "cjsla", Integer.valueOf(m13v(bArr, "cjsla"))));
    }

    private static void finish(LocalResourceEngine.Result result, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, byte[] bArr) {
        int m13v;
        boolean equals;
        String str;
        String str2;
        String str3;
        byte[] bArr2;
        char c;
        byte[] bArr3;
        List<Integer> list;
        boolean z;
        byte[] bArr4;
        byte[] withProfileDocument;
        boolean z2;
        Object obj;
        String str4;
        boolean z3;
        byte[] bArr5;
        byte[] bArr6;
        boolean z4;
        List<Integer> list2;
        byte[] m12d = m12d(result.profile, "q7DailyBattle");
        int m13v2 = m13v(bArr, "t");
        int m13v3 = m13v(bArr, "s");
        int m13v4 = m13v(m12d, "b");
        List<Integer> intArrayValues = BsonLite.intArrayValues(bArr, "h");
        int m13v5 = m13v(m12d, "t");
        if (m13v5 != m13v5 || (m13v = m13v(m12d, "s")) != m13v || (equals = BsonLite.intArrayValues(m12d, "h").equals(intArrayValues)) != equals) {
            throw new IllegalArgumentException("日常战斗结算与已保存的入场记录不匹配");
        }
        String str5 = "reply";
        if (!active(result.profile)) {
            byte[] documentValue = BsonLite.documentValue(m12d, "reply");
            if (documentValue != null) {
                result.add("combatOfflineReward", documentValue);
                return;
            }
            return;
        }
        boolean z5 = BsonLite.combatWinValue(bArr) != 0;
        byte[] defaults = defaults(result.profile);
        if (m13v2 == 3) {
            List<List<Object>> updated = updated(m12d(defaults, "srw"), m13v4, z5);
            withProfileDocument = BsonLite.withProfileArray(defaults, "srw", updated);
            Iterator<List<Object>> it = updated.iterator();
            int i = 0;
            while (it.hasNext()) {
                Iterator<List<Object>> it2 = it;
                String str6 = str5;
                if (Boolean.TRUE.equals(it.next().get(1))) {
                    i++;
                }
                it = it2;
                str5 = str6;
            }
            str = str5;
            if (!z5) {
                withProfileDocument = BsonLite.withProfileInt(withProfileDocument, "stfc", m13v(withProfileDocument, "stfc") + 1);
            }
            if (i >= 4) {
                withProfileDocument = BsonLite.withProfileInt(withProfileDocument, "st", 3);
            }
            Object[] objArr = new Object[6];
            objArr[0] = "p";
            objArr[1] = Boolean.valueOf(i >= 4);
            objArr[2] = "r";
            objArr[3] = Boolean.valueOf(z5);
            objArr[4] = "b";
            objArr[5] = Integer.valueOf(m13v4);
            result.add("heroTestSkillTestBattleFinish", BsonLite.document(objArr));
            str2 = "q7DailyBattle";
            bArr3 = m12d;
            list = intArrayValues;
            str3 = "combatOfflineReward";
            z2 = false;
            z = z5;
        } else {
            str = "reply";
            if (m13v2 == 4) {
                if (m13v(defaults, "st") != 4 || m13v(defaults, "cib") != m13v4) {
                    throw new IllegalArgumentException("综合测试进度与入场记录不一致");
                }
                if (!z5) {
                    str2 = "q7DailyBattle";
                    str3 = "combatOfflineReward";
                } else {
                    StringBuilder sb = new StringBuilder();
                    str3 = "combatOfflineReward";
                    sb.append(Math.max(1, m13v(defaults, "se")));
                    sb.append(":");
                    sb.append(m13v4);
                    String sb2 = sb.toString();
                    byte[] m12d2 = m12d(result.profile, "q7DailyStageRewards");
                    str2 = "q7DailyBattle";
                    if (!Boolean.TRUE.equals(BsonLite.boolValue(m12d2, sb2))) {
                        rewards(result, localResourceCatalog, localFeatureCatalog.get("B", "4:" + m13v4));
                        result.profile = BsonLite.withProfileDocument(result.profile, "q7DailyStageRewards", BsonLite.withProfileBool(m12d2, sb2, true));
                    }
                    byte[] withProfileInt = BsonLite.withProfileInt(defaults, "cib", m13v4 + 1);
                    if (m13v4 == 10) {
                        withProfileInt = BsonLite.withProfileInt(withProfileInt, "st", 5);
                    }
                    defaults = withProfileInt;
                    LocalResourceEngine.syncCurrencies(result);
                }
                Object[] objArr2 = new Object[8];
                objArr2[0] = "p";
                objArr2[1] = Boolean.valueOf(z5 && m13v4 == 10);
                objArr2[2] = "r";
                objArr2[3] = Boolean.valueOf(z5);
                objArr2[4] = "b";
                objArr2[5] = Integer.valueOf(m13v4);
                objArr2[6] = "rr";
                objArr2[7] = Collections.emptyList();
                result.add("heroTestIntegrationTestBattleFinish", BsonLite.document(objArr2));
                withProfileDocument = defaults;
                bArr3 = m12d;
                list = intArrayValues;
                z2 = false;
                z = z5;
            } else {
                str2 = "q7DailyBattle";
                str3 = "combatOfflineReward";
                if (m13v2 == 10) {
                    int intValue = intArrayValues.get(0).intValue();
                    byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, intValue);
                    if (z5) {
                        if (Boolean.TRUE.equals(BsonLite.boolValue(m12d, "repeat"))) {
                            obj = Integer.valueOf(m13v4);
                            str4 = "M";
                        } else {
                            obj = m13v(m12d, "lv") + ":" + m13v4;
                            str4 = "R";
                        }
                        byte[] bArr7 = localFeatureCatalog.get(str4, obj);
                        if (bArr7 == null) {
                            throw new IllegalArgumentException("缺少原版奖励定义，未结算战斗");
                        }
                        Iterator<byte[]> it3 = LocalResourceEngine.array(m12d(bArr7, "rewards")).iterator();
                        while (it3.hasNext()) {
                            List<byte[]> array = LocalResourceEngine.array(it3.next());
                            long j = 0;
                            Iterator<byte[]> it4 = array.iterator();
                            while (it4.hasNext()) {
                                j = Math.addExact(j, m13v(it4.next(), "w"));
                                defaults = defaults;
                                profileHeroDocument = profileHeroDocument;
                            }
                            byte[] bArr8 = profileHeroDocument;
                            byte[] bArr9 = defaults;
                            if (j <= 0) {
                                throw new IllegalArgumentException("无效的演练奖励权重");
                            }
                            double random = Math.random() * j;
                            byte[] bArr10 = array.get(array.size() - 1);
                            Iterator<byte[]> it5 = array.iterator();
                            while (true) {
                                if (!it5.hasNext()) {
                                    z3 = z5;
                                    break;
                                }
                                byte[] next = it5.next();
                                Iterator<byte[]> it6 = it5;
                                z3 = z5;
                                byte[] bArr11 = bArr10;
                                random -= m13v(next, "w");
                                if (random < 0.0d) {
                                    bArr10 = next;
                                    break;
                                } else {
                                    it5 = it6;
                                    bArr10 = bArr11;
                                    z5 = z3;
                                }
                            }
                            for (byte[] bArr12 : LocalResourceEngine.array(m12d(bArr10, "g"))) {
                                String stringValue = BsonLite.stringValue(bArr12, "k");
                                if ("cg".equals(stringValue)) {
                                    ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(result.profile, "cgs"));
                                    if (!arrayList.contains(Integer.valueOf(m13v(bArr12, "i")))) {
                                        arrayList.add(Integer.valueOf(m13v(bArr12, "i")));
                                        result.profile = BsonLite.withProfileIntArray(result.profile, "cgs", arrayList);
                                    }
                                    bArr5 = bArr8;
                                    bArr6 = m12d;
                                    z4 = z3;
                                    list2 = intArrayValues;
                                } else {
                                    bArr5 = bArr8;
                                    bArr6 = m12d;
                                    z4 = z3;
                                    list2 = intArrayValues;
                                    LocalResourceEngine.grant(result, localResourceCatalog, stringValue, m13v(bArr12, "i"), m13v(bArr12, "n"), m13v(bArr12, "q"));
                                }
                                intArrayValues = list2;
                                z3 = z4;
                                m12d = bArr6;
                                bArr8 = bArr5;
                            }
                            profileHeroDocument = bArr8;
                            z5 = z3;
                            defaults = bArr9;
                            m12d = m12d;
                            intArrayValues = intArrayValues;
                        }
                        bArr2 = profileHeroDocument;
                        bArr3 = m12d;
                        list = intArrayValues;
                        c = 3;
                        z = z5;
                        bArr4 = BsonLite.withProfileBool(defaults, "ps2", true);
                    } else {
                        bArr2 = profileHeroDocument;
                        c = 3;
                        bArr3 = m12d;
                        list = intArrayValues;
                        z = z5;
                        byte[] m12d3 = m12d(result.profile, "city");
                        byte[] withProfileInt2 = BsonLite.withProfileInt(m12d3, "jpv", Math.addExact(m13v(m12d3, "jpv"), m13v(localFeatureCatalog.get("P", 10), "consume") - m13v(localFeatureCatalog.get("P", 10), "fail_consume")));
                        result.profile = BsonLite.withProfileDocument(result.profile, "city", withProfileInt2);
                        power(result, withProfileInt2);
                        bArr4 = defaults;
                    }
                    result.profile = BsonLite.withHeroDocument(result.profile, intValue, BsonLite.withProfileInt(BsonLite.withProfileArray(bArr2, "htmr", updated(m12d(bArr2, "htmr"), m13v4, z)), "htcmb", m13v4));
                    withProfileDocument = BsonLite.withProfileDocument(bArr4, "is2", BsonLite.withProfileInt(m12d(bArr4, "is2"), "lastHero", intValue));
                    Object[] objArr3 = new Object[4];
                    z2 = false;
                    objArr3[0] = "r";
                    objArr3[1] = Boolean.valueOf(z);
                    objArr3[2] = "b";
                    objArr3[c] = Integer.valueOf(m13v4);
                    result.add("heroTestManeuverBattleFinish", BsonLite.document(objArr3));
                    LocalResourceEngine.syncCurrencies(result);
                } else {
                    throw new IllegalArgumentException("不支持的日常结算类型");
                }
            }
        }
        save(result, withProfileDocument);
        byte[] combatOfflineRewardDocument = BsonLite.combatOfflineRewardDocument(m13v2, m13v3, list, Collections.emptyList(), z ? 1 : 0, result.reward());
        result.profile = BsonLite.withProfileDocument(result.profile, str2, BsonLite.withProfileDocument(BsonLite.withProfileBool(bArr3, "active", z2), str, combatOfflineRewardDocument));
        result.add(str3, combatOfflineRewardDocument);
    }

    private static void rewards(LocalResourceEngine.Result result, LocalResourceCatalog localResourceCatalog, byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("缺少原版考试奖励定义，未发放资源");
        }
        Iterator<byte[]> it = LocalResourceEngine.array(m12d(bArr, "rewards")).iterator();
        while (it.hasNext()) {
            List<byte[]> array = LocalResourceEngine.array(it.next());
            Iterator<byte[]> it2 = array.iterator();
            long j = 0;
            while (it2.hasNext()) {
                j = Math.addExact(j, m13v(it2.next(), "w"));
            }
            if (j <= 0) {
                throw new IllegalArgumentException("无效的考试奖励权重");
            }
            double random = Math.random() * j;
            byte[] bArr2 = array.get(array.size() - 1);
            Iterator<byte[]> it3 = array.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                byte[] next = it3.next();
                random -= m13v(next, "w");
                if (random < 0.0d) {
                    bArr2 = next;
                    break;
                }
            }
            for (byte[] bArr3 : LocalResourceEngine.array(m12d(bArr2, "g"))) {
                String stringValue = BsonLite.stringValue(bArr3, "k");
                if ("heroCost".equals(stringValue)) {
                    int m13v = m13v(bArr3, "h");
                    int m13v2 = m13v(bArr3, "n");
                    if (!LocalResourceEngine.ownsHero(result.profile, m13v) || m13v2 <= 0) {
                        throw new IllegalArgumentException("考试COST奖励与角色不匹配");
                    }
                    byte[] profileHeroDocument = BsonLite.profileHeroDocument(result.profile, m13v);
                    byte[] m12d = m12d(profileHeroDocument, "ti");
                    result.profile = BsonLite.withHeroDocument(result.profile, m13v, BsonLite.withProfileDocument(profileHeroDocument, "ti", BsonLite.withProfileInt(m12d, "mc", Math.addExact(m13v(m12d, "mc"), m13v2))));
                    result.itemRewards.add(Arrays.asList(Integer.valueOf(m13v(bArr3, "i")), Integer.valueOf(m13v2)));
                    result.add("addTreasureMaxCost", BsonLite.document("hid", Integer.valueOf(m13v), "c", Integer.valueOf(m13v2)));
                } else {
                    LocalResourceEngine.grant(result, localResourceCatalog, stringValue, m13v(bArr3, "i"), m13v(bArr3, "n"), m13v(bArr3, "q"));
                }
            }
        }
    }
}
