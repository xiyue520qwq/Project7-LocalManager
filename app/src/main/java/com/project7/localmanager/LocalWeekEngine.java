package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes.dex */
final class LocalWeekEngine {
    static final String ENTRANCE_CACHE_RESET = "exec('gg.event_trigger_cache = None\\ngg.avatar_status = None')";
    static final String[] METHODS = {"handleIncWeekAsk", "handleResetWeekAsk", "requestEnterStory", "requestEnterStoryByEnding", "requestChangeAVGLevel", "updateStoryClickFlag"};
    private static final List<Integer> TUTORIAL_FOUNDATION = Arrays.asList(1004, 1013, 1043, 1047);

    LocalWeekEngine() {
    }

    static boolean handles(String str) {
        return Arrays.asList(METHODS).contains(str);
    }

    static byte[] refreshDifficulty(byte[] bArr, LocalWeekCatalog localWeekCatalog) {
        byte[] m82d = m82d(bArr, "weeknum");
        if (m83v(m82d, "w") < 2 || !BsonLite.keys(m82d(bArr, "q7Battle")).isEmpty() || LocalDailyEngine.active(bArr)) {
            return bArr;
        }
        List<Integer> intArrayValues = BsonLite.intArrayValues(m82d, "ccl");
        if (intArrayValues.size() != 2) {
            return bArr;
        }
        int[] iArr = localWeekCatalog.difficulties.get(intArrayValues.get(0) + ":" + intArrayValues.get(1));
        if (iArr != null && iArr[0] == 1 && m83v(m82d, "wl") != iArr[1]) {
            return BsonLite.withProfileDocument(bArr, "weeknum", BsonLite.withProfileInt(m82d, "wl", iArr[1]));
        }
        return bArr;
    }

    static boolean awaitingEntrance(byte[] bArr, LocalTutorialStore.Progress progress) {
        String stringValue;
        if (progress == null || progress.weekCommit.isEmpty() || progress.patrolRewardPending || !progress.processingEvents.stream().allMatch(LocalWeekEngine$$ExternalSyntheticLambda1.INSTANCE) || !BsonLite.keys(m82d(bArr, "q7Battle")).isEmpty()) {
            return false;
        }
        byte[] m82d = m82d(bArr, "q7WeekTransition");
        if (!progress.weekCommit.equals(BsonLite.stringValue(m82d, "id")) || m83v(m82d, "week") != m83v(m82d(bArr, "weeknum"), "w") || m83v(m82d(bArr, "weeknum"), "d") != 0 || (stringValue = BsonLite.stringValue(m82d(m82d, "progress"), "availableEvents")) == null || stringValue.isEmpty()) {
            return false;
        }
        Iterator<Integer> it = LocalStoryConditions.integers(stringValue).iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (progress.availableEvents.contains(Integer.valueOf(intValue)) && !progress.completedEvents.contains(Integer.valueOf(intValue))) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean lambda$awaitingEntrance$0(Integer num) {
        return num.intValue() == 9;
    }

    static LocalResourceEngine.Result endings(byte[] bArr, LocalWeekCatalog localWeekCatalog, LocalEconomyCatalog localEconomyCatalog, LocalResourceCatalog localResourceCatalog, LocalTutorialStore.Progress progress, boolean z) {
        String str;
        String str2;
        String str3;
        boolean z2;
        String str4;
        String str5;
        boolean z3;
        boolean z4;
        String str6;
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        if (progress == null) {
            return result;
        }
        LocalWeekSettlement.repairAwarded(result, localWeekCatalog, localResourceCatalog);
        if (terminalResult(result.profile, localWeekCatalog, progress)) {
            result.profile = BsonLite.withProfileDocument(result.profile, "std", BsonLite.withProfileBool(m82d(result.profile, "std"), "cef", false));
        }
        byte[] m82d = m82d(bArr, "q7WeekResult");
        int[] iArr = localWeekCatalog.endings.get(Integer.valueOf(m83v(m82d, "event")));
        if (iArr == null || m83v(m82d, "version") != 0 || m83v(m82d, "week") != m83v(m82d(bArr, "weeknum"), "w")) {
            str = "weeknum";
            str2 = "w";
            str3 = "q7WeekResult";
            z2 = true;
        } else if (m83v(m82d(m82d, "score"), "total") == 0 && BsonLite.keys(m82d(m82d, "reward")).isEmpty()) {
            if (hasScoredHistory(bArr, m83v(m82d, "week"))) {
                str = "weeknum";
                str2 = "w";
                str3 = "q7WeekResult";
                z2 = true;
            } else if (progress.completedEvents.contains(Integer.valueOf(m83v(m82d, "event")))) {
                z2 = true;
                str = "weeknum";
                str2 = "w";
                str3 = "q7WeekResult";
                LocalWeekSettlement.complete(result, localWeekCatalog, localEconomyCatalog, localResourceCatalog, progress, m83v(m82d, "event"), iArr[0], iArr[1]);
                if (z) {
                    showResult(result);
                }
            } else {
                str = "weeknum";
                str2 = "w";
                str3 = "q7WeekResult";
                z2 = true;
            }
        } else {
            str = "weeknum";
            str2 = "w";
            str3 = "q7WeekResult";
            z2 = true;
        }
        byte[] m82d2 = m82d(bArr, "q7EndingEvents");
        boolean z5 = (BsonLite.documentValue(bArr, "q7EndingEvents") != null || z) ? false : z2;
        Iterator<Integer> it = progress.completedEvents.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            int[] iArr2 = localWeekCatalog.endings.get(Integer.valueOf(intValue));
            if (iArr2 == null) {
                str4 = str;
                str5 = str3;
                z3 = z2;
            } else if (Boolean.TRUE.equals(BsonLite.boolValue(m82d2, Integer.toString(intValue)))) {
                str4 = str;
                str5 = str3;
                z3 = z2;
            } else {
                byte[] withProfileBool = BsonLite.withProfileBool(m82d2, Integer.toString(intValue), z2);
                if (z5) {
                    str4 = str;
                    str6 = str3;
                    z4 = z2;
                } else {
                    String str7 = str3;
                    if (BsonLite.keys(m82d(result.profile, str7)).isEmpty()) {
                        String str8 = str;
                        int m83v = m83v(m82d(result.profile, str8), str2);
                        byte[] m82d3 = m82d(result.profile, "std");
                        ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(m82d3, "ed"));
                        if (!arrayList.contains(Integer.valueOf(iArr2[0]))) {
                            arrayList.add(Integer.valueOf(iArr2[0]));
                        }
                        byte[] withProfileIntArray = BsonLite.withProfileIntArray(m82d3, "ed", arrayList);
                        if (iArr2[2] == 0 || m83v == 2) {
                            withProfileIntArray = BsonLite.withProfileBool(withProfileIntArray, "cef", false);
                        }
                        result.profile = BsonLite.withProfileDocument(result.profile, "std", withProfileIntArray);
                        ArrayList arrayList2 = new ArrayList(BsonLite.intArrayValues(result.profile, "cgs"));
                        if (iArr2[1] > 0 && !arrayList2.contains(Integer.valueOf(iArr2[1]))) {
                            arrayList2.add(Integer.valueOf(iArr2[1]));
                            result.profile = BsonLite.withProfileIntArray(result.profile, "cgs", arrayList2);
                        }
                        z4 = true;
                        str4 = str8;
                        str6 = str7;
                        LocalWeekSettlement.complete(result, localWeekCatalog, localEconomyCatalog, localResourceCatalog, progress, intValue, iArr2[0], iArr2[1]);
                        if (z) {
                            showResult(result);
                        }
                    } else {
                        str6 = str7;
                        str4 = str;
                        z4 = z2;
                    }
                }
                str3 = str6;
                z2 = z4;
                m82d2 = withProfileBool;
                str = str4;
            }
            str3 = str5;
            z2 = z3;
            str = str4;
        }
        result.profile = BsonLite.withProfileDocument(result.profile, "q7EndingEvents", m82d2);
        return result;
    }

    private static boolean terminalResult(byte[] bArr, LocalWeekCatalog localWeekCatalog, LocalTutorialStore.Progress progress) {
        int[] iArr = localWeekCatalog.endings.get(Integer.valueOf(m83v(m82d(bArr, "q7WeekResult"), "event")));
        return iArr != null && iArr[2] == 0 && completedResult(bArr, localWeekCatalog, progress);
    }

    private static boolean completedResult(byte[] bArr, LocalWeekCatalog localWeekCatalog, LocalTutorialStore.Progress progress) {
        byte[] m82d = m82d(bArr, "q7WeekResult");
        int[] iArr = localWeekCatalog.endings.get(Integer.valueOf(m83v(m82d, "event")));
        return progress != null && iArr != null && iArr[0] == m83v(m82d, "ending") && m83v(m82d, "week") == m83v(m82d(bArr, "weeknum"), "w") && progress.completedEvents.contains(Integer.valueOf(m83v(m82d, "event")));
    }

    private static boolean hasScoredHistory(byte[] bArr, int i) {
        for (byte[] bArr2 : LocalResourceEngine.array(m82d(m82d(bArr, "weeknum"), "wasi"))) {
            if (m83v(bArr2, "0") == i && m83v(m82d(bArr2, "1"), "total") != 0) {
                return true;
            }
        }
        return false;
    }

    static void showResult(LocalResourceEngine.Result result) {
        byte[] m82d = m82d(result.profile, "q7WeekResult");
        if (BsonLite.keys(m82d).isEmpty() || m83v(m82d, "week") != m83v(m82d(result.profile, "weeknum"), "w")) {
            return;
        }
        result.add("addCg", BsonLite.document("c", BsonLite.intArrayValues(m82d(m82d, "score"), "cur_cgs")));
        result.add("syncWeeknumScoreInfo", BsonLite.document("wsi", m82d(m82d, "score"), "ls", new BsonLite.ArrayValue(m82d(m82d(result.profile, "weeknum"), "ls"))));
        result.add("updateStoryFlag", BsonLite.document("f", Boolean.valueOf(!Boolean.FALSE.equals(BsonLite.boolValue(m82d(result.profile, "std"), "cef")))));
        result.add("showWeekResult", BsonLite.document("r", Integer.valueOf(m83v(m82d, "ending")), "rd", m82d(m82d, "reward")));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:(1:134)(1:18)|19|(14:24|25|(11:30|31|(1:33)(1:131)|34|35|36|37|(3:95|96|(4:98|(5:(3:103|104|(2:42|43)(10:44|(4:(1:77)(1:49)|50|(1:76)(1:56)|57)(5:78|(1:80)(1:94)|81|(1:93)(1:91)|92)|58|(1:75)(1:62)|63|(1:65)|(1:67)(1:74)|(1:73)(1:70)|71|72))|105|106|107|108)(1:122)|40|(0)(0)))|39|40|(0)(0))|132|31|(0)(0)|34|35|36|37|(0)|39|40|(0)(0))|133|25|(12:27|30|31|(0)(0)|34|35|36|37|(0)|39|40|(0)(0))|132|31|(0)(0)|34|35|36|37|(0)|39|40|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(5:(3:103|104|(2:42|43)(10:44|(4:(1:77)(1:49)|50|(1:76)(1:56)|57)(5:78|(1:80)(1:94)|81|(1:93)(1:91)|92)|58|(1:75)(1:62)|63|(1:65)|(1:67)(1:74)|(1:73)(1:70)|71|72))|105|106|107|108) */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0111, code lost:
    
        if (r27.availableEvents.contains(r26.entrances.getOrDefault(java.lang.Integer.valueOf(r8), 0)) != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x012d, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x028f, code lost:
    
        r14.add("replyEnterStory", com.project7.localmanager.BsonLite.document(r22, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02ab, code lost:
    
        r14.add("replyEnterStoryByEnding", com.project7.localmanager.BsonLite.document(r22, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02c8, code lost:
    
        r14.add("replyChangeAVGLevel", com.project7.localmanager.BsonLite.document("rs", false, "lv", java.lang.Integer.valueOf(m83v(r29, "lv")), "slv", java.lang.Integer.valueOf(m83v(r29, "slv"))));
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0130, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x025c, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0265, code lost:
    
        r23 = "requestEnterStory";
        r22 = "r";
        r21 = "requestEnterStoryByEnding";
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x025e, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0129 A[Catch: ArithmeticException -> 0x012d, IllegalArgumentException -> 0x0130, TRY_LEAVE, TryCatch #6 {ArithmeticException -> 0x012d, IllegalArgumentException -> 0x0130, blocks: (B:42:0x0129, B:47:0x0139, B:50:0x0147, B:52:0x0152, B:54:0x0156, B:57:0x0168, B:58:0x01a9, B:60:0x01b5, B:63:0x01cb, B:65:0x01e4, B:67:0x01ec, B:71:0x020a, B:73:0x01fa, B:81:0x0175, B:83:0x017c, B:85:0x0180, B:87:0x018e, B:89:0x0192, B:92:0x01a4, B:108:0x00ff), top: B:107:0x00ff }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalWeekCatalog localWeekCatalog, LocalTutorialStore.Progress progress, String str, byte[] bArr2) {
        String str2;
        String str3;
        int m83v;
        byte[] m82d;
        boolean z;
        String str4;
        boolean z2;
        int i;
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        try {
        } catch (ArithmeticException | IllegalArgumentException e) {
            e = e;
            str2 = "requestChangeAVGLevel";
        }
        if ("updateStoryClickFlag".equals(str)) {
            int m83v2 = m83v(bArr2, "r");
            require(localWeekCatalog.entrances.containsKey(Integer.valueOf(m83v2)), "路线不存在");
            byte[] m82d2 = m82d(bArr, "std");
            ArrayList arrayList = new ArrayList(BsonLite.intArrayValues(m82d2, "cf"));
            if (!arrayList.contains(Integer.valueOf(m83v2))) {
                arrayList.add(Integer.valueOf(m83v2));
            }
            result.profile = BsonLite.withProfileDocument(bArr, "std", BsonLite.withProfileIntArray(m82d2, "cf", arrayList));
            return result;
        }
        if ("requestChangeAVGLevel".equals(str)) {
            difficulty(result, localWeekCatalog, bArr2);
            return result;
        }
        require((progress == null || progress.initPrologue) ? false : true, "请先完成新手教程");
        if (!"requestEnterStory".equals(str) && !"requestEnterStoryByEnding".equals(str)) {
            m83v = 1;
            int m83v3 = m83v(m82d(bArr, "weeknum"), "w");
            m82d = m82d(bArr, "q7WeekTransition");
            if (!"handleIncWeekAsk".equals(str) && !"requestEnterStoryByEnding".equals(str)) {
                z = false;
                boolean z3 = BsonLite.keys(m82d(bArr, "q7WeekResult")).isEmpty();
                str2 = "requestChangeAVGLevel";
                String str5 = "requestEnterStoryByEnding";
                Object obj = "r";
                if (str.equals(BsonLite.stringValue(m82d, "method"))) {
                    try {
                    } catch (ArithmeticException e2) {
                        e = e2;
                        str3 = "requestEnterStory";
                        result = new LocalResourceEngine.Result(bArr);
                        result.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                        if (str3.equals(str)) {
                        }
                        if (str5.equals(str)) {
                        }
                        if (str2.equals(str)) {
                        }
                        return result;
                    } catch (IllegalArgumentException e3) {
                        e = e3;
                        str3 = "requestEnterStory";
                        result = new LocalResourceEngine.Result(bArr);
                        result.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                        if (str3.equals(str)) {
                        }
                        if (str5.equals(str)) {
                        }
                        if (str2.equals(str)) {
                        }
                        return result;
                    }
                    if (m83v == m83v(m82d, "route")) {
                        if (m83v3 != m83v(m82d, "week")) {
                            str4 = "q7WeekTransition";
                        } else {
                            if (!z3 && z) {
                                str4 = "q7WeekTransition";
                                z2 = true;
                                if (!z2) {
                                    replies(result, str);
                                    return result;
                                }
                                if (z) {
                                    require(z3 && m83v(m82d(bArr, "q7WeekResult"), "week") == m83v3, "当前周目尚未完成结局");
                                    require(completedResult(bArr, localWeekCatalog, progress) && !progress.patrolRewardPending && BsonLite.keys(m82d(bArr, "q7Battle")).isEmpty(), "请先完成结局剧情和结算");
                                } else {
                                    require(m83v3 >= 2, "黑色信函需在第三周目起使用");
                                    require((z3 || progress.inEmergency || !progress.processingEvents.stream().allMatch(LocalWeekEngine$$ExternalSyntheticLambda1.INSTANCE) || progress.patrolRewardPending || !BsonLite.keys(m82d(bArr, "q7Battle")).isEmpty()) ? false : true, "请先完成当前剧情、巡查或战斗");
                                }
                                require(localWeekCatalog.entrances.containsKey(Integer.valueOf(m83v)) && localWeekCatalog.entrances.get(Integer.valueOf(m83v)).intValue() > 0, "路线入口不存在");
                                require(canEnter(bArr, localWeekCatalog, m83v), "尚未满足原版路线开放条件");
                                require(LocalStoryEntryPolicy.supports(m83v), "此特殊路线的地区初始化尚未接入，已保留进度与黑色信函");
                                if (!z) {
                                    LocalGiftEngine.consume(result, 345, 1);
                                }
                                if (z) {
                                    i = 1;
                                    m83v3 = Math.addExact(m83v3, 1);
                                } else {
                                    i = 1;
                                }
                                LocalTutorialStore.Progress resetProgress = resetProgress(progress, localWeekCatalog, m83v3, (m83v == i && m83v3 == i) ? 1030 : localWeekCatalog.entrances.get(Integer.valueOf(m83v)).intValue());
                                result.profile = resetProfile(result.profile, resetProgress, m83v, localWeekCatalog);
                                result.profile = BsonLite.withProfileDocument(result.profile, str4, BsonLite.document("id", resetProgress.weekCommit, "week", Integer.valueOf(m83v3), "method", str, "route", Integer.valueOf(m83v), "progress", serialize(resetProgress)));
                                replies(result, str);
                                return result;
                            }
                            str3 = "requestEnterStory";
                            str4 = "q7WeekTransition";
                        }
                        z2 = false;
                        if (!z2) {
                        }
                    }
                }
                str4 = "q7WeekTransition";
                z2 = false;
                if (!z2) {
                }
            }
            z = true;
            if (BsonLite.keys(m82d(bArr, "q7WeekResult")).isEmpty()) {
            }
            str2 = "requestChangeAVGLevel";
            String str52 = "requestEnterStoryByEnding";
            Object obj2 = "r";
            if (str.equals(BsonLite.stringValue(m82d, "method"))) {
            }
            str4 = "q7WeekTransition";
            z2 = false;
            if (!z2) {
            }
        }
        m83v = m83v(bArr2, "i");
        int m83v32 = m83v(m82d(bArr, "weeknum"), "w");
        m82d = m82d(bArr, "q7WeekTransition");
        if (!"handleIncWeekAsk".equals(str)) {
            z = false;
            if (BsonLite.keys(m82d(bArr, "q7WeekResult")).isEmpty()) {
            }
            str2 = "requestChangeAVGLevel";
            String str522 = "requestEnterStoryByEnding";
            Object obj22 = "r";
            if (str.equals(BsonLite.stringValue(m82d, "method"))) {
            }
            str4 = "q7WeekTransition";
            z2 = false;
            if (!z2) {
            }
        }
        z = true;
        if (BsonLite.keys(m82d(bArr, "q7WeekResult")).isEmpty()) {
        }
        str2 = "requestChangeAVGLevel";
        String str5222 = "requestEnterStoryByEnding";
        Object obj222 = "r";
        if (str.equals(BsonLite.stringValue(m82d, "method"))) {
        }
        str4 = "q7WeekTransition";
        z2 = false;
        if (!z2) {
        }
    }

    static boolean canEnter(byte[] bArr, LocalWeekCatalog localWeekCatalog, int i) {
        if (!localWeekCatalog.requires.containsKey(Integer.valueOf(i))) {
            return false;
        }
        if (i == 5) {
            int m83v = m83v(m82d(bArr, "weeknum"), "w");
            return m83v >= 3 || (m83v == 2 && Boolean.FALSE.equals(BsonLite.boolValue(m82d(bArr, "std"), "cef")));
        }
        List<Integer> intArrayValues = BsonLite.intArrayValues(m82d(bArr, "std"), "ed");
        Iterator<Set<Integer>> it = localWeekCatalog.requires.get(Integer.valueOf(i)).iterator();
        while (it.hasNext()) {
            if (Collections.disjoint(it.next(), intArrayValues)) {
                return false;
            }
        }
        return true;
    }

    private static void replies(LocalResourceEngine.Result result, String str) {
        if ("requestEnterStory".equals(str)) {
            result.add("replyEnterStory", BsonLite.document("r", true));
        }
        if ("requestEnterStoryByEnding".equals(str)) {
            result.add("replyEnterStoryByEnding", BsonLite.document("r", true));
        }
        result.add(("handleResetWeekAsk".equals(str) || "requestEnterStory".equals(str)) ? "handleResetWeekReply" : "handleIncWeekReply", BsonLite.EMPTY_DOCUMENT);
    }

    private static LocalTutorialStore.Progress resetProgress(LocalTutorialStore.Progress progress, LocalWeekCatalog localWeekCatalog, int i, int i2) {
        LocalTutorialStore.Progress completed = LocalTutorialStore.Progress.completed();
        completed.finishedNewbees.addAll(progress.finishedNewbees);
        Iterator<Integer> it = progress.completedEvents.iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (localWeekCatalog.stay.contains(Integer.valueOf(intValue)) || TUTORIAL_FOUNDATION.contains(Integer.valueOf(intValue))) {
                completed.completedEvents.add(Integer.valueOf(intValue));
            }
        }
        completed.availableEvents.add(Integer.valueOf(i2));
        completed.inEmergency = true;
        completed.status = "emergency";
        completed.scene = "";
        completed.weekIndex = i;
        completed.weekCommit = LocalResourceEngine.uuid();
        return completed;
    }

    private static byte[] resetProfile(byte[] bArr, LocalTutorialStore.Progress progress, int i, LocalWeekCatalog localWeekCatalog) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        Iterator<byte[]> it = LocalResourceEngine.array(m82d(m82d(bArr, "inv"), "items")).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            byte[] next = it.next();
            if (localWeekCatalog.clearItems.contains(Integer.valueOf(m83v(next, "i")))) {
                Integer intValue = BsonLite.intValue(next, "w");
                require((intValue == null || intValue.intValue() <= 0 || BsonLite.uuidValue(next, "u") == null) ? false : true, "周目道具数据异常，已保留原进度");
            }
        }
        Iterator<Integer> it2 = localWeekCatalog.clearItems.iterator();
        while (it2.hasNext()) {
            int intValue2 = it2.next().intValue();
            int quantity = LocalSpecialItemEngine.quantity(result.profile, intValue2);
            if (quantity > 0) {
                LocalGiftEngine.consume(result, intValue2, quantity);
            }
        }
        byte[] bArr2 = result.profile;
        if (LocalChapterCityEngine.active(bArr2)) {
            bArr2 = LocalChapterCityEngine.resetHeroes(bArr2);
        }
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileDocument(bArr2, "heromgr", BsonLite.withProfileIntArray(m82d(bArr2, "heromgr"), "c", Collections.emptyList())), "q7ChapterMenu", i);
        String[] strArr = {"q7ChapterEffects", "q7ChapterStates", "q7ChapterLocks", "q7AnCityEffects", "q7AnCityLocks", "q7ArkCity", "q7AlanCityLocks"};
        for (int i2 = 0; i2 < 7; i2++) {
            withProfileInt = BsonLite.withProfileDocument(withProfileInt, strArr[i2], BsonLite.EMPTY_DOCUMENT);
        }
        byte[] recoverHistory = LocalSuppressionEngine.recoverHistory(withProfileInt, null);
        byte[] withProfileInt2 = BsonLite.withProfileInt(BsonLite.withProfileInt(m82d(recoverHistory, "weeknum"), "w", progress.weekIndex), "d", 0);
        String[] strArr2 = {"c", "l"};
        for (int i3 = 0; i3 < 2; i3++) {
            withProfileInt2 = BsonLite.withProfileDocument(withProfileInt2, strArr2[i3], BsonLite.EMPTY_DOCUMENT);
        }
        byte[] withProfileDocument = BsonLite.withProfileDocument(recoverHistory, "weeknum", BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileBool(withProfileInt2, "sgnt", false), "ust", 0), "sgw", 0));
        byte[] withProfileIntArray = BsonLite.withProfileIntArray(BsonLite.withProfileIntArray(BsonLite.withProfileIntArray(withProfileDocument, "q7WeekCgBaseline", BsonLite.intArrayValues(withProfileDocument, "cgs")), "q7WeekEventBaseline", progress.completedEvents), "ccgs", Collections.emptyList());
        byte[] m82d = m82d(withProfileIntArray, "city");
        String[] strArr3 = {"dv", "dvc", "bf", "fv", "ev", "rv", "tbn", "tvn", "pn", "rbn", "cc"};
        for (int i4 = 0; i4 < 11; i4++) {
            m82d = BsonLite.withProfileInt(m82d, strArr3[i4], 0);
        }
        byte[] withProfileDocument2 = BsonLite.withProfileDocument(withProfileIntArray, "city", BsonLite.withProfileArray(BsonLite.withProfileDocument(BsonLite.withProfileBool(BsonLite.withProfileBool(BsonLite.withProfileInt(m82d, "av", 24), "uc", false), "uda", false), "areas", BsonLite.EMPTY_DOCUMENT), "acr", Collections.emptyList()));
        byte[] reset = LocalDiaryEngine.reset(LocalHeroGiftEngine.reset(LocalDalviraStoryEngine.reset(LocalStoryClueEngine.reset(BsonLite.withoutProfileKey(BsonLite.withoutProfileKey(BsonLite.withProfileDocument(BsonLite.withProfileDocument(BsonLite.withProfileDocument(BsonLite.withProfileDocument(BsonLite.withProfileDocument(withProfileDocument2, "q7Flashback", BsonLite.EMPTY_DOCUMENT), "q7OratioCity", BsonLite.EMPTY_DOCUMENT), "q7WenziCity", BsonLite.EMPTY_DOCUMENT), "q7StoryGeneral", BsonLite.EMPTY_DOCUMENT), "std", BsonLite.withProfileIntArray(BsonLite.withProfileArray(BsonLite.withProfileBool(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileBool(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileIntArray(BsonLite.withProfileString(m82d(withProfileDocument2, "std"), "rt", "1"), "srt", Collections.emptyList()), "srv", 0), "ssv", 0), "gr", 0), "ff", false), "fd", 0), "fa", 0), "cef", true), "cf", Collections.emptyList()), "prc", Collections.emptyList())), "q7Puzzle"), "q7PuzzleExits")))), progress.weekIndex);
        byte[] withProfileDocument3 = BsonLite.withProfileDocument(BsonLite.withProfileDocument(reset, "reward", BsonLite.withProfileArray(m82d(reset, "reward"), "bc", Collections.emptyList())), "sd", BsonLite.document("sm", BsonLite.EMPTY_DOCUMENT, "pm", BsonLite.EMPTY_DOCUMENT, "epm", BsonLite.EMPTY_DOCUMENT));
        String[] strArr4 = {"q7WeekResult", "q7Battle", "q7BattleReceipts", "q7BattleLast", "q7EconomyCommit", "q7DailyPrevious", "q7DailyPure", "q7Canteen", "q7Rest", "q7routeEvents", "q7EndingEvents", "intelligence", "q7Intelligence", "q7BuildingRemovals", "q7StoryPending", "q7StoryFriendship", "q7StoryMemory", "q7StoryHeroes", "q7StoryItems", "q7StoryTreasures", "q7WingGarden"};
        for (int i5 = 0; i5 < 21; i5++) {
            withProfileDocument3 = BsonLite.withProfileDocument(withProfileDocument3, strArr4[i5], BsonLite.EMPTY_DOCUMENT);
        }
        byte[] withoutProfileKey = BsonLite.withoutProfileKey(withProfileDocument3, "q7WingOps");
        List<Integer> intArrayValues = BsonLite.intArrayValues(withoutProfileKey, "q7eventBattles");
        byte[] m82d2 = m82d(withoutProfileKey, "bs");
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr3 : LocalResourceEngine.array(m82d(m82d2, "ab"))) {
            if (!intArrayValues.contains(Integer.valueOf(m83v(bArr3, "0")))) {
                arrayList.add(new BsonLite.ArrayValue(bArr3));
            }
        }
        byte[] withProfileIntArray2 = BsonLite.withProfileIntArray(BsonLite.withProfileDocument(withoutProfileKey, "bs", BsonLite.withProfileArray(m82d2, "ab", arrayList)), "q7eventBattles", Collections.emptyList());
        byte[] withProfileDocument4 = BsonLite.withProfileDocument(withProfileIntArray2, "combat", BsonLite.withProfileBool(m82d(withProfileIntArray2, "combat"), "of", false));
        byte[] bArr4 = BsonLite.EMPTY_DOCUMENT;
        Iterator<Integer> it3 = progress.completedEvents.iterator();
        while (it3.hasNext()) {
            int intValue3 = it3.next().intValue();
            bArr4 = BsonLite.withProfileBool(BsonLite.withProfileBool(bArr4, "c" + intValue3, true), "m" + intValue3, true);
        }
        byte[] withProfileInt3 = BsonLite.withProfileInt(BsonLite.withProfileBool(BsonLite.withProfileDocument(withProfileDocument4, "q7effects", bArr4), "q7CentralBase", false), "q7DailyBuildIncome", 0);
        byte[] m82d3 = m82d(withProfileInt3, "ldd");
        ArrayList arrayList2 = new ArrayList();
        Iterator<byte[]> it4 = LocalResourceEngine.array(m82d(m82d3, "zin")).iterator();
        while (it4.hasNext()) {
            byte[] next2 = it4.next();
            int m83v = m83v(next2, "0");
            if (m83v < 917 || m83v > 919) {
                arrayList2.add(new BsonLite.ArrayValue(next2));
                it4 = it4;
            } else {
                byte[] m82d4 = m82d(next2, "1");
                ArrayList arrayList3 = new ArrayList();
                Iterator<byte[]> it5 = LocalResourceEngine.array(m82d4).iterator();
                while (it5.hasNext()) {
                    byte[] next3 = it5.next();
                    Iterator<byte[]> it6 = it4;
                    Iterator<byte[]> it7 = it5;
                    if (m83v(next3, "0") != progress.weekIndex) {
                        arrayList3.add(new BsonLite.ArrayValue(next3));
                    }
                    it4 = it6;
                    it5 = it7;
                }
                arrayList2.add(Arrays.asList(Integer.valueOf(m83v(next2, "0")), arrayList3));
                it4 = it4;
            }
        }
        byte[] withProfileDocument5 = BsonLite.withProfileDocument(withProfileInt3, "ldd", BsonLite.withProfileArray(m82d3, "zin", arrayList2));
        LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(withProfileDocument5);
        int quantity2 = LocalSpecialItemEngine.quantity(withProfileDocument5, 4470);
        if (quantity2 > 0) {
            LocalGiftEngine.consume(result2, 4470, quantity2);
        }
        byte[] bArr5 = result2.profile;
        for (byte[] bArr6 : LocalResourceEngine.array(m82d(m82d(bArr5, "heromgr"), "hrs"))) {
            bArr5 = BsonLite.withHeroDocument(bArr5, m83v(bArr6, "0"), BsonLite.withProfileInt(BsonLite.withProfileInt(m82d(bArr6, "1"), "cf", 100), "ef", 0));
        }
        return LocalWingStoryEngine.reset(bArr5, progress, i);
    }

    static void recover(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] m82d;
        String stringValue;
        if (progress == null || (stringValue = BsonLite.stringValue((m82d = m82d(bArr, "q7WeekTransition")), "id")) == null || stringValue.equals(progress.weekCommit)) {
            return;
        }
        Properties properties = new Properties();
        byte[] m82d2 = m82d(m82d, "progress");
        for (String str : BsonLite.keys(m82d2)) {
            String stringValue2 = BsonLite.stringValue(m82d2, str);
            if (stringValue2 == null) {
                throw new IllegalArgumentException("invalid committed week progress");
            }
            properties.setProperty(str, stringValue2);
        }
        LocalTutorialStore.Progress fromProperties = LocalTutorialStore.Progress.fromProperties(properties);
        require(stringValue.equals(fromProperties.weekCommit), "周目存档回执损坏");
        progress.availableEvents.clear();
        progress.availableEvents.addAll(fromProperties.availableEvents);
        progress.processingEvents.clear();
        progress.processingEvents.addAll(fromProperties.processingEvents);
        progress.completedEvents.clear();
        progress.completedEvents.addAll(fromProperties.completedEvents);
        progress.processingNewbees.clear();
        progress.processingNewbees.addAll(fromProperties.processingNewbees);
        progress.finishedNewbees.clear();
        progress.finishedNewbees.addAll(fromProperties.finishedNewbees);
        progress.eventConditions.clear();
        progress.eventConditions.putAll(fromProperties.eventConditions);
        progress.initPrologue = fromProperties.initPrologue;
        progress.inEmergency = fromProperties.inEmergency;
        progress.status = fromProperties.status;
        progress.scene = fromProperties.scene;
        progress.weekCommit = fromProperties.weekCommit;
        progress.weekIndex = fromProperties.weekIndex;
        progress.economyCommit = "";
        progress.patrolCount = 0;
        progress.patrolActions = -1;
        progress.patrolFavor = 0;
        progress.patrolRewardPending = false;
        progress.patrolArea = 0;
        progress.sandglassActions = -1;
        progress.patrolDay = "";
        progress.eventDays.clear();
        progress.eventCompletions.clear();
        progress.eventCompletions.putAll(fromProperties.eventCompletions);
        progress.patrolReplays.clear();
        progress.patrolHeroes.clear();
        progress.patrolEvents.clear();
        progress.patrolFatigue.clear();
        progress.patrolFriendly.clear();
    }

    private static byte[] serialize(LocalTutorialStore.Progress progress) {
        Properties properties = progress.toProperties();
        ArrayList arrayList = new ArrayList();
        Iterator it = new TreeSet(properties.stringPropertyNames()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            arrayList.add(str);
            arrayList.add(properties.getProperty(str));
        }
        return BsonLite.document(arrayList.toArray());
    }

    private static void difficulty(LocalResourceEngine.Result result, LocalWeekCatalog localWeekCatalog, byte[] bArr) {
        int m83v = m83v(bArr, "lv");
        int m83v2 = m83v(bArr, "slv");
        int[] iArr = localWeekCatalog.difficulties.get(m83v + ":" + m83v2);
        byte[] m82d = m82d(result.profile, "weeknum");
        require(iArr != null && iArr[0] == 1 && m83v(m82d, "w") >= 2, "尚未开放此周目难度");
        require(BsonLite.keys(m82d(result.profile, "q7Battle")).isEmpty() && !LocalDailyEngine.active(result.profile), "请先结束当前战斗再调整周目难度");
        List<Integer> intArrayValues = BsonLite.intArrayValues(m82d, "ccl");
        if (intArrayValues.size() != 2) {
            intArrayValues = Arrays.asList(1, 1);
        }
        require(m83v(m82d, "d") == 0 || m83v < intArrayValues.get(0).intValue() || (m83v == intArrayValues.get(0).intValue() && m83v2 <= intArrayValues.get(1).intValue()), "第一天结束后不能提升难度");
        ArrayList arrayList = new ArrayList(localWeekCatalog.difficulties.keySet());
        arrayList.sort(new Comparator() { // from class: com.project7.localmanager.LocalWeekEngine$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LocalWeekEngine.lambda$difficulty$2((String) obj, (String) obj2);
            }
        });
        int indexOf = arrayList.indexOf(m83v + ":" + m83v2);
        List emptyList = Collections.emptyList();
        if (indexOf > 0) {
            String[] split = ((String) arrayList.get(indexOf - 1)).split(":");
            emptyList = Arrays.asList(Integer.valueOf(Integer.parseInt(split[0])), Integer.valueOf(Integer.parseInt(split[1])));
        }
        int i = 0;
        for (byte[] bArr2 : LocalResourceEngine.array(m82d(m82d, "ls"))) {
            if (BsonLite.intArrayValues(bArr2, "0").equals(emptyList)) {
                i = Math.max(i, m83v(bArr2, "1"));
            }
        }
        require(i >= iArr[2], "上一难度评分未达到原版开放条件");
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileIntArray(m82d, "ccl", Arrays.asList(Integer.valueOf(m83v), Integer.valueOf(m83v2))), "wl", iArr[1]);
        result.profile = BsonLite.withProfileDocument(result.profile, "weeknum", withProfileInt);
        result.add("replyChangeAVGLevel", BsonLite.document("rs", true, "lv", Integer.valueOf(m83v), "slv", Integer.valueOf(m83v2)));
        result.add("syncWeeknumData", BsonLite.document("d", withProfileInt));
    }

    static /* synthetic */ int lambda$difficulty$2(String str, String str2) {
        String[] split = str.split(":");
        String[] split2 = str2.split(":");
        int compare = Integer.compare(Integer.parseInt(split[0]), Integer.parseInt(split2[0]));
        return compare != 0 ? compare : Integer.compare(Integer.parseInt(split[1]), Integer.parseInt(split2[1]));
    }

    /* renamed from: d */
    private static byte[] m82d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m83v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    private static void require(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }
}
