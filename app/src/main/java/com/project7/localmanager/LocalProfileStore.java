package com.project7.localmanager;

import android.content.Context;
import android.system.ErrnoException;
import android.system.Os;
import com.project7.localmanager.LocalCommerceEngine;
import com.project7.localmanager.LocalCommunityEngine;
import com.project7.localmanager.LocalEconomyEngine;
import com.project7.localmanager.LocalGatewayServer;
import com.project7.localmanager.LocalLevelAdmin;
import com.project7.localmanager.LocalProfileEngine;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalStoryEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Predicate;

/* loaded from: classes.dex */
final class LocalProfileStore implements LocalGatewayServer.ProfileProvider {
    private static final Object PROFILE_LOCK = new Object();
    private final LocalActivityStore activities;
    private LocalCommerceCatalog commerceCatalog;
    private LocalConstructionCatalog constructionCatalog;
    private final Context context;
    private LocalFeatureCatalog dailyCatalog;
    private LocalEconomyCatalog economyCatalog;
    private LocalEventCatalog eventCatalog;
    private LocalFeatureCatalog featureCatalog;
    private final Map<String, Long> fullRefreshTimes = new HashMap();
    private LocalFeatureCatalog homeCatalog;
    private final File profilesDirectory;
    private LocalResourceCatalog resourceCatalog;
    private LocalWeekCatalog weekCatalog;

    private LocalFeatureCatalog daily() throws IOException {
        if (this.dailyCatalog == null) {
            this.dailyCatalog = new LocalFeatureCatalog(this.context.getAssets().open("daily.tsv"));
        }
        return this.dailyCatalog;
    }

    private LocalFeatureCatalog home() throws IOException {
        if (this.homeCatalog == null) {
            this.homeCatalog = new LocalFeatureCatalog(this.context.getAssets().open("home.tsv"));
        }
        return this.homeCatalog;
    }

    private LocalFeatureCatalog features() throws IOException {
        if (this.featureCatalog == null) {
            LocalFeatureCatalog localFeatureCatalog = new LocalFeatureCatalog(this.context.getAssets().open("features.tsv"));
            this.featureCatalog = localFeatureCatalog;
            localFeatureCatalog.entries.putAll(new LocalFeatureCatalog(this.context.getAssets().open("personal.tsv")).entries);
            this.featureCatalog.entries.putAll(new LocalFeatureCatalog(this.context.getAssets().open("growth.tsv")).entries);
            this.featureCatalog.entries.putAll(new LocalFeatureCatalog(this.context.getAssets().open("treasure.tsv")).entries);
            this.featureCatalog.entries.putAll(new LocalFeatureCatalog(this.context.getAssets().open("suppression.tsv")).entries);
            this.featureCatalog.entries.putAll(new LocalFeatureCatalog(this.context.getAssets().open("intelligence.tsv")).entries);
            this.featureCatalog.entries.putAll(new LocalFeatureCatalog(this.context.getAssets().open("city_services.tsv")).entries);
            this.featureCatalog.entries.putAll(new LocalFeatureCatalog(this.context.getAssets().open("achievements.tsv")).entries);
            for (Map.Entry<String, byte[]> entry : home().entries.entrySet()) {
                if (entry.getKey().startsWith("HS:")) {
                    this.featureCatalog.entries.put(entry.getKey().substring(1), entry.getValue());
                }
            }
        }
        return this.featureCatalog;
    }

    LocalProfileStore(Context context) {
        this.context = context.getApplicationContext();
        this.profilesDirectory = new File(context.getFilesDir(), "profiles");
        this.activities = new LocalActivityStore(context.getFilesDir());
    }

    private LocalWeekCatalog weeks() throws IOException {
        if (this.weekCatalog == null) {
            this.weekCatalog = new LocalWeekCatalog(this.context.getAssets().open("weeks.tsv"));
        }
        return this.weekCatalog;
    }

    private LocalEconomyCatalog economy() throws IOException {
        if (this.economyCatalog == null) {
            this.economyCatalog = new LocalEconomyCatalog(this.context.getAssets().open("economy.tsv"));
        }
        return this.economyCatalog;
    }

    @Override // com.project7.localmanager.LocalGatewayServer.ProfileProvider
    public String clientCompatibility() throws IOException {
        LocalCommerceCatalog localCommerceCatalog = new LocalCommerceCatalog(this.context.getAssets().open("commerce.tsv"));
        StringBuilder sb = new StringBuilder();
        String[] strArr = {"event", "combat", "suppression", "party", "shop", "star", "draw", "local_content"};
        for (int i = 0; i < 8; i++) {
            String str = strArr[i];
            Context context = this.context;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("client_");
            sb2.append(str);
            sb2.append("local_content".equals(str) ? ".py" : "_compat.py");
            sb.append(LocalClientCompatibility.module(str, new String(AssetData.readAll(context, sb2.toString()), StandardCharsets.UTF_8)));
        }
        sb.append(LocalClientCompatibility.module("activity", this.activities.clientSource(localCommerceCatalog) + "\n" + new String(AssetData.readAll(this.context, "client_activity_compat.py"), StandardCharsets.UTF_8)));
        sb.append("\n");
        sb.append("import com.data.cdata.chouka_info as _q7_hci; import com.data.cdata.furniture_delivery as _q7_hfd; import com.utils.runtime_mapping_table as _q7_hmt; _q7_hci.data=dict(_q7_hci.data); _q7_hci.data[162]=dict(_q7_hci.data[162]); _q7_hfd.data=dict(_q7_hfd.data); _q7_hfd.data[162]=dict(_q7_hfd.data[162]); _q7_hci.data[162].update({'begin_time':(2019,9,11,7,0,5,0,0,0),'end_time':(2035,9,11,7,0,5,0,0,0)}); _q7_hfd.data[162].update({'begin_time':_q7_hci.data[162]['begin_time'],'end_time':_q7_hci.data[162]['end_time']}); _q7_hmt.reload(); _q7_hmt._CELL_MAPPING_CONFIG.setdefault('chouka_info',{}).setdefault(162,{}).update({'begin_time':_q7_hci.data[162]['begin_time'],'end_time':_q7_hci.data[162]['end_time']})");
        sb.append("\n");
        return sb.toString();
    }

    @Override // com.project7.localmanager.LocalGatewayServer.ProfileProvider
    public synchronized byte[] load(String str, LocalTutorialStore.Progress progress) throws IOException {
        byte[] readTemplate;
        byte[] withAccountCredentials;
        byte[] withPatrolProgress;
        synchronized (PROFILE_LOCK) {
            String normalizeUsername = LocalAccountStore.normalizeUsername(str);
            if (!this.profilesDirectory.isDirectory() && !this.profilesDirectory.mkdirs()) {
                throw new IOException("cannot create profile directory");
            }
            File file = new File(this.profilesDirectory, normalizeUsername + ".bson");
            boolean isFile = file.isFile() ^ true;
            if (!isFile) {
                readTemplate = readAll(file);
            } else {
                readTemplate = readTemplate(normalizeUsername);
            }
            int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            if (isFile) {
                withAccountCredentials = BsonLite.withAccountIdentity(readTemplate, normalizeUsername, currentTimeMillis);
            } else {
                withAccountCredentials = BsonLite.withAccountCredentials(readTemplate, normalizeUsername, currentTimeMillis);
            }
            byte[] refresh = LocalLunhuiEngine.refresh(LocalDailyEngine.refreshExam(LocalImageAvatar.approveStored(BsonLite.withRequiredClientDefaults(withAccountCredentials)), System.currentTimeMillis()), daily(), System.currentTimeMillis());
            LocalWeekEngine.recover(refresh, progress);
            LocalEconomyEngine.recover(refresh, progress);
            if (this.constructionCatalog == null) {
                this.constructionCatalog = new LocalConstructionCatalog(this.context.getAssets().open("construction.tsv"));
            }
            byte[] refresh2 = LocalIntelligenceEngine.refresh(LocalConstructionEngine.refreshGuideState(LocalConstructionEngine.restoreCentralBase(LocalConstructionEngine.repairIncome(refresh, this.constructionCatalog, progress), this.constructionCatalog, progress), progress), features(), progress);
            LocalIntelligenceEngine.recoverEvents(refresh2, events(), progress);
            Integer intValue = BsonLite.intValue(refresh2, "role");
            if (intValue != null && (intValue.intValue() == 1 || intValue.intValue() == 2)) {
                refresh2 = LocalProfileEngine.apply(refresh2, "setRoleIdRequest", BsonLite.document("r", intValue)).profile;
            }
            LocalResourceEngine.Result effects = LocalServiceEngine.effects(LocalServiceEngine.recover(LocalGiftEngine.refresh(LocalAccountFeatures.refreshRecharge(LocalCommerceEngine.refreshStoreLimits(LocalDrawCalendar.repairSelection(LocalHomeEngine.initialize(LocalSharedLiberateEngine.normalize(LocalResourceEngine.repairHeroDefaults(BsonLite.withTutorialHeroes(refresh2, progress, normalizeUsername), resources()), features()), home(), resources()).profile, resources()), System.currentTimeMillis())), (int) (System.currentTimeMillis() / 1000)), System.currentTimeMillis()), events(), progress);
            LocalStoryTreasureRewardEngine.refresh(effects, events(), resources(), progress);
            byte[] refreshCounters = LocalTreasureOperationEngine.refreshCounters(LocalAchievementEngine.refresh(LocalWeekEngine.refreshDifficulty(LocalWeekEngine.endings(LocalStoryProgressDelivery.capture(effects), weeks(), economy(), resources(), progress, false).profile, weeks()), features()), System.currentTimeMillis() / 1000);
            LocalEconomyEngine.recover(refreshCounters, progress);
            byte[] recoverHistory = LocalSuppressionEngine.recoverHistory(refreshCounters, progress);
            LocalPatrolEngine.alignDay(recoverHistory, progress);
            byte[] refresh3 = LocalSouvenirEngine.refresh(LocalEconomyEngine.refreshCanteen(recoverHistory), features(), progress);
            LocalSouvenirEngine.recoverShopUnlock(refresh3, progress);
            LocalResourceEngine.Result result = new LocalResourceEngine.Result(LocalNewAchievementEngine.refresh(LocalAchievementEngine.refresh(LocalPersonalEngine.refresh(LocalEconomyEngine.clearEmptyDailySettlement(refresh3), features(), progress, System.currentTimeMillis()), features()), features()));
            LocalCgEngine.reconcile(result, readTemplate, features(), resources(), weeks(), progress);
            byte[] bArr = result.profile;
            if (isFile) {
                bArr = LocalMailEngine.enqueueWelcome(bArr, resources(), new String(AssetData.readAll(this.context, "local_notice.txt"), StandardCharsets.UTF_8), true);
            }
            writeAtomic(file, bArr);
            this.fullRefreshTimes.put(normalizeUsername, Long.valueOf(System.currentTimeMillis()));
            withPatrolProgress = BsonLite.withPatrolProgress(bArr, progress);
        }
        return withPatrolProgress;
    }

    @Override // com.project7.localmanager.LocalGatewayServer.ProfileProvider
    public synchronized byte[] snapshot(String str, LocalTutorialStore.Progress progress) throws IOException {
        synchronized (PROFILE_LOCK) {
            String normalizeUsername = LocalAccountStore.normalizeUsername(str);
            long currentTimeMillis = System.currentTimeMillis();
            Long l = this.fullRefreshTimes.get(normalizeUsername);
            if (l != null && currentTimeMillis >= l.longValue() && currentTimeMillis - l.longValue() < 60000) {
                File file = new File(this.profilesDirectory, normalizeUsername + ".bson");
                if (!file.isFile()) {
                    return load(str, progress);
                }
                byte[] readAll = readAll(file);
                LocalResourceEngine.Result result = new LocalResourceEngine.Result(LocalHomeDailyEngine.refresh(LocalServiceEngine.recover(readAll, currentTimeMillis), home(), LocalStoryEnvironment.now(), false));
                LocalHomeWishDailyEngine.refresh(result, home(), LocalStoryEnvironment.now());
                byte[] bArr = result.profile;
                LocalPatrolEngine.alignDay(bArr, progress);
                if (!Arrays.equals(readAll, bArr)) {
                    writeAtomic(file, bArr);
                }
                return BsonLite.withPatrolProgress(bArr, progress);
            }
            return load(normalizeUsername, progress);
        }
    }

    @Override // com.project7.localmanager.LocalGatewayServer.ProfileProvider
    public synchronized boolean ensureHero(String str, int i) throws IOException {
        synchronized (PROFILE_LOCK) {
            String normalizeUsername = LocalAccountStore.normalizeUsername(str);
            File file = new File(this.profilesDirectory, normalizeUsername + ".bson");
            if (!file.isFile()) {
                throw new IOException("profile does not exist");
            }
            byte[] readAll = readAll(file);
            byte[] withHero = BsonLite.withHero(readAll, i);
            if (withHero == readAll) {
                return false;
            }
            writeAtomic(file, LocalSharedLiberateEngine.normalize(withHero, features()));
            return true;
        }
    }

    @Override // com.project7.localmanager.LocalGatewayServer.ProfileProvider
    public synchronized void savePlayerName(String str, String str2) throws IOException {
        synchronized (PROFILE_LOCK) {
            String normalizeUsername = LocalAccountStore.normalizeUsername(str);
            File file = new File(this.profilesDirectory, normalizeUsername + ".bson");
            if (!file.isFile()) {
                throw new IOException("profile does not exist");
            }
            writeAtomic(file, BsonLite.withPlayerName(readAll(file), str2, (int) (System.currentTimeMillis() / 1000)));
        }
    }

    @Override // com.project7.localmanager.LocalGatewayServer.ProfileProvider
    public synchronized LocalProfileEngine.Result updateProfile(String str, String str2, byte[] bArr) throws IOException {
        LocalProfileEngine.Result apply;
        synchronized (PROFILE_LOCK) {
            String normalizeUsername = LocalAccountStore.normalizeUsername(str);
            File file = new File(this.profilesDirectory, normalizeUsername + ".bson");
            if (!file.isFile()) {
                throw new IOException("profile does not exist");
            }
            byte[] readAll = readAll(file);
            apply = LocalProfileEngine.apply(readAll, str2, bArr, features());
            if (apply.profile != readAll) {
                writeAtomic(file, apply.profile);
            }
        }
        return apply;
    }

    synchronized boolean delete(String str) throws IOException {
        boolean z;
        synchronized (PROFILE_LOCK) {
            String normalizeUsername = LocalAccountStore.normalizeUsername(str);
            File file = new File(this.profilesDirectory, normalizeUsername + ".bson");
            z = !file.isFile() || file.delete();
        }
        return z;
    }

    @Override // com.project7.localmanager.LocalGatewayServer.ProfileProvider
    public synchronized LocalCommerceEngine.Result updateCommerce(String str, String str2, byte[] bArr) throws IOException {
        LocalCommerceEngine.Result apply;
        synchronized (PROFILE_LOCK) {
            String normalizeUsername = LocalAccountStore.normalizeUsername(str);
            File file = new File(this.profilesDirectory, normalizeUsername + ".bson");
            if (!file.isFile()) {
                throw new IOException("profile does not exist");
            }
            boolean equals = "queryItemDetail".equals(str2);
            if (!equals && this.commerceCatalog == null) {
                this.commerceCatalog = new LocalCommerceCatalog(this.context.getAssets().open("commerce.tsv"));
            }
            byte[] readAll = readAll(file);
            apply = LocalCommerceEngine.apply(equals ? readAll : LocalCommerceEngine.refreshStoreLimits(readAll, System.currentTimeMillis()), this.commerceCatalog, str2, bArr, false, System.currentTimeMillis() / 1000, this.activities.snapshot());
            apply.profile = LocalNewAchievementEngine.moneyTransition(readAll, apply.profile);
            if ("buyMoney".equals(str2) && !apply.replies.containsKey("showMessageStr")) {
                apply.profile = LocalAccountFeatures.refreshRecharge(apply.profile);
                apply.add("rookieRechargeSyncData", BsonLite.document("d", LocalResourceEngine.doc(LocalResourceEngine.doc(apply.profile, "sma"), "rcd")));
            }
            if (apply.profile != readAll) {
                writeAtomic(file, apply.profile);
            }
        }
        return apply;
    }

    synchronized LocalResourceCatalog resources() throws IOException {
        if (this.resourceCatalog == null) {
            this.resourceCatalog = new LocalResourceCatalog(this.context.getAssets().open("resources.tsv"));
        }
        return this.resourceCatalog;
    }

    private LocalEventCatalog events() throws IOException {
        if (this.eventCatalog == null) {
            this.eventCatalog = new LocalEventCatalog(this.context);
        }
        return this.eventCatalog;
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x033c A[Catch: all -> 0x0643, TryCatch #0 {, blocks: (B:7:0x000c, B:9:0x002e, B:11:0x003b, B:13:0x004b, B:14:0x0050, B:18:0x0053, B:20:0x0059, B:22:0x0069, B:23:0x006e, B:26:0x0071, B:28:0x0077, B:30:0x0087, B:31:0x009e, B:33:0x00a6, B:34:0x00ab, B:37:0x00ae, B:39:0x00b7, B:41:0x00e4, B:42:0x00e9, B:45:0x00ec, B:47:0x00f2, B:49:0x010c, B:50:0x0111, B:51:0x0116, B:54:0x0119, B:56:0x0121, B:58:0x0134, B:59:0x013b, B:61:0x015b, B:62:0x0160, B:63:0x0162, B:66:0x0139, B:67:0x0165, B:69:0x016b, B:71:0x01a3, B:72:0x01a6, B:74:0x01ae, B:75:0x01b3, B:78:0x01b6, B:80:0x01bc, B:82:0x01c0, B:83:0x01d3, B:85:0x01ed, B:86:0x01f2, B:87:0x01f7, B:90:0x01fa, B:92:0x0202, B:94:0x0212, B:95:0x0215, B:96:0x021a, B:99:0x021d, B:101:0x0225, B:103:0x022f, B:104:0x0232, B:105:0x0237, B:108:0x023a, B:110:0x0240, B:112:0x0250, B:113:0x0255, B:114:0x025a, B:117:0x025d, B:119:0x0266, B:120:0x0271, B:123:0x0274, B:125:0x027a, B:127:0x029f, B:128:0x02a4, B:131:0x02a7, B:133:0x02b1, B:135:0x02d6, B:137:0x02dc, B:138:0x02ec, B:140:0x02f9, B:144:0x0336, B:146:0x033c, B:148:0x035d, B:149:0x0364, B:151:0x036b, B:152:0x0372, B:154:0x0398, B:156:0x039e, B:159:0x03a5, B:160:0x03ac, B:161:0x03ad, B:162:0x03b2, B:163:0x0442, B:165:0x0451, B:167:0x04ad, B:168:0x04c6, B:169:0x04c8, B:171:0x04d6, B:173:0x04e6, B:174:0x050d, B:176:0x052d, B:177:0x0548, B:179:0x0592, B:181:0x05a9, B:182:0x05cf, B:184:0x05d5, B:186:0x05e3, B:188:0x05e9, B:189:0x05fc, B:191:0x0625, B:192:0x062a, B:193:0x0638, B:196:0x05a6, B:197:0x0370, B:198:0x0362, B:199:0x03b7, B:201:0x03bf, B:203:0x03c9, B:205:0x03d1, B:206:0x03d7, B:208:0x03dd, B:209:0x03e6, B:211:0x03f0, B:212:0x0404, B:214:0x040c, B:215:0x0415, B:217:0x041b, B:218:0x0428, B:220:0x0430, B:221:0x0439, B:222:0x0304, B:223:0x02b9, B:225:0x02bd, B:226:0x02d0, B:227:0x063b, B:228:0x0642), top: B:6:0x000c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0451 A[Catch: all -> 0x0643, TryCatch #0 {, blocks: (B:7:0x000c, B:9:0x002e, B:11:0x003b, B:13:0x004b, B:14:0x0050, B:18:0x0053, B:20:0x0059, B:22:0x0069, B:23:0x006e, B:26:0x0071, B:28:0x0077, B:30:0x0087, B:31:0x009e, B:33:0x00a6, B:34:0x00ab, B:37:0x00ae, B:39:0x00b7, B:41:0x00e4, B:42:0x00e9, B:45:0x00ec, B:47:0x00f2, B:49:0x010c, B:50:0x0111, B:51:0x0116, B:54:0x0119, B:56:0x0121, B:58:0x0134, B:59:0x013b, B:61:0x015b, B:62:0x0160, B:63:0x0162, B:66:0x0139, B:67:0x0165, B:69:0x016b, B:71:0x01a3, B:72:0x01a6, B:74:0x01ae, B:75:0x01b3, B:78:0x01b6, B:80:0x01bc, B:82:0x01c0, B:83:0x01d3, B:85:0x01ed, B:86:0x01f2, B:87:0x01f7, B:90:0x01fa, B:92:0x0202, B:94:0x0212, B:95:0x0215, B:96:0x021a, B:99:0x021d, B:101:0x0225, B:103:0x022f, B:104:0x0232, B:105:0x0237, B:108:0x023a, B:110:0x0240, B:112:0x0250, B:113:0x0255, B:114:0x025a, B:117:0x025d, B:119:0x0266, B:120:0x0271, B:123:0x0274, B:125:0x027a, B:127:0x029f, B:128:0x02a4, B:131:0x02a7, B:133:0x02b1, B:135:0x02d6, B:137:0x02dc, B:138:0x02ec, B:140:0x02f9, B:144:0x0336, B:146:0x033c, B:148:0x035d, B:149:0x0364, B:151:0x036b, B:152:0x0372, B:154:0x0398, B:156:0x039e, B:159:0x03a5, B:160:0x03ac, B:161:0x03ad, B:162:0x03b2, B:163:0x0442, B:165:0x0451, B:167:0x04ad, B:168:0x04c6, B:169:0x04c8, B:171:0x04d6, B:173:0x04e6, B:174:0x050d, B:176:0x052d, B:177:0x0548, B:179:0x0592, B:181:0x05a9, B:182:0x05cf, B:184:0x05d5, B:186:0x05e3, B:188:0x05e9, B:189:0x05fc, B:191:0x0625, B:192:0x062a, B:193:0x0638, B:196:0x05a6, B:197:0x0370, B:198:0x0362, B:199:0x03b7, B:201:0x03bf, B:203:0x03c9, B:205:0x03d1, B:206:0x03d7, B:208:0x03dd, B:209:0x03e6, B:211:0x03f0, B:212:0x0404, B:214:0x040c, B:215:0x0415, B:217:0x041b, B:218:0x0428, B:220:0x0430, B:221:0x0439, B:222:0x0304, B:223:0x02b9, B:225:0x02bd, B:226:0x02d0, B:227:0x063b, B:228:0x0642), top: B:6:0x000c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x052d A[Catch: all -> 0x0643, TryCatch #0 {, blocks: (B:7:0x000c, B:9:0x002e, B:11:0x003b, B:13:0x004b, B:14:0x0050, B:18:0x0053, B:20:0x0059, B:22:0x0069, B:23:0x006e, B:26:0x0071, B:28:0x0077, B:30:0x0087, B:31:0x009e, B:33:0x00a6, B:34:0x00ab, B:37:0x00ae, B:39:0x00b7, B:41:0x00e4, B:42:0x00e9, B:45:0x00ec, B:47:0x00f2, B:49:0x010c, B:50:0x0111, B:51:0x0116, B:54:0x0119, B:56:0x0121, B:58:0x0134, B:59:0x013b, B:61:0x015b, B:62:0x0160, B:63:0x0162, B:66:0x0139, B:67:0x0165, B:69:0x016b, B:71:0x01a3, B:72:0x01a6, B:74:0x01ae, B:75:0x01b3, B:78:0x01b6, B:80:0x01bc, B:82:0x01c0, B:83:0x01d3, B:85:0x01ed, B:86:0x01f2, B:87:0x01f7, B:90:0x01fa, B:92:0x0202, B:94:0x0212, B:95:0x0215, B:96:0x021a, B:99:0x021d, B:101:0x0225, B:103:0x022f, B:104:0x0232, B:105:0x0237, B:108:0x023a, B:110:0x0240, B:112:0x0250, B:113:0x0255, B:114:0x025a, B:117:0x025d, B:119:0x0266, B:120:0x0271, B:123:0x0274, B:125:0x027a, B:127:0x029f, B:128:0x02a4, B:131:0x02a7, B:133:0x02b1, B:135:0x02d6, B:137:0x02dc, B:138:0x02ec, B:140:0x02f9, B:144:0x0336, B:146:0x033c, B:148:0x035d, B:149:0x0364, B:151:0x036b, B:152:0x0372, B:154:0x0398, B:156:0x039e, B:159:0x03a5, B:160:0x03ac, B:161:0x03ad, B:162:0x03b2, B:163:0x0442, B:165:0x0451, B:167:0x04ad, B:168:0x04c6, B:169:0x04c8, B:171:0x04d6, B:173:0x04e6, B:174:0x050d, B:176:0x052d, B:177:0x0548, B:179:0x0592, B:181:0x05a9, B:182:0x05cf, B:184:0x05d5, B:186:0x05e3, B:188:0x05e9, B:189:0x05fc, B:191:0x0625, B:192:0x062a, B:193:0x0638, B:196:0x05a6, B:197:0x0370, B:198:0x0362, B:199:0x03b7, B:201:0x03bf, B:203:0x03c9, B:205:0x03d1, B:206:0x03d7, B:208:0x03dd, B:209:0x03e6, B:211:0x03f0, B:212:0x0404, B:214:0x040c, B:215:0x0415, B:217:0x041b, B:218:0x0428, B:220:0x0430, B:221:0x0439, B:222:0x0304, B:223:0x02b9, B:225:0x02bd, B:226:0x02d0, B:227:0x063b, B:228:0x0642), top: B:6:0x000c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x05d5 A[Catch: all -> 0x0643, LOOP:0: B:182:0x05cf->B:184:0x05d5, LOOP_END, TryCatch #0 {, blocks: (B:7:0x000c, B:9:0x002e, B:11:0x003b, B:13:0x004b, B:14:0x0050, B:18:0x0053, B:20:0x0059, B:22:0x0069, B:23:0x006e, B:26:0x0071, B:28:0x0077, B:30:0x0087, B:31:0x009e, B:33:0x00a6, B:34:0x00ab, B:37:0x00ae, B:39:0x00b7, B:41:0x00e4, B:42:0x00e9, B:45:0x00ec, B:47:0x00f2, B:49:0x010c, B:50:0x0111, B:51:0x0116, B:54:0x0119, B:56:0x0121, B:58:0x0134, B:59:0x013b, B:61:0x015b, B:62:0x0160, B:63:0x0162, B:66:0x0139, B:67:0x0165, B:69:0x016b, B:71:0x01a3, B:72:0x01a6, B:74:0x01ae, B:75:0x01b3, B:78:0x01b6, B:80:0x01bc, B:82:0x01c0, B:83:0x01d3, B:85:0x01ed, B:86:0x01f2, B:87:0x01f7, B:90:0x01fa, B:92:0x0202, B:94:0x0212, B:95:0x0215, B:96:0x021a, B:99:0x021d, B:101:0x0225, B:103:0x022f, B:104:0x0232, B:105:0x0237, B:108:0x023a, B:110:0x0240, B:112:0x0250, B:113:0x0255, B:114:0x025a, B:117:0x025d, B:119:0x0266, B:120:0x0271, B:123:0x0274, B:125:0x027a, B:127:0x029f, B:128:0x02a4, B:131:0x02a7, B:133:0x02b1, B:135:0x02d6, B:137:0x02dc, B:138:0x02ec, B:140:0x02f9, B:144:0x0336, B:146:0x033c, B:148:0x035d, B:149:0x0364, B:151:0x036b, B:152:0x0372, B:154:0x0398, B:156:0x039e, B:159:0x03a5, B:160:0x03ac, B:161:0x03ad, B:162:0x03b2, B:163:0x0442, B:165:0x0451, B:167:0x04ad, B:168:0x04c6, B:169:0x04c8, B:171:0x04d6, B:173:0x04e6, B:174:0x050d, B:176:0x052d, B:177:0x0548, B:179:0x0592, B:181:0x05a9, B:182:0x05cf, B:184:0x05d5, B:186:0x05e3, B:188:0x05e9, B:189:0x05fc, B:191:0x0625, B:192:0x062a, B:193:0x0638, B:196:0x05a6, B:197:0x0370, B:198:0x0362, B:199:0x03b7, B:201:0x03bf, B:203:0x03c9, B:205:0x03d1, B:206:0x03d7, B:208:0x03dd, B:209:0x03e6, B:211:0x03f0, B:212:0x0404, B:214:0x040c, B:215:0x0415, B:217:0x041b, B:218:0x0428, B:220:0x0430, B:221:0x0439, B:222:0x0304, B:223:0x02b9, B:225:0x02bd, B:226:0x02d0, B:227:0x063b, B:228:0x0642), top: B:6:0x000c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x05e9 A[Catch: all -> 0x0643, TryCatch #0 {, blocks: (B:7:0x000c, B:9:0x002e, B:11:0x003b, B:13:0x004b, B:14:0x0050, B:18:0x0053, B:20:0x0059, B:22:0x0069, B:23:0x006e, B:26:0x0071, B:28:0x0077, B:30:0x0087, B:31:0x009e, B:33:0x00a6, B:34:0x00ab, B:37:0x00ae, B:39:0x00b7, B:41:0x00e4, B:42:0x00e9, B:45:0x00ec, B:47:0x00f2, B:49:0x010c, B:50:0x0111, B:51:0x0116, B:54:0x0119, B:56:0x0121, B:58:0x0134, B:59:0x013b, B:61:0x015b, B:62:0x0160, B:63:0x0162, B:66:0x0139, B:67:0x0165, B:69:0x016b, B:71:0x01a3, B:72:0x01a6, B:74:0x01ae, B:75:0x01b3, B:78:0x01b6, B:80:0x01bc, B:82:0x01c0, B:83:0x01d3, B:85:0x01ed, B:86:0x01f2, B:87:0x01f7, B:90:0x01fa, B:92:0x0202, B:94:0x0212, B:95:0x0215, B:96:0x021a, B:99:0x021d, B:101:0x0225, B:103:0x022f, B:104:0x0232, B:105:0x0237, B:108:0x023a, B:110:0x0240, B:112:0x0250, B:113:0x0255, B:114:0x025a, B:117:0x025d, B:119:0x0266, B:120:0x0271, B:123:0x0274, B:125:0x027a, B:127:0x029f, B:128:0x02a4, B:131:0x02a7, B:133:0x02b1, B:135:0x02d6, B:137:0x02dc, B:138:0x02ec, B:140:0x02f9, B:144:0x0336, B:146:0x033c, B:148:0x035d, B:149:0x0364, B:151:0x036b, B:152:0x0372, B:154:0x0398, B:156:0x039e, B:159:0x03a5, B:160:0x03ac, B:161:0x03ad, B:162:0x03b2, B:163:0x0442, B:165:0x0451, B:167:0x04ad, B:168:0x04c6, B:169:0x04c8, B:171:0x04d6, B:173:0x04e6, B:174:0x050d, B:176:0x052d, B:177:0x0548, B:179:0x0592, B:181:0x05a9, B:182:0x05cf, B:184:0x05d5, B:186:0x05e3, B:188:0x05e9, B:189:0x05fc, B:191:0x0625, B:192:0x062a, B:193:0x0638, B:196:0x05a6, B:197:0x0370, B:198:0x0362, B:199:0x03b7, B:201:0x03bf, B:203:0x03c9, B:205:0x03d1, B:206:0x03d7, B:208:0x03dd, B:209:0x03e6, B:211:0x03f0, B:212:0x0404, B:214:0x040c, B:215:0x0415, B:217:0x041b, B:218:0x0428, B:220:0x0430, B:221:0x0439, B:222:0x0304, B:223:0x02b9, B:225:0x02bd, B:226:0x02d0, B:227:0x063b, B:228:0x0642), top: B:6:0x000c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0625 A[Catch: all -> 0x0643, TryCatch #0 {, blocks: (B:7:0x000c, B:9:0x002e, B:11:0x003b, B:13:0x004b, B:14:0x0050, B:18:0x0053, B:20:0x0059, B:22:0x0069, B:23:0x006e, B:26:0x0071, B:28:0x0077, B:30:0x0087, B:31:0x009e, B:33:0x00a6, B:34:0x00ab, B:37:0x00ae, B:39:0x00b7, B:41:0x00e4, B:42:0x00e9, B:45:0x00ec, B:47:0x00f2, B:49:0x010c, B:50:0x0111, B:51:0x0116, B:54:0x0119, B:56:0x0121, B:58:0x0134, B:59:0x013b, B:61:0x015b, B:62:0x0160, B:63:0x0162, B:66:0x0139, B:67:0x0165, B:69:0x016b, B:71:0x01a3, B:72:0x01a6, B:74:0x01ae, B:75:0x01b3, B:78:0x01b6, B:80:0x01bc, B:82:0x01c0, B:83:0x01d3, B:85:0x01ed, B:86:0x01f2, B:87:0x01f7, B:90:0x01fa, B:92:0x0202, B:94:0x0212, B:95:0x0215, B:96:0x021a, B:99:0x021d, B:101:0x0225, B:103:0x022f, B:104:0x0232, B:105:0x0237, B:108:0x023a, B:110:0x0240, B:112:0x0250, B:113:0x0255, B:114:0x025a, B:117:0x025d, B:119:0x0266, B:120:0x0271, B:123:0x0274, B:125:0x027a, B:127:0x029f, B:128:0x02a4, B:131:0x02a7, B:133:0x02b1, B:135:0x02d6, B:137:0x02dc, B:138:0x02ec, B:140:0x02f9, B:144:0x0336, B:146:0x033c, B:148:0x035d, B:149:0x0364, B:151:0x036b, B:152:0x0372, B:154:0x0398, B:156:0x039e, B:159:0x03a5, B:160:0x03ac, B:161:0x03ad, B:162:0x03b2, B:163:0x0442, B:165:0x0451, B:167:0x04ad, B:168:0x04c6, B:169:0x04c8, B:171:0x04d6, B:173:0x04e6, B:174:0x050d, B:176:0x052d, B:177:0x0548, B:179:0x0592, B:181:0x05a9, B:182:0x05cf, B:184:0x05d5, B:186:0x05e3, B:188:0x05e9, B:189:0x05fc, B:191:0x0625, B:192:0x062a, B:193:0x0638, B:196:0x05a6, B:197:0x0370, B:198:0x0362, B:199:0x03b7, B:201:0x03bf, B:203:0x03c9, B:205:0x03d1, B:206:0x03d7, B:208:0x03dd, B:209:0x03e6, B:211:0x03f0, B:212:0x0404, B:214:0x040c, B:215:0x0415, B:217:0x041b, B:218:0x0428, B:220:0x0430, B:221:0x0439, B:222:0x0304, B:223:0x02b9, B:225:0x02bd, B:226:0x02d0, B:227:0x063b, B:228:0x0642), top: B:6:0x000c, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x03b7 A[Catch: all -> 0x0643, TryCatch #0 {, blocks: (B:7:0x000c, B:9:0x002e, B:11:0x003b, B:13:0x004b, B:14:0x0050, B:18:0x0053, B:20:0x0059, B:22:0x0069, B:23:0x006e, B:26:0x0071, B:28:0x0077, B:30:0x0087, B:31:0x009e, B:33:0x00a6, B:34:0x00ab, B:37:0x00ae, B:39:0x00b7, B:41:0x00e4, B:42:0x00e9, B:45:0x00ec, B:47:0x00f2, B:49:0x010c, B:50:0x0111, B:51:0x0116, B:54:0x0119, B:56:0x0121, B:58:0x0134, B:59:0x013b, B:61:0x015b, B:62:0x0160, B:63:0x0162, B:66:0x0139, B:67:0x0165, B:69:0x016b, B:71:0x01a3, B:72:0x01a6, B:74:0x01ae, B:75:0x01b3, B:78:0x01b6, B:80:0x01bc, B:82:0x01c0, B:83:0x01d3, B:85:0x01ed, B:86:0x01f2, B:87:0x01f7, B:90:0x01fa, B:92:0x0202, B:94:0x0212, B:95:0x0215, B:96:0x021a, B:99:0x021d, B:101:0x0225, B:103:0x022f, B:104:0x0232, B:105:0x0237, B:108:0x023a, B:110:0x0240, B:112:0x0250, B:113:0x0255, B:114:0x025a, B:117:0x025d, B:119:0x0266, B:120:0x0271, B:123:0x0274, B:125:0x027a, B:127:0x029f, B:128:0x02a4, B:131:0x02a7, B:133:0x02b1, B:135:0x02d6, B:137:0x02dc, B:138:0x02ec, B:140:0x02f9, B:144:0x0336, B:146:0x033c, B:148:0x035d, B:149:0x0364, B:151:0x036b, B:152:0x0372, B:154:0x0398, B:156:0x039e, B:159:0x03a5, B:160:0x03ac, B:161:0x03ad, B:162:0x03b2, B:163:0x0442, B:165:0x0451, B:167:0x04ad, B:168:0x04c6, B:169:0x04c8, B:171:0x04d6, B:173:0x04e6, B:174:0x050d, B:176:0x052d, B:177:0x0548, B:179:0x0592, B:181:0x05a9, B:182:0x05cf, B:184:0x05d5, B:186:0x05e3, B:188:0x05e9, B:189:0x05fc, B:191:0x0625, B:192:0x062a, B:193:0x0638, B:196:0x05a6, B:197:0x0370, B:198:0x0362, B:199:0x03b7, B:201:0x03bf, B:203:0x03c9, B:205:0x03d1, B:206:0x03d7, B:208:0x03dd, B:209:0x03e6, B:211:0x03f0, B:212:0x0404, B:214:0x040c, B:215:0x0415, B:217:0x041b, B:218:0x0428, B:220:0x0430, B:221:0x0439, B:222:0x0304, B:223:0x02b9, B:225:0x02bd, B:226:0x02d0, B:227:0x063b, B:228:0x0642), top: B:6:0x000c, outer: #1 }] */
    @Override // com.project7.localmanager.LocalGatewayServer.ProfileProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized LocalResourceEngine.Result updateServices(String str, String str2, byte[] bArr, LocalTutorialStore.Progress progress) throws IOException {
        byte[] bArr2;
        LocalResourceEngine.Result apply;
        LocalResourceEngine.Result result;
        ArrayList arrayList;
        Iterator<String> it;
        synchronized (PROFILE_LOCK) {
            File file = new File(this.profilesDirectory, LocalAccountStore.normalizeUsername(str) + ".bson");
            if (!file.isFile()) {
                throw new IOException("profile does not exist");
            }
            byte[] readAll = readAll(file);
            if ("requestFlashbackIncDay".equals(str2)) {
                LocalResourceEngine.Result next = LocalFlashbackEngine.next(readAll, events(), progress);
                if (!Arrays.equals(readAll, next.profile)) {
                    writeAtomic(file, next.profile);
                }
                return next;
            }
            if (LocalWingDrugEngine.handles(str2)) {
                LocalResourceEngine.Result apply2 = LocalWingDrugEngine.apply(readAll, events(), progress, str2, bArr);
                if (!Arrays.equals(readAll, apply2.profile)) {
                    writeAtomic(file, apply2.profile);
                }
                return apply2;
            }
            if (LocalPuzzleEngine.handles(str2)) {
                LocalResourceEngine.Result apply3 = LocalPuzzleEngine.apply(readAll, events(), progress, str2, bArr);
                if ("puzzleRoomGetClue".equals(str2)) {
                    LocalPuzzleEngine.reconcileClue(apply3, readAll, events(), features(), resources(), weeks(), progress);
                }
                if (!Arrays.equals(readAll, apply3.profile)) {
                    writeAtomic(file, apply3.profile);
                }
                return apply3;
            }
            if ("q7RecordPatrolAchievement".equals(str2)) {
                LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(readAll);
                result2.profile = LocalNewAchievementEngine.recordPatrol(readAll, progress, LocalResourceEngine.value(bArr, "aid"));
                LocalFlashbackEngine.refresh(result2, events(), progress);
                result2.profile = LocalStoryProgressDelivery.capture(result2);
                LocalNewAchievementEngine.sync(result2, readAll, features(), false);
                if (!Arrays.equals(readAll, result2.profile)) {
                    writeAtomic(file, result2.profile);
                }
                return result2;
            }
            if (LocalHeroGiftEngine.handles(str2)) {
                LocalEconomyEngine.recover(readAll, progress);
                LocalResourceEngine.Result apply4 = LocalHeroGiftEngine.apply(readAll, features(), progress, bArr);
                LocalNewAchievementEngine.sync(apply4, readAll, features(), false);
                if (!Arrays.equals(readAll, apply4.profile)) {
                    writeAtomic(file, apply4.profile);
                }
                LocalEconomyEngine.recover(apply4.profile, progress);
                return apply4;
            }
            if (LocalStoryEngine.handles(str2)) {
                File file2 = new File(this.context.getFilesDir(), "local-stories.bson");
                byte[] readAll2 = file2.isFile() ? readAll(file2) : BsonLite.EMPTY_DOCUMENT;
                LocalStoryEngine.Result apply5 = LocalStoryEngine.apply(readAll, readAll2, LocalAccountStore.normalizeUsername(str), str2, bArr, (int) (System.currentTimeMillis() / 1000));
                if (!Arrays.equals(readAll2, apply5.state)) {
                    writeAtomic(file2, apply5.state);
                }
                return apply5.player;
            }
            if (LocalDailyEngine.handles(str2)) {
                LocalResourceEngine.Result apply6 = LocalDailyEngine.apply(readAll, daily(), resources(), str2, bArr, System.currentTimeMillis());
                LocalHomeWishEngine.dailyChanged(apply6, readAll, home());
                LocalCgEngine.reconcile(apply6, readAll, features(), resources(), weeks(), progress);
                if ("q7DailyFinish".equals(str2)) {
                    LocalCgEngine.showPending(apply6);
                }
                if (!Arrays.equals(readAll, apply6.profile)) {
                    writeAtomic(file, apply6.profile);
                }
                return apply6;
            }
            if (LocalSpecialItemEngine.handles(str2, bArr)) {
                if (this.commerceCatalog == null) {
                    this.commerceCatalog = new LocalCommerceCatalog(this.context.getAssets().open("commerce.tsv"));
                }
                LocalResourceEngine.Result apply7 = LocalSpecialItemEngine.apply(readAll, this.commerceCatalog, progress, str2, bArr, System.currentTimeMillis());
                if (!Arrays.equals(readAll, apply7.profile)) {
                    writeAtomic(file, apply7.profile);
                }
                LocalEconomyEngine.recover(apply7.profile, progress);
                return apply7;
            }
            if ("q7AckCgNotice".equals(str2)) {
                byte[] acknowledge = LocalCgEngine.acknowledge(readAll, BsonLite.intArrayValues(bArr, "c"));
                if (!Arrays.equals(readAll, acknowledge)) {
                    writeAtomic(file, acknowledge);
                }
                return new LocalResourceEngine.Result(acknowledge);
            }
            if ("q7AckStoryProgress".equals(str2)) {
                byte[] acknowledge2 = LocalStoryProgressDelivery.acknowledge(readAll, bArr);
                if (!Arrays.equals(readAll, acknowledge2)) {
                    writeAtomic(file, acknowledge2);
                }
                return new LocalResourceEngine.Result(acknowledge2);
            }
            if (LocalWeekEngine.handles(str2)) {
                LocalResourceEngine.Result apply8 = LocalWeekEngine.apply(readAll, weeks(), progress, str2, bArr);
                if (!Arrays.equals(readAll, apply8.profile)) {
                    writeAtomic(file, apply8.profile);
                }
                LocalWeekEngine.recover(apply8.profile, progress);
                return apply8;
            }
            if ("q7ResumeWeekResult".equals(str2)) {
                LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(readAll);
                LocalCgEngine.showPending(result3, true);
                LocalWeekEngine.showResult(result3);
                return result3;
            }
            if (LocalHomeEngine.handles(str2)) {
                LocalResourceEngine.Result apply9 = LocalHomeEngine.apply(readAll, home(), resources(), str2, bArr, LocalStoryEnvironment.now());
                LocalNewAchievementEngine.sync(apply9, readAll, features(), false);
                if (!Arrays.equals(readAll, apply9.profile)) {
                    writeAtomic(file, apply9.profile);
                }
                return apply9;
            }
            byte[] refreshGuideState = LocalConstructionEngine.refreshGuideState(readAll, progress);
            if (LocalIntelligenceEngine.handles(str2) || "effects".equals(str2)) {
                if (this.constructionCatalog == null) {
                    this.constructionCatalog = new LocalConstructionCatalog(this.context.getAssets().open("construction.tsv"));
                }
                refreshGuideState = LocalConstructionEngine.restoreCentralBase(refreshGuideState, this.constructionCatalog, progress);
            }
            if (LocalIntelligenceEngine.handles(str2)) {
                refreshGuideState = LocalIntelligenceEngine.refresh(BsonLite.withLocalCityState(BsonLite.withRequiredClientDefaults(refreshGuideState), progress), features(), progress);
            }
            ArrayList arrayList2 = new ArrayList();
            if (!"readPlayerNote".equals(str2) && !"readPendingNote".equals(str2)) {
                bArr2 = refreshGuideState;
                if (LocalCommunityEngine.handles(str2)) {
                    if ("dailyPureChooseHero".equals(str2)) {
                        apply = LocalDailyPureEngine.choose(bArr2, events(), progress, bArr);
                    } else if ("daerweilaFirstChooseAsazile".equals(str2)) {
                        apply = LocalDalviraStoryEngine.first(bArr2, progress);
                    } else if (LocalStoryClueEngine.handles(str2)) {
                        apply = LocalStoryClueEngine.read(bArr2, events(), str2, bArr);
                    } else if (LocalSouvenirEngine.handles(features(), str2, bArr)) {
                        apply = LocalSouvenirEngine.apply(bArr2, resources(), features(), progress, str2, bArr);
                    } else if ("triggerSocialMsgEvent".equals(str2)) {
                        apply = LocalServiceEngine.confirmSocial(bArr2, bArr, events(), progress);
                    } else if (LocalIntelligenceEngine.handles(str2)) {
                        apply = LocalIntelligenceEngine.apply(bArr2, features(), resources(), str2, bArr);
                    } else if ("effects".equals(str2)) {
                        apply = LocalServiceEngine.effects(bArr2, events(), progress);
                    } else {
                        apply = LocalServiceEngine.apply(bArr2, str2, bArr, features());
                    }
                    result = apply;
                } else {
                    File file3 = new File(this.context.getFilesDir(), "community");
                    File file4 = new File(file3, "official.bson");
                    File file5 = new File(file3, "local.bson");
                    byte[] readAll3 = file4.isFile() ? readAll(file4) : BsonLite.EMPTY_DOCUMENT;
                    byte[] readAll4 = file5.isFile() ? readAll(file5) : BsonLite.EMPTY_DOCUMENT;
                    LocalCommunityEngine.Result apply10 = LocalCommunityEngine.apply(bArr2, readAll3, readAll4, str2, bArr, (int) (System.currentTimeMillis() / 1000));
                    if (!Arrays.equals(readAll4, apply10.local)) {
                        if (!file3.isDirectory() && !file3.mkdirs()) {
                            throw new IOException("cannot create community directory");
                        }
                        writeAtomic(file5, apply10.local);
                    }
                    result = apply10.player;
                }
                result.replies.addAll(0, arrayList2);
                if ("effects".equals(str2)) {
                    LocalStoryTreasureRewardEngine.refresh(result, events(), resources(), progress);
                    result.profile = LocalStoryProgressDelivery.capture(result);
                    LocalStoryProgressDelivery.replay(result, progress);
                    LocalResourceEngine.Result endings = LocalWeekEngine.endings(result.profile, weeks(), economy(), resources(), progress, true);
                    result.profile = endings.profile;
                    result.replies.addAll(endings.replies);
                    result.profile = LocalConstructionEngine.restoreCentralBase(result.profile, this.constructionCatalog, progress);
                    byte[] refresh = LocalIntelligenceEngine.refresh(result.profile, features(), progress);
                    if (!Arrays.equals(LocalResourceEngine.doc(result.profile, "intelligence"), LocalResourceEngine.doc(refresh, "intelligence"))) {
                        result.add("syncAllIntelligence", BsonLite.document("is", LocalResourceEngine.doc(refresh, "intelligence")));
                    }
                    result.profile = refresh;
                }
                if (!Boolean.TRUE.equals(BsonLite.boolValue(readAll, "q7CentralBase")) && Boolean.TRUE.equals(BsonLite.boolValue(result.profile, "q7CentralBase"))) {
                    result.add("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, result.profile));
                    result.add("get_city_data_reply", BsonLite.document("cd", LocalResourceEngine.doc(result.profile, "city")));
                }
                if (!Objects.equals(BsonLite.boolValue(LocalResourceEngine.doc(readAll, "city"), "nbb"), BsonLite.boolValue(LocalResourceEngine.doc(result.profile, "city"), "nbb"))) {
                    result.add("get_city_data_reply", BsonLite.document("cd", LocalResourceEngine.doc(result.profile, "city")));
                }
                result.profile = LocalPersonalEngine.refresh(result.profile, features(), progress, LocalStoryEnvironment.now());
                LocalCgEngine.reconcile(result, readAll, features(), resources(), weeks(), progress);
                result.profile = LocalSouvenirEngine.refresh(result.profile, features(), progress);
                syncSupplyChange(readAll, result.profile, result.replies);
                if (Arrays.equals(LocalResourceEngine.doc(bArr2, "tsd"), LocalResourceEngine.doc(result.profile, "tsd")) || !Arrays.equals(LocalResourceEngine.doc(bArr2, "ntd"), LocalResourceEngine.doc(result.profile, "ntd"))) {
                    LocalPersonalEngine.syncTasks(result);
                }
                arrayList = new ArrayList(BsonLite.intArrayValues(result.profile, "cgs"));
                arrayList.removeAll(BsonLite.intArrayValues(bArr2, "cgs"));
                it = BsonLite.keys(LocalResourceEngine.doc(result.profile, "q7CgNotices")).iterator();
                while (it.hasNext()) {
                    arrayList.remove(Integer.valueOf(it.next()));
                }
                if (!arrayList.isEmpty()) {
                    result.add("addCg", BsonLite.document("c", arrayList));
                }
                LocalCgEngine.showPending(result);
                LocalSharedLiberateEngine.acquired(result, readAll, features());
                LocalHomeCollectionEngine.inventoryChanged(result, readAll, home());
                LocalHomeWishEngine.refresh(result, home(), true);
                LocalNewAchievementEngine.sync(result, readAll, features(), false);
                if (!Arrays.equals(result.profile, readAll)) {
                    writeAtomic(file, result.profile);
                }
                LocalIntelligenceEngine.recoverEvents(result.profile, events(), progress);
                LocalEconomyEngine.recover(result.profile, progress);
                return result;
            }
            LocalResourceEngine.Result result4 = new LocalResourceEngine.Result(refreshGuideState);
            LocalDiaryEngine.prepare(result4, events(), progress);
            byte[] bArr3 = result4.profile;
            arrayList2.addAll(result4.replies);
            LocalDiagnosticLog.m14i("Project7Gateway", "diary evidence " + LocalDiaryEngine.evidence(bArr3, progress, events()));
            bArr2 = bArr3;
            if (LocalCommunityEngine.handles(str2)) {
            }
            result.replies.addAll(0, arrayList2);
            if ("effects".equals(str2)) {
            }
            if (!Boolean.TRUE.equals(BsonLite.boolValue(readAll, "q7CentralBase"))) {
                result.add("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress, result.profile));
                result.add("get_city_data_reply", BsonLite.document("cd", LocalResourceEngine.doc(result.profile, "city")));
            }
            if (!Objects.equals(BsonLite.boolValue(LocalResourceEngine.doc(readAll, "city"), "nbb"), BsonLite.boolValue(LocalResourceEngine.doc(result.profile, "city"), "nbb"))) {
            }
            result.profile = LocalPersonalEngine.refresh(result.profile, features(), progress, LocalStoryEnvironment.now());
            LocalCgEngine.reconcile(result, readAll, features(), resources(), weeks(), progress);
            result.profile = LocalSouvenirEngine.refresh(result.profile, features(), progress);
            syncSupplyChange(readAll, result.profile, result.replies);
            if (Arrays.equals(LocalResourceEngine.doc(bArr2, "tsd"), LocalResourceEngine.doc(result.profile, "tsd"))) {
            }
            LocalPersonalEngine.syncTasks(result);
            arrayList = new ArrayList(BsonLite.intArrayValues(result.profile, "cgs"));
            arrayList.removeAll(BsonLite.intArrayValues(bArr2, "cgs"));
            it = BsonLite.keys(LocalResourceEngine.doc(result.profile, "q7CgNotices")).iterator();
            while (it.hasNext()) {
            }
            if (!arrayList.isEmpty()) {
            }
            LocalCgEngine.showPending(result);
            LocalSharedLiberateEngine.acquired(result, readAll, features());
            LocalHomeCollectionEngine.inventoryChanged(result, readAll, home());
            LocalHomeWishEngine.refresh(result, home(), true);
            LocalNewAchievementEngine.sync(result, readAll, features(), false);
            if (!Arrays.equals(result.profile, readAll)) {
            }
            LocalIntelligenceEngine.recoverEvents(result.profile, events(), progress);
            LocalEconomyEngine.recover(result.profile, progress);
            return result;
        }
    }

    @Override // com.project7.localmanager.LocalGatewayServer.ProfileProvider
    public synchronized LocalEconomyEngine.Result updateEconomy(String str, String str2, byte[] bArr, LocalTutorialStore.Progress progress) throws IOException {
        LocalEconomyEngine.Result apply;
        LocalTutorialStore.Progress progress2;
        File file;
        synchronized (PROFILE_LOCK) {
            File file2 = new File(this.profilesDirectory, LocalAccountStore.normalizeUsername(str) + ".bson");
            if (!file2.isFile()) {
                throw new IOException("profile does not exist");
            }
            if (this.economyCatalog == null) {
                this.economyCatalog = new LocalEconomyCatalog(this.context.getAssets().open("economy.tsv"));
            }
            byte[] readAll = readAll(file2);
            if (LocalConstructionEngine.handles(str2)) {
                if (this.constructionCatalog == null) {
                    this.constructionCatalog = new LocalConstructionCatalog(this.context.getAssets().open("construction.tsv"));
                }
                apply = LocalConstructionEngine.apply(readAll, this.constructionCatalog, progress, str2, bArr);
            } else if ("battleYazhiAsk".equals(str2)) {
                apply = LocalSuppressionEngine.apply(readAll, this.economyCatalog, resources(), features(), progress, bArr);
            } else {
                apply = LocalEconomyEngine.apply(readAll, this.economyCatalog, resources(), progress, str2, bArr);
            }
            if (apply.accepted && progress != null) {
                progress2 = LocalTutorialStore.Progress.fromProperties(progress.toProperties());
                LocalEconomyEngine.recover(apply.profile, progress2);
            } else {
                progress2 = progress;
            }
            if (!apply.accepted || !"incDayWhenNoActionVal".equals(str2)) {
                file = file2;
            } else {
                if (this.constructionCatalog == null) {
                    this.constructionCatalog = new LocalConstructionCatalog(this.context.getAssets().open("construction.tsv"));
                }
                byte[] withPatrolProgress = BsonLite.withPatrolProgress(apply.profile, progress2);
                byte[] advanceDay = LocalIntelligenceEffects.advanceDay(readAll, withPatrolProgress, features(), this.constructionCatalog, progress2);
                apply.profile = advanceDay;
                for (Iterator<byte[]> it = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(advanceDay, "heromgr"), "hrs")).iterator(); it.hasNext(); it = it) {
                    byte[] next = it.next();
                    int value = LocalResourceEngine.value(next, "0");
                    byte[] doc = LocalResourceEngine.doc(next, "1");
                    apply.fatigue.put(Integer.valueOf(value), Integer.valueOf(LocalResourceEngine.value(doc, "cf")));
                    apply.friendly.put(Integer.valueOf(value), Integer.valueOf(LocalResourceEngine.value(doc, "ef")));
                }
                LocalEconomyEngine.commit(apply, 0);
                LocalEconomyEngine.recover(apply.profile, progress2);
                apply.replies.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalProfileStore$$ExternalSyntheticLambda1
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return LocalProfileStore.lambda$updateEconomy$0((LocalResourceEngine.Reply) obj);
                    }
                });
                int size = apply.replies.size();
                int i = 0;
                while (true) {
                    if (i >= apply.replies.size()) {
                        break;
                    }
                    if ("updateDay".equals(apply.replies.get(i).method)) {
                        size = i;
                        break;
                    }
                    i++;
                }
                ArrayList arrayList = new ArrayList();
                String[] strArr = {"hrs", "bhrs"};
                int i2 = 0;
                while (i2 < 2) {
                    String[] strArr2 = strArr;
                    Iterator<byte[]> it2 = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(advanceDay, "heromgr"), strArr[i2])).iterator();
                    while (it2.hasNext()) {
                        byte[] next2 = it2.next();
                        Iterator<byte[]> it3 = it2;
                        int value2 = LocalResourceEngine.value(next2, "0");
                        byte[] doc2 = LocalResourceEngine.doc(next2, "1");
                        arrayList.add(new LocalResourceEngine.Reply("updateCurFatigueValue", BsonLite.heroValueDocument(value2, LocalResourceEngine.value(doc2, "cf"))));
                        arrayList.add(new LocalResourceEngine.Reply("updateFriendlyValue", BsonLite.heroValueDocument(value2, LocalResourceEngine.value(doc2, "ef"))));
                        it2 = it3;
                        file2 = file2;
                    }
                    i2++;
                    strArr = strArr2;
                }
                file = file2;
                if (!Arrays.equals(LocalResourceEngine.doc(LocalResourceEngine.doc(withPatrolProgress, "city"), "areas"), LocalResourceEngine.doc(LocalResourceEngine.doc(advanceDay, "city"), "areas"))) {
                    arrayList.add(new LocalResourceEngine.Reply("get_all_area_info_reply", BsonLite.allAreaInfoReplyDocument(true, progress2, advanceDay)));
                }
                arrayList.add(new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", LocalResourceEngine.doc(advanceDay, "city"))));
                apply.replies.addAll(size, arrayList);
            }
            if (apply.accepted) {
                apply.profile = LocalIntelligenceEngine.refresh(apply.profile, features(), progress2);
                if (!Arrays.equals(LocalResourceEngine.doc(readAll, "intelligence"), LocalResourceEngine.doc(apply.profile, "intelligence"))) {
                    apply.replies.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalProfileStore$$ExternalSyntheticLambda2
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            boolean equals;
                            equals = "syncAllIntelligence".equals(((LocalResourceEngine.Reply) obj).method);
                            return equals;
                        }
                    });
                    LocalResourceEngine.Reply reply = new LocalResourceEngine.Reply("syncAllIntelligence", BsonLite.document("is", LocalResourceEngine.doc(apply.profile, "intelligence")));
                    int size2 = apply.replies.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 >= apply.replies.size()) {
                            break;
                        }
                        if ("updateDay".equals(apply.replies.get(i3).method)) {
                            size2 = i3;
                            break;
                        }
                        i3++;
                    }
                    apply.replies.add(size2, reply);
                }
            }
            apply.profile = LocalSouvenirEngine.refresh(apply.profile, features(), progress2);
            if (apply.accepted && !apply.replay) {
                if (LocalConstructionEngine.handles(str2) && !"playerDestroyBuilding".equals(str2)) {
                    int value3 = LocalResourceEngine.value(bArr, "aid");
                    apply.profile = LocalAchievementEngine.record(apply.profile, features(), "areaBuildRequest".equals(str2) ? "build" : "develop", BsonLite.document("heroes", BsonLite.intArrayValues(bArr, "hs"), "bid", Integer.valueOf(LocalResourceEngine.value(bArr, "bi")), "dlevel", Integer.valueOf(LocalResourceEngine.value(LocalResourceEngine.doc(LocalResourceEngine.doc(LocalResourceEngine.doc(apply.profile, "city"), "areas"), "area_" + value3), "lv"))));
                }
                byte[] doc3 = LocalResourceEngine.doc(readAll, "q7BattleReceipts");
                for (Map.Entry<String, byte[]> entry : BsonLite.documentEntries(LocalResourceEngine.doc(apply.profile, "q7BattleReceipts")).entrySet()) {
                    if (BsonLite.keys(LocalResourceEngine.doc(doc3, entry.getKey())).isEmpty()) {
                        apply.profile = LocalAchievementEngine.record(apply.profile, features(), "battle", BsonLite.document("heroes", BsonLite.intArrayValues(entry.getValue(), "h")));
                    }
                }
            }
            LocalResourceEngine.Result result = new LocalResourceEngine.Result(apply.profile);
            LocalNewAchievementEngine.sync(result, readAll, features(), false);
            apply.profile = result.profile;
            apply.replies.addAll(result.replies);
            syncSupplyChange(readAll, apply.profile, apply.replies);
            if (apply.profile != readAll) {
                writeAtomic(file, apply.profile);
            }
            LocalEconomyEngine.reconcile(apply.profile, progress, apply);
            LocalIntelligenceEngine.recoverEvents(apply.profile, events(), progress);
        }
        return apply;
    }

    static /* synthetic */ boolean lambda$updateEconomy$0(LocalResourceEngine.Reply reply) {
        return "updateCurFatigueValue".equals(reply.method) || "updateFriendlyValue".equals(reply.method) || "get_city_data_reply".equals(reply.method);
    }

    @Override // com.project7.localmanager.LocalGatewayServer.ProfileProvider
    public synchronized LocalResourceEngine.Result updateResources(String str, String str2, byte[] bArr) throws IOException {
        LocalResourceEngine.Result result;
        synchronized (PROFILE_LOCK) {
            File file = new File(this.profilesDirectory, LocalAccountStore.normalizeUsername(str) + ".bson");
            if (!file.isFile()) {
                throw new IOException("profile does not exist");
            }
            byte[] readAll = readAll(file);
            if (LocalNewAchievementEngine.handles(str2)) {
                result = LocalNewAchievementEngine.apply(readAll, features(), resources(), str2, bArr);
            } else if (LocalHeroLiberateEngine.handles(str2)) {
                result = LocalHeroLiberateEngine.apply(readAll, features(), resources(), str2, bArr);
            } else if (LocalHeroAwakeEngine.handles(str2)) {
                result = LocalHeroAwakeEngine.apply(readAll, features(), resources(), str2, bArr);
            } else if (LocalSouvenirEngine.handles(features(), str2, bArr)) {
                result = LocalSouvenirEngine.apply(readAll, resources(), features(), null, str2, bArr);
            } else if (LocalHeroGrowthEngine.handles(str2)) {
                result = LocalHeroGrowthEngine.apply(readAll, features(), bArr);
            } else if (LocalMemoryExchangeEngine.handles(str2)) {
                result = LocalMemoryExchangeEngine.apply(readAll, resources(), bArr);
            } else if (LocalTreasureUpgradeEngine.handles(str2)) {
                result = LocalTreasureUpgradeEngine.apply(readAll, features(), str2, bArr);
            } else if (LocalTreasureOperationEngine.handles(str2)) {
                result = LocalTreasureOperationEngine.apply(readAll, resources(), features(), str2, bArr);
            } else if (LocalTreasurePlanEngine.handles(str2)) {
                result = LocalTreasurePlanEngine.apply(readAll, features(), str2, bArr);
            } else if (LocalPersonalEngine.handles(str2)) {
                result = LocalPersonalEngine.apply(readAll, resources(), features(), str2, bArr, System.currentTimeMillis());
            } else if (LocalEquipmentEngine.handles(str2)) {
                result = LocalEquipmentEngine.apply(readAll, features(), str2, bArr);
            } else if ("rewardAchievement".equals(str2)) {
                result = LocalAchievementEngine.claim(readAll, resources(), features(), bArr);
            } else if ("buyCardMallItem".equals(str2) && LocalDailyEngine.shop(daily(), str2, bArr)) {
                result = LocalDailyEngine.apply(readAll, daily(), resources(), str2, bArr, System.currentTimeMillis());
            } else if (LocalGiftEngine.handles(features(), str2, bArr)) {
                result = LocalGiftEngine.apply(readAll, resources(), features(), str2, bArr);
            } else if (("buyMoney".equals(str2) || "buyCardMallItem".equals(str2)) && !LocalAccountFeatures.handles(str2, bArr)) {
                if (this.commerceCatalog == null) {
                    this.commerceCatalog = new LocalCommerceCatalog(this.context.getAssets().open("commerce.tsv"));
                }
                LocalCommerceEngine.Result apply = LocalCommerceEngine.apply(readAll, this.commerceCatalog, str2, bArr, false, System.currentTimeMillis() / 1000, this.activities.snapshot());
                LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(apply.profile);
                for (Map.Entry<String, byte[]> entry : apply.replies.entrySet()) {
                    result2.add(entry.getKey(), entry.getValue());
                }
                if ("buyMoney".equals(str2) && !apply.replies.containsKey("showMessageStr")) {
                    result2.profile = LocalAccountFeatures.refreshRecharge(result2.profile);
                    result2.add("rookieRechargeSyncData", BsonLite.document("d", LocalResourceEngine.doc(LocalResourceEngine.doc(result2.profile, "sma"), "rcd")));
                }
                result = result2;
            } else if (LocalAccountFeatures.handles(str2, bArr)) {
                result = LocalAccountFeatures.apply(readAll, resources(), str2, bArr);
            } else if (LocalMailEngine.handles(str2)) {
                result = LocalMailEngine.apply(readAll, resources(), str2, bArr);
            } else {
                result = LocalDrawEngine.apply(readAll, resources(), str2, bArr);
            }
            if (!LocalNewAchievementEngine.handles(str2) && result.profile != readAll) {
                LocalNewAchievementEngine.syncMoneyAndStatistics(result, readAll, features());
            }
            if (!result.heroRewards.isEmpty()) {
                LocalSharedLiberateEngine.reconcile(result, features(), 0, true);
            }
            LocalHomeCollectionEngine.inventoryChanged(result, readAll, home());
            LocalHomeWishEngine.refresh(result, home(), true);
            if (result.profile != readAll) {
                writeAtomic(file, result.profile);
            }
        }
        return result;
    }

    private static void syncSupplyChange(byte[] bArr, byte[] bArr2, List<LocalResourceEngine.Reply> list) {
        List<Integer> intArrayValues = BsonLite.intArrayValues(LocalResourceEngine.doc(bArr, "city"), "acr");
        List<Integer> intArrayValues2 = BsonLite.intArrayValues(LocalResourceEngine.doc(bArr2, "city"), "acr");
        if (intArrayValues.equals(intArrayValues2)) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < list.size(); i++) {
            if ("get_city_data_reply".equals(list.get(i).method) || "updateDay".equals(list.get(i).method)) {
                size = i;
                break;
            }
        }
        list.removeIf(new Predicate() { // from class: com.project7.localmanager.LocalProfileStore$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean equals;
                equals = "get_city_data_reply".equals(((LocalResourceEngine.Reply) obj).method);
                return equals;
            }
        });
        list.add(Math.min(size, list.size()), new LocalResourceEngine.Reply("get_city_data_reply", BsonLite.document("cd", LocalResourceEngine.doc(bArr2, "city"))));
        list.add(new LocalResourceEngine.Reply(intArrayValues2.isEmpty() ? "clearActionReward" : "gainActionReward", BsonLite.EMPTY_DOCUMENT));
    }

    synchronized void sendSystemMail(String str, LocalTutorialStore.Progress progress, String str2, String str3, List<byte[]> list) throws IOException {
        synchronized (PROFILE_LOCK) {
            load(str, progress);
            File file = new File(this.profilesDirectory, LocalAccountStore.normalizeUsername(str) + ".bson");
            writeAtomic(file, LocalMailEngine.enqueue(readAll(file), resources(), str2, str3, list));
        }
    }

    synchronized byte[] adjustCommanderLevel(String str, boolean z, int i) throws IOException {
        byte[] apply;
        synchronized (PROFILE_LOCK) {
            LocalLevelAdmin.validate(z, i);
            if (GatewayService.isRunning()) {
                throw new IOException("请先退出游戏并停止本地网关");
            }
            String normalizeUsername = LocalAccountStore.normalizeUsername(str);
            if (!new LocalAccountStore(this.context).listAccounts().contains(normalizeUsername)) {
                throw new IOException("账号不存在或已删除");
            }
            File file = new File(this.profilesDirectory, normalizeUsername + ".bson");
            if (!file.isFile()) {
                throw new IOException("请先登录该账号一次，生成新手存档后再调整");
            }
            byte[] readAll = readAll(file);
            apply = LocalLevelAdmin.apply(readAll, economy(), z, i);
            if (GatewayService.isRunning()) {
                throw new IOException("网关已启动，取消等级调整，请停止后重试");
            }
            if (!Arrays.equals(readAll, apply)) {
                writeAtomic(file, apply);
            }
        }
        return apply;
    }

    synchronized LocalLevelAdmin.HeroGrant grantAllHeroes(String str) throws IOException {
        LocalLevelAdmin.HeroGrant heroGrant;
        synchronized (PROFILE_LOCK) {
            if (GatewayService.isRunning()) {
                throw new IOException("请先退出游戏并停止本地网关");
            }
            String normalizeUsername = LocalAccountStore.normalizeUsername(str);
            if (!new LocalAccountStore(this.context).listAccounts().contains(normalizeUsername)) {
                throw new IOException("账号不存在或已删除");
            }
            File file = new File(this.profilesDirectory, normalizeUsername + ".bson");
            if (!file.isFile()) {
                throw new IOException("请先登录该账号一次，生成新手存档后再发放");
            }
            byte[] readAll = readAll(file);
            LocalLevelAdmin.HeroGrant grantAllHeroes = LocalLevelAdmin.grantAllHeroes(readAll, resources());
            heroGrant = new LocalLevelAdmin.HeroGrant(LocalSharedLiberateEngine.normalize(grantAllHeroes.profile, features()), grantAllHeroes.added, grantAllHeroes.total);
            if (GatewayService.isRunning()) {
                throw new IOException("网关已启动，取消角色发放，请停止后重试");
            }
            if (!Arrays.equals(readAll, heroGrant.profile)) {
                writeAtomic(file, heroGrant.profile);
            }
        }
        return heroGrant;
    }

    private byte[] readTemplate(String str) throws IOException {
        String str2;
        if ("hakopania".equalsIgnoreCase(str)) {
            str2 = "hakopania.bson";
        } else {
            str2 = "new_player.bson";
        }
        return AssetData.readAll(this.context, str2);
    }

    private static byte[] readAll(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            int length = (int) file.length();
            byte[] bArr = new byte[length];
            int i = 0;
            while (i < length) {
                int read = fileInputStream.read(bArr, i, length - i);
                if (read < 0) {
                    throw new IOException("truncated profile file");
                }
                i += read;
            }
            fileInputStream.close();
            return bArr;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void writeAtomic(File file, byte[] bArr) throws IOException {
        File file2 = new File(file.getParentFile(), file.getName() + ".tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            try {
                Os.rename(file2.getAbsolutePath(), file.getAbsolutePath());
            } catch (ErrnoException e) {
                throw new IOException("cannot atomically commit profile file", e);
            }
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
