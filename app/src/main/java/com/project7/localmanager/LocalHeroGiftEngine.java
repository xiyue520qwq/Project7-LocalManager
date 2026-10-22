package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalEconomyEngine;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
final class LocalHeroGiftEngine {
    LocalHeroGiftEngine() {
    }

    static boolean handles(String str) {
        return "tryGiftToHero".equals(str);
    }

    /* renamed from: v */
    private static int m27v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: d */
    private static byte[] m26d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(33:0|1|(9:2|3|4|5|6|7|8|9|(4:10|11|(1:97)(1:16)|17))|(2:19|(28:21|22|(25:27|28|29|(20:36|37|(1:91)(1:41)|42|43|44|(1:46)(1:88)|47|(1:49)(1:87)|50|51|52|53|(4:56|(2:60|61)|62|54)|65|66|67|68|69|70)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70)|94|28|29|(23:31|33|36|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70))(1:96)|95|22|(26:24|27|28|29|(0)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70)|94|28|29|(0)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(41:0|1|2|3|4|5|6|7|8|9|(4:10|11|(1:97)(1:16)|17)|(2:19|(28:21|22|(25:27|28|29|(20:36|37|(1:91)(1:41)|42|43|44|(1:46)(1:88)|47|(1:49)(1:87)|50|51|52|53|(4:56|(2:60|61)|62|54)|65|66|67|68|69|70)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70)|94|28|29|(23:31|33|36|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70))(1:96)|95|22|(26:24|27|28|29|(0)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70)|94|28|29|(0)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(44:0|1|2|3|4|5|6|7|8|9|10|11|(1:97)(1:16)|17|(2:19|(28:21|22|(25:27|28|29|(20:36|37|(1:91)(1:41)|42|43|44|(1:46)(1:88)|47|(1:49)(1:87)|50|51|52|53|(4:56|(2:60|61)|62|54)|65|66|67|68|69|70)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70)|94|28|29|(23:31|33|36|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70))(1:96)|95|22|(26:24|27|28|29|(0)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70)|94|28|29|(0)|93|37|(0)|91|42|43|44|(0)(0)|47|(0)(0)|50|51|52|53|(1:54)|65|66|67|68|69|70|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x02da, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0306, code lost:
    
        r14 = new com.project7.localmanager.LocalResourceEngine.Result(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x030b, code lost:
    
        r15 = java.lang.Integer.parseInt(r0.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0317, code lost:
    
        r14.add(r1, com.project7.localmanager.BsonLite.document(r20, false, r19, com.project7.localmanager.BsonLite.document("e", java.lang.Integer.valueOf(r15))));
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0315, code lost:
    
        r15 = 408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02dc, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02de, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02fa, code lost:
    
        r1 = "giftToHeroReply";
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02e0, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02e4, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02e5, code lost:
    
        r5 = r27;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c0 A[Catch: ArithmeticException -> 0x02e8, ArithmeticException | IllegalArgumentException -> 0x02ea, TRY_ENTER, TryCatch #9 {ArithmeticException | IllegalArgumentException -> 0x02ea, blocks: (B:11:0x003d, B:14:0x0049, B:17:0x0052, B:19:0x0063, B:22:0x0072, B:24:0x007f, B:28:0x0093, B:31:0x00c0, B:33:0x00c6, B:37:0x00d8), top: B:10:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x020b A[Catch: ArithmeticException -> 0x02de, IllegalArgumentException -> 0x02e0, TryCatch #10 {ArithmeticException -> 0x02de, IllegalArgumentException -> 0x02e0, blocks: (B:53:0x0182, B:54:0x0205, B:56:0x020b, B:58:0x0219, B:66:0x0227), top: B:52:0x0182 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x011d  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static LocalResourceEngine.Result apply(byte[] bArr, LocalFeatureCatalog localFeatureCatalog, LocalTutorialStore.Progress progress, byte[] bArr2) {
        byte[] bArr3;
        Object obj;
        Object obj2;
        String str;
        int m27v;
        int m27v2;
        byte[] bArr4;
        byte[] bArr5;
        byte[] m26d;
        String str2;
        boolean z;
        boolean z2;
        boolean z3;
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        try {
            m27v = m27v(bArr2, "h");
            m27v2 = m27v(bArr2, "i");
            obj = "r";
            try {
                bArr4 = localFeatureCatalog.get("HG", Integer.valueOf(m27v2));
                obj2 = "ret";
                try {
                    bArr5 = localFeatureCatalog.get("GH", Integer.valueOf(m27v));
                    require((bArr4 == null || bArr5 == null || !LocalResourceEngine.ownsHero(bArr, m27v)) ? false : true, 408);
                    m26d = m26d(bArr, "heromgr");
                } catch (ArithmeticException | IllegalArgumentException e) {
                    e = e;
                    bArr3 = bArr;
                }
            } catch (ArithmeticException | IllegalArgumentException e2) {
                e = e2;
                bArr3 = bArr;
                obj2 = "ret";
            }
        } catch (ArithmeticException | IllegalArgumentException e3) {
            e = e3;
            bArr3 = bArr;
            obj = "r";
            obj2 = "ret";
            str = "giftToHeroReply";
        }
        if (m27v(m26d, "hg") >= 0) {
            str2 = "i";
            if (m27v(m26d, "hg") < 30) {
                z = true;
                require(z, 321);
                if (m27v(bArr4, "showlock") != 0 && BsonLite.intArrayValues(m26d, "c").contains(Integer.valueOf(m27v))) {
                    z2 = false;
                    require(z2, 336);
                    if (Arrays.asList("6", "6-1", "6-2", "6-3").contains(BsonLite.stringValue(m26d(bArr, "std"), "rt")) && m27v(bArr4, "nFriendlyValue") > 0 && Boolean.TRUE.equals(BsonLite.boolValue(bArr5, "dailyBlocked"))) {
                        z3 = false;
                        require(z3, 682);
                        byte[] profileHeroDocument = BsonLite.profileHeroDocument(BsonLite.withPatrolProgress(bArr, progress), m27v);
                        int m27v3 = m27v(profileHeroDocument, "gt");
                        int m27v4 = m27v(profileHeroDocument, "ef");
                        int m27v5 = m27v(profileHeroDocument, "cf");
                        require(m27v3 < 0 && m27v4 >= 0 && m27v5 >= 0, 408);
                        int m27v6 = m27v(bArr4, "nFriendlyValue");
                        int m27v7 = m27v(bArr4, "nFatigueValue");
                        int preferred = preferred(bArr4, "sFriendly", m27v, m27v6);
                        int preferred2 = preferred(bArr4, "sFatigue", m27v, m27v7);
                        int increase = increase(m27v4, m27v3 >= 5 ? preferred : 0, 100);
                        int increase2 = increase(m27v5, m27v3 >= 5 ? preferred2 : 0, m27v(bArr5, "fatigue"));
                        LocalGiftEngine.consume(result, m27v2, 1);
                        result.profile = BsonLite.withHeroDocument(result.profile, m27v, BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(profileHeroDocument, "ef", increase), "cf", increase2), "gt", Math.addExact(m27v3, 1)));
                        int addExact = Math.addExact(m27v(m26d, "hg"), 1);
                        result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", BsonLite.withProfileInt(m26d(result.profile, "heromgr"), "hg", addExact));
                        LocalEconomyEngine.Result result2 = new LocalEconomyEngine.Result(result.profile);
                        bArr3 = bArr;
                        result2.remainingActions = LocalEconomyEngine.regularActions(bArr3, progress);
                        result2.remainingSandglass = LocalEconomyEngine.sandglass(bArr3, progress);
                        result2.fatigue.put(Integer.valueOf(m27v), Integer.valueOf(increase2));
                        result2.friendly.put(Integer.valueOf(m27v), Integer.valueOf(increase));
                        LocalEconomyEngine.commit(result2, 0);
                        result.profile = result2.profile;
                        result.profile = LocalAchievementEngine.record(result.profile, localFeatureCatalog, "gift", BsonLite.document("hero_id", Integer.valueOf(m27v), "itemId", Integer.valueOf(m27v2), "fri", Integer.valueOf(increase - m27v4)));
                        boolean z4 = true;
                        for (byte[] bArr6 : LocalResourceEngine.array(m26d(m26d(result.profile, "inv"), "items"))) {
                            String str3 = str2;
                            if (m27v(bArr6, str3) == m27v2 && m27v(bArr6, "w") > 0) {
                                z4 = false;
                            }
                            str2 = str3;
                        }
                        Object[] objArr = {obj2, true, obj, BsonLite.document("h", Integer.valueOf(m27v), "nFri", Integer.valueOf(m27v6), "aFri", Integer.valueOf(preferred), "sFri", Integer.valueOf(m27v4), "eFri", Integer.valueOf(increase), "nFat", Integer.valueOf(m27v7), "aFat", Integer.valueOf(preferred2), "sFat", Integer.valueOf(m27v5), "eFat", Integer.valueOf(increase2), "fgn", Integer.valueOf(addExact), "nomore", Boolean.valueOf(z4))};
                        str = "giftToHeroReply";
                        result.add(str, BsonLite.document(objArr));
                        return result;
                    }
                    z3 = true;
                    require(z3, 682);
                    byte[] profileHeroDocument2 = BsonLite.profileHeroDocument(BsonLite.withPatrolProgress(bArr, progress), m27v);
                    int m27v32 = m27v(profileHeroDocument2, "gt");
                    int m27v42 = m27v(profileHeroDocument2, "ef");
                    int m27v52 = m27v(profileHeroDocument2, "cf");
                    require(m27v32 < 0 && m27v42 >= 0 && m27v52 >= 0, 408);
                    int m27v62 = m27v(bArr4, "nFriendlyValue");
                    int m27v72 = m27v(bArr4, "nFatigueValue");
                    int preferred3 = preferred(bArr4, "sFriendly", m27v, m27v62);
                    int preferred22 = preferred(bArr4, "sFatigue", m27v, m27v72);
                    int increase3 = increase(m27v42, m27v32 >= 5 ? preferred3 : 0, 100);
                    int increase22 = increase(m27v52, m27v32 >= 5 ? preferred22 : 0, m27v(bArr5, "fatigue"));
                    LocalGiftEngine.consume(result, m27v2, 1);
                    result.profile = BsonLite.withHeroDocument(result.profile, m27v, BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(profileHeroDocument2, "ef", increase3), "cf", increase22), "gt", Math.addExact(m27v32, 1)));
                    int addExact2 = Math.addExact(m27v(m26d, "hg"), 1);
                    result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", BsonLite.withProfileInt(m26d(result.profile, "heromgr"), "hg", addExact2));
                    LocalEconomyEngine.Result result22 = new LocalEconomyEngine.Result(result.profile);
                    bArr3 = bArr;
                    result22.remainingActions = LocalEconomyEngine.regularActions(bArr3, progress);
                    result22.remainingSandglass = LocalEconomyEngine.sandglass(bArr3, progress);
                    result22.fatigue.put(Integer.valueOf(m27v), Integer.valueOf(increase22));
                    result22.friendly.put(Integer.valueOf(m27v), Integer.valueOf(increase3));
                    LocalEconomyEngine.commit(result22, 0);
                    result.profile = result22.profile;
                    result.profile = LocalAchievementEngine.record(result.profile, localFeatureCatalog, "gift", BsonLite.document("hero_id", Integer.valueOf(m27v), "itemId", Integer.valueOf(m27v2), "fri", Integer.valueOf(increase3 - m27v42)));
                    boolean z42 = true;
                    while (r4.hasNext()) {
                    }
                    Object[] objArr2 = {obj2, true, obj, BsonLite.document("h", Integer.valueOf(m27v), "nFri", Integer.valueOf(m27v62), "aFri", Integer.valueOf(preferred3), "sFri", Integer.valueOf(m27v42), "eFri", Integer.valueOf(increase3), "nFat", Integer.valueOf(m27v72), "aFat", Integer.valueOf(preferred22), "sFat", Integer.valueOf(m27v52), "eFat", Integer.valueOf(increase22), "fgn", Integer.valueOf(addExact2), "nomore", Boolean.valueOf(z42))};
                    str = "giftToHeroReply";
                    result.add(str, BsonLite.document(objArr2));
                    return result;
                }
                z2 = true;
                require(z2, 336);
                if (Arrays.asList("6", "6-1", "6-2", "6-3").contains(BsonLite.stringValue(m26d(bArr, "std"), "rt"))) {
                    z3 = false;
                    require(z3, 682);
                    byte[] profileHeroDocument22 = BsonLite.profileHeroDocument(BsonLite.withPatrolProgress(bArr, progress), m27v);
                    int m27v322 = m27v(profileHeroDocument22, "gt");
                    int m27v422 = m27v(profileHeroDocument22, "ef");
                    int m27v522 = m27v(profileHeroDocument22, "cf");
                    require(m27v322 < 0 && m27v422 >= 0 && m27v522 >= 0, 408);
                    int m27v622 = m27v(bArr4, "nFriendlyValue");
                    int m27v722 = m27v(bArr4, "nFatigueValue");
                    int preferred32 = preferred(bArr4, "sFriendly", m27v, m27v622);
                    int preferred222 = preferred(bArr4, "sFatigue", m27v, m27v722);
                    int increase32 = increase(m27v422, m27v322 >= 5 ? preferred32 : 0, 100);
                    int increase222 = increase(m27v522, m27v322 >= 5 ? preferred222 : 0, m27v(bArr5, "fatigue"));
                    LocalGiftEngine.consume(result, m27v2, 1);
                    result.profile = BsonLite.withHeroDocument(result.profile, m27v, BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(profileHeroDocument22, "ef", increase32), "cf", increase222), "gt", Math.addExact(m27v322, 1)));
                    int addExact22 = Math.addExact(m27v(m26d, "hg"), 1);
                    result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", BsonLite.withProfileInt(m26d(result.profile, "heromgr"), "hg", addExact22));
                    LocalEconomyEngine.Result result222 = new LocalEconomyEngine.Result(result.profile);
                    bArr3 = bArr;
                    result222.remainingActions = LocalEconomyEngine.regularActions(bArr3, progress);
                    result222.remainingSandglass = LocalEconomyEngine.sandglass(bArr3, progress);
                    result222.fatigue.put(Integer.valueOf(m27v), Integer.valueOf(increase222));
                    result222.friendly.put(Integer.valueOf(m27v), Integer.valueOf(increase32));
                    LocalEconomyEngine.commit(result222, 0);
                    result.profile = result222.profile;
                    result.profile = LocalAchievementEngine.record(result.profile, localFeatureCatalog, "gift", BsonLite.document("hero_id", Integer.valueOf(m27v), "itemId", Integer.valueOf(m27v2), "fri", Integer.valueOf(increase32 - m27v422)));
                    boolean z422 = true;
                    while (r4.hasNext()) {
                    }
                    Object[] objArr22 = {obj2, true, obj, BsonLite.document("h", Integer.valueOf(m27v), "nFri", Integer.valueOf(m27v622), "aFri", Integer.valueOf(preferred32), "sFri", Integer.valueOf(m27v422), "eFri", Integer.valueOf(increase32), "nFat", Integer.valueOf(m27v722), "aFat", Integer.valueOf(preferred222), "sFat", Integer.valueOf(m27v522), "eFat", Integer.valueOf(increase222), "fgn", Integer.valueOf(addExact22), "nomore", Boolean.valueOf(z422))};
                    str = "giftToHeroReply";
                    result.add(str, BsonLite.document(objArr22));
                    return result;
                }
                z3 = true;
                require(z3, 682);
                byte[] profileHeroDocument222 = BsonLite.profileHeroDocument(BsonLite.withPatrolProgress(bArr, progress), m27v);
                int m27v3222 = m27v(profileHeroDocument222, "gt");
                int m27v4222 = m27v(profileHeroDocument222, "ef");
                int m27v5222 = m27v(profileHeroDocument222, "cf");
                require(m27v3222 < 0 && m27v4222 >= 0 && m27v5222 >= 0, 408);
                int m27v6222 = m27v(bArr4, "nFriendlyValue");
                int m27v7222 = m27v(bArr4, "nFatigueValue");
                int preferred322 = preferred(bArr4, "sFriendly", m27v, m27v6222);
                int preferred2222 = preferred(bArr4, "sFatigue", m27v, m27v7222);
                int increase322 = increase(m27v4222, m27v3222 >= 5 ? preferred322 : 0, 100);
                int increase2222 = increase(m27v5222, m27v3222 >= 5 ? preferred2222 : 0, m27v(bArr5, "fatigue"));
                LocalGiftEngine.consume(result, m27v2, 1);
                result.profile = BsonLite.withHeroDocument(result.profile, m27v, BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(profileHeroDocument222, "ef", increase322), "cf", increase2222), "gt", Math.addExact(m27v3222, 1)));
                int addExact222 = Math.addExact(m27v(m26d, "hg"), 1);
                result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", BsonLite.withProfileInt(m26d(result.profile, "heromgr"), "hg", addExact222));
                LocalEconomyEngine.Result result2222 = new LocalEconomyEngine.Result(result.profile);
                bArr3 = bArr;
                result2222.remainingActions = LocalEconomyEngine.regularActions(bArr3, progress);
                result2222.remainingSandglass = LocalEconomyEngine.sandglass(bArr3, progress);
                result2222.fatigue.put(Integer.valueOf(m27v), Integer.valueOf(increase2222));
                result2222.friendly.put(Integer.valueOf(m27v), Integer.valueOf(increase322));
                LocalEconomyEngine.commit(result2222, 0);
                result.profile = result2222.profile;
                result.profile = LocalAchievementEngine.record(result.profile, localFeatureCatalog, "gift", BsonLite.document("hero_id", Integer.valueOf(m27v), "itemId", Integer.valueOf(m27v2), "fri", Integer.valueOf(increase322 - m27v4222)));
                boolean z4222 = true;
                while (r4.hasNext()) {
                }
                Object[] objArr222 = {obj2, true, obj, BsonLite.document("h", Integer.valueOf(m27v), "nFri", Integer.valueOf(m27v6222), "aFri", Integer.valueOf(preferred322), "sFri", Integer.valueOf(m27v4222), "eFri", Integer.valueOf(increase322), "nFat", Integer.valueOf(m27v7222), "aFat", Integer.valueOf(preferred2222), "sFat", Integer.valueOf(m27v5222), "eFat", Integer.valueOf(increase2222), "fgn", Integer.valueOf(addExact222), "nomore", Boolean.valueOf(z4222))};
                str = "giftToHeroReply";
                result.add(str, BsonLite.document(objArr222));
                return result;
            }
        } else {
            str2 = "i";
        }
        z = false;
        require(z, 321);
        if (m27v(bArr4, "showlock") != 0) {
            z2 = false;
            require(z2, 336);
            if (Arrays.asList("6", "6-1", "6-2", "6-3").contains(BsonLite.stringValue(m26d(bArr, "std"), "rt"))) {
            }
            z3 = true;
            require(z3, 682);
            byte[] profileHeroDocument2222 = BsonLite.profileHeroDocument(BsonLite.withPatrolProgress(bArr, progress), m27v);
            int m27v32222 = m27v(profileHeroDocument2222, "gt");
            int m27v42222 = m27v(profileHeroDocument2222, "ef");
            int m27v52222 = m27v(profileHeroDocument2222, "cf");
            require(m27v32222 < 0 && m27v42222 >= 0 && m27v52222 >= 0, 408);
            int m27v62222 = m27v(bArr4, "nFriendlyValue");
            int m27v72222 = m27v(bArr4, "nFatigueValue");
            int preferred3222 = preferred(bArr4, "sFriendly", m27v, m27v62222);
            int preferred22222 = preferred(bArr4, "sFatigue", m27v, m27v72222);
            int increase3222 = increase(m27v42222, m27v32222 >= 5 ? preferred3222 : 0, 100);
            int increase22222 = increase(m27v52222, m27v32222 >= 5 ? preferred22222 : 0, m27v(bArr5, "fatigue"));
            LocalGiftEngine.consume(result, m27v2, 1);
            result.profile = BsonLite.withHeroDocument(result.profile, m27v, BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(profileHeroDocument2222, "ef", increase3222), "cf", increase22222), "gt", Math.addExact(m27v32222, 1)));
            int addExact2222 = Math.addExact(m27v(m26d, "hg"), 1);
            result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", BsonLite.withProfileInt(m26d(result.profile, "heromgr"), "hg", addExact2222));
            LocalEconomyEngine.Result result22222 = new LocalEconomyEngine.Result(result.profile);
            bArr3 = bArr;
            result22222.remainingActions = LocalEconomyEngine.regularActions(bArr3, progress);
            result22222.remainingSandglass = LocalEconomyEngine.sandglass(bArr3, progress);
            result22222.fatigue.put(Integer.valueOf(m27v), Integer.valueOf(increase22222));
            result22222.friendly.put(Integer.valueOf(m27v), Integer.valueOf(increase3222));
            LocalEconomyEngine.commit(result22222, 0);
            result.profile = result22222.profile;
            result.profile = LocalAchievementEngine.record(result.profile, localFeatureCatalog, "gift", BsonLite.document("hero_id", Integer.valueOf(m27v), "itemId", Integer.valueOf(m27v2), "fri", Integer.valueOf(increase3222 - m27v42222)));
            boolean z42222 = true;
            while (r4.hasNext()) {
            }
            Object[] objArr2222 = {obj2, true, obj, BsonLite.document("h", Integer.valueOf(m27v), "nFri", Integer.valueOf(m27v62222), "aFri", Integer.valueOf(preferred3222), "sFri", Integer.valueOf(m27v42222), "eFri", Integer.valueOf(increase3222), "nFat", Integer.valueOf(m27v72222), "aFat", Integer.valueOf(preferred22222), "sFat", Integer.valueOf(m27v52222), "eFat", Integer.valueOf(increase22222), "fgn", Integer.valueOf(addExact2222), "nomore", Boolean.valueOf(z42222))};
            str = "giftToHeroReply";
            result.add(str, BsonLite.document(objArr2222));
            return result;
        }
        z2 = true;
        require(z2, 336);
        if (Arrays.asList("6", "6-1", "6-2", "6-3").contains(BsonLite.stringValue(m26d(bArr, "std"), "rt"))) {
        }
        z3 = true;
        require(z3, 682);
        byte[] profileHeroDocument22222 = BsonLite.profileHeroDocument(BsonLite.withPatrolProgress(bArr, progress), m27v);
        int m27v322222 = m27v(profileHeroDocument22222, "gt");
        int m27v422222 = m27v(profileHeroDocument22222, "ef");
        int m27v522222 = m27v(profileHeroDocument22222, "cf");
        require(m27v322222 < 0 && m27v422222 >= 0 && m27v522222 >= 0, 408);
        int m27v622222 = m27v(bArr4, "nFriendlyValue");
        int m27v722222 = m27v(bArr4, "nFatigueValue");
        int preferred32222 = preferred(bArr4, "sFriendly", m27v, m27v622222);
        int preferred222222 = preferred(bArr4, "sFatigue", m27v, m27v722222);
        int increase32222 = increase(m27v422222, m27v322222 >= 5 ? preferred32222 : 0, 100);
        int increase222222 = increase(m27v522222, m27v322222 >= 5 ? preferred222222 : 0, m27v(bArr5, "fatigue"));
        LocalGiftEngine.consume(result, m27v2, 1);
        result.profile = BsonLite.withHeroDocument(result.profile, m27v, BsonLite.withProfileInt(BsonLite.withProfileInt(BsonLite.withProfileInt(profileHeroDocument22222, "ef", increase32222), "cf", increase222222), "gt", Math.addExact(m27v322222, 1)));
        int addExact22222 = Math.addExact(m27v(m26d, "hg"), 1);
        result.profile = BsonLite.withProfileDocument(result.profile, "heromgr", BsonLite.withProfileInt(m26d(result.profile, "heromgr"), "hg", addExact22222));
        LocalEconomyEngine.Result result222222 = new LocalEconomyEngine.Result(result.profile);
        bArr3 = bArr;
        result222222.remainingActions = LocalEconomyEngine.regularActions(bArr3, progress);
        result222222.remainingSandglass = LocalEconomyEngine.sandglass(bArr3, progress);
        result222222.fatigue.put(Integer.valueOf(m27v), Integer.valueOf(increase222222));
        result222222.friendly.put(Integer.valueOf(m27v), Integer.valueOf(increase32222));
        LocalEconomyEngine.commit(result222222, 0);
        result.profile = result222222.profile;
        result.profile = LocalAchievementEngine.record(result.profile, localFeatureCatalog, "gift", BsonLite.document("hero_id", Integer.valueOf(m27v), "itemId", Integer.valueOf(m27v2), "fri", Integer.valueOf(increase32222 - m27v422222)));
        boolean z422222 = true;
        while (r4.hasNext()) {
        }
        Object[] objArr22222 = {obj2, true, obj, BsonLite.document("h", Integer.valueOf(m27v), "nFri", Integer.valueOf(m27v622222), "aFri", Integer.valueOf(preferred32222), "sFri", Integer.valueOf(m27v422222), "eFri", Integer.valueOf(increase32222), "nFat", Integer.valueOf(m27v722222), "aFat", Integer.valueOf(preferred222222), "sFat", Integer.valueOf(m27v522222), "eFat", Integer.valueOf(increase222222), "fgn", Integer.valueOf(addExact22222), "nomore", Boolean.valueOf(z422222))};
        str = "giftToHeroReply";
        result.add(str, BsonLite.document(objArr22222));
        return result;
    }

    private static int preferred(byte[] bArr, String str, int i, int i2) {
        Iterator<byte[]> it = LocalResourceEngine.array(m26d(bArr, str + "Heroes")).iterator();
        int i3 = 0;
        while (it.hasNext()) {
            if (BsonLite.intArrayValues(BsonLite.document("g", new BsonLite.ArrayValue(it.next())), "g").contains(Integer.valueOf(i))) {
                return m27v(m26d(bArr, str + "Value"), Integer.toString(i3));
            }
            i3++;
        }
        return i2;
    }

    private static int increase(int i, int i2, int i3) {
        if (i2 < 0 || i3 < 0) {
            throw new IllegalArgumentException("408");
        }
        return i >= i3 ? i : Math.min(i3, Math.addExact(i, i2));
    }

    static byte[] reset(byte[] bArr) {
        for (byte[] bArr2 : LocalResourceEngine.array(m26d(m26d(bArr, "heromgr"), "hrs"))) {
            bArr = BsonLite.withHeroDocument(bArr, m27v(bArr2, "0"), BsonLite.withProfileInt(m26d(bArr2, "1"), "gt", 0));
        }
        return BsonLite.withProfileDocument(bArr, "heromgr", BsonLite.withProfileInt(m26d(bArr, "heromgr"), "hg", 0));
    }

    private static void require(boolean z, int i) {
        if (!z) {
            throw new IllegalArgumentException(Integer.toString(i));
        }
    }
}
