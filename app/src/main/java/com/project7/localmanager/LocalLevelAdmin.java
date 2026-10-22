package com.project7.localmanager;

import com.project7.localmanager.LocalEconomyEngine;
import com.project7.localmanager.LocalResourceEngine;
import java.util.Iterator;

/* loaded from: classes.dex */
final class LocalLevelAdmin {
    LocalLevelAdmin() {
    }

    static final class HeroGrant {
        final int added;
        final byte[] profile;
        final int total;

        HeroGrant(byte[] bArr, int i, int i2) {
            this.profile = bArr;
            this.added = i;
            this.total = i2;
        }
    }

    static HeroGrant grantAllHeroes(byte[] bArr, LocalResourceCatalog localResourceCatalog) {
        if (localResourceCatalog.heroes.isEmpty()) {
            throw new IllegalArgumentException("角色目录为空，取消发放");
        }
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        int i = 0;
        Iterator<Integer> it = localResourceCatalog.heroes.keySet().iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            if (!LocalResourceEngine.ownsHero(result.profile, intValue)) {
                LocalResourceEngine.grant(result, localResourceCatalog, "hero", intValue, 1, 1);
                i++;
            }
        }
        return new HeroGrant(result.profile, i, localResourceCatalog.heroes.size());
    }

    static void validate(boolean z, int i) {
        if (z) {
            if (i < 1 || i > 110) {
                throw new IllegalArgumentException("等级范围为1-110");
            }
        } else if (i < 1 || i > 1000000000) {
            throw new IllegalArgumentException("增加经验范围为1-1000000000");
        }
    }

    static byte[] apply(byte[] bArr, LocalEconomyCatalog localEconomyCatalog, boolean z, int i) {
        validate(z, i);
        if (z) {
            return BsonLite.withProfileInt(BsonLite.withProfileInt(bArr, "level", i), "exp", 0);
        }
        Integer intValue = BsonLite.intValue(bArr, "level");
        Integer intValue2 = BsonLite.intValue(bArr, "exp");
        if (intValue == null || intValue.intValue() < 1 || intValue.intValue() > 110 || intValue2 == null || intValue2.intValue() < 0 || intValue2.intValue() > localEconomyCatalog.levels.get(intValue)[0] || (intValue.intValue() < 110 && intValue2.intValue() == localEconomyCatalog.levels.get(intValue)[0])) {
            throw new IllegalArgumentException("当前等级或经验异常，请先使用设定等级修复");
        }
        LocalEconomyEngine.Result result = new LocalEconomyEngine.Result(bArr);
        LocalEconomyEngine.addExperience(result, localEconomyCatalog, i);
        return result.profile;
    }
}
