package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
final class LocalMailEngine {
    LocalMailEngine() {
    }

    static byte[] enqueueWelcome(byte[] bArr, LocalResourceCatalog localResourceCatalog, String str, boolean z) {
        if (!z || Boolean.TRUE.equals(BsonLite.boolValue(bArr, "q7AntiResaleMailSent"))) {
            return bArr;
        }
        return BsonLite.withProfileBool(enqueue(bArr, localResourceCatalog, "【防盗卖通知】", str, Arrays.asList(BsonLite.document("kind", "money", "id", 0, "quantity", 10000, "quality", 1))), "q7AntiResaleMailSent", true);
    }

    static boolean handles(String str) {
        return Arrays.asList("queryMailDetail", "readMail", "delMail", "fetchAttachmentAndDel", "fetchAttachmentAndDelBatch", "fetchAttachmentAndDelBatch2").contains(str);
    }

    static byte[] enqueue(byte[] bArr, LocalResourceCatalog localResourceCatalog, String str, String str2, List<byte[]> list) {
        LocalResourceCatalog localResourceCatalog2 = localResourceCatalog;
        if (str != null && !str.trim().isEmpty() && str.length() <= 80 && str2 != null && str2.length() <= 2000 && !list.isEmpty() && list.size() <= 20) {
            List<byte[]> array = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "mailbox"), "mails"));
            if (array.size() >= 100) {
                throw new IllegalArgumentException("邮箱已满，请先领取或删除邮件");
            }
            String str3 = "id";
            int i = 2;
            byte[] document = BsonLite.document("id", new BsonLite.UuidValue(LocalResourceEngine.uuid()), "sa", BsonLite.EMPTY_DOCUMENT, "sn", "本地系统", "tp", 2, "tt", str, "ct", str2, "st", Integer.valueOf((int) (System.currentTimeMillis() / 1000)), "et", -1, "rd", false, "q7Attachments", list);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (byte[] bArr2 : list) {
                String stringValue = BsonLite.stringValue(bArr2, "kind");
                int value = LocalResourceEngine.value(bArr2, str3);
                int value2 = LocalResourceEngine.value(bArr2, "quantity");
                int value3 = LocalResourceEngine.value(bArr2, "quality");
                LocalResourceEngine.validate(localResourceCatalog2, stringValue, value, value2, value3);
                int indexOf = Arrays.asList(LocalResourceEngine.COINS).indexOf(stringValue);
                if (indexOf >= 0) {
                    document = BsonLite.withProfileInt(document, LocalResourceEngine.MAIL_COINS[indexOf], Math.addExact(LocalResourceEngine.value(document, LocalResourceEngine.MAIL_COINS[indexOf]), value2));
                } else if ("hero".equals(stringValue)) {
                    arrayList.add(Integer.valueOf(value));
                } else if ("skin".equals(stringValue)) {
                    Integer[] numArr = new Integer[i];
                    numArr[0] = Integer.valueOf(localResourceCatalog2.skins.get(Integer.valueOf(value)).item);
                    numArr[1] = Integer.valueOf(value2);
                    arrayList2.add(Arrays.asList(numArr));
                } else if ("item".equals(stringValue)) {
                    Integer[] numArr2 = new Integer[i];
                    numArr2[0] = Integer.valueOf(value);
                    numArr2[1] = Integer.valueOf(value2);
                    arrayList2.add(Arrays.asList(numArr2));
                } else {
                    int i2 = 0;
                    while (i2 < value2) {
                        arrayList3.add(BsonLite.document("u", new BsonLite.UuidValue(LocalResourceEngine.uuid()), "i", Integer.valueOf(value), "w", 1, "tr", localResourceCatalog2.treasures.get(value + ":" + value3).data()));
                        i2++;
                        localResourceCatalog2 = localResourceCatalog;
                        i = 2;
                        str3 = str3;
                    }
                }
                localResourceCatalog2 = localResourceCatalog;
                i = i;
                str3 = str3;
            }
            array.add(BsonLite.withProfileArray(BsonLite.withProfileArray(BsonLite.withProfileArray(document, "hr", arrayList), "at", arrayList2), "it", arrayList3));
            return BsonLite.withProfileDocument(bArr, "mailbox", BsonLite.withProfileArray(LocalResourceEngine.doc(bArr, "mailbox"), "mails", array));
        }
        throw new IllegalArgumentException("邮件标题、内容或附件数量无效");
    }

    static LocalResourceEngine.Result apply(byte[] bArr, LocalResourceCatalog localResourceCatalog, String str, byte[] bArr2) {
        String str2;
        String str3;
        String str4;
        String str5;
        ArrayList arrayList;
        String str6 = "id";
        LocalResourceEngine.Result result = new LocalResourceEngine.Result(bArr);
        String str7 = "Batch2";
        boolean z = str.endsWith("Batch") || str.endsWith("Batch2");
        boolean startsWith = str.startsWith("fetchAttachment");
        String str8 = "u";
        String uuidValue = BsonLite.uuidValue(bArr2, "u");
        ArrayList arrayList2 = new ArrayList();
        try {
            boolean z2 = false;
            for (byte[] bArr3 : LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr, "mailbox"), "mails"))) {
                String uuidValue2 = BsonLite.uuidValue(bArr3, str6);
                if (z || (uuidValue != null && uuidValue.equals(uuidValue2))) {
                    String str9 = "delMailRep";
                    if (startsWith) {
                        List<byte[]> array = LocalResourceEngine.array(LocalResourceEngine.doc(bArr3, "q7Attachments"));
                        if (array.isEmpty()) {
                            throw new IllegalArgumentException("该邮件附件类型尚不支持领取");
                        }
                        for (byte[] bArr4 : array) {
                            LocalResourceEngine.grant(result, localResourceCatalog, BsonLite.stringValue(bArr4, "kind"), LocalResourceEngine.value(bArr4, str6), LocalResourceEngine.value(bArr4, "quantity"), LocalResourceEngine.value(bArr4, "quality"));
                            str9 = str9;
                            str8 = str8;
                            uuidValue = uuidValue;
                            str6 = str6;
                            str7 = str7;
                            arrayList2 = arrayList2;
                        }
                        str2 = str6;
                        str3 = uuidValue;
                        str4 = str8;
                        str5 = str7;
                        result.add(str9, BsonLite.document(str4, new BsonLite.UuidValue(uuidValue2), "r", 1));
                        arrayList = arrayList2;
                    } else {
                        str2 = str6;
                        ArrayList arrayList3 = arrayList2;
                        str3 = uuidValue;
                        str4 = str8;
                        str5 = str7;
                        if ("delMail".equals(str)) {
                            result.add("delMailRep", BsonLite.document(str4, new BsonLite.UuidValue(uuidValue2), "r", 1));
                            arrayList = arrayList3;
                        } else {
                            if ("readMail".equals(str)) {
                                bArr3 = BsonLite.withProfileBool(bArr3, "rd", true);
                            }
                            arrayList = arrayList3;
                            arrayList.add(bArr3);
                            result.add("updateMailRep", BsonLite.document("m", bArr3));
                        }
                    }
                    z2 = true;
                    arrayList2 = arrayList;
                    str8 = str4;
                    uuidValue = str3;
                    str6 = str2;
                    str7 = str5;
                } else {
                    arrayList2.add(bArr3);
                }
            }
            ArrayList arrayList4 = arrayList2;
            String str10 = str7;
            if (!z2) {
                return result;
            }
            result.profile = BsonLite.withProfileDocument(result.profile, "mailbox", BsonLite.withProfileArray(LocalResourceEngine.doc(result.profile, "mailbox"), "mails", arrayList4));
            if (startsWith) {
                LocalResourceEngine.syncCurrencies(result);
                String str11 = "s";
                if (!str.endsWith(str10)) {
                    String str12 = z ? "fetchAttachmentBatchRep" : "fetchAttachmentRep";
                    Object[] objArr = new Object[2];
                    if (!z) {
                        str11 = "a";
                    }
                    objArr[0] = str11;
                    objArr[1] = result.reward();
                    result.add(str12, BsonLite.document(objArr));
                    return result;
                }
                result.add("fetchAttachmentBatchRep2", BsonLite.document("s", result.reward(), "r", 0));
                return result;
            }
            return result;
        } catch (ArithmeticException | IllegalArgumentException e) {
            LocalResourceEngine.Result result2 = new LocalResourceEngine.Result(bArr);
            result2.add("showMessageStr", BsonLite.stringDocument("m", e.getMessage()));
            return result2;
        }
    }
}
