package com.project7.localmanager;

import com.project7.localmanager.LocalCommerceEngine;
import com.project7.localmanager.LocalEconomyEngine;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.Map;
import java.util.function.Predicate;

/* loaded from: classes.dex */
final class LocalSpecialItemEngine {
    LocalSpecialItemEngine() {
    }

    static boolean handles(String str, byte[] bArr) {
        int value = LocalResourceEngine.value(bArr, "store_id");
        return "requestSandglassToday".equals(str) || ("buyCardMallItem".equals(str) && (value == 60 || (value >= 917 && value <= 919)));
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalCommerceCatalog localCommerceCatalog, LocalTutorialStore.Progress progress, String str, byte[] bArr2, long j) {
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        try {
            require(progress != null, "缺少周目进度，未执行操作");
            byte[] withPatrolProgress = BsonLite.withPatrolProgress(bArr, progress);
            byte[] doc = LocalResourceEngine.doc(withPatrolProgress, "weeknum");
            if ("requestSandglassToday".equals(str)) {
                result.profile = BsonLite.withProfileDocument(withPatrolProgress, "weeknum", BsonLite.withProfileBool(doc, "sgnt", true));
                return result;
            }
            int value = LocalResourceEngine.value(bArr2, "store_id");
            require(handles(str, bArr2), "未知特殊商品");
            require(!progress.initPrologue && LocalResourceEngine.value(doc, "w") >= 2, "特殊道具需在第三周目起购买");
            require(!progress.inEmergency && !progress.patrolRewardPending && progress.processingEvents.stream().allMatch(new Predicate() { // from class: com.project7.localmanager.LocalSpecialItemEngine$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return LocalSpecialItemEngine.lambda$apply$0((Integer) obj);
                }
            }) && BsonLite.keys(LocalResourceEngine.doc(withPatrolProgress, "q7Battle")).isEmpty() && BsonLite.keys(LocalResourceEngine.doc(withPatrolProgress, "q7WeekResult")).isEmpty(), "请先完成当前剧情、巡查或战斗");
            require(LocalResourceEngine.value(bArr2, "num") == 1, "每次只能购买一个特殊道具");
            int value2 = LocalResourceEngine.value(doc, "ust");
            if (value != 60) {
                require(LocalEconomyEngine.regularActions(withPatrolProgress, progress) == 0 && LocalEconomyEngine.sandglass(withPatrolProgress, progress) == 0, "延时沙漏需在当天行动用尽后购买");
                require(LocalResourceEngine.value(doc, "d") < 7, "请先完成最后一天的结局剧情");
                require(value2 >= 0 && value2 < 3 && value == value2 + 917, "请依次购买沙漏，每周目最多三次");
            }
            LocalCommerceEngine.Result apply = LocalCommerceEngine.apply(LocalCommerceEngine.refreshStoreLimits(withPatrolProgress, j), localCommerceCatalog, str, bArr2, true);
            require(!apply.replies.containsKey("showMessageStr"), apply.replies.containsKey("showMessageStr") ? BsonLite.stringValue(apply.replies.get("showMessageStr"), "m") : "特殊商品购买失败");
            result.profile = apply.profile;
            for (Map.Entry<String, byte[]> entry : apply.replies.entrySet()) {
                result.add(entry.getKey(), entry.getValue());
            }
            if (value != 60) {
                LocalGiftEngine.consume(result, 4470, 1);
                result.profile = BsonLite.withProfileDocument(result.profile, "weeknum", BsonLite.withProfileInt(BsonLite.withProfileInt(LocalResourceEngine.doc(result.profile, "weeknum"), "ust", value2 + 1), "sgw", 2));
                LocalEconomyEngine.Result result2 = new LocalEconomyEngine.Result(result.profile);
                result2.remainingActions = 0;
                result2.remainingSandglass = 2;
                LocalEconomyEngine.commit(result2, 0);
                result.profile = result2.profile;
                result.add("useSandglassItem", BsonLite.EMPTY_DOCUMENT);
            }
            return result;
        } catch (ArithmeticException | IllegalArgumentException e) {
            LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(bArr);
            result3.add("showMessageStr", BsonLite.document("m", e.getMessage()));
            if ("buyCardMallItem".equals(str)) {
                result3.add("replyBuyCardMallItem", BsonLite.document("r", false, "i", BsonLite.EMPTY_DOCUMENT));
            }
            return result3;
        }
    }

    static /* synthetic */ boolean lambda$apply$0(Integer num) {
        return num.intValue() == 9;
    }

    static int quantity(byte[] bArr, int i) {
        int i2 = 0;
        for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "inv"), "items"))) {
            if (LocalResourceEngine.value(bArr2, "i") == i) {
                i2 = Math.addExact(i2, LocalResourceEngine.value(bArr2, "w"));
            }
        }
        return i2;
    }

    private static void require(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }
}
