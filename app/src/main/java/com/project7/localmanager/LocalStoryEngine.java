package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.zip.InflaterInputStream;

/* loaded from: classes.dex */
final class LocalStoryEngine {
    static final String[] METHODS = {"q7StoryList", "uploadStoryData", "findStoryData", "delStoryData", "saveStoryMemo", "likeStory"};

    LocalStoryEngine() {
    }

    static boolean handles(String str) {
        return Arrays.asList(METHODS).contains(str) || LocalStoryDiscussion.handles(str);
    }

    static final class Result {
        final LocalResourceEngine.Result player;
        byte[] state;

        Result(byte[] bArr, byte[] bArr2) {
            this.player = new LocalResourceEngine.Result(bArr);
            this.state = bArr2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x06ef  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x071e  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x06f2  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x00ee A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x06cd  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x06cf A[Catch: IllegalArgumentException -> 0x06d7, TryCatch #7 {IllegalArgumentException -> 0x06d7, blocks: (B:45:0x06c6, B:49:0x06cf, B:50:0x06d6, B:31:0x0486, B:34:0x048e, B:36:0x049c, B:39:0x04a7, B:40:0x04ae, B:41:0x04af, B:43:0x04b5, B:51:0x04df, B:52:0x053b, B:53:0x0542, B:54:0x0543, B:57:0x054d, B:60:0x0558, B:61:0x055f, B:62:0x0560, B:64:0x056c, B:65:0x0573, B:66:0x0595, B:68:0x059d, B:70:0x05a5, B:72:0x05aa, B:74:0x05c1, B:77:0x05cc, B:78:0x05d3, B:79:0x05d4, B:80:0x05fb, B:81:0x0602, B:82:0x0603, B:84:0x060b, B:85:0x0629, B:87:0x062f, B:91:0x0646, B:93:0x0652, B:94:0x065c, B:95:0x0675, B:97:0x0694, B:98:0x06a1, B:99:0x069c, B:100:0x0658, B:103:0x06ba, B:105:0x06c2), top: B:30:0x0486 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static Result apply(byte[] bArr, byte[] bArr2, String str, String str2, byte[] bArr3, int i) throws IOException {
        String str3;
        String str4;
        byte[] documentValue;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String uuid;
        Result result;
        String str10;
        byte[] bArr4;
        int i2;
        String str11;
        int newStoryId;
        byte[] bArr5;
        byte[] bArr6;
        String sb;
        byte[] bArr7;
        Result result2;
        boolean z;
        Result result3 = new Result(bArr, bArr2);
        if (LocalStoryDiscussion.handles(str2)) {
            LocalStoryDiscussion.apply(result3, str, str2, bArr3, i);
            return result3;
        }
        byte[] assignStoryIds = assignStoryIds(bArr2, LocalResourceEngine.value(bArr, "uid"));
        result3.state = assignStoryIds;
        byte[] doc = LocalResourceEngine.doc(assignStoryIds, "works");
        int value = LocalResourceEngine.value(bArr3, "sid");
        String stringValue = BsonLite.stringValue(bArr3, "sti");
        String stringValue2 = BsonLite.stringValue(bArr3, "q7Sti64");
        try {
            if (stringValue2 != null) {
                str3 = stringValue;
                if (stringValue2.length() <= 20000) {
                    try {
                        str4 = new String(Base64.getDecoder().decode(stringValue2), StandardCharsets.UTF_8);
                    } catch (IllegalArgumentException e) {
                    }
                    String str12 = value + "+" + str4;
                    documentValue = BsonLite.documentValue(doc, str12);
                    if (documentValue != null) {
                        str5 = str12;
                        if (!"saveStoryMemo".equals(str2)) {
                            Iterator<Map.Entry<String, byte[]>> it = BsonLite.documentEntries(doc).entrySet().iterator();
                            while (it.hasNext()) {
                                Map.Entry<String, byte[]> next = it.next();
                                Iterator<Map.Entry<String, byte[]>> it2 = it;
                                if (storyId(next.getValue()) == value) {
                                    str6 = next.getKey();
                                    documentValue = next.getValue();
                                    break;
                                }
                                it = it2;
                            }
                        }
                    } else {
                        str5 = str12;
                    }
                    str6 = str5;
                    String str13 = str6;
                    if ("uploadStoryData".equals(str2)) {
                        byte[] bArr8 = doc;
                        result2 = result3;
                        doc = assignStoryIds;
                        String str14 = str4;
                        str7 = str2;
                        try {
                            if ("findStoryData".equals(str7)) {
                                if (documentValue == null) {
                                    throw new IllegalArgumentException("作品不存在或已被删除");
                                }
                                boolean equals = Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "ie"));
                                if (equals && !str.equals(BsonLite.stringValue(documentValue, "owner"))) {
                                    throw new IllegalArgumentException("只能编辑自己的作品");
                                }
                                byte[] binaryValue = BsonLite.binaryValue(documentValue, "i");
                                if (equals) {
                                    result2.player.add("editStoryDataReply", BsonLite.document("sid", Integer.valueOf(value), "sti", str14, "si", new BsonLite.BinaryValue(binaryValue)));
                                } else {
                                    result2.player.add("previewStoryDataReply", BsonLite.document("sid", Integer.valueOf(value), "sti", str14, "si", new BsonLite.BinaryValue(binaryValue), "su", publicSummary(documentValue), "id", new BsonLite.UuidValue(BsonLite.stringValue(documentValue, "id")), "li", Integer.valueOf(BsonLite.keys(LocalResourceEngine.doc(documentValue, "likes")).size())));
                                }
                            } else if ("delStoryData".equals(str7)) {
                                if (documentValue != null && !str.equals(BsonLite.stringValue(documentValue, "owner"))) {
                                    throw new IllegalArgumentException("只能删除自己的作品");
                                }
                                result2.state = BsonLite.withProfileDocument(doc, "works", BsonLite.withoutProfileKey(bArr8, str13));
                                if (documentValue != null) {
                                    LocalStoryDiscussion.deleteWork(result2, BsonLite.stringValue(documentValue, "id"));
                                }
                                result2.player.add("replyDelStoryData", BsonLite.document("sid", Integer.valueOf(value), "sti", str14));
                                sync(result2, str);
                            } else if ("saveStoryMemo".equals(str7)) {
                                byte[] binaryValue2 = BsonLite.binaryValue(bArr3, "d");
                                if (binaryValue2 == null || binaryValue2.length > 2097152) {
                                    throw new IllegalArgumentException("草稿过大或无效");
                                }
                                validateCompressed(binaryValue2);
                                byte[] doc2 = LocalResourceEngine.doc(LocalResourceEngine.doc(doc, "drafts"), str);
                                if (BsonLite.keys(doc2).size() >= 20 && !BsonLite.keys(doc2).contains(str13)) {
                                    throw new IllegalArgumentException("本地草稿已达上限");
                                }
                                result2.state = BsonLite.withProfileDocument(doc, "drafts", BsonLite.withProfileDocument(LocalResourceEngine.doc(doc, "drafts"), str, BsonLite.withProfileDocument(doc2, str13, BsonLite.document("d", new BsonLite.BinaryValue(binaryValue2)))));
                            } else if ("likeStory".equals(str7)) {
                                String uuidValue = BsonLite.uuidValue(bArr3, "oi");
                                boolean equals2 = Boolean.TRUE.equals(BsonLite.boolValue(bArr3, "il"));
                                Iterator<Map.Entry<String, byte[]>> it3 = BsonLite.documentEntries(bArr8).entrySet().iterator();
                                while (true) {
                                    if (!it3.hasNext()) {
                                        z = false;
                                        break;
                                    }
                                    Map.Entry<String, byte[]> next2 = it3.next();
                                    if (Objects.equals(uuidValue, BsonLite.stringValue(next2.getValue(), "id"))) {
                                        byte[] doc3 = LocalResourceEngine.doc(next2.getValue(), "likes");
                                        bArr8 = BsonLite.withProfileDocument(bArr8, next2.getKey(), BsonLite.withProfileDocument(next2.getValue(), "likes", equals2 ? BsonLite.withProfileBool(doc3, str, true) : BsonLite.withoutProfileKey(doc3, str)));
                                        z = true;
                                    }
                                }
                                result2.state = BsonLite.withProfileDocument(doc, "works", bArr8);
                                LocalResourceEngine.Result result4 = result2.player;
                                Object[] objArr = new Object[6];
                                objArr[0] = "rs";
                                objArr[1] = Boolean.valueOf(z);
                                objArr[2] = "oi";
                                objArr[3] = uuidValue == null ? new BsonLite.UuidValue("000000000000000000000000") : new BsonLite.UuidValue(uuidValue);
                                objArr[4] = "il";
                                objArr[5] = Boolean.valueOf(equals2);
                                result4.add("likeStoryReply", BsonLite.document(objArr));
                                sync(result2, str);
                            } else if ("q7StoryList".equals(str7)) {
                                sync(result2, str);
                            }
                        } catch (IllegalArgumentException e2) {
                            e = e2;
                            Result result5 = new Result(bArr, doc);
                            result5.player.add("uploadStoryData".equals(str7) ? "replyuploadFail" : "findStoryData".equals(str7) ? "findStoryDatafail" : "showMessageStr", BsonLite.document("m", e.getMessage()));
                            if ("delStoryData".equals(str7)) {
                            }
                            return result5;
                        }
                    } else {
                        try {
                            byte[] binaryValue3 = BsonLite.binaryValue(bArr3, "i");
                            byte[] doc4 = LocalResourceEngine.doc(bArr3, "q7Summary");
                            String metadataText = metadataText(doc4, "title");
                            String metadataText2 = metadataText(doc4, "desc");
                            int value2 = LocalResourceEngine.value(bArr3, "c");
                            try {
                                if (LocalResourceEngine.value(bArr, "level") < 30) {
                                    throw new IllegalArgumentException("七日小剧场需要指挥使等级30级");
                                }
                                if (binaryValue3 != null) {
                                    try {
                                        if (binaryValue3.length >= 3 && binaryValue3.length <= 2097152 && str4 != null && str4.length() <= 200 && metadataText != null) {
                                            if (!metadataText.trim().isEmpty() && metadataText.length() <= 500 && metadataText2 != null) {
                                                if (!metadataText2.trim().isEmpty() && metadataText2.length() <= 5000) {
                                                    if (LocalResourceEngine.value(doc4, "image") > 0 && value2 >= 0 && value2 <= 30000) {
                                                        Iterator<byte[]> it4 = BsonLite.documentEntries(doc).values().iterator();
                                                        int i3 = 0;
                                                        while (it4.hasNext()) {
                                                            try {
                                                                if (str.equals(BsonLite.stringValue(it4.next(), "owner"))) {
                                                                    i3++;
                                                                }
                                                            } catch (IllegalArgumentException e3) {
                                                                e = e3;
                                                                str7 = str2;
                                                                doc = assignStoryIds;
                                                                Result result52 = new Result(bArr, doc);
                                                                result52.player.add("uploadStoryData".equals(str7) ? "replyuploadFail" : "findStoryData".equals(str7) ? "findStoryDatafail" : "showMessageStr", BsonLite.document("m", e.getMessage()));
                                                                if ("delStoryData".equals(str7)) {
                                                                }
                                                                return result52;
                                                            }
                                                        }
                                                        boolean z2 = documentValue != null && str.equals(BsonLite.stringValue(documentValue, "owner"));
                                                        String str15 = str + ":" + value + ":" + str4 + ":" + LocalImageAvatar.imageId(binaryValue3);
                                                        String stringValue3 = BsonLite.stringValue(LocalResourceEngine.doc(assignStoryIds, "uploads"), str15);
                                                        byte[] documentValue2 = stringValue3 == null ? null : BsonLite.documentValue(doc, stringValue3);
                                                        if (documentValue2 != null) {
                                                            str8 = str15;
                                                            if (str.equals(BsonLite.stringValue(documentValue2, "owner"))) {
                                                                byte[] publicSummary = publicSummary(documentValue2);
                                                                result3.player.add("replyuploadStoryData", BsonLite.document("sid", Integer.valueOf(LocalResourceEngine.value(publicSummary, "sid")), "sti", BsonLite.stringValue(publicSummary, "sti"), "osid", Integer.valueOf(value), "osti", str4, "su", publicSummary));
                                                                sync(result3, str);
                                                                return result3;
                                                            }
                                                        } else {
                                                            str8 = str15;
                                                        }
                                                        validateCompressed(binaryValue3);
                                                        if (!z2 && i3 >= 10) {
                                                            throw new IllegalArgumentException("您上传的作品数已超过上限");
                                                        }
                                                        if (z2) {
                                                            str9 = "id";
                                                            uuid = BsonLite.stringValue(documentValue, str9);
                                                        } else {
                                                            str9 = "id";
                                                            uuid = LocalResourceEngine.uuid();
                                                        }
                                                        if (z2) {
                                                            result = result3;
                                                            newStoryId = storyId(documentValue);
                                                            str10 = str4;
                                                            bArr4 = bArr;
                                                            i2 = value;
                                                            str11 = "uid";
                                                        } else {
                                                            result = result3;
                                                            str10 = str4;
                                                            bArr4 = bArr;
                                                            i2 = value;
                                                            str11 = "uid";
                                                            try {
                                                                newStoryId = newStoryId(doc, LocalResourceEngine.value(bArr4, str11));
                                                            } catch (IllegalArgumentException e4) {
                                                                e = e4;
                                                                doc = assignStoryIds;
                                                                str7 = str2;
                                                                Result result522 = new Result(bArr, doc);
                                                                result522.player.add("uploadStoryData".equals(str7) ? "replyuploadFail" : "findStoryData".equals(str7) ? "findStoryDatafail" : "showMessageStr", BsonLite.document("m", e.getMessage()));
                                                                if ("delStoryData".equals(str7)) {
                                                                }
                                                                return result522;
                                                            }
                                                        }
                                                        if (z2) {
                                                            bArr5 = assignStoryIds;
                                                            bArr6 = doc;
                                                            sb = str13;
                                                        } else {
                                                            bArr5 = assignStoryIds;
                                                            try {
                                                                StringBuilder sb2 = new StringBuilder();
                                                                sb2.append(newStoryId);
                                                                bArr6 = doc;
                                                                sb2.append("+");
                                                                sb2.append(uuid);
                                                                sb = sb2.toString();
                                                            } catch (IllegalArgumentException e5) {
                                                                e = e5;
                                                                doc = bArr5;
                                                                str7 = str2;
                                                                Result result5222 = new Result(bArr, doc);
                                                                result5222.player.add("uploadStoryData".equals(str7) ? "replyuploadFail" : "findStoryData".equals(str7) ? "findStoryDatafail" : "showMessageStr", BsonLite.document("m", e.getMessage()));
                                                                if ("delStoryData".equals(str7)) {
                                                                }
                                                                return result5222;
                                                            }
                                                        }
                                                        byte[] document = BsonLite.document("sid", Integer.valueOf(newStoryId), "sti", metadataText, "title", metadataText, "desc", metadataText2, "sd", metadataText2, "image", Integer.valueOf(LocalResourceEngine.value(doc4, "image")), "sco", Integer.valueOf(LocalResourceEngine.value(doc4, "image")), "uname", BsonLite.stringValue(bArr4, "name"), str11, str, "uuid", str, "obj_id", uuid, "st", 1, "rt", Integer.valueOf(i), "like", 0);
                                                        Object[] objArr2 = new Object[14];
                                                        objArr2[0] = "owner";
                                                        objArr2[1] = str;
                                                        objArr2[2] = str9;
                                                        objArr2[3] = uuid;
                                                        objArr2[4] = "q7Sid";
                                                        objArr2[5] = Integer.valueOf(newStoryId);
                                                        objArr2[6] = "q7SummaryVersion";
                                                        objArr2[7] = 2;
                                                        objArr2[8] = "su";
                                                        objArr2[9] = document;
                                                        objArr2[10] = "i";
                                                        objArr2[11] = new BsonLite.BinaryValue(binaryValue3);
                                                        objArr2[12] = "likes";
                                                        if (z2) {
                                                            try {
                                                                bArr7 = LocalResourceEngine.doc(documentValue, "likes");
                                                            } catch (IllegalArgumentException e6) {
                                                                e = e6;
                                                                str7 = str2;
                                                                doc = bArr5;
                                                                Result result52222 = new Result(bArr, doc);
                                                                result52222.player.add("uploadStoryData".equals(str7) ? "replyuploadFail" : "findStoryData".equals(str7) ? "findStoryDatafail" : "showMessageStr", BsonLite.document("m", e.getMessage()));
                                                                if ("delStoryData".equals(str7)) {
                                                                    result52222.player.add("evalCode", BsonLite.document("s", "gg.ui.unlock('delStoryData')"));
                                                                }
                                                                return result52222;
                                                            }
                                                        } else {
                                                            bArr7 = BsonLite.EMPTY_DOCUMENT;
                                                        }
                                                        objArr2[13] = bArr7;
                                                        byte[] withProfileDocument = BsonLite.withProfileDocument(bArr6, sb, BsonLite.document(objArr2));
                                                        byte[] bArr9 = bArr5;
                                                        result2 = result;
                                                        result2.state = BsonLite.withProfileDocument(bArr9, "works", withProfileDocument);
                                                        result2.state = BsonLite.withProfileDocument(result2.state, "uploads", BsonLite.withProfileString(LocalResourceEngine.doc(bArr9, "uploads"), str8, sb));
                                                        result2.state = BsonLite.withProfileDocument(result2.state, "drafts", BsonLite.withProfileDocument(LocalResourceEngine.doc(result2.state, "drafts"), str, BsonLite.withoutProfileKey(LocalResourceEngine.doc(LocalResourceEngine.doc(result2.state, "drafts"), str), str13)));
                                                        if (result2.state.length > 33554432) {
                                                            throw new IllegalArgumentException("本地作品存档已达保存上限");
                                                        }
                                                        result2.player.add("replyuploadStoryData", BsonLite.document("sid", Integer.valueOf(newStoryId), "sti", metadataText, "osid", Integer.valueOf(i2), "osti", str10, "su", document));
                                                        sync(result2, str);
                                                    }
                                                }
                                            }
                                            throw new IllegalArgumentException("作品内容或封面无效，请检查后重新发布");
                                        }
                                    } catch (IllegalArgumentException e7) {
                                        e = e7;
                                    }
                                }
                                throw new IllegalArgumentException("作品内容或封面无效，请检查后重新发布");
                            } catch (IllegalArgumentException e8) {
                                e = e8;
                            }
                        } catch (IllegalArgumentException e9) {
                            e = e9;
                        }
                    }
                    if (result2.state.length > 33554432) {
                        return result2;
                    }
                    throw new IllegalArgumentException("本地作品存档已达保存上限");
                }
            } else {
                str3 = stringValue;
            }
            String str132 = str6;
            if ("uploadStoryData".equals(str2)) {
            }
            if (result2.state.length > 33554432) {
            }
        } catch (IllegalArgumentException e10) {
            e = e10;
            str7 = str2;
        }
        str4 = str3;
        String str122 = value + "+" + str4;
        documentValue = BsonLite.documentValue(doc, str122);
        if (documentValue != null) {
        }
        str6 = str5;
    }

    private static String metadataText(byte[] bArr, String str) {
        String stringValue = BsonLite.stringValue(bArr, str + "64");
        if (stringValue == null) {
            return BsonLite.stringValue(bArr, str);
        }
        if (stringValue.length() > 30000) {
            throw new IllegalArgumentException("作品摘要过大");
        }
        return new String(Base64.getDecoder().decode(stringValue), StandardCharsets.UTF_8);
    }

    private static int storyId(byte[] bArr) {
        return LocalResourceEngine.value(bArr, "q7Sid");
    }

    private static byte[] assignStoryIds(byte[] bArr, int i) {
        byte[] doc = LocalResourceEngine.doc(bArr, "works");
        List<String> keys = BsonLite.keys(doc);
        Collections.sort(keys);
        boolean z = false;
        for (String str : keys) {
            byte[] doc2 = LocalResourceEngine.doc(doc, str);
            if (storyId(doc2) <= 0) {
                doc = BsonLite.withProfileDocument(doc, str, BsonLite.withProfileInt(doc2, "q7Sid", newStoryId(doc, i)));
                z = true;
            }
        }
        return z ? BsonLite.withProfileDocument(bArr, "works", doc) : bArr;
    }

    private static int newStoryId(byte[] bArr, int i) {
        HashSet hashSet = new HashSet();
        hashSet.add(Integer.valueOf(i));
        Iterator<byte[]> it = BsonLite.documentEntries(bArr).values().iterator();
        while (it.hasNext()) {
            hashSet.add(Integer.valueOf(storyId(it.next())));
        }
        int i2 = 1000;
        while (hashSet.contains(Integer.valueOf(i2))) {
            i2++;
        }
        return i2;
    }

    private static byte[] publicSummary(byte[] bArr) {
        byte[] withProfileInt = BsonLite.withProfileInt(LocalResourceEngine.doc(bArr, "su"), "sid", storyId(bArr));
        String stringValue = BsonLite.stringValue(withProfileInt, "title");
        if (stringValue == null) {
            stringValue = "";
        }
        byte[] withProfileString = BsonLite.withProfileString(withProfileInt, "sti", stringValue);
        return BsonLite.withProfileInt(withProfileString, "sco", LocalResourceEngine.value(withProfileString, "image"));
    }

    private static void validateCompressed(byte[] bArr) {
        try {
            InflaterInputStream inflaterInputStream = new InflaterInputStream(new ByteArrayInputStream(bArr));
            try {
                byte[] bArr2 = new byte[8192];
                int i = 0;
                do {
                    int read = inflaterInputStream.read(bArr2);
                    if (read >= 0) {
                        i += read;
                    } else {
                        if (i == 0) {
                            throw new IllegalArgumentException("作品为空");
                        }
                        inflaterInputStream.close();
                        return;
                    }
                } while (i <= 8388608);
                throw new IllegalArgumentException("作品解压后过大");
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalArgumentException("作品压缩内容无效");
        }
    }

    private static void sync(Result result, String str) throws IOException {
        char c;
        byte[] binaryValue;
        byte[] bArr = BsonLite.EMPTY_DOCUMENT;
        byte[] bArr2 = BsonLite.EMPTY_DOCUMENT;
        byte[] bArr3 = BsonLite.EMPTY_DOCUMENT;
        ArrayList<Map.Entry> arrayList = new ArrayList(BsonLite.documentEntries(LocalResourceEngine.doc(result.state, "works")).entrySet());
        arrayList.sort(new Comparator() { // from class: com.project7.localmanager.LocalStoryEngine$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compare;
                compare = Integer.compare(LocalResourceEngine.value(LocalResourceEngine.doc((byte[]) ((Map.Entry) obj2).getValue(), "su"), "rt"), LocalResourceEngine.value(LocalResourceEngine.doc((byte[]) ((Map.Entry) obj).getValue(), "su"), "rt"));
                return compare;
            }
        });
        for (Map.Entry entry : arrayList) {
            byte[] withProfileInt = BsonLite.withProfileInt(publicSummary((byte[]) entry.getValue()), "like", BsonLite.keys(LocalResourceEngine.doc((byte[]) entry.getValue(), "likes")).size());
            String str2 = LocalResourceEngine.value(withProfileInt, "sid") + "+" + BsonLite.stringValue(withProfileInt, "sti");
            bArr = BsonLite.withProfileDocument(bArr, str2, withProfileInt);
            if (str.equals(BsonLite.stringValue((byte[]) entry.getValue(), "owner"))) {
                bArr3 = BsonLite.withProfileDocument(bArr3, str2, withProfileInt);
            }
        }
        arrayList.sort(new Comparator() { // from class: com.project7.localmanager.LocalStoryEngine$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compare;
                compare = Integer.compare(BsonLite.keys(LocalResourceEngine.doc((byte[]) ((Map.Entry) obj2).getValue(), "likes")).size(), BsonLite.keys(LocalResourceEngine.doc((byte[]) ((Map.Entry) obj).getValue(), "likes")).size());
                return compare;
            }
        });
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            byte[] publicSummary = publicSummary((byte[]) ((Map.Entry) it.next()).getValue());
            String str3 = LocalResourceEngine.value(publicSummary, "sid") + "+" + BsonLite.stringValue(publicSummary, "sti");
            bArr2 = BsonLite.withProfileDocument(bArr2, str3, LocalResourceEngine.doc(bArr, str3));
        }
        int i = 2;
        result.player.add("syncHotStoryData", BsonLite.document("hs", new BsonLite.BinaryValue(LocalAvatarPayload.encode(bArr2))));
        result.player.add("syncLatestStoryData", BsonLite.document("ls", new BsonLite.BinaryValue(LocalAvatarPayload.encode(bArr))));
        result.player.add("syncMyStoryData", BsonLite.document("ms", new BsonLite.BinaryValue(LocalAvatarPayload.encode(bArr3))));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            byte[] bArr4 = (byte[]) ((Map.Entry) it2.next()).getValue();
            if (LocalResourceEngine.value(bArr4, "q7SummaryVersion") < i && (binaryValue = BsonLite.binaryValue(bArr4, "i")) != null) {
                byte[] publicSummary2 = publicSummary(bArr4);
                String encodeToString = Base64.getEncoder().encodeToString(BsonLite.document("summary", LocalResourceEngine.doc(bArr, LocalResourceEngine.value(publicSummary2, "sid") + "+" + BsonLite.stringValue(publicSummary2, "sti")), "own", Boolean.valueOf(str.equals(BsonLite.stringValue(bArr4, "owner"))), "body", new BsonLite.BinaryValue(binaryValue)));
                result.player.add("evalCode", BsonLite.document("s", "_q7_story_summary_fix('" + encodeToString + "')"));
                i = 2;
            }
        }
        byte[] doc = LocalResourceEngine.doc(LocalResourceEngine.doc(result.state, "drafts"), str);
        if (BsonLite.keys(doc).isEmpty()) {
            c = 1;
        } else {
            String encodeToString2 = Base64.getEncoder().encodeToString(doc);
            c = 1;
            result.player.add("evalCode", BsonLite.document("s", "import bson,base64\n_q7_drafts=bson.BSON(base64.b64decode('" + encodeToString2 + "')).decode()\nfor _q7_k,_q7_d in _q7_drafts.items():\n    gg.avatar.StoryEditorData.memo_cache.setdefault(_q7_k,gg.avatar.decompress_story(_q7_d['d']))"));
        }
        LocalResourceEngine.Result result2 = result.player;
        Object[] objArr = new Object[2];
        objArr[0] = "s";
        objArr[c] = "_q7_story_refresh()";
        result2.add("evalCode", BsonLite.document(objArr));
    }
}
