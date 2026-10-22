package com.project7.localmanager;

import com.project7.localmanager.LocalEconomyEngine;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* loaded from: classes.dex */
final class LocalConstructionEngine {
    LocalConstructionEngine() {
    }

    static boolean handles(String str) {
        return "areaBuildRequest".equals(str) || "areaLevelUpRequest".equals(str) || "playerDestroyBuilding".equals(str);
    }

    private static byte[] doc(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m11v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    private static void require(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x02d2 A[EDGE_INSN: B:114:0x02d2->B:115:0x02d2 BREAK  A[LOOP:0: B:88:0x0230->B:113:0x02c4], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0344 A[Catch: ArithmeticException -> 0x01fb, ArithmeticException | IllegalArgumentException -> 0x01fd, TRY_ENTER, TryCatch #11 {ArithmeticException | IllegalArgumentException -> 0x01fd, blocks: (B:86:0x0213, B:91:0x023c, B:92:0x0258, B:94:0x025e, B:96:0x0270, B:98:0x027a, B:100:0x0288, B:101:0x028f, B:102:0x02a7, B:106:0x02b4, B:124:0x02fc, B:129:0x0316, B:131:0x031d, B:138:0x0344, B:141:0x036e, B:145:0x037a, B:158:0x03b1), top: B:85:0x0213 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x038f A[EDGE_INSN: B:149:0x038f->B:150:0x038f BREAK  A[LOOP:2: B:135:0x033a->B:145:0x037a], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03b1 A[Catch: ArithmeticException -> 0x01fb, ArithmeticException | IllegalArgumentException -> 0x01fd, TRY_ENTER, TRY_LEAVE, TryCatch #11 {ArithmeticException | IllegalArgumentException -> 0x01fd, blocks: (B:86:0x0213, B:91:0x023c, B:92:0x0258, B:94:0x025e, B:96:0x0270, B:98:0x027a, B:100:0x0288, B:101:0x028f, B:102:0x02a7, B:106:0x02b4, B:124:0x02fc, B:129:0x0316, B:131:0x031d, B:138:0x0344, B:141:0x036e, B:145:0x037a, B:158:0x03b1), top: B:85:0x0213 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0467 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x04d6 A[Catch: ArithmeticException -> 0x04ba, ArithmeticException | IllegalArgumentException -> 0x04bc, LOOP:4: B:175:0x04d3->B:177:0x04d6, LOOP_END, TRY_ENTER, TryCatch #13 {ArithmeticException | IllegalArgumentException -> 0x04bc, blocks: (B:164:0x0467, B:177:0x04d6, B:180:0x04f1, B:182:0x04f8, B:186:0x051c, B:189:0x0559, B:191:0x057a, B:197:0x05c8, B:206:0x0661), top: B:163:0x0467 }] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x051c A[Catch: ArithmeticException -> 0x04ba, ArithmeticException | IllegalArgumentException -> 0x04bc, TRY_ENTER, TryCatch #13 {ArithmeticException | IllegalArgumentException -> 0x04bc, blocks: (B:164:0x0467, B:177:0x04d6, B:180:0x04f1, B:182:0x04f8, B:186:0x051c, B:189:0x0559, B:191:0x057a, B:197:0x05c8, B:206:0x0661), top: B:163:0x0467 }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x05c8 A[Catch: ArithmeticException -> 0x04ba, ArithmeticException | IllegalArgumentException -> 0x04bc, TRY_ENTER, TRY_LEAVE, TryCatch #13 {ArithmeticException | IllegalArgumentException -> 0x04bc, blocks: (B:164:0x0467, B:177:0x04d6, B:180:0x04f1, B:182:0x04f8, B:186:0x051c, B:189:0x0559, B:191:0x057a, B:197:0x05c8, B:206:0x0661), top: B:163:0x0467 }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0615  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0661 A[Catch: ArithmeticException -> 0x04ba, ArithmeticException | IllegalArgumentException -> 0x04bc, TRY_ENTER, TRY_LEAVE, TryCatch #13 {ArithmeticException | IllegalArgumentException -> 0x04bc, blocks: (B:164:0x0467, B:177:0x04d6, B:180:0x04f1, B:182:0x04f8, B:186:0x051c, B:189:0x0559, B:191:0x057a, B:197:0x05c8, B:206:0x0661), top: B:163:0x0467 }] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0664  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0616  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x01c0 A[Catch: ArithmeticException | IllegalArgumentException -> 0x06c5, IllegalArgumentException -> 0x06c7, TRY_ENTER, TryCatch #15 {ArithmeticException | IllegalArgumentException -> 0x06c5, blocks: (B:14:0x004d, B:28:0x0077, B:34:0x009e, B:37:0x00b5, B:42:0x00d1, B:48:0x0136, B:52:0x0168, B:56:0x0179, B:71:0x01d8, B:74:0x01e3, B:250:0x01c0, B:253:0x01cc, B:256:0x014a), top: B:13:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x014a A[Catch: ArithmeticException | IllegalArgumentException -> 0x06c5, IllegalArgumentException -> 0x06c7, TRY_ENTER, TryCatch #15 {ArithmeticException | IllegalArgumentException -> 0x06c5, blocks: (B:14:0x004d, B:28:0x0077, B:34:0x009e, B:37:0x00b5, B:42:0x00d1, B:48:0x0136, B:52:0x0168, B:56:0x0179, B:71:0x01d8, B:74:0x01e3, B:250:0x01c0, B:253:0x01cc, B:256:0x014a), top: B:13:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x013d A[Catch: ArithmeticException -> 0x006d, ArithmeticException | IllegalArgumentException -> 0x006f, TRY_ENTER, TRY_LEAVE, TryCatch #16 {ArithmeticException | IllegalArgumentException -> 0x006f, blocks: (B:21:0x005b, B:23:0x005f, B:25:0x0065, B:31:0x008e, B:39:0x00be, B:45:0x012d, B:50:0x013d, B:58:0x017e, B:60:0x0186, B:63:0x0191, B:65:0x0199, B:68:0x01a2), top: B:20:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x017e A[Catch: ArithmeticException -> 0x006d, ArithmeticException | IllegalArgumentException -> 0x006f, TRY_ENTER, TryCatch #16 {ArithmeticException | IllegalArgumentException -> 0x006f, blocks: (B:21:0x005b, B:23:0x005f, B:25:0x0065, B:31:0x008e, B:39:0x00be, B:45:0x012d, B:50:0x013d, B:58:0x017e, B:60:0x0186, B:63:0x0191, B:65:0x0199, B:68:0x01a2), top: B:20:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x023c A[Catch: ArithmeticException -> 0x01fb, ArithmeticException | IllegalArgumentException -> 0x01fd, TRY_ENTER, TryCatch #11 {ArithmeticException | IllegalArgumentException -> 0x01fd, blocks: (B:86:0x0213, B:91:0x023c, B:92:0x0258, B:94:0x025e, B:96:0x0270, B:98:0x027a, B:100:0x0288, B:101:0x028f, B:102:0x02a7, B:106:0x02b4, B:124:0x02fc, B:129:0x0316, B:131:0x031d, B:138:0x0344, B:141:0x036e, B:145:0x037a, B:158:0x03b1), top: B:85:0x0213 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalEconomyEngine.Result apply(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, LocalTutorialStore.Progress progress, String str, byte[] bArr2) {
        int i;
        Object obj;
        String str2;
        RuntimeException runtimeException;
        boolean z;
        byte[] doc;
        int m11v;
        int m11v2;
        LocalEconomyEngine.Result result;
        byte[] rule;
        int m11v3;
        int m11v4;
        int i2;
        int i3;
        Iterator<String> it;
        int i4;
        byte[] bArr3;
        List<Integer> intArrayValues;
        Iterator<Integer> it2;
        int i5;
        int i6;
        int[] iArr;
        int i7;
        String str3;
        String str4;
        byte[] withProfileInt;
        byte[] bArr4;
        Iterator it3;
        int[] iArr2;
        byte[] bArr5;
        int i8;
        Iterator<String> it4;
        Iterator<Integer> it5;
        byte[] bArr6;
        byte[] bArr7;
        String str5 = "bd";
        if ("playerDestroyBuilding".equals(str)) {
            return demolish(bArr, localConstructionCatalog, progress, bArr2);
        }
        LocalEconomyEngine.Result result2 = new LocalEconomyEngine.Result(bArr);
        boolean equals = "areaBuildRequest".equals(str);
        int m11v5 = m11v(bArr2, "aid");
        String str6 = equals ? "area_build_reply" : "area_level_up_reply";
        try {
            obj = "rs";
            try {
                require(handles(str), "未知城市操作");
                try {
                    try {
                        if (progress != null && m11v5 >= 1 && m11v5 <= 8) {
                            try {
                                if (!progress.inEmergency && !LocalChapterCityEngine.locked(bArr, m11v5) && LocalCityProgress.status(progress, m11v5, bArr) == 0) {
                                    z = true;
                                    require(z, "该地区尚未解放，无法建设或开发");
                                    require(!progress.finishedNewbees.contains(20) || (equals && progress.processingNewbees.contains(20)), "请先完成建设指引");
                                    require(m11v(doc(bArr, "weeknum"), "d") >= 7, "最后一天无法建设或开发");
                                    require(progress.patrolRewardPending && BsonLite.keys(doc(bArr, "q7Battle")).isEmpty(), "请先完成当前战斗或巡查");
                                    require(progress.processingEvents.stream().allMatch(LocalConstructionEngine$$ExternalSyntheticLambda0.INSTANCE), "请先完成当前剧情");
                                    result2.profile = BsonLite.withPatrolProgress(BsonLite.withLocalCityState(bArr, progress), progress);
                                    byte[] doc2 = doc(result2.profile, "city");
                                    byte[] doc3 = doc(doc2, "areas");
                                    byte[] doc4 = doc(doc3, "area_" + m11v5);
                                    doc = doc(doc4, "bd");
                                    int m11v6 = m11v(doc4, "lv");
                                    m11v = m11v(bArr2, "fi");
                                    m11v2 = m11v(bArr2, "bi");
                                    require(m11v6 < 1 && localConstructionCatalog.slots(m11v5, m11v6) > 0, "地区开发数据无效");
                                    if (equals) {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(m11v5);
                                        result = result2;
                                        sb.append(":");
                                        sb.append(m11v6 + 1);
                                        rule = localConstructionCatalog.rule("U", sb.toString());
                                    } else {
                                        rule = localConstructionCatalog.rule("B", Integer.valueOf(m11v2));
                                        result = result2;
                                    }
                                    require(!BsonLite.keys(rule).isEmpty(), !equals ? "无效建筑" : "该地区已开发到最高等级");
                                    if (equals) {
                                        require(m11v(bArr2, "luv") == 1, "每次只能开发一级");
                                    } else {
                                        require(m11v(rule, "ban") == 0 && m11v(rule, "clientBan") == 0, "此建筑不能手动建设");
                                        require(m11v >= 1 && m11v <= localConstructionCatalog.slots(m11v5, m11v6), "该建筑空位尚未解锁");
                                        require(BsonLite.keys(doc(doc, Integer.toString(m11v))).isEmpty(), "该空位已有建筑");
                                        validateBuilding(localConstructionCatalog, doc2, doc4, m11v2, rule);
                                    }
                                    m11v3 = m11v(rule, !equals ? "ac" : "action_consume");
                                    m11v4 = m11v(rule, !equals ? "mc" : "money_consume");
                                    int m11v7 = m11v(rule, !equals ? "fc" : "fatigue");
                                    int m11v8 = m11v(rule, !equals ? "cr" : "lead_require");
                                    if (equals) {
                                        i2 = m11v8;
                                        i3 = 0;
                                    } else {
                                        i2 = m11v8;
                                        try {
                                            i3 = m11v(rule, "research_require");
                                        } catch (ArithmeticException | IllegalArgumentException e) {
                                            runtimeException = e;
                                            str2 = str6;
                                            i = m11v5;
                                            LocalEconomyEngine.Result result3 = new LocalEconomyEngine.Result(bArr);
                                            result3.reason = runtimeException.getMessage();
                                            result3.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result3.reason)));
                                            result3.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, "aid", Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                                            return result3;
                                        }
                                    }
                                    ArrayList arrayList = new ArrayList();
                                    it = BsonLite.keys(doc3).iterator();
                                    int i9 = i2;
                                    while (true) {
                                        i4 = 27;
                                        bArr3 = doc;
                                        if (it.hasNext()) {
                                            break;
                                        }
                                        int i10 = m11v2;
                                        byte[] doc5 = doc(doc3, it.next());
                                        int i11 = m11v;
                                        byte[] doc6 = doc(doc5, str5);
                                        for (String str7 : BsonLite.keys(doc6)) {
                                            String str8 = str5;
                                            byte[] bArr8 = doc3;
                                            byte[] doc7 = doc(doc6, str7);
                                            if (equals) {
                                                bArr7 = doc6;
                                                if (m11v(doc7, "id") == 20) {
                                                    if (!Boolean.TRUE.equals(BsonLite.boolValue(doc7, "u"))) {
                                                        i3 = Math.max(0, i3 - 25);
                                                    }
                                                    arrayList.add(new int[]{m11v(doc5, "id"), Integer.parseInt(str7)});
                                                }
                                            } else {
                                                bArr7 = doc6;
                                            }
                                            if (m11v(doc7, "id") == (equals ? 28 : 27)) {
                                                i9 = Math.max(0, i9 - 3);
                                            }
                                            doc3 = bArr8;
                                            str5 = str8;
                                            doc6 = bArr7;
                                        }
                                        m11v = i11;
                                        doc = bArr3;
                                        m11v2 = i10;
                                    }
                                    byte[] bArr9 = doc3;
                                    int i12 = m11v;
                                    int i13 = m11v2;
                                    String str9 = str5;
                                    require(m11v(doc2, "rv") < i3, "城市科技值不足");
                                    LocalEconomyEngine.Result result4 = result;
                                    require(m11v3 < 0 && LocalEconomyEngine.actions(result4.profile, progress) >= m11v3 && m11v4 >= 0 && m11v(doc2, "bf") >= m11v4, "行动力或建设资金不足");
                                    intArrayValues = BsonLite.intArrayValues(bArr2, "hs");
                                    require(intArrayValues.isEmpty() && intArrayValues.size() <= 3 && new LinkedHashSet(intArrayValues).size() == intArrayValues.size(), "请选择一至三名不同的神器使");
                                    it2 = intArrayValues.iterator();
                                    i5 = 0;
                                    while (true) {
                                        i6 = m11v3;
                                        if (it2.hasNext()) {
                                            break;
                                        }
                                        Iterator<Integer> it6 = it2;
                                        int intValue = it2.next().intValue();
                                        List<Integer> list = intArrayValues;
                                        byte[] profileHeroDocument = BsonLite.profileHeroDocument(result4.profile, intValue);
                                        int i14 = m11v4;
                                        require(LocalResourceEngine.ownsHero(result4.profile, intValue), "未拥有选中的神器使");
                                        require(m11v(profileHeroDocument, "cf") >= m11v7, "神器使疲劳值不足");
                                        i5 = Math.addExact(i5, localConstructionCatalog.work(profileHeroDocument, intValue, equals ? "construct" : "leadership"));
                                        it2 = it6;
                                        intArrayValues = list;
                                        m11v3 = i6;
                                        m11v4 = i14;
                                    }
                                    LocalConstructionCatalog localConstructionCatalog2 = localConstructionCatalog;
                                    List<Integer> list2 = intArrayValues;
                                    int i15 = m11v4;
                                    require(i5 < i9, !equals ? "神器使建设力不足" : "神器使开发力不足");
                                    byte[] bArr10 = bArr9;
                                    iArr = totals(localConstructionCatalog2, bArr10, result4.profile);
                                    if (equals) {
                                        i7 = m11v7;
                                        str3 = str9;
                                        int i16 = m11v6 + 1;
                                        str4 = "cf";
                                        i = m11v5;
                                        try {
                                            byte[] withProfileInt2 = BsonLite.withProfileInt(BsonLite.withProfileInt(doc4, "lv", i16), "mbn", localConstructionCatalog2.slots(i, i16));
                                            withProfileInt = BsonLite.withProfileInt(doc2, "tvn", Math.addExact(m11v(doc2, "tvn"), 1));
                                            bArr4 = withProfileInt2;
                                        } catch (ArithmeticException e2) {
                                            e = e2;
                                            str2 = str6;
                                            runtimeException = e;
                                            LocalEconomyEngine.Result result32 = new LocalEconomyEngine.Result(bArr);
                                            result32.reason = runtimeException.getMessage();
                                            result32.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result32.reason)));
                                            result32.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, "aid", Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                                            return result32;
                                        } catch (IllegalArgumentException e3) {
                                            e = e3;
                                            str2 = str6;
                                            runtimeException = e;
                                            LocalEconomyEngine.Result result322 = new LocalEconomyEngine.Result(bArr);
                                            result322.reason = runtimeException.getMessage();
                                            result322.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result322.reason)));
                                            result322.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, "aid", Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                                            return result322;
                                        }
                                    } else {
                                        i7 = m11v7;
                                        str3 = str9;
                                        byte[] withProfileDocument = BsonLite.withProfileDocument(doc4, str3, BsonLite.withProfileDocument(bArr3, Integer.toString(i12), BsonLite.document("id", Integer.valueOf(i13), "uuid", LocalResourceEngine.uuid())));
                                        byte[] withProfileDocument2 = BsonLite.withProfileDocument(withProfileDocument, "dbd", BsonLite.withoutProfileKey(doc(withProfileDocument, "dbd"), Integer.toString(i12)));
                                        withProfileInt = BsonLite.withProfileBool(BsonLite.withProfileInt(doc2, "tbn", Math.addExact(m11v(doc2, "tbn"), 1)), "nbb", false);
                                        bArr4 = withProfileDocument2;
                                        str4 = "cf";
                                        i = m11v5;
                                    }
                                    StringBuilder sb2 = new StringBuilder();
                                    String str10 = "area_";
                                    sb2.append(str10);
                                    sb2.append(i);
                                    byte[] withProfileDocument3 = BsonLite.withProfileDocument(bArr10, sb2.toString(), bArr4);
                                    it3 = arrayList.iterator();
                                    while (it3.hasNext()) {
                                        try {
                                            int[] iArr3 = (int[]) it3.next();
                                            byte[] bArr11 = withProfileInt;
                                            StringBuilder sb3 = new StringBuilder();
                                            sb3.append(str10);
                                            Iterator it7 = it3;
                                            sb3.append(iArr3[0]);
                                            String sb4 = sb3.toString();
                                            String num = Integer.toString(iArr3[1]);
                                            byte[] doc8 = doc(withProfileDocument3, sb4);
                                            String str11 = str10;
                                            byte[] withProfileDocument4 = BsonLite.withProfileDocument(doc8, str3, BsonLite.withoutProfileKey(doc(doc8, str3), num));
                                            String str12 = str3;
                                            withProfileDocument3 = BsonLite.withProfileDocument(withProfileDocument3, sb4, BsonLite.withProfileDocument(withProfileDocument4, "dbd", BsonLite.withProfileInt(doc(withProfileDocument4, "dbd"), num, 20)));
                                            withProfileInt = bArr11;
                                            it3 = it7;
                                            str10 = str11;
                                            str3 = str12;
                                        } catch (ArithmeticException | IllegalArgumentException e4) {
                                            runtimeException = e4;
                                            str2 = str6;
                                            LocalEconomyEngine.Result result3222 = new LocalEconomyEngine.Result(bArr);
                                            result3222.reason = runtimeException.getMessage();
                                            result3222.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result3222.reason)));
                                            result3222.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, "aid", Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                                            return result3222;
                                        }
                                    }
                                    byte[] bArr12 = withProfileInt;
                                    iArr2 = totals(localConstructionCatalog2, withProfileDocument3, result4.profile);
                                    String[] strArr = {"fv", "rv", "dv"};
                                    bArr5 = bArr12;
                                    for (i8 = 0; i8 < 3; i8++) {
                                        bArr5 = BsonLite.withProfileInt(bArr5, strArr[i8], Math.addExact(m11v(bArr5, strArr[i8]), iArr2[i8] - iArr[i8]));
                                    }
                                    if (equals && iArr2[2] > iArr[2]) {
                                        bArr5 = BsonLite.withProfileInt(bArr5, "dvc", Math.addExact(m11v(bArr5, "dvc"), iArr2[2] - iArr[2]));
                                    }
                                    it4 = BsonLite.keys(withProfileDocument3).iterator();
                                    while (it4.hasNext()) {
                                        String next = it4.next();
                                        byte[] doc9 = doc(withProfileDocument3, next);
                                        int[] iArr4 = totals(localConstructionCatalog2, BsonLite.document(next, doc(bArr10, next)), result4.profile);
                                        Iterator<String> it8 = it4;
                                        int[] iArr5 = totals(localConstructionCatalog2, BsonLite.document(next, doc9), result4.profile);
                                        int i17 = 0;
                                        while (true) {
                                            bArr6 = bArr10;
                                            if (i17 >= 3) {
                                                break;
                                            }
                                            doc9 = BsonLite.withProfileInt(doc9, strArr[i17], Math.addExact(m11v(doc9, strArr[i17]), iArr5[i17] - iArr4[i17]));
                                            i17++;
                                            strArr = strArr;
                                            bArr10 = bArr6;
                                        }
                                        String[] strArr2 = strArr;
                                        withProfileDocument3 = BsonLite.withProfileDocument(withProfileDocument3, next, doc9);
                                        localConstructionCatalog2 = localConstructionCatalog;
                                        it4 = it8;
                                        strArr = strArr2;
                                        bArr10 = bArr6;
                                    }
                                    result4.profile = BsonLite.withProfileInt(result4.profile, "q7DailyBuildIncome", iArr2[3]);
                                    result4.profile = BsonLite.withProfileDocument(result4.profile, "city", BsonLite.withProfileDocument(BsonLite.withProfileInt(BsonLite.withProfileInt(bArr5, "bf", m11v(bArr5, "bf") - i15), "av", LocalEconomyEngine.regularActions(result4.profile, progress)), "areas", withProfileDocument3));
                                    it5 = list2.iterator();
                                    while (it5.hasNext()) {
                                        int intValue2 = it5.next().intValue();
                                        byte[] profileHeroDocument2 = BsonLite.profileHeroDocument(result4.profile, intValue2);
                                        String str13 = str4;
                                        int m11v9 = m11v(profileHeroDocument2, str13) - i7;
                                        result4.fatigue.put(Integer.valueOf(intValue2), Integer.valueOf(m11v9));
                                        result4.profile = BsonLite.withHeroDocument(result4.profile, intValue2, BsonLite.withProfileInt(profileHeroDocument2, str13, m11v9));
                                        result4.replies.add(new LocalResourceEngine.Reply("updateCurFatigueValue", BsonLite.heroValueDocument(intValue2, m11v9)));
                                        str4 = str13;
                                    }
                                    LocalEconomyEngine.spendActions(result4, progress, i6);
                                    byte[] bArr13 = result4.profile;
                                    if (equals) {
                                        i4 = 28;
                                    }
                                    result4.profile = LocalNewAchievementEngine.add(bArr13, i4, 1);
                                    byte[] doc10 = doc(result4.profile, "city");
                                    LocalEconomyEngine.commit(result4, 0);
                                    result4.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.withProfileDocument(BsonLite.allAreaInfoReplyDocument(true, progress, result4.profile), "cd", doc10)));
                                    result4.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", doc10)));
                                    str2 = str6;
                                    result4.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, true, "aid", Integer.valueOf(i), "ext", !equals ? BsonLite.EMPTY_DOCUMENT : BsonLite.document("reward", BsonLite.document("money", 0)))));
                                    result4.accepted = true;
                                    return result4;
                                }
                            } catch (ArithmeticException | IllegalArgumentException e5) {
                                runtimeException = e5;
                                i = m11v5;
                                str2 = str6;
                                LocalEconomyEngine.Result result32222 = new LocalEconomyEngine.Result(bArr);
                                result32222.reason = runtimeException.getMessage();
                                result32222.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result32222.reason)));
                                result32222.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, "aid", Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                                return result32222;
                            }
                        }
                        result4.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, true, "aid", Integer.valueOf(i), "ext", !equals ? BsonLite.EMPTY_DOCUMENT : BsonLite.document("reward", BsonLite.document("money", 0)))));
                        result4.accepted = true;
                        return result4;
                    } catch (ArithmeticException e6) {
                        e = e6;
                        runtimeException = e;
                        LocalEconomyEngine.Result result322222 = new LocalEconomyEngine.Result(bArr);
                        result322222.reason = runtimeException.getMessage();
                        result322222.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result322222.reason)));
                        result322222.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, "aid", Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                        return result322222;
                    } catch (IllegalArgumentException e7) {
                        e = e7;
                        runtimeException = e;
                        LocalEconomyEngine.Result result3222222 = new LocalEconomyEngine.Result(bArr);
                        result3222222.reason = runtimeException.getMessage();
                        result3222222.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result3222222.reason)));
                        result3222222.replies.add(new LocalResourceEngine.Reply(str2, BsonLite.document(obj, false, "aid", Integer.valueOf(i), "ext", BsonLite.EMPTY_DOCUMENT)));
                        return result3222222;
                    }
                    int m11v72 = m11v(rule, !equals ? "fc" : "fatigue");
                    int m11v82 = m11v(rule, !equals ? "cr" : "lead_require");
                    if (equals) {
                    }
                    ArrayList arrayList2 = new ArrayList();
                    it = BsonLite.keys(doc3).iterator();
                    int i92 = i2;
                    while (true) {
                        i4 = 27;
                        bArr3 = doc;
                        if (it.hasNext()) {
                        }
                        m11v = i11;
                        doc = bArr3;
                        m11v2 = i10;
                    }
                    byte[] bArr92 = doc3;
                    int i122 = m11v;
                    int i132 = m11v2;
                    String str92 = str5;
                    require(m11v(doc2, "rv") < i3, "城市科技值不足");
                    LocalEconomyEngine.Result result42 = result;
                    require(m11v3 < 0 && LocalEconomyEngine.actions(result42.profile, progress) >= m11v3 && m11v4 >= 0 && m11v(doc2, "bf") >= m11v4, "行动力或建设资金不足");
                    intArrayValues = BsonLite.intArrayValues(bArr2, "hs");
                    require(intArrayValues.isEmpty() && intArrayValues.size() <= 3 && new LinkedHashSet(intArrayValues).size() == intArrayValues.size(), "请选择一至三名不同的神器使");
                    it2 = intArrayValues.iterator();
                    i5 = 0;
                    while (true) {
                        i6 = m11v3;
                        if (it2.hasNext()) {
                        }
                        i5 = Math.addExact(i5, localConstructionCatalog.work(profileHeroDocument, intValue, equals ? "construct" : "leadership"));
                        it2 = it6;
                        intArrayValues = list;
                        m11v3 = i6;
                        m11v4 = i14;
                    }
                    LocalConstructionCatalog localConstructionCatalog22 = localConstructionCatalog;
                    List<Integer> list22 = intArrayValues;
                    int i152 = m11v4;
                    require(i5 < i92, !equals ? "神器使建设力不足" : "神器使开发力不足");
                    byte[] bArr102 = bArr92;
                    iArr = totals(localConstructionCatalog22, bArr102, result42.profile);
                    if (equals) {
                    }
                    StringBuilder sb22 = new StringBuilder();
                    String str102 = "area_";
                    sb22.append(str102);
                    sb22.append(i);
                    byte[] withProfileDocument32 = BsonLite.withProfileDocument(bArr102, sb22.toString(), bArr4);
                    it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                    }
                    byte[] bArr122 = withProfileInt;
                    iArr2 = totals(localConstructionCatalog22, withProfileDocument32, result42.profile);
                    String[] strArr3 = {"fv", "rv", "dv"};
                    bArr5 = bArr122;
                    while (i8 < 3) {
                    }
                    if (equals) {
                        bArr5 = BsonLite.withProfileInt(bArr5, "dvc", Math.addExact(m11v(bArr5, "dvc"), iArr2[2] - iArr[2]));
                    }
                    it4 = BsonLite.keys(withProfileDocument32).iterator();
                    while (it4.hasNext()) {
                    }
                    result42.profile = BsonLite.withProfileInt(result42.profile, "q7DailyBuildIncome", iArr2[3]);
                    result42.profile = BsonLite.withProfileDocument(result42.profile, "city", BsonLite.withProfileDocument(BsonLite.withProfileInt(BsonLite.withProfileInt(bArr5, "bf", m11v(bArr5, "bf") - i152), "av", LocalEconomyEngine.regularActions(result42.profile, progress)), "areas", withProfileDocument32));
                    it5 = list22.iterator();
                    while (it5.hasNext()) {
                    }
                    LocalEconomyEngine.spendActions(result42, progress, i6);
                    byte[] bArr132 = result42.profile;
                    if (equals) {
                    }
                    result42.profile = LocalNewAchievementEngine.add(bArr132, i4, 1);
                    byte[] doc102 = doc(result42.profile, "city");
                    LocalEconomyEngine.commit(result42, 0);
                    result42.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.withProfileDocument(BsonLite.allAreaInfoReplyDocument(true, progress, result42.profile), "cd", doc102)));
                    result42.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", doc102)));
                    str2 = str6;
                } catch (ArithmeticException | IllegalArgumentException e8) {
                    e = e8;
                    str2 = str6;
                    i = m11v5;
                }
                z = false;
                require(z, "该地区尚未解放，无法建设或开发");
                require(!progress.finishedNewbees.contains(20) || (equals && progress.processingNewbees.contains(20)), "请先完成建设指引");
                require(m11v(doc(bArr, "weeknum"), "d") >= 7, "最后一天无法建设或开发");
                require(progress.patrolRewardPending && BsonLite.keys(doc(bArr, "q7Battle")).isEmpty(), "请先完成当前战斗或巡查");
                require(progress.processingEvents.stream().allMatch(LocalConstructionEngine$$ExternalSyntheticLambda0.INSTANCE), "请先完成当前剧情");
                result2.profile = BsonLite.withPatrolProgress(BsonLite.withLocalCityState(bArr, progress), progress);
                byte[] doc22 = doc(result2.profile, "city");
                byte[] doc32 = doc(doc22, "areas");
                byte[] doc42 = doc(doc32, "area_" + m11v5);
                doc = doc(doc42, "bd");
                int m11v62 = m11v(doc42, "lv");
                m11v = m11v(bArr2, "fi");
                m11v2 = m11v(bArr2, "bi");
                require(m11v62 < 1 && localConstructionCatalog.slots(m11v5, m11v62) > 0, "地区开发数据无效");
                if (equals) {
                }
                require(!BsonLite.keys(rule).isEmpty(), !equals ? "无效建筑" : "该地区已开发到最高等级");
                if (equals) {
                }
                m11v3 = m11v(rule, !equals ? "ac" : "action_consume");
                m11v4 = m11v(rule, !equals ? "mc" : "money_consume");
            } catch (ArithmeticException | IllegalArgumentException e9) {
                e = e9;
                i = m11v5;
            }
        } catch (ArithmeticException | IllegalArgumentException e10) {
            e = e10;
            i = m11v5;
            obj = "rs";
        }
    }

    static /* synthetic */ boolean lambda$apply$0(Integer num) {
        return num.intValue() == 9;
    }

    private static int count(byte[] bArr, int i) {
        Iterator<String> it = BsonLite.keys(bArr).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (m11v(doc(bArr, it.next()), "id") == i) {
                i2++;
            }
        }
        return i2;
    }

    static byte[] refreshGuideState(byte[] bArr, LocalTutorialStore.Progress progress) {
        byte[] repairDestroyedSlots = repairDestroyedSlots(bArr);
        byte[] doc = doc(repairDestroyedSlots, "city");
        boolean z = false;
        boolean z2 = m11v(doc, "tbn") > 0 || (progress != null && (progress.finishedNewbees.contains(20) || progress.finishedNewbees.contains(27)));
        Boolean boolValue = BsonLite.boolValue(doc, "nbb");
        if (!z2 && !Boolean.FALSE.equals(boolValue)) {
            z = true;
        }
        return (boolValue == null || boolValue.booleanValue() != z) ? BsonLite.withProfileDocument(repairDestroyedSlots, "city", BsonLite.withProfileBool(doc, "nbb", z)) : repairDestroyedSlots;
    }

    static byte[] acknowledgeDestroyed(byte[] bArr, byte[] bArr2) {
        int m11v = m11v(bArr2, "aid");
        int m11v2 = m11v(bArr2, "fi");
        int m11v3 = m11v(bArr2, "bi");
        if (m11v < 1 || m11v > 8 || m11v2 < 1 || m11v3 < 1) {
            return bArr;
        }
        byte[] doc = doc(bArr, "city");
        byte[] doc2 = doc(doc, "areas");
        String str = "area_" + m11v;
        String num = Integer.toString(m11v2);
        byte[] doc3 = doc(doc2, str);
        byte[] doc4 = doc(doc3, "dbd");
        return m11v(doc4, num) != m11v3 ? bArr : BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileDocument(doc, "areas", BsonLite.withProfileDocument(doc2, str, BsonLite.withProfileDocument(doc3, "dbd", BsonLite.withoutProfileKey(doc4, num)))));
    }

    static byte[] repairDestroyedSlots(byte[] bArr) {
        byte[] doc = doc(bArr, "city");
        byte[] doc2 = doc(doc, "areas");
        Iterator<String> it = BsonLite.keys(doc2).iterator();
        byte[] bArr2 = doc2;
        while (it.hasNext()) {
            String next = it.next();
            byte[] doc3 = doc(doc2, next);
            byte[] doc4 = doc(doc3, "bd");
            byte[] doc5 = doc(doc3, "dbd");
            byte[] bArr3 = doc5;
            for (String str : BsonLite.keys(doc5)) {
                Iterator<String> it2 = it;
                if (m11v(doc(doc4, str), "id") > 0) {
                    bArr3 = BsonLite.withoutProfileKey(bArr3, str);
                }
                it = it2;
            }
            Iterator<String> it3 = it;
            if (!Arrays.equals(doc5, bArr3)) {
                bArr2 = BsonLite.withProfileDocument(bArr2, next, BsonLite.withProfileDocument(doc3, "dbd", bArr3));
            }
            it = it3;
        }
        if (Arrays.equals(doc2, bArr2)) {
            return bArr;
        }
        return BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileDocument(doc, "areas", bArr2));
    }

    static byte[] repairIncome(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, LocalTutorialStore.Progress progress) {
        byte[] doc = doc(bArr, "city");
        int i = totals(localConstructionCatalog, doc(doc(BsonLite.withLocalCityState(bArr, progress), "city"), "areas"), bArr)[3];
        if (BsonLite.intValue(bArr, "q7DailyBuildIncome") == null && m11v(doc, "tbn") > 0 && m11v(doc, "dvc") == i && i > m11v(doc, "dv")) {
            bArr = BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileInt(doc, "dvc", 0));
        }
        return BsonLite.withProfileInt(bArr, "q7DailyBuildIncome", i);
    }

    static byte[] restoreCentralBase(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, LocalTutorialStore.Progress progress) {
        if (progress == null || progress.inEmergency || LocalCityProgress.status(progress, 1) != 0 || Boolean.TRUE.equals(BsonLite.boolValue(bArr, "q7CentralBase"))) {
            return bArr;
        }
        byte[] withLocalCityState = BsonLite.withLocalCityState(bArr, progress);
        byte[] doc = doc(withLocalCityState, "city");
        if (countCity(doc, 1) > 0) {
            return bArr;
        }
        byte[] doc2 = doc(doc, "areas");
        byte[] doc3 = doc(doc2, "area_1");
        byte[] doc4 = doc(doc3, "bd");
        int i = 1;
        while (true) {
            if (i > localConstructionCatalog.slots(1, m11v(doc3, "lv"))) {
                i = 0;
                break;
            }
            if (BsonLite.keys(doc(doc4, Integer.toString(i))).isEmpty()) {
                break;
            }
            i++;
        }
        if (i == 0) {
            return bArr;
        }
        byte[] rule = localConstructionCatalog.rule("B", 1);
        require(m11v(rule, "clientBan") == 1 && m11v(rule, "can_remove") == 0 && m11v(rule, "ml") == 1, "原中央庭基地配置不完整");
        int[] iArr = totals(localConstructionCatalog, doc2, withLocalCityState);
        byte[] withProfileDocument = BsonLite.withProfileDocument(doc3, "bd", BsonLite.withProfileDocument(doc4, Integer.toString(i), BsonLite.document("id", 1, "uuid", LocalResourceEngine.uuid())));
        byte[] withProfileDocument2 = BsonLite.withProfileDocument(withProfileDocument, "dbd", BsonLite.withoutProfileKey(doc(withProfileDocument, "dbd"), Integer.toString(i)));
        byte[] withProfileDocument3 = BsonLite.withProfileDocument(doc2, "area_1", withProfileDocument2);
        int[] iArr2 = totals(localConstructionCatalog, withProfileDocument3, withLocalCityState);
        String[] strArr = {"fv", "rv", "dv"};
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = iArr2[i2] - iArr[i2];
            doc = BsonLite.withProfileInt(doc, strArr[i2], Math.addExact(m11v(doc, strArr[i2]), i3));
            withProfileDocument2 = BsonLite.withProfileInt(withProfileDocument2, strArr[i2], Math.addExact(m11v(withProfileDocument2, strArr[i2]), i3));
        }
        return BsonLite.withProfileBool(BsonLite.withProfileDocument(withLocalCityState, "city", BsonLite.withProfileDocument(BsonLite.withProfileInt(doc, "dvc", Math.addExact(m11v(doc, "dvc"), iArr2[2] - iArr[2])), "areas", BsonLite.withProfileDocument(withProfileDocument3, "area_1", withProfileDocument2))), "q7CentralBase", true);
    }

    static byte[] destroyByIntelligence(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, String str, String str2) {
        int m11v = m11v(localConstructionCatalog.rule("B", Integer.valueOf(m11v(doc(doc(doc(doc(doc(bArr, "city"), "areas"), str), "bd"), str2), "id"))), "type");
        require(m11v >= 1 && m11v <= 3, "情报损毁目标不是原普通建筑");
        return removeBuilding(bArr, localConstructionCatalog, str, str2, true);
    }

    private static LocalEconomyEngine.Result demolish(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, LocalTutorialStore.Progress progress, byte[] bArr2) {
        String str = "aid";
        String str2 = "bd";
        String str3 = "city";
        LocalEconomyEngine.Result result = new LocalEconomyEngine.Result(bArr);
        try {
            String uuidValue = BsonLite.uuidValue(bArr2, "u");
            require((uuidValue == null || uuidValue.isEmpty()) ? false : true, "建筑标识无效");
            byte[] doc = doc(bArr, "q7BuildingRemovals");
            if (BsonLite.documentValue(doc, uuidValue) != null) {
                result.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, bArr)));
                result.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.cityDataReplyDocument(progress, bArr)));
                result.accepted = true;
                result.replay = true;
                return result;
            }
            require((progress == null || progress.inEmergency) ? false : true, "当前不能拆除建筑");
            require(!progress.patrolRewardPending && BsonLite.keys(doc(bArr, "q7Battle")).isEmpty() && progress.processingEvents.stream().allMatch(LocalConstructionEngine$$ExternalSyntheticLambda0.INSTANCE), "请先完成当前剧情、战斗或巡查");
            byte[] withPatrolProgress = BsonLite.withPatrolProgress(BsonLite.withLocalCityState(bArr, progress), progress);
            byte[] doc2 = doc(withPatrolProgress, "city");
            byte[] doc3 = doc(doc2, "areas");
            String str4 = null;
            int i = 0;
            int i2 = 0;
            String str5 = null;
            for (String str6 : BsonLite.keys(doc3)) {
                String str7 = str;
                String str8 = str3;
                Iterator<String> it = BsonLite.keys(doc(doc(doc3, str6), str2)).iterator();
                while (it.hasNext()) {
                    String str9 = str5;
                    str5 = it.next();
                    Iterator<String> it2 = it;
                    byte[] doc4 = doc(doc(doc(doc3, str6), str2), str5);
                    String str10 = str2;
                    if (uuidValue.equals(BsonLite.uuidValue(doc4, "uuid"))) {
                        require(str4 == null, "建筑标识重复，未执行拆除");
                        i = m11v(doc(doc3, str6), "id");
                        i2 = m11v(doc4, "id");
                        str4 = str6;
                        it = it2;
                        str2 = str10;
                    } else {
                        it = it2;
                        str5 = str9;
                        str2 = str10;
                    }
                }
                str3 = str8;
                str = str7;
            }
            String str11 = str;
            String str12 = str3;
            require(str4 != null, "建筑不存在或已移除");
            require(LocalCityProgress.status(progress, i, bArr) == 0, "该地区尚未解放，无法拆除建筑");
            require(m11v(localConstructionCatalog.rule("B", Integer.valueOf(i2)), "can_remove") == 1, "该建筑不能拆除");
            require(m11v(doc2, "rbn") >= 0 && m11v(doc2, "rbn") < 3, "本周目拆除次数已用尽");
            result.profile = removeBuilding(withPatrolProgress, localConstructionCatalog, str4, str5, false);
            byte[] withProfileInt = BsonLite.withProfileInt(doc(result.profile, str12), "rbn", m11v(doc2, "rbn") + 1);
            result.profile = BsonLite.withProfileDocument(result.profile, str12, withProfileInt);
            result.profile = BsonLite.withProfileDocument(result.profile, "q7BuildingRemovals", BsonLite.withProfileDocument(doc, uuidValue, BsonLite.document(str11, Integer.valueOf(i), "fi", Integer.valueOf(Integer.parseInt(str5)), "bi", Integer.valueOf(i2))));
            result.replies.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.withProfileDocument(BsonLite.allAreaInfoReplyDocument(true, progress, result.profile), "cd", withProfileInt)));
            result.replies.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", withProfileInt)));
            result.replies.add(new LocalResourceEngine.Reply("area_building_destroy", BsonLite.document(str11, Integer.valueOf(i), "bid", Integer.valueOf(i2))));
            result.accepted = true;
            return result;
        } catch (ArithmeticException | IllegalArgumentException e) {
            LocalEconomyEngine.Result result2 = new LocalEconomyEngine.Result(bArr);
            result2.reason = e.getMessage();
            result2.replies.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", result2.reason)));
            return result2;
        }
    }

    private static byte[] removeBuilding(byte[] bArr, LocalConstructionCatalog localConstructionCatalog, String str, String str2, boolean z) {
        byte[] withoutProfileKey;
        int i;
        LocalConstructionCatalog localConstructionCatalog2 = localConstructionCatalog;
        byte[] doc = doc(bArr, "city");
        byte[] doc2 = doc(doc, "areas");
        byte[] doc3 = doc(doc2, str);
        int m11v = m11v(doc(doc(doc3, "bd"), str2), "id");
        int[] iArr = totals(localConstructionCatalog2, doc2, bArr);
        byte[] withProfileDocument = BsonLite.withProfileDocument(doc3, "bd", BsonLite.withoutProfileKey(doc(doc3, "bd"), str2));
        if (z) {
            withoutProfileKey = BsonLite.withProfileInt(doc(withProfileDocument, "dbd"), str2, m11v);
        } else {
            withoutProfileKey = BsonLite.withoutProfileKey(doc(withProfileDocument, "dbd"), str2);
        }
        byte[] withProfileDocument2 = BsonLite.withProfileDocument(doc2, str, BsonLite.withProfileDocument(withProfileDocument, "dbd", withoutProfileKey));
        int[] iArr2 = totals(localConstructionCatalog2, withProfileDocument2, bArr);
        String[] strArr = {"fv", "rv", "dv"};
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = 3;
            if (i3 >= 3) {
                break;
            }
            doc = BsonLite.withProfileInt(doc, strArr[i3], Math.addExact(m11v(doc, strArr[i3]), iArr2[i3] - iArr[i3]));
            i3++;
        }
        for (String str3 : BsonLite.keys(withProfileDocument2)) {
            byte[] doc4 = doc(withProfileDocument2, str3);
            Object[] objArr = new Object[2];
            objArr[i2] = str3;
            objArr[1] = doc(doc2, str3);
            int[] iArr3 = totals(localConstructionCatalog2, BsonLite.document(objArr), bArr);
            Object[] objArr2 = new Object[2];
            objArr2[i2] = str3;
            objArr2[1] = doc4;
            int[] iArr4 = totals(localConstructionCatalog2, BsonLite.document(objArr2), bArr);
            while (i2 < i) {
                doc4 = BsonLite.withProfileInt(doc4, strArr[i2], Math.addExact(m11v(doc4, strArr[i2]), iArr4[i2] - iArr3[i2]));
                i2++;
                doc2 = doc2;
                i = 3;
            }
            withProfileDocument2 = BsonLite.withProfileDocument(withProfileDocument2, str3, doc4);
            localConstructionCatalog2 = localConstructionCatalog;
            i2 = 0;
            i = 3;
        }
        return BsonLite.withProfileInt(BsonLite.withProfileDocument(bArr, "city", BsonLite.withProfileDocument(doc, "areas", withProfileDocument2)), "q7DailyBuildIncome", iArr2[3]);
    }

    private static int countCity(byte[] bArr, int i) {
        byte[] doc = doc(bArr, "areas");
        Iterator<String> it = BsonLite.keys(doc).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 += count(doc(doc(doc, it.next()), "bd"), i);
        }
        return i2;
    }

    private static void validateBuilding(LocalConstructionCatalog localConstructionCatalog, byte[] bArr, byte[] bArr2, int i, byte[] bArr3) {
        int count = count(doc(bArr2, "bd"), i);
        int countCity = countCity(bArr, i);
        Integer intValue = BsonLite.intValue(doc(bArr3, "al"), Integer.toString(m11v(bArr2, "id")));
        require(intValue == null || count < intValue.intValue(), "该地区的同类建筑已达上限");
        require(m11v(bArr3, "ml") == 0 || countCity < m11v(bArr3, "ml"), "城市同类建筑已达上限");
        byte[] doc = doc(bArr3, "area_building_require");
        boolean isEmpty = BsonLite.keys(doc).isEmpty();
        for (String str : BsonLite.keys(doc)) {
            isEmpty |= count(doc(bArr2, "bd"), Integer.parseInt(str)) >= m11v(doc, str);
        }
        require(isEmpty, "尚未满足地区前置建筑条件");
        if (m11v(bArr3, "init") == 0) {
            List<Integer> intArrayValues = BsonLite.intArrayValues(bArr3, "pre");
            if (intArrayValues.isEmpty()) {
                require(BsonLite.intArrayValues(bArr, "hb").contains(Integer.valueOf(i)), "此特殊建筑尚未解锁");
            }
            Iterator<Integer> it = intArrayValues.iterator();
            while (it.hasNext()) {
                require(countCity(bArr, it.next().intValue()) > 0, "尚未满足城市前置建筑条件");
            }
        }
    }

    private static int[] totals(LocalConstructionCatalog localConstructionCatalog, byte[] bArr, byte[] bArr2) {
        int i;
        int i2;
        int[] iArr = new int[4];
        Iterator<byte[]> it = LocalResourceEngine.array(doc(doc(bArr2, "heromgr"), "hrs")).iterator();
        int i3 = 0;
        while (it.hasNext()) {
            if (!Boolean.TRUE.equals(BsonLite.boolValue(doc(it.next(), "1"), "cfd"))) {
                i3++;
            }
        }
        int min = Math.min(30, i3);
        Iterator<String> it2 = BsonLite.keys(bArr).iterator();
        while (it2.hasNext()) {
            byte[] doc = doc(bArr, it2.next());
            byte[] doc2 = doc(doc, "bd");
            if (m11v(doc(doc, "st"), "0") == 0) {
                int i4 = 3;
                int[] iArr2 = new int[3];
                int[] iArr3 = new int[3];
                Iterator<String> it3 = BsonLite.keys(doc2).iterator();
                while (it3.hasNext()) {
                    int m11v = m11v(doc(doc2, it3.next()), "id");
                    byte[] rule = localConstructionCatalog.rule("B", Integer.valueOf(m11v));
                    String[] strArr = {"force_val", "research_val", "dev_val"};
                    int i5 = 0;
                    while (i5 < i4) {
                        int m11v2 = m11v(rule, strArr[i5]);
                        iArr2[i5] = Math.addExact(iArr2[i5], m11v2);
                        if (m11v2 <= 0) {
                            if (m11v != (i5 == 0 ? 6 : i5 == 1 ? 11 : 16)) {
                                i5++;
                                i4 = 3;
                            }
                        }
                        iArr3[i5] = iArr3[i5] + 1;
                        i5++;
                        i4 = 3;
                    }
                    i4 = 3;
                }
                int i6 = 0;
                while (i6 < 3) {
                    int i7 = i6 == 0 ? 3 : i6 == 1 ? 8 : 13;
                    if (i6 == 0) {
                        i = 6;
                    } else {
                        i = i6 == 1 ? 11 : 16;
                    }
                    if (i6 == 0) {
                        i2 = 5;
                    } else {
                        i2 = i6 == 1 ? 10 : 15;
                    }
                    iArr2[i6] = Math.addExact(iArr2[i6], Math.multiplyExact(count(doc2, i7), iArr3[i6]));
                    iArr2[i6] = Math.addExact(iArr2[i6], Math.multiplyExact(count(doc2, i), min));
                    for (int i8 = 0; i8 < count(doc2, i2); i8++) {
                        iArr2[i6] = Math.toIntExact(((iArr2[i6] * 3) + 1) / 2);
                    }
                    iArr[i6] = Math.addExact(iArr[i6], iArr2[i6]);
                    i6++;
                }
                iArr[3] = Math.addExact(iArr[3], m11v(localConstructionCatalog.rule("U", m11v(doc, "id") + ":" + m11v(doc, "lv")), "money_output"));
            }
        }
        return iArr;
    }
}
