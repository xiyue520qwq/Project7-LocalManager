package com.project7.localmanager;

import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
final class LocalDailyPureEngine {
    static final String KEY = "q7DailyPure";
    static final String METHOD = "dailyPureChooseHero";

    LocalDailyPureEngine() {
    }

    /* renamed from: d */
    static byte[] m10d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m11v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static boolean dailyRoute(byte[] bArr) {
        String stringValue = BsonLite.stringValue(m10d(bArr, "std"), "rt");
        return "6".equals(stringValue) || (stringValue != null && stringValue.startsWith("6-"));
    }

    static int[] selected(byte[] bArr, LocalEventCatalog localEventCatalog) {
        byte[] m10d = m10d(bArr, KEY);
        Integer intValue = BsonLite.intValue(m10d, "week");
        int[] iArr = localEventCatalog.dailyPure.get(Integer.valueOf(m11v(m10d, "hero")));
        if (intValue != null && intValue.equals(BsonLite.intValue(m10d(bArr, "weeknum"), "w")) && dailyRoute(bArr) && iArr != null && m11v(m10d, "event") == iArr[0] && m11v(m10d, "scene") == iArr[1]) {
            return iArr;
        }
        return null;
    }

    static LocalResourceEngine.Result choose(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress, byte[] bArr2) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        int m11v = m11v(bArr2, "h");
        byte[] m10d = m10d(bArr, KEY);
        if (!BsonLite.keys(m10d).isEmpty()) {
            if (selected(bArr, localEventCatalog) != null && m11v(m10d, "hero") == m11v) {
                return result;
            }
            result.add("showMessageStr", BsonLite.document("m", "本轮结局角色已选择，不能更换"));
            return result;
        }
        int[] iArr = localEventCatalog.dailyPure.get(Integer.valueOf(m11v));
        byte[] bArr3 = null;
        Iterator it = Arrays.asList("hrs", "bhrs").iterator();
        while (it.hasNext()) {
            for (byte[] bArr4 : LocalResourceEngine.array(m10d(m10d(bArr, "heromgr"), (String) it.next()))) {
                if (Integer.valueOf(m11v).equals(BsonLite.intValue(bArr4, "0"))) {
                    bArr3 = m10d(bArr4, "1");
                }
            }
        }
        if (progress != null && progress.processingEvents.contains(8078) && !progress.completedEvents.contains(8078) && dailyRoute(bArr) && m11v(m10d(bArr, "weeknum"), "d") == 7 && BsonLite.keys(m10d(bArr, "q7WeekResult")).isEmpty() && iArr != null && bArr3 != null && Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "cfd"))) {
            result.profile = BsonLite.withProfileDocument(bArr, KEY, BsonLite.document("week", Integer.valueOf(m11v(m10d(bArr, "weeknum"), "w")), "hero", Integer.valueOf(m11v), "event", Integer.valueOf(iArr[0]), "scene", Integer.valueOf(iArr[1])));
            return result;
        }
        result.add("showMessageStr", BsonLite.document("m", "请选择本周已完成攻略且可进入结局的神器使"));
        return result;
    }

    static void restore(byte[] bArr, LocalEventCatalog localEventCatalog, LocalTutorialStore.Progress progress) {
        int[] selected = selected(bArr, localEventCatalog);
        if (selected == null || !progress.completedEvents.contains(8078) || progress.completedEvents.contains(Integer.valueOf(selected[0])) || progress.processingEvents.contains(Integer.valueOf(selected[0]))) {
            return;
        }
        progress.availableEvents.add(Integer.valueOf(selected[0]));
    }
}
