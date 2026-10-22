package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import com.project7.localmanager.LocalTutorialStore;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
final class LocalStoryProgressDelivery {
    LocalStoryProgressDelivery() {
    }

    static String key(LocalResourceEngine.Reply reply) {
        String str;
        if ("syncDaerweilaLineData".equals(reply.method) || "daerweilaDispatchClose".equals(reply.method)) {
            return reply.method;
        }
        if (!"addCenterConfidence".equals(reply.method) && !"syncSailafeimuLineData".equals(reply.method) && !"syncBaiyuInfos".equals(reply.method) && !"syncYisakeVal".equals(reply.method) && !"syncStoryGeneralValue".equals(reply.method)) {
            if ("syncFlashbackData".equals(reply.method) || "enterFlashback".equals(reply.method)) {
                return reply.method;
            }
            if (!"openYumiYaocaoyuan".equals(reply.method) && !"get_all_area_info_reply".equals(reply.method) && !"syncRoute".equals(reply.method) && !"syncProgInfo".equals(reply.method)) {
                if ("syncAllNote".equals(reply.method) || "syncHeroMgrData".equals(reply.method)) {
                    return reply.method;
                }
                if (!"updateItems".equals(reply.method) && !"deleteItems".equals(reply.method)) {
                    if ("syncOneSocialMsg".equals(reply.method) || "syncOnePrivateMsg".equals(reply.method)) {
                        return reply.method + ":" + LocalResourceEngine.value(reply.parameters, "id");
                    }
                    for (String[] strArr : LocalStoryClueEngine.FIELDS) {
                        if ("g".equals(strArr[0])) {
                            str = "syncClueInfo";
                        } else if ("w".equals(strArr[0])) {
                            str = "syncWuluLineData";
                        } else {
                            str = "j".equals(strArr[0]) ? "syncJiaohuiLineData" : "a".equals(strArr[0]) ? "syncAlanLineData" : "syncDaerweilaClueData";
                        }
                        if (str.equals(reply.method)) {
                            return str;
                        }
                    }
                    return null;
                }
                return reply.method;
            }
            return reply.method;
        }
        return reply.method;
    }

    static byte[] capture(LocalResourceEngine.Result result) {
        byte[] doc = LocalResourceEngine.doc(result.profile, "q7StoryPending");
        for (LocalResourceEngine.Reply reply : result.replies) {
            String key = key(reply);
            if (key != null) {
                byte[] bArr = reply.parameters;
                if ("syncYisakeVal".equals(key)) {
                    byte[] documentValue = BsonLite.documentValue(doc, key);
                    int value = LocalResourceEngine.value(bArr, "iv");
                    int value2 = value - LocalResourceEngine.value(bArr, "av");
                    if (documentValue != null) {
                        value2 = Math.min(value2, LocalResourceEngine.value(documentValue, "iv") - LocalResourceEngine.value(documentValue, "av"));
                    }
                    bArr = LocalYisakeStoryEngine.envelope(result.profile, BsonLite.document("iv", Integer.valueOf(value), "av", Integer.valueOf(value - value2)));
                    if (bArr == null) {
                    }
                }
                if (!"syncBaiyuInfos".equals(key) || (bArr = LocalWingStoryEngine.envelope(result.profile, bArr)) != null) {
                    if (!"openYumiYaocaoyuan".equals(key) || (bArr = LocalWingGardenEngine.envelope(result.profile, bArr)) != null) {
                        if ("updateItems".equals(key)) {
                            if (result.inventoryDeliveryId == null) {
                                result.inventoryDeliveryId = LocalResourceEngine.uuid();
                            }
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            for (byte[] bArr2 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(doc, key), "i"))) {
                                linkedHashMap.put(BsonLite.uuidValue(bArr2, "u"), bArr2);
                            }
                            for (byte[] bArr3 : LocalResourceEngine.array(LocalResourceEngine.doc(bArr, "i"))) {
                                linkedHashMap.put(BsonLite.uuidValue(bArr3, "u"), bArr3);
                            }
                            bArr = BsonLite.document("i", new ArrayList(linkedHashMap.values()), "receipt", result.inventoryDeliveryId);
                        }
                        if ("deleteItems".equals(key)) {
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            Iterator it = Arrays.asList(LocalResourceEngine.doc(doc, key), bArr).iterator();
                            while (it.hasNext()) {
                                byte[] doc2 = LocalResourceEngine.doc((byte[]) it.next(), "i");
                                Iterator<String> it2 = BsonLite.keys(doc2).iterator();
                                while (it2.hasNext()) {
                                    String uuidValue = BsonLite.uuidValue(doc2, it2.next());
                                    if (uuidValue != null) {
                                        linkedHashSet.add(uuidValue);
                                    }
                                }
                            }
                            ArrayList arrayList = new ArrayList();
                            Iterator it3 = linkedHashSet.iterator();
                            while (it3.hasNext()) {
                                arrayList.add(new BsonLite.UuidValue((String) it3.next()));
                            }
                            bArr = BsonLite.document("i", arrayList);
                        }
                        if ("addCenterConfidence".equals(key)) {
                            byte[] documentValue2 = BsonLite.documentValue(doc, key);
                            int value3 = LocalResourceEngine.value(bArr, "c");
                            int value4 = value3 - LocalResourceEngine.value(bArr, "v");
                            if (documentValue2 != null) {
                                value4 = Math.min(value4, LocalResourceEngine.value(documentValue2, "c") - LocalResourceEngine.value(documentValue2, "v"));
                            }
                            bArr = BsonLite.document("v", Integer.valueOf(Math.max(0, value3 - value4)), "c", Integer.valueOf(value3));
                        }
                        doc = BsonLite.withProfileDocument(doc, key, bArr);
                    }
                }
            }
        }
        return BsonLite.keys(doc).isEmpty() ? result.profile : BsonLite.withProfileDocument(result.profile, "q7StoryPending", doc);
    }

    static void replay(LocalResourceEngine.Result result) {
        replay(result, null);
    }

    static void replay(LocalResourceEngine.Result result, LocalTutorialStore.Progress progress) {
        byte[] doc;
        byte[] doc2 = LocalResourceEngine.doc(result.profile, "q7StoryPending");
        if (BsonLite.keys(doc2).isEmpty()) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (LocalResourceEngine.Reply reply : result.replies) {
            linkedHashMap.put(key(reply) == null ? "other:" + linkedHashMap.size() : key(reply), reply);
        }
        for (String str : BsonLite.keys(doc2)) {
            String str2 = str.split(":", 2)[0];
            if (str2.equals("memoryReward") || str2.equals("heroReward") || str2.equals("itemReward")) {
                doc = LocalResourceEngine.doc(doc2, str);
                str2 = "procRewardSettlementCommon";
            } else if (str2.equals("syncYisakeVal")) {
                doc = LocalYisakeStoryEngine.payload(result.profile, BsonLite.documentValue(doc2, str));
                if (doc == null) {
                }
            } else if (str2.equals("syncStoryGeneralValue")) {
                try {
                    doc = BsonLite.document("v", Integer.valueOf(LocalStoryGeneralEngine.value(result.profile)));
                } catch (IllegalArgumentException e) {
                }
            } else if (str2.equals("syncFlashbackData")) {
                doc = BsonLite.document("d", LocalFlashbackEngine.snapshot(result.profile));
            } else if (str2.equals("enterFlashback")) {
                if (Boolean.TRUE.equals(BsonLite.boolValue(LocalResourceEngine.doc(result.profile, "std"), "ff"))) {
                    doc = BsonLite.EMPTY_DOCUMENT;
                }
            } else if (str2.equals("syncBaiyuInfos")) {
                doc = LocalWingStoryEngine.payload(result.profile, BsonLite.documentValue(doc2, str));
                if (doc == null) {
                }
            } else if (str2.equals("openYumiYaocaoyuan")) {
                doc = LocalWingGardenEngine.payload(result.profile, BsonLite.documentValue(doc2, str));
                if (doc == null) {
                }
            } else if (str2.equals("deleteItems")) {
                doc = LocalResourceEngine.doc(doc2, str);
            } else if (str2.equals("updateItems")) {
                HashSet hashSet = new HashSet();
                Iterator<byte[]> it = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(doc2, str), "i")).iterator();
                while (it.hasNext()) {
                    hashSet.add(BsonLite.uuidValue(it.next(), "u"));
                }
                ArrayList arrayList = new ArrayList();
                for (byte[] bArr : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(result.profile, "inv"), "items"))) {
                    if (hashSet.contains(BsonLite.uuidValue(bArr, "u"))) {
                        arrayList.add(bArr);
                    }
                }
                doc = BsonLite.document("i", arrayList);
            } else if (str2.equals("syncProgInfo")) {
                doc = BsonLite.document("prog", LocalResourceEngine.doc(LocalResourceEngine.doc(result.profile, "ldd"), "hfp"));
            } else if (str2.equals("syncOneSocialMsg") || str2.equals("syncOnePrivateMsg")) {
                int parseInt = Integer.parseInt(str.split(":", 2)[1]);
                byte[] documentValue = BsonLite.documentValue(LocalResourceEngine.doc(LocalResourceEngine.doc(result.profile, "sd"), str2.equals("syncOneSocialMsg") ? "sm" : "pm"), Integer.toString(parseInt));
                if (documentValue != null) {
                    doc = BsonLite.document("id", Integer.valueOf(parseInt), "c", documentValue);
                }
            } else if (str2.equals("addCenterConfidence")) {
                byte[] doc3 = LocalResourceEngine.doc(doc2, str);
                int value = LocalResourceEngine.value(LocalResourceEngine.doc(result.profile, "city"), "cc");
                doc = BsonLite.document("v", Integer.valueOf(Math.max(0, value - (LocalResourceEngine.value(doc3, "c") - LocalResourceEngine.value(doc3, "v")))), "c", Integer.valueOf(value));
            } else if (str2.equals("syncAllNote")) {
                doc = BsonLite.document("nd", LocalResourceEngine.doc(result.profile, "np"));
            } else if (str2.equals("syncSailafeimuLineData")) {
                LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(result.profile);
                LocalDeepEchoEngine.sync(result2, Boolean.TRUE.equals(BsonLite.boolValue(LocalResourceEngine.doc(doc2, str), "u")));
                doc = result2.replies.get(0).parameters;
            } else if (str2.equals("syncHeroMgrData")) {
                byte[] bArr2 = result.profile;
                if (progress != null) {
                    bArr2 = BsonLite.withPatrolProgress(bArr2, progress);
                }
                doc = BsonLite.document("d", LocalResourceEngine.doc(bArr2, "heromgr"));
            } else if (str2.equals("syncDaerweilaLineData")) {
                LocalResourceEngine.Result result3 = new LocalResourceEngine.Result(result.profile);
                LocalDalviraStoryEngine.sync(result3);
                doc = result3.replies.get(0).parameters;
            } else if (str2.equals("daerweilaDispatchClose")) {
                doc = LocalDalviraStoryEngine.close(result.profile);
            } else if (str2.equals("get_all_area_info_reply")) {
                doc = BsonLite.allAreaInfoReplyDocument(true, progress, result.profile);
            } else {
                LocalResourceEngine.Result result4 = new LocalResourceEngine.Result(result.profile);
                LocalServiceEngine.syncRoute(result4);
                for (String[] strArr : LocalStoryClueEngine.FIELDS) {
                    LocalStoryClueEngine.sync(result4, strArr[0]);
                }
                LocalResourceEngine.Reply reply2 = null;
                for (LocalResourceEngine.Reply reply3 : result4.replies) {
                    if (reply3.method.equals(str2)) {
                        reply2 = reply3;
                    }
                }
                if (reply2 != null) {
                    doc = reply2.parameters;
                }
            }
            linkedHashMap.put(str, new LocalResourceEngine.Reply(str2, doc));
        }
        result.replies.clear();
        LocalResourceEngine.Reply reply4 = (LocalResourceEngine.Reply) linkedHashMap.remove("syncRoute");
        if (reply4 != null) {
            result.replies.add(reply4);
        }
        LocalResourceEngine.Reply reply5 = (LocalResourceEngine.Reply) linkedHashMap.remove("syncHeroMgrData");
        if (reply5 != null) {
            result.replies.add(reply5);
        }
        LocalResourceEngine.Reply reply6 = (LocalResourceEngine.Reply) linkedHashMap.remove("syncProgInfo");
        if (reply6 != null) {
            result.replies.add(reply6);
        }
        LocalResourceEngine.Reply reply7 = (LocalResourceEngine.Reply) linkedHashMap.remove("syncAllNote");
        if (reply7 != null) {
            result.replies.add(reply7);
        }
        LocalResourceEngine.Reply reply8 = (LocalResourceEngine.Reply) linkedHashMap.remove("updateItems");
        if (reply8 != null) {
            result.replies.add(reply8);
        }
        result.replies.addAll(linkedHashMap.values());
    }

    static byte[] acknowledge(byte[] bArr, byte[] bArr2) {
        byte[] doc = LocalResourceEngine.doc(bArr, "q7StoryPending");
        for (String str : BsonLite.keys(bArr2)) {
            if (Arrays.equals(BsonLite.documentValue(doc, str), BsonLite.documentValue(bArr2, str))) {
                doc = BsonLite.withoutProfileKey(doc, str);
            }
        }
        return BsonLite.withProfileDocument(bArr, "q7StoryPending", doc);
    }

    static byte[] sent(LocalResourceEngine.Result result) {
        byte[] doc = LocalResourceEngine.doc(result.profile, "q7StoryPending");
        byte[] bArr = BsonLite.EMPTY_DOCUMENT;
        for (String str : BsonLite.keys(doc)) {
            byte[] documentValue = BsonLite.documentValue(doc, str);
            if (documentValue != null) {
                Iterator<LocalResourceEngine.Reply> it = result.replies.iterator();
                while (true) {
                    if (it.hasNext()) {
                        LocalResourceEngine.Reply next = it.next();
                        boolean equals = str.equals(key(next));
                        if (equals && str.equals("syncYisakeVal")) {
                            equals = Arrays.equals(LocalYisakeStoryEngine.payload(result.profile, documentValue), next.parameters);
                        }
                        if (equals && str.equals("syncBaiyuInfos")) {
                            equals = Arrays.equals(LocalWingStoryEngine.payload(result.profile, documentValue), next.parameters);
                        }
                        if (equals && str.equals("openYumiYaocaoyuan")) {
                            equals = Arrays.equals(LocalWingGardenEngine.payload(result.profile, documentValue), next.parameters);
                        }
                        if (str.startsWith("memoryReward:") || str.startsWith("heroReward:") || str.startsWith("itemReward:")) {
                            equals = next.method.equals("procRewardSettlementCommon") && Arrays.equals(documentValue, next.parameters);
                        }
                        if (equals) {
                            bArr = BsonLite.withProfileDocument(bArr, str, documentValue);
                            break;
                        }
                    }
                }
            }
        }
        return bArr;
    }
}
