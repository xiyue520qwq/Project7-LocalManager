package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes.dex */
final class LocalMazeSweepEngine {
    LocalMazeSweepEngine() {
    }

    /* renamed from: v */
    private static int m55v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    private static byte[] m54d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    static byte[] refresh(byte[] bArr) {
        int m55v = m55v(bArr, "q7ShopDay");
        int m55v2 = m55v(bArr, "q7MazeAllDay");
        if (m55v2 > 0 && m55v > m55v2) {
            bArr = BsonLite.withProfileInt(bArr, "acl", 0);
        }
        return BsonLite.withProfileInt(bArr, "q7MazeAllDay", Math.max(m55v, m55v2));
    }

    static boolean cleared(byte[] bArr, int i, int i2) {
        String str = "(" + i + ", " + i2 + ")";
        Iterator<byte[]> it = LocalResourceEngine.array(m54d(bArr, "acr")).iterator();
        while (it.hasNext()) {
            if (str.equals(BsonLite.stringValue(it.next(), "0"))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [long] */
    /* JADX WARN: Type inference failed for: r2v4 */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalResourceCatalog localResourceCatalog, byte[] bArr2, long j) {
        int i;
        Object obj;
        LocalFeatureCatalog localFeatureCatalog2 = localFeatureCatalog;
        String str = j;
        String str2 = "MQ";
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        int m55v = m55v(bArr2, "n");
        String str3 = "n";
        try {
            LocalMazeShopEngine.eligible(bArr);
            byte[] bArr3 = localFeatureCatalog2.get("MQ", 0);
            try {
                if (bArr3 != null && m55v >= 1 && m55v <= m55v(bArr3, "max_nandu")) {
                    String str4 = "level";
                    if (m55v(bArr3, "max_level") == 5) {
                        if (m55v(bArr3, "consume") <= 0) {
                            throw new IllegalArgumentException("无尽挑战扫荡难度无效");
                        }
                        byte[] refresh = LocalMazeBattleEngine.refresh(m54d(bArr, "ifm"), str);
                        if (!cleared(refresh, m55v, m55v(bArr3, "max_level"))) {
                            throw new IllegalArgumentException("请先通关该难度的无尽挑战；扫荡不会补通关记录");
                        }
                        if (!LocalDailyEngine.active(bArr) && !Boolean.TRUE.equals(BsonLite.boolValue(m54d(bArr, "combat"), "of"))) {
                            if (BsonLite.keys(m54d(bArr, "q7Battle")).isEmpty() && BsonLite.keys(m54d(refresh, "ash")).isEmpty()) {
                                int m55v2 = m55v(refresh, "acl");
                                int m55v3 = m55v(refresh, "mc");
                                int m55v4 = m55v(refresh, "sc");
                                int m55v5 = m55v(bArr3, "ticket_cost");
                                int m55v6 = m55v(bArr3, "sweep_cost");
                                int m55v7 = m55v(bArr3, "limit");
                                if (m55v2 < 0 || m55v2 > m55v7 || m55v3 < 0 || m55v4 < 0 || m55v5 <= 0 || m55v6 < 0 || m55v7 < 0) {
                                    throw new IllegalArgumentException("无尽挑战次数或费用记录无效");
                                }
                                int min = Math.min(Math.max(0, m55v7 - m55v2), m55v5);
                                int i2 = m55v5 - min;
                                if (i2 > m55v3 || m55v6 > m55v4) {
                                    throw new IllegalArgumentException("无尽挑战次数或扫荡券不足，未消耗资源");
                                }
                                LinkedHashMap linkedHashMap = new LinkedHashMap();
                                linkedHashMap.put("nandu", Integer.valueOf(m55v));
                                ArrayList<byte[]> arrayList = new ArrayList();
                                obj = "nandu";
                                int i3 = 1;
                                while (true) {
                                    int i4 = m55v4;
                                    try {
                                        if (i3 <= m55v(bArr3, "max_level")) {
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(m55v);
                                            i = m55v;
                                            try {
                                                sb.append(":");
                                                sb.append(i3);
                                                byte[] bArr4 = localFeatureCatalog2.get(str2, sb.toString());
                                                if (bArr4 == null) {
                                                    throw new IllegalArgumentException("缺少原版无尽挑战扫荡奖励");
                                                }
                                                String str5 = str4;
                                                List<byte[]> rolls = LocalMazeBattleEngine.rolls(bArr4, str5);
                                                String str6 = str2;
                                                linkedHashMap.put(str5 + i3, LocalMazeBattleEngine.reward(rolls));
                                                arrayList.addAll(rolls);
                                                if (i3 == m55v(bArr3, "max_level")) {
                                                    List<byte[]> rolls2 = LocalMazeBattleEngine.rolls(bArr4, "passed");
                                                    linkedHashMap.put("pass_rewards", LocalMazeBattleEngine.reward(rolls2));
                                                    arrayList.addAll(rolls2);
                                                }
                                                i3++;
                                                localFeatureCatalog2 = localFeatureCatalog;
                                                str2 = str6;
                                                str4 = str5;
                                                m55v4 = i4;
                                                m55v = i;
                                            } catch (ArithmeticException e) {
                                                e = e;
                                                str = "saoDangReply";
                                                LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
                                                result2.add("evalCode", BsonLite.document("s", "gg.ui.unlock('saodang')"));
                                                result2.add(str, BsonLite.document("show_result", BsonLite.EMPTY_DOCUMENT, obj, Integer.valueOf(i), "result", false));
                                                result2.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                                return result2;
                                            } catch (IllegalArgumentException e2) {
                                                e = e2;
                                                str = "saoDangReply";
                                                LocalResourceEngine.Result result22 = new LocalResourceEngine.Result(bArr);
                                                result22.add("evalCode", BsonLite.document("s", "gg.ui.unlock('saodang')"));
                                                result22.add(str, BsonLite.document("show_result", BsonLite.EMPTY_DOCUMENT, obj, Integer.valueOf(i), "result", false));
                                                result22.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                                return result22;
                                            }
                                        } else {
                                            int i5 = m55v;
                                            result.profile = LocalServiceEngine.recover(bArr, str);
                                            LocalMazeBattleEngine.charge(result, -m55v(bArr3, "consume"));
                                            for (byte[] bArr5 : arrayList) {
                                                String str7 = str3;
                                                LocalResourceEngine.grant(result, localResourceCatalog, BsonLite.stringValue(bArr5, "k"), m55v(bArr5, "i"), m55v(bArr5, str7), m55v(bArr5, "q"));
                                                str3 = str7;
                                            }
                                            byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(refresh, "acl", Math.addExact(m55v2, min)), "mc", m55v3 - i2), "sc", i4 - m55v6);
                                            result.profile = BsonLite.withProfileDocument(result.profile, "ifm", withProfileInt);
                                            byte[] document = LocalMazeBattleEngine.document(linkedHashMap);
                                            result.profile = BsonLite.withProfileDocument(result.profile, "q7MazeSweep", BsonLite.document(str3, Integer.valueOf(i5), "result", document, "at", Integer.valueOf((int) (str / 1000))));
                                            LocalResourceEngine.syncCurrencies(result);
                                            result.add("syncMazeData", BsonLite.document("d", withProfileInt));
                                            result.add("saoDangReply", BsonLite.document("show_result", document, obj, Integer.valueOf(i5), "result", true));
                                            return result;
                                        }
                                    } catch (ArithmeticException e3) {
                                        e = e3;
                                        i = m55v;
                                        str = "saoDangReply";
                                        LocalResourceEngine.Result result222 = new LocalResourceEngine.Result(bArr);
                                        result222.add("evalCode", BsonLite.document("s", "gg.ui.unlock('saodang')"));
                                        result222.add(str, BsonLite.document("show_result", BsonLite.EMPTY_DOCUMENT, obj, Integer.valueOf(i), "result", false));
                                        result222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                        return result222;
                                    } catch (IllegalArgumentException e4) {
                                        e = e4;
                                        i = m55v;
                                        str = "saoDangReply";
                                        LocalResourceEngine.Result result2222 = new LocalResourceEngine.Result(bArr);
                                        result2222.add("evalCode", BsonLite.document("s", "gg.ui.unlock('saodang')"));
                                        result2222.add(str, BsonLite.document("show_result", BsonLite.EMPTY_DOCUMENT, obj, Integer.valueOf(i), "result", false));
                                        result2222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                                        return result2222;
                                    }
                                }
                            }
                        }
                        throw new IllegalArgumentException("请先结束当前战斗或无尽挑战，再进行扫荡");
                    }
                }
                throw new IllegalArgumentException("无尽挑战扫荡难度无效");
            } catch (ArithmeticException e5) {
                e = e5;
                LocalResourceEngine.Result result22222 = new LocalResourceEngine.Result(bArr);
                result22222.add("evalCode", BsonLite.document("s", "gg.ui.unlock('saodang')"));
                result22222.add(str, BsonLite.document("show_result", BsonLite.EMPTY_DOCUMENT, obj, Integer.valueOf(i), "result", false));
                result22222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                return result22222;
            } catch (IllegalArgumentException e6) {
                e = e6;
                LocalResourceEngine.Result result222222 = new LocalResourceEngine.Result(bArr);
                result222222.add("evalCode", BsonLite.document("s", "gg.ui.unlock('saodang')"));
                result222222.add(str, BsonLite.document("show_result", BsonLite.EMPTY_DOCUMENT, obj, Integer.valueOf(i), "result", false));
                result222222.add("showMessageStr", BsonLite.document("m", e.getMessage()));
                return result222222;
            }
        } catch (ArithmeticException | IllegalArgumentException e7) {
            e = e7;
            i = m55v;
            obj = "nandu";
        }
    }
}
