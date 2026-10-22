package com.project7.localmanager;

import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
final class LocalCityProgress {
    private static final int[][] REQUIRE = {new int[0], new int[0], new int[]{1}, new int[]{2}, new int[]{2}, new int[]{3, 4}, new int[]{5}, new int[]{6}, new int[]{7}};
    private static final int[][] FREE_REQUIRE = {new int[0], new int[0], new int[]{1}, new int[]{2}, new int[]{3}, new int[]{4}, new int[]{5}, new int[]{6}, new int[]{7}};

    LocalCityProgress() {
    }

    static boolean hasBattle(LocalTutorialStore.Progress progress, int i) {
        Set<Integer> set = progress == null ? null : progress.eventConditions.get("battle");
        return set != null && set.contains(Integer.valueOf(i));
    }

    static int area(int i) {
        int area = LocalArkCityEngine.area(i);
        if (area != 0) {
            return area;
        }
        if (i == 101) {
            return 1;
        }
        if (chapterScene(i)) {
            return (i / 1000) - 29;
        }
        int i2 = (i / 1000) + 1;
        int i3 = i % 1000;
        if (i2 < 2 || i2 > 8 || !((i3 >= 101 && i3 <= 106) || i == 1107 || i == 3113 || i == 3114 || i == 4113)) {
            return 0;
        }
        return i2;
    }

    static int status(LocalTutorialStore.Progress progress, int i) {
        return status(progress, i, null);
    }

    static int status(LocalTutorialStore.Progress progress, int i, byte[] bArr) {
        Integer state = LocalArkCityEngine.state(bArr, i);
        if (progress != null && state != null) {
            return state.intValue();
        }
        if (progress != null && LocalChapterCityEngine.active(bArr)) {
            return chapterStatus(progress, i, bArr);
        }
        boolean equals = "6".equals(BsonLite.stringValue(LocalResourceEngine.doc(bArr, "std"), "rt"));
        return status(progress, i, equals ? FREE_REQUIRE : REQUIRE, equals);
    }

    static boolean chapterScene(int i) {
        int i2;
        return i >= 32101 && i <= 37106 && (i2 = i % 100) >= 1 && i2 <= 12;
    }

    private static int[] chapterStages(LocalTutorialStore.Progress progress, int i) {
        switch (i) {
            case 3:
                if (progress.completedEvents.contains(30068)) {
                    return new int[]{32101, 32102, 32103, 32104, 32105, 32106};
                }
                return new int[]{32107, 32108, 32109, 32110, 32111, 32112};
            case 4:
                return new int[]{33104, 33105, 33101, 33102, 33103, 33106};
            case 5:
                return new int[]{34101, 34102, 34103, 34104, 34105, 34106};
            case 6:
                return new int[]{35102, 35104, 35105, 35106, 35103, 35101};
            case 7:
                return new int[]{36102, 36103, 36101, 36104, 36105, 36106};
            case 8:
                return new int[]{37101, 37103, 37104, 37102, 37105, 37106};
            default:
                return new int[0];
        }
    }

    private static int chapterStatus(LocalTutorialStore.Progress progress, int i, byte[] bArr) {
        if (i < 1 || i > 8) {
            return 2;
        }
        Integer state = LocalChapterCityEngine.state(bArr, i);
        if (state != null && state.intValue() == 0) {
            return 0;
        }
        if (i <= 2) {
            return status(progress, i, REQUIRE, false);
        }
        int[] chapterStages = chapterStages(progress, i);
        if (hasBattle(progress, chapterStages[chapterStages.length - 1])) {
            return 0;
        }
        for (int i2 : REQUIRE[i]) {
            if (chapterStatus(progress, i2, bArr) != 0) {
                return 2;
            }
        }
        return 1;
    }

    private static int status(LocalTutorialStore.Progress progress, int i, int[][] iArr, boolean z) {
        if (progress == null || i < 1 || i > 8) {
            return 2;
        }
        if (i == 1) {
            if (progress.completedEvents.contains(1043)) {
                return 0;
            }
            return progress.completedEvents.contains(1004) ? 1 : 2;
        }
        if (!progress.completedEvents.contains(1013) || !progress.completedEvents.contains(1043)) {
            return 2;
        }
        if (hasBattle(progress, ((i - 1) * 1000) + 106) || ((i == 2 && hasBattle(progress, 1107)) || (i == 5 && hasBattle(progress, 4113)))) {
            return 0;
        }
        if (!z) {
            if (i == 3 || i == 4) {
                int i2 = i != 3 ? 3 : 4;
                if (!started(progress, i) && started(progress, i2) && !hasBattle(progress, ((i2 - 1) * 1000) + 106)) {
                    return 2;
                }
            }
        }
        for (int i3 : iArr[i]) {
            if (status(progress, i3, iArr, z) != 0) {
                return 2;
            }
        }
        return 1;
    }

    private static boolean started(LocalTutorialStore.Progress progress, int i) {
        Set<Integer> set = progress.eventConditions.get("battle");
        if (set == null) {
            return false;
        }
        Iterator<Integer> it = set.iterator();
        while (it.hasNext()) {
            if (area(it.next().intValue()) == i) {
                return true;
            }
        }
        return false;
    }

    static byte[] stages(LocalTutorialStore.Progress progress, int i) {
        return stages(progress, i, null);
    }

    static byte[] stages(LocalTutorialStore.Progress progress, int i, byte[] bArr) {
        return LocalChapterCityEngine.locked(bArr, i) ? BsonLite.EMPTY_DOCUMENT : mapStages(progress, i, bArr);
    }

    static byte[] mapStages(LocalTutorialStore.Progress progress, int i, byte[] bArr) {
        if (progress == null && i == 1) {
            return BsonLite.document("cs", 101, "sl", Collections.singletonList(Collections.singletonList(101)));
        }
        if (status(progress, i, bArr) == 5) {
            int scene = LocalArkCityEngine.scene(bArr, i);
            return BsonLite.document("cs", Integer.valueOf(scene), "sl", Collections.singletonList(Collections.singletonList(Integer.valueOf(scene))));
        }
        if (status(progress, i, bArr) != 1) {
            return BsonLite.EMPTY_DOCUMENT;
        }
        if (LocalChapterCityEngine.active(bArr) && i >= 3) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            for (int i3 : chapterStages(progress, i)) {
                arrayList.add(Collections.singletonList(Integer.valueOf(i3)));
                if (i2 == 0 && !hasBattle(progress, i3)) {
                    i2 = i3;
                }
            }
            return BsonLite.document("cs", Integer.valueOf(i2), "sl", arrayList);
        }
        if (i == 1) {
            return BsonLite.document("cs", 101, "sl", Collections.singletonList(Collections.singletonList(101)));
        }
        ArrayList arrayList2 = new ArrayList();
        int i4 = 0;
        for (int i5 = 1; i5 <= 6; i5++) {
            int i6 = ((i - 1) * 1000) + 100 + i5;
            if (i == 2 && i5 == 6 && progress.completedEvents.contains(20007)) {
                i6 = 1107;
            }
            if (i == 4 && i5 == 4 && hasBattle(progress, 3113)) {
                i6 = 3113;
            }
            if (i == 4 && i5 == 5 && hasBattle(progress, 3113)) {
                i6 = 3114;
            }
            if (i == 5 && i5 == 6 && hasBattle(progress, 4113)) {
                i6 = 4113;
            }
            arrayList2.add(Collections.singletonList(Integer.valueOf(i6)));
            if (i4 == 0 && !hasBattle(progress, i6)) {
                i4 = i6;
            }
        }
        return BsonLite.document("cs", Integer.valueOf(i4), "sl", arrayList2);
    }

    static boolean consumeVictory(LocalTutorialStore.Progress progress, byte[] bArr, int i, int i2) {
        if (i != 1 || LocalArkCityEngine.area(i2) != 0 || area(i2) < 2 || hasBattle(progress, i2)) {
            return false;
        }
        Integer intValue = BsonLite.intValue(BsonLite.documentValue(bArr, "city"), "av");
        progress.patrolActions = Math.max(0, (progress.patrolActions >= 0 ? progress.patrolActions : intValue == null ? 24 : intValue.intValue()) - 2);
        return true;
    }
}
