package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

/* loaded from: classes.dex */
final class LocalCommunityEngine {
    static final String[] METHODS = {"queryEventOptAsk", "getSocialMsgComment", "getSocialMsgCommentFromObjectId", "getSocialMsgHotComment", "getSocialMsgHotCommentFromObjectId", "getSocialMsgRandomComment", "getSocialMsgRandomCommentFromObjectId", "addSocialMsgComment", "likeSocialMsgComment", "requestMainlineHttpInfo"};

    LocalCommunityEngine() {
    }

    static boolean handles(String str) {
        return Arrays.asList(METHODS).contains(str);
    }

    /* renamed from: d */
    private static byte[] m9d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    private static int m10v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    static final class Result {
        byte[] local;
        final LocalResourceEngine.Result player;

        Result(byte[] bArr, byte[] bArr2) {
            this.player = new LocalResourceEngine.Result(bArr);
            this.local = bArr2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v30 */
    /* JADX WARN: Type inference failed for: r14v35 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v54 */
    /* JADX WARN: Type inference failed for: r14v55 */
    /* JADX WARN: Type inference failed for: r14v56 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v27 */
    /* JADX WARN: Type inference failed for: r15v30 */
    /* JADX WARN: Type inference failed for: r15v32 */
    /* JADX WARN: Type inference failed for: r15v33 */
    /* JADX WARN: Type inference failed for: r15v34 */
    /* JADX WARN: Type inference failed for: r15v39 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v41 */
    /* JADX WARN: Type inference failed for: r15v42, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r15v43 */
    /* JADX WARN: Type inference failed for: r15v44 */
    /* JADX WARN: Type inference failed for: r15v48 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v52 */
    /* JADX WARN: Type inference failed for: r15v53 */
    /* JADX WARN: Type inference failed for: r15v54 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r5v12, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v42 */
    /* JADX WARN: Type inference failed for: r8v44 */
    /* JADX WARN: Type inference failed for: r8v46 */
    /* JADX WARN: Type inference failed for: r8v47 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v57 */
    /* JADX WARN: Type inference failed for: r8v58 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v60 */
    /* JADX WARN: Type inference failed for: r8v66 */
    /* JADX WARN: Type inference failed for: r8v67 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    static Result apply(byte[] bArr, byte[] bArr2, byte[] bArr3, String str, byte[] bArr4, int i) {
        Object obj;
        String str2;
        ?? r8;
        byte[] bArr5;
        int i2;
        byte[] bArr6;
        RuntimeException runtimeException;
        byte[] bArr7;
        byte[] bArr8;
        Result result;
        byte[] bArr9;
        StringBuilder sb;
        Locale locale;
        Object arrayValue;
        ?? equals;
        boolean contains;
        boolean contains2;
        boolean contains3;
        String str3;
        LocalResourceEngine.Result result2;
        Object[] objArr;
        byte[] bArr10;
        byte[] bArr11;
        String str4;
        byte[] bArr12;
        ?? r14 = "cmd";
        ?? r15 = "id";
        Result result3 = new Result(bArr, bArr3);
        try {
            r8 = "d";
            try {
                try {
                } catch (ArithmeticException e) {
                    e = e;
                    r15 = bArr3;
                    r8 = bArr;
                    r14 = str;
                    obj = "m";
                    str2 = "showMessageStr";
                    runtimeException = e;
                    bArr6 = r8;
                    i2 = r14;
                    bArr5 = r15;
                    Result result4 = new Result(bArr6, bArr5);
                    LocalResourceEngine.Result result5 = result4.player;
                    Object[] objArr2 = new Object[i2];
                    objArr2[0] = obj;
                    objArr2[1] = runtimeException.getMessage();
                    result5.add(str2, BsonLite.document(objArr2));
                    return result4;
                } catch (IllegalArgumentException e2) {
                    e = e2;
                    r15 = bArr3;
                    r8 = bArr;
                    r14 = str;
                    obj = "m";
                    str2 = "showMessageStr";
                    runtimeException = e;
                    bArr6 = r8;
                    i2 = r14;
                    bArr5 = r15;
                    Result result42 = new Result(bArr6, bArr5);
                    LocalResourceEngine.Result result52 = result42.player;
                    Object[] objArr22 = new Object[i2];
                    objArr22[0] = obj;
                    objArr22[1] = runtimeException.getMessage();
                    result52.add(str2, BsonLite.document(objArr22));
                    return result42;
                }
            } catch (ArithmeticException | IllegalArgumentException e3) {
                e = e3;
                r15 = bArr3;
                r8 = bArr;
                obj = "m";
                str2 = "showMessageStr";
            }
        } catch (ArithmeticException | IllegalArgumentException e4) {
            e = e4;
            r15 = bArr3;
            obj = "m";
            str2 = "showMessageStr";
            r14 = 2;
        }
        if ("requestMainlineHttpInfo".equals(str)) {
            int m10v = m10v(bArr4, "cmd");
            if (m10v < 1 || m10v > 4) {
                throw new IllegalArgumentException("未知剧情评论查询");
            }
            Iterator<byte[]> it = LocalResourceEngine.array(m9d(bArr2, "mainline")).iterator();
            while (true) {
                if (!it.hasNext()) {
                    LocalResourceEngine.Result result6 = result3.player;
                    Object[] objArr3 = new Object[4];
                    objArr3[0] = "rs";
                    objArr3[1] = false;
                    try {
                        objArr3[2] = "i";
                        objArr3[3] = BsonLite.EMPTY_DOCUMENT;
                        result6.add("mainlineHttpInfoReply", BsonLite.document(objArr3));
                        LocalResourceEngine.Result result7 = result3.player;
                        try {
                            Object[] objArr4 = new Object[2];
                            objArr4[0] = "m";
                            objArr4[1] = "暂无本地缓存的剧情评论";
                            result7.add("showMessageStr", BsonLite.document(objArr4));
                            return result3;
                        } catch (ArithmeticException e5) {
                            e = e5;
                            r15 = bArr3;
                            r8 = bArr;
                            r14 = 2;
                            obj = "m";
                            str2 = "showMessageStr";
                            runtimeException = e;
                            bArr6 = r8;
                            i2 = r14;
                            bArr5 = r15;
                            Result result422 = new Result(bArr6, bArr5);
                            LocalResourceEngine.Result result522 = result422.player;
                            Object[] objArr222 = new Object[i2];
                            objArr222[0] = obj;
                            objArr222[1] = runtimeException.getMessage();
                            result522.add(str2, BsonLite.document(objArr222));
                            return result422;
                        } catch (IllegalArgumentException e6) {
                            e = e6;
                            r15 = bArr3;
                            r8 = bArr;
                            r14 = 2;
                            obj = "m";
                            str2 = "showMessageStr";
                            runtimeException = e;
                            bArr6 = r8;
                            i2 = r14;
                            bArr5 = r15;
                            Result result4222 = new Result(bArr6, bArr5);
                            LocalResourceEngine.Result result5222 = result4222.player;
                            Object[] objArr2222 = new Object[i2];
                            objArr2222[0] = obj;
                            objArr2222[1] = runtimeException.getMessage();
                            result5222.add(str2, BsonLite.document(objArr2222));
                            return result4222;
                        }
                    } catch (ArithmeticException e7) {
                        e = e7;
                        r15 = bArr3;
                        r8 = bArr;
                        r14 = 2;
                        obj = "m";
                        str2 = "showMessageStr";
                        runtimeException = e;
                        bArr6 = r8;
                        i2 = r14;
                        bArr5 = r15;
                        Result result42222 = new Result(bArr6, bArr5);
                        LocalResourceEngine.Result result52222 = result42222.player;
                        Object[] objArr22222 = new Object[i2];
                        objArr22222[0] = obj;
                        objArr22222[1] = runtimeException.getMessage();
                        result52222.add(str2, BsonLite.document(objArr22222));
                        return result42222;
                    } catch (IllegalArgumentException e8) {
                        e = e8;
                        r15 = bArr3;
                        r8 = bArr;
                        r14 = 2;
                        obj = "m";
                        str2 = "showMessageStr";
                        runtimeException = e;
                        bArr6 = r8;
                        i2 = r14;
                        bArr5 = r15;
                        Result result422222 = new Result(bArr6, bArr5);
                        LocalResourceEngine.Result result522222 = result422222.player;
                        Object[] objArr222222 = new Object[i2];
                        objArr222222[0] = obj;
                        objArr222222[1] = runtimeException.getMessage();
                        result522222.add(str2, BsonLite.document(objArr222222));
                        return result422222;
                    }
                }
                byte[] next = it.next();
                if (m10v(next, "cmd") == m10v) {
                    Iterator<byte[]> it2 = it;
                    if (sameQuery(m9d(next, "request"), m9d(bArr4, "d"), true)) {
                        Object[] objArr5 = new Object[8];
                        objArr5[0] = "cmd";
                        objArr5[1] = Integer.valueOf(m10v);
                        objArr5[2] = "d";
                        objArr5[3] = m9d(next, "response");
                        objArr5[4] = "ud";
                        objArr5[5] = m9d(bArr4, "d");
                        objArr5[6] = "ed";
                        objArr5[7] = m9d(bArr4, "ed");
                        byte[] document = BsonLite.document(objArr5);
                        LocalResourceEngine.Result result8 = result3.player;
                        Object[] objArr6 = new Object[4];
                        objArr6[0] = "rs";
                        objArr6[1] = true;
                        try {
                            objArr6[2] = "i";
                            objArr6[3] = document;
                            result8.add("mainlineHttpInfoReply", BsonLite.document(objArr6));
                            return result3;
                        } catch (ArithmeticException e9) {
                            e = e9;
                            r15 = bArr3;
                            r8 = bArr;
                            r14 = 2;
                            obj = "m";
                            str2 = "showMessageStr";
                            runtimeException = e;
                            bArr6 = r8;
                            i2 = r14;
                            bArr5 = r15;
                            Result result4222222 = new Result(bArr6, bArr5);
                            LocalResourceEngine.Result result5222222 = result4222222.player;
                            Object[] objArr2222222 = new Object[i2];
                            objArr2222222[0] = obj;
                            objArr2222222[1] = runtimeException.getMessage();
                            result5222222.add(str2, BsonLite.document(objArr2222222));
                            return result4222222;
                        } catch (IllegalArgumentException e10) {
                            e = e10;
                            r15 = bArr3;
                            r8 = bArr;
                            r14 = 2;
                            obj = "m";
                            str2 = "showMessageStr";
                            runtimeException = e;
                            bArr6 = r8;
                            i2 = r14;
                            bArr5 = r15;
                            Result result42222222 = new Result(bArr6, bArr5);
                            LocalResourceEngine.Result result52222222 = result42222222.player;
                            Object[] objArr22222222 = new Object[i2];
                            objArr22222222[0] = obj;
                            objArr22222222[1] = runtimeException.getMessage();
                            result52222222.add(str2, BsonLite.document(objArr22222222));
                            return result42222222;
                        }
                    }
                    it = it2;
                }
                obj = "m";
                str2 = "showMessageStr";
                runtimeException = e;
                bArr6 = r8;
                i2 = r14;
                bArr5 = r15;
                Result result422222222 = new Result(bArr6, bArr5);
                LocalResourceEngine.Result result522222222 = result422222222.player;
                Object[] objArr222222222 = new Object[i2];
                objArr222222222[0] = obj;
                objArr222222222[1] = runtimeException.getMessage();
                result522222222.add(str2, BsonLite.document(objArr222222222));
                return result422222222;
            }
        }
        if ("queryEventOptAsk".equals(str)) {
            int m10v2 = m10v(bArr4, "e");
            List<byte[]> array = LocalResourceEngine.array(m9d(m9d(bArr2, "options"), Integer.toString(m10v2)));
            Iterator<byte[]> it3 = array.iterator();
            long j = 0;
            while (it3.hasNext()) {
                if (m10v(it3.next(), "1") < 0) {
                    throw new IllegalArgumentException("Invalid cached choice counts");
                }
                j += m10v(r6, "1");
            }
            LocalResourceEngine.Result result9 = result3.player;
            Object[] objArr7 = new Object[4];
            objArr7[0] = "e";
            objArr7[1] = Integer.valueOf(m10v2);
            objArr7[2] = "d";
            if (j <= 0) {
                array = Collections.emptyList();
            }
            objArr7[3] = array;
            result9.add("queryEventOptReply", BsonLite.document(objArr7));
            return result3;
        }
        try {
            if (!handles(str)) {
                throw new IllegalArgumentException("未知本地论坛请求");
            }
            int m10v3 = m10v(bArr4, "id");
            String num = Integer.toString(m10v3);
            byte[] m9d = m9d(bArr, "sd");
            byte[] m9d2 = m9d(m9d, "sm");
            byte[] documentValue = BsonLite.documentValue(m9d2, num);
            if (m10v3 <= 0 || documentValue == null) {
                throw new IllegalArgumentException("论坛帖子尚未开放");
            }
            str2 = "showMessageStr";
            obj = "m";
            if ("addSocialMsgComment".equals(str)) {
                try {
                    String stringValue = BsonLite.stringValue(bArr4, "cm");
                    try {
                        if (stringValue != null && !stringValue.trim().isEmpty() && stringValue.codePointCount(0, stringValue.length()) <= 300) {
                            if (stringValue.indexOf(0) < 0) {
                                try {
                                    byte[] m9d3 = m9d(bArr3, "social");
                                    List<byte[]> array2 = LocalResourceEngine.array(m9d(m9d3, num));
                                    if (array2.size() >= 1000) {
                                        throw new IllegalArgumentException("本地帖子留言已达保存上限");
                                    }
                                    String stringValue2 = BsonLite.stringValue(bArr, "account");
                                    if (stringValue2 == null) {
                                        throw new IllegalArgumentException("账号资料不完整");
                                    }
                                    String substring = UUID.nameUUIDFromBytes(stringValue2.getBytes(StandardCharsets.UTF_8)).toString().replace("-", "").substring(0, 24);
                                    byte[] m9d4 = m9d(bArr3, "sends");
                                    int max = Math.max(m10v(documentValue, "ct"), m10v(m9d4, substring + ":" + num));
                                    try {
                                        if (max > 0) {
                                            bArr7 = m9d4;
                                            result = result3;
                                            bArr9 = documentValue;
                                            bArr8 = m9d2;
                                            if (i - max < 120) {
                                                throw new IllegalArgumentException("请稍后再发送留言");
                                            }
                                        } else {
                                            bArr7 = m9d4;
                                            bArr8 = m9d2;
                                            result = result3;
                                            bArr9 = documentValue;
                                        }
                                        sb = new StringBuilder();
                                        locale = Locale.ROOT;
                                    } catch (ArithmeticException | IllegalArgumentException e11) {
                                        e = e11;
                                        r8 = bArr;
                                        r15 = bArr3;
                                        r14 = 2;
                                        runtimeException = e;
                                        bArr6 = r8;
                                        i2 = r14;
                                        bArr5 = r15;
                                        Result result4222222222 = new Result(bArr6, bArr5);
                                        LocalResourceEngine.Result result5222222222 = result4222222222.player;
                                        Object[] objArr2222222222 = new Object[i2];
                                        objArr2222222222[0] = obj;
                                        objArr2222222222[1] = runtimeException.getMessage();
                                        result5222222222.add(str2, BsonLite.document(objArr2222222222));
                                        return result4222222222;
                                    }
                                    try {
                                        Object[] objArr8 = new Object[1];
                                        objArr8[0] = Integer.valueOf(i);
                                        sb.append(String.format(locale, "%08x", objArr8));
                                        sb.append(LocalResourceEngine.uuid().substring(0, 16));
                                        String sb2 = sb.toString();
                                        String stringValue3 = BsonLite.stringValue(bArr, "name");
                                        byte[] documentValue2 = BsonLite.documentValue(bArr, "headImage");
                                        if (documentValue2 == null) {
                                            Serializable[] serializableArr = new Serializable[3];
                                            serializableArr[0] = 1;
                                            serializableArr[1] = 1;
                                            try {
                                                serializableArr[2] = "";
                                                arrayValue = Arrays.asList(serializableArr);
                                            } catch (ArithmeticException | IllegalArgumentException e12) {
                                                e = e12;
                                                r8 = bArr;
                                                r15 = bArr3;
                                                r14 = 2;
                                            }
                                        } else {
                                            arrayValue = new BsonLite.ArrayValue(documentValue2);
                                        }
                                        Object[] objArr9 = new Object[22];
                                        try {
                                            objArr9[0] = "_id";
                                            objArr9[1] = new BsonLite.UuidValue(sb2);
                                            r14 = 2;
                                            try {
                                                objArr9[2] = "uid";
                                                objArr9[3] = substring;
                                                objArr9[4] = "uuid";
                                                objArr9[5] = substring;
                                                objArr9[6] = "name";
                                                if (stringValue3 == null) {
                                                    stringValue3 = stringValue2;
                                                }
                                                objArr9[7] = stringValue3;
                                                objArr9[8] = "comment";
                                                objArr9[9] = stringValue.trim();
                                                objArr9[10] = "like";
                                                objArr9[11] = 0;
                                                objArr9[12] = "icon";
                                                objArr9[13] = arrayValue;
                                                objArr9[14] = "headImage";
                                                objArr9[15] = arrayValue;
                                                objArr9[16] = "icon_style";
                                                objArr9[17] = "player";
                                                objArr9[18] = "icon_num";
                                                objArr9[19] = 0;
                                                objArr9[20] = "bk";
                                                objArr9[21] = 0;
                                                array2.add(BsonLite.document(objArr9));
                                                result.local = BsonLite.withProfileDocument(bArr3, "social", BsonLite.withProfileArray(m9d3, num, array2));
                                                result.local = BsonLite.withProfileDocument(result.local, "sends", BsonLite.withProfileInt(bArr7, substring + ":" + num, i));
                                                if (result.local.length > 8388608) {
                                                    throw new IllegalArgumentException("本地论坛存档已达保存上限");
                                                }
                                                byte[] withProfileInt = BsonLite.withProfileInt(bArr9, "ct", i);
                                                result.player.profile = BsonLite.withProfileDocument(bArr, "sd", BsonLite.withProfileDocument(m9d, "sm", BsonLite.withProfileDocument(bArr8, num, withProfileInt)));
                                                LocalResourceEngine.Result result10 = result.player;
                                                Object[] objArr10 = new Object[4];
                                                objArr10[0] = "id";
                                                objArr10[1] = Integer.valueOf(m10v3);
                                                try {
                                                    objArr10[2] = "c";
                                                    objArr10[3] = withProfileInt;
                                                    result10.add("syncOneSocialMsg", BsonLite.document(objArr10));
                                                    LocalResourceEngine.Result result11 = result.player;
                                                    Object[] objArr11 = new Object[4];
                                                    objArr11[0] = "id";
                                                    try {
                                                        objArr11[1] = Integer.valueOf(m10v3);
                                                        try {
                                                            objArr11[2] = "cms";
                                                            objArr11[3] = page(result.local, bArr2, num, null, false, 0);
                                                            result11.add("getSocialMsgCommentReply", BsonLite.document(objArr11));
                                                            return result;
                                                        } catch (ArithmeticException e13) {
                                                            e = e13;
                                                            r15 = bArr3;
                                                            documentValue = 2;
                                                            r8 = bArr;
                                                            r14 = documentValue;
                                                            runtimeException = e;
                                                            bArr6 = r8;
                                                            i2 = r14;
                                                            bArr5 = r15;
                                                            Result result42222222222 = new Result(bArr6, bArr5);
                                                            LocalResourceEngine.Result result52222222222 = result42222222222.player;
                                                            Object[] objArr22222222222 = new Object[i2];
                                                            objArr22222222222[0] = obj;
                                                            objArr22222222222[1] = runtimeException.getMessage();
                                                            result52222222222.add(str2, BsonLite.document(objArr22222222222));
                                                            return result42222222222;
                                                        } catch (IllegalArgumentException e14) {
                                                            e = e14;
                                                            r15 = bArr3;
                                                            documentValue = 2;
                                                            r8 = bArr;
                                                            r14 = documentValue;
                                                            runtimeException = e;
                                                            bArr6 = r8;
                                                            i2 = r14;
                                                            bArr5 = r15;
                                                            Result result422222222222 = new Result(bArr6, bArr5);
                                                            LocalResourceEngine.Result result522222222222 = result422222222222.player;
                                                            Object[] objArr222222222222 = new Object[i2];
                                                            objArr222222222222[0] = obj;
                                                            objArr222222222222[1] = runtimeException.getMessage();
                                                            result522222222222.add(str2, BsonLite.document(objArr222222222222));
                                                            return result422222222222;
                                                        }
                                                    } catch (ArithmeticException e15) {
                                                        e = e15;
                                                        r15 = bArr3;
                                                        r8 = bArr;
                                                        r15 = r15;
                                                        r14 = 2;
                                                        runtimeException = e;
                                                        bArr6 = r8;
                                                        i2 = r14;
                                                        bArr5 = r15;
                                                        Result result4222222222222 = new Result(bArr6, bArr5);
                                                        LocalResourceEngine.Result result5222222222222 = result4222222222222.player;
                                                        Object[] objArr2222222222222 = new Object[i2];
                                                        objArr2222222222222[0] = obj;
                                                        objArr2222222222222[1] = runtimeException.getMessage();
                                                        result5222222222222.add(str2, BsonLite.document(objArr2222222222222));
                                                        return result4222222222222;
                                                    } catch (IllegalArgumentException e16) {
                                                        e = e16;
                                                        r15 = bArr3;
                                                        r8 = bArr;
                                                        r15 = r15;
                                                        r14 = 2;
                                                        runtimeException = e;
                                                        bArr6 = r8;
                                                        i2 = r14;
                                                        bArr5 = r15;
                                                        Result result42222222222222 = new Result(bArr6, bArr5);
                                                        LocalResourceEngine.Result result52222222222222 = result42222222222222.player;
                                                        Object[] objArr22222222222222 = new Object[i2];
                                                        objArr22222222222222[0] = obj;
                                                        objArr22222222222222[1] = runtimeException.getMessage();
                                                        result52222222222222.add(str2, BsonLite.document(objArr22222222222222));
                                                        return result42222222222222;
                                                    }
                                                } catch (ArithmeticException e17) {
                                                    e = e17;
                                                    r15 = bArr3;
                                                    r8 = bArr;
                                                    r14 = 2;
                                                    runtimeException = e;
                                                    bArr6 = r8;
                                                    i2 = r14;
                                                    bArr5 = r15;
                                                    Result result422222222222222 = new Result(bArr6, bArr5);
                                                    LocalResourceEngine.Result result522222222222222 = result422222222222222.player;
                                                    Object[] objArr222222222222222 = new Object[i2];
                                                    objArr222222222222222[0] = obj;
                                                    objArr222222222222222[1] = runtimeException.getMessage();
                                                    result522222222222222.add(str2, BsonLite.document(objArr222222222222222));
                                                    return result422222222222222;
                                                } catch (IllegalArgumentException e18) {
                                                    e = e18;
                                                    r15 = bArr3;
                                                    r8 = bArr;
                                                    r14 = 2;
                                                    runtimeException = e;
                                                    bArr6 = r8;
                                                    i2 = r14;
                                                    bArr5 = r15;
                                                    Result result4222222222222222 = new Result(bArr6, bArr5);
                                                    LocalResourceEngine.Result result5222222222222222 = result4222222222222222.player;
                                                    Object[] objArr2222222222222222 = new Object[i2];
                                                    objArr2222222222222222[0] = obj;
                                                    objArr2222222222222222[1] = runtimeException.getMessage();
                                                    result5222222222222222.add(str2, BsonLite.document(objArr2222222222222222));
                                                    return result4222222222222222;
                                                }
                                            } catch (ArithmeticException e19) {
                                                e = e19;
                                                r15 = bArr3;
                                                r8 = bArr;
                                                runtimeException = e;
                                                bArr6 = r8;
                                                i2 = r14;
                                                bArr5 = r15;
                                                Result result42222222222222222 = new Result(bArr6, bArr5);
                                                LocalResourceEngine.Result result52222222222222222 = result42222222222222222.player;
                                                Object[] objArr22222222222222222 = new Object[i2];
                                                objArr22222222222222222[0] = obj;
                                                objArr22222222222222222[1] = runtimeException.getMessage();
                                                result52222222222222222.add(str2, BsonLite.document(objArr22222222222222222));
                                                return result42222222222222222;
                                            } catch (IllegalArgumentException e20) {
                                                e = e20;
                                                r15 = bArr3;
                                                r8 = bArr;
                                                runtimeException = e;
                                                bArr6 = r8;
                                                i2 = r14;
                                                bArr5 = r15;
                                                Result result422222222222222222 = new Result(bArr6, bArr5);
                                                LocalResourceEngine.Result result522222222222222222 = result422222222222222222.player;
                                                Object[] objArr222222222222222222 = new Object[i2];
                                                objArr222222222222222222[0] = obj;
                                                objArr222222222222222222[1] = runtimeException.getMessage();
                                                result522222222222222222.add(str2, BsonLite.document(objArr222222222222222222));
                                                return result422222222222222222;
                                            }
                                        } catch (ArithmeticException e21) {
                                            e = e21;
                                            r15 = bArr3;
                                            r8 = bArr;
                                            r15 = r15;
                                            r14 = 2;
                                            runtimeException = e;
                                            bArr6 = r8;
                                            i2 = r14;
                                            bArr5 = r15;
                                            Result result4222222222222222222 = new Result(bArr6, bArr5);
                                            LocalResourceEngine.Result result5222222222222222222 = result4222222222222222222.player;
                                            Object[] objArr2222222222222222222 = new Object[i2];
                                            objArr2222222222222222222[0] = obj;
                                            objArr2222222222222222222[1] = runtimeException.getMessage();
                                            result5222222222222222222.add(str2, BsonLite.document(objArr2222222222222222222));
                                            return result4222222222222222222;
                                        } catch (IllegalArgumentException e22) {
                                            e = e22;
                                            r15 = bArr3;
                                            r8 = bArr;
                                            r15 = r15;
                                            r14 = 2;
                                            runtimeException = e;
                                            bArr6 = r8;
                                            i2 = r14;
                                            bArr5 = r15;
                                            Result result42222222222222222222 = new Result(bArr6, bArr5);
                                            LocalResourceEngine.Result result52222222222222222222 = result42222222222222222222.player;
                                            Object[] objArr22222222222222222222 = new Object[i2];
                                            objArr22222222222222222222[0] = obj;
                                            objArr22222222222222222222[1] = runtimeException.getMessage();
                                            result52222222222222222222.add(str2, BsonLite.document(objArr22222222222222222222));
                                            return result42222222222222222222;
                                        }
                                    } catch (ArithmeticException e23) {
                                        e = e23;
                                        r15 = bArr3;
                                        r8 = bArr;
                                        r15 = r15;
                                        r14 = 2;
                                        runtimeException = e;
                                        bArr6 = r8;
                                        i2 = r14;
                                        bArr5 = r15;
                                        Result result422222222222222222222 = new Result(bArr6, bArr5);
                                        LocalResourceEngine.Result result522222222222222222222 = result422222222222222222222.player;
                                        Object[] objArr222222222222222222222 = new Object[i2];
                                        objArr222222222222222222222[0] = obj;
                                        objArr222222222222222222222[1] = runtimeException.getMessage();
                                        result522222222222222222222.add(str2, BsonLite.document(objArr222222222222222222222));
                                        return result422222222222222222222;
                                    } catch (IllegalArgumentException e24) {
                                        e = e24;
                                        r15 = bArr3;
                                        r8 = bArr;
                                        r15 = r15;
                                        r14 = 2;
                                        runtimeException = e;
                                        bArr6 = r8;
                                        i2 = r14;
                                        bArr5 = r15;
                                        Result result4222222222222222222222 = new Result(bArr6, bArr5);
                                        LocalResourceEngine.Result result5222222222222222222222 = result4222222222222222222222.player;
                                        Object[] objArr2222222222222222222222 = new Object[i2];
                                        objArr2222222222222222222222[0] = obj;
                                        objArr2222222222222222222222[1] = runtimeException.getMessage();
                                        result5222222222222222222222.add(str2, BsonLite.document(objArr2222222222222222222222));
                                        return result4222222222222222222222;
                                    }
                                } catch (ArithmeticException e25) {
                                    e = e25;
                                } catch (IllegalArgumentException e26) {
                                    e = e26;
                                }
                            }
                        }
                        throw new IllegalArgumentException("留言内容为空或过长");
                    } catch (ArithmeticException e27) {
                        e = e27;
                    } catch (IllegalArgumentException e28) {
                        e = e28;
                    }
                } catch (ArithmeticException | IllegalArgumentException e29) {
                    e = e29;
                    r15 = bArr3;
                }
            } else {
                r15 = bArr3;
                try {
                    equals = "likeSocialMsgComment".equals(str);
                } catch (ArithmeticException e30) {
                    e = e30;
                    r8 = bArr;
                    r15 = r15;
                    r14 = 2;
                    runtimeException = e;
                    bArr6 = r8;
                    i2 = r14;
                    bArr5 = r15;
                    Result result42222222222222222222222 = new Result(bArr6, bArr5);
                    LocalResourceEngine.Result result52222222222222222222222 = result42222222222222222222222.player;
                    Object[] objArr22222222222222222222222 = new Object[i2];
                    objArr22222222222222222222222[0] = obj;
                    objArr22222222222222222222222[1] = runtimeException.getMessage();
                    result52222222222222222222222.add(str2, BsonLite.document(objArr22222222222222222222222));
                    return result42222222222222222222222;
                } catch (IllegalArgumentException e31) {
                    e = e31;
                    r8 = bArr;
                    r15 = r15;
                    r14 = 2;
                    runtimeException = e;
                    bArr6 = r8;
                    i2 = r14;
                    bArr5 = r15;
                    Result result422222222222222222222222 = new Result(bArr6, bArr5);
                    LocalResourceEngine.Result result522222222222222222222222 = result422222222222222222222222.player;
                    Object[] objArr222222222222222222222222 = new Object[i2];
                    objArr222222222222222222222222[0] = obj;
                    objArr222222222222222222222222[1] = runtimeException.getMessage();
                    result522222222222222222222222.add(str2, BsonLite.document(objArr222222222222222222222222));
                    return result422222222222222222222222;
                }
                try {
                    if (equals != true) {
                        r8 = bArr;
                        try {
                            contains = str.contains("Hot");
                            contains2 = str.contains("Random");
                            contains3 = str.contains("FromObjectId");
                            if (contains) {
                                str3 = contains3 ? "getSocialMsgMoreHotCommentReply" : "getSocialMsgHotCommentReply";
                            } else if (contains2) {
                                str3 = contains3 ? "getSocialMsgMoreRandomCommentReply" : "getSocialMsgRandomCommentReply";
                            } else {
                                str3 = contains3 ? "getSocialMsgMoreCommentReply" : "getSocialMsgCommentReply";
                            }
                            result2 = result3.player;
                            objArr = new Object[4];
                            objArr[0] = "id";
                            objArr[1] = Integer.valueOf(m10v3);
                        } catch (ArithmeticException e32) {
                            e = e32;
                            r8 = r8;
                            r15 = r15;
                            r14 = 2;
                            runtimeException = e;
                            bArr6 = r8;
                            i2 = r14;
                            bArr5 = r15;
                            Result result4222222222222222222222222 = new Result(bArr6, bArr5);
                            LocalResourceEngine.Result result5222222222222222222222222 = result4222222222222222222222222.player;
                            Object[] objArr2222222222222222222222222 = new Object[i2];
                            objArr2222222222222222222222222[0] = obj;
                            objArr2222222222222222222222222[1] = runtimeException.getMessage();
                            result5222222222222222222222222.add(str2, BsonLite.document(objArr2222222222222222222222222));
                            return result4222222222222222222222222;
                        } catch (IllegalArgumentException e33) {
                            e = e33;
                            r8 = r8;
                            r15 = r15;
                            r14 = 2;
                            runtimeException = e;
                            bArr6 = r8;
                            i2 = r14;
                            bArr5 = r15;
                            Result result42222222222222222222222222 = new Result(bArr6, bArr5);
                            LocalResourceEngine.Result result52222222222222222222222222 = result42222222222222222222222222.player;
                            Object[] objArr22222222222222222222222222 = new Object[i2];
                            objArr22222222222222222222222222[0] = obj;
                            objArr22222222222222222222222222[1] = runtimeException.getMessage();
                            result52222222222222222222222222.add(str2, BsonLite.document(objArr22222222222222222222222222));
                            return result42222222222222222222222222;
                        }
                        try {
                            objArr[2] = contains ? "hcms" : contains2 ? "rcms" : "cms";
                            objArr[3] = page(bArr3, bArr2, num, (!contains3 || contains2) ? null : BsonLite.uuidValue(bArr4, "oid"), contains, (contains2 && contains3) ? m10v(bArr4, "c") : 0);
                            result2.add(str3, BsonLite.document(objArr));
                            return result3;
                        } catch (ArithmeticException e34) {
                            e = e34;
                            r14 = 2;
                            runtimeException = e;
                            bArr6 = r8;
                            i2 = r14;
                            bArr5 = r15;
                            Result result422222222222222222222222222 = new Result(bArr6, bArr5);
                            LocalResourceEngine.Result result522222222222222222222222222 = result422222222222222222222222222.player;
                            Object[] objArr222222222222222222222222222 = new Object[i2];
                            objArr222222222222222222222222222[0] = obj;
                            objArr222222222222222222222222222[1] = runtimeException.getMessage();
                            result522222222222222222222222222.add(str2, BsonLite.document(objArr222222222222222222222222222));
                            return result422222222222222222222222222;
                        } catch (IllegalArgumentException e35) {
                            e = e35;
                            r14 = 2;
                            runtimeException = e;
                            bArr6 = r8;
                            i2 = r14;
                            bArr5 = r15;
                            Result result4222222222222222222222222222 = new Result(bArr6, bArr5);
                            LocalResourceEngine.Result result5222222222222222222222222222 = result4222222222222222222222222222.player;
                            Object[] objArr2222222222222222222222222222 = new Object[i2];
                            objArr2222222222222222222222222222[0] = obj;
                            objArr2222222222222222222222222222[1] = runtimeException.getMessage();
                            result5222222222222222222222222222.add(str2, BsonLite.document(objArr2222222222222222222222222222));
                            return result4222222222222222222222222222;
                        }
                    }
                    try {
                        String uuidValue = BsonLite.uuidValue(bArr4, "c");
                        Iterator<byte[]> it4 = comments(r15, bArr2, num).iterator();
                        boolean z = false;
                        while (it4.hasNext()) {
                            if (Objects.equals(uuidValue, BsonLite.uuidValue(it4.next(), "_id"))) {
                                z = true;
                            }
                        }
                        try {
                            if (uuidValue == null || !z) {
                                throw new IllegalArgumentException("留言不存在");
                            }
                            ArrayList arrayList = new ArrayList();
                            byte[] m9d5 = m9d(documentValue, "l");
                            Iterator<String> it5 = BsonLite.keys(m9d5).iterator();
                            boolean z2 = false;
                            while (it5.hasNext()) {
                                Iterator<String> it6 = it5;
                                String uuidValue2 = BsonLite.uuidValue(m9d5, it5.next());
                                if (uuidValue2 != null) {
                                    bArr12 = m9d5;
                                    arrayList.add(new BsonLite.UuidValue(uuidValue2));
                                    z2 |= uuidValue.equals(uuidValue2);
                                } else {
                                    bArr12 = m9d5;
                                }
                                it5 = it6;
                                m9d5 = bArr12;
                            }
                            if (!z2) {
                                arrayList.add(new BsonLite.UuidValue(uuidValue));
                                String stringValue4 = BsonLite.stringValue(bArr, "account");
                                if (stringValue4 == null) {
                                    throw new IllegalArgumentException("账号资料不完整");
                                }
                                String replace = UUID.nameUUIDFromBytes(stringValue4.getBytes(StandardCharsets.UTF_8)).toString().replace("-", "");
                                byte[] m9d6 = m9d(r15, "voters");
                                byte[] m9d7 = m9d(m9d6, uuidValue);
                                try {
                                    if (Boolean.TRUE.equals(BsonLite.boolValue(m9d7, replace))) {
                                        bArr11 = m9d;
                                        str4 = "sd";
                                    } else {
                                        byte[] m9d8 = m9d(r15, "likes");
                                        str4 = "sd";
                                        bArr11 = m9d;
                                        result3.local = BsonLite.withProfileDocument(r15, "likes", BsonLite.withProfileInt(m9d8, uuidValue, Math.addExact(m10v(m9d8, uuidValue), 1)));
                                        result3.local = BsonLite.withProfileDocument(result3.local, "voters", BsonLite.withProfileDocument(m9d6, uuidValue, BsonLite.withProfileBool(m9d7, replace, true)));
                                    }
                                    byte[] withProfileArray = BsonLite.withProfileArray(documentValue, "l", arrayList);
                                    result3.player.profile = BsonLite.withProfileDocument(bArr, str4, BsonLite.withProfileDocument(bArr11, "sm", BsonLite.withProfileDocument(m9d2, num, withProfileArray)));
                                    LocalResourceEngine.Result result12 = result3.player;
                                    Object[] objArr12 = new Object[4];
                                    objArr12[0] = "id";
                                    objArr12[1] = Integer.valueOf(m10v3);
                                    objArr12[2] = "c";
                                    objArr12[3] = withProfileArray;
                                    result12.add("syncOneSocialMsg", BsonLite.document(objArr12));
                                } catch (ArithmeticException e36) {
                                    e = e36;
                                    bArr10 = bArr;
                                    runtimeException = e;
                                    i2 = 2;
                                    bArr6 = bArr10;
                                    bArr5 = r15;
                                    Result result42222222222222222222222222222 = new Result(bArr6, bArr5);
                                    LocalResourceEngine.Result result52222222222222222222222222222 = result42222222222222222222222222222.player;
                                    Object[] objArr22222222222222222222222222222 = new Object[i2];
                                    objArr22222222222222222222222222222[0] = obj;
                                    objArr22222222222222222222222222222[1] = runtimeException.getMessage();
                                    result52222222222222222222222222222.add(str2, BsonLite.document(objArr22222222222222222222222222222));
                                    return result42222222222222222222222222222;
                                } catch (IllegalArgumentException e37) {
                                    e = e37;
                                    bArr10 = bArr;
                                    runtimeException = e;
                                    i2 = 2;
                                    bArr6 = bArr10;
                                    bArr5 = r15;
                                    Result result422222222222222222222222222222 = new Result(bArr6, bArr5);
                                    LocalResourceEngine.Result result522222222222222222222222222222 = result422222222222222222222222222222.player;
                                    Object[] objArr222222222222222222222222222222 = new Object[i2];
                                    objArr222222222222222222222222222222[0] = obj;
                                    objArr222222222222222222222222222222[1] = runtimeException.getMessage();
                                    result522222222222222222222222222222.add(str2, BsonLite.document(objArr222222222222222222222222222222));
                                    return result422222222222222222222222222222;
                                }
                            }
                            return result3;
                        } catch (ArithmeticException e38) {
                            e = e38;
                            bArr10 = m9d;
                        } catch (IllegalArgumentException e39) {
                            e = e39;
                            bArr10 = m9d;
                        }
                    } catch (ArithmeticException | IllegalArgumentException e40) {
                        e = e40;
                        bArr10 = bArr;
                    }
                } catch (ArithmeticException e41) {
                    e = e41;
                    runtimeException = e;
                    i2 = equals;
                    bArr6 = m9d;
                    bArr5 = r15;
                    Result result4222222222222222222222222222222 = new Result(bArr6, bArr5);
                    LocalResourceEngine.Result result5222222222222222222222222222222 = result4222222222222222222222222222222.player;
                    Object[] objArr2222222222222222222222222222222 = new Object[i2];
                    objArr2222222222222222222222222222222[0] = obj;
                    objArr2222222222222222222222222222222[1] = runtimeException.getMessage();
                    result5222222222222222222222222222222.add(str2, BsonLite.document(objArr2222222222222222222222222222222));
                    return result4222222222222222222222222222222;
                } catch (IllegalArgumentException e42) {
                    e = e42;
                    runtimeException = e;
                    i2 = equals;
                    bArr6 = m9d;
                    bArr5 = r15;
                    Result result42222222222222222222222222222222 = new Result(bArr6, bArr5);
                    LocalResourceEngine.Result result52222222222222222222222222222222 = result42222222222222222222222222222222.player;
                    Object[] objArr22222222222222222222222222222222 = new Object[i2];
                    objArr22222222222222222222222222222222[0] = obj;
                    objArr22222222222222222222222222222222[1] = runtimeException.getMessage();
                    result52222222222222222222222222222222.add(str2, BsonLite.document(objArr22222222222222222222222222222222));
                    return result42222222222222222222222222222222;
                }
            }
        } catch (ArithmeticException e43) {
            e = e43;
        } catch (IllegalArgumentException e44) {
            e = e44;
        }
    }

    private static boolean sameQuery(byte[] bArr, byte[] bArr2, boolean z) {
        if (z) {
            bArr = BsonLite.withoutProfileKey(bArr, "uid");
            bArr2 = BsonLite.withoutProfileKey(bArr2, "uid");
        }
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet(BsonLite.keys(bArr));
        if (!linkedHashSet.equals(new LinkedHashSet(BsonLite.keys(bArr2)))) {
            return false;
        }
        for (String str : linkedHashSet) {
            byte[] documentValue = BsonLite.documentValue(bArr, str);
            byte[] documentValue2 = BsonLite.documentValue(bArr2, str);
            if (documentValue != null || documentValue2 != null) {
                if (documentValue == null || documentValue2 == null || !sameQuery(documentValue, documentValue2, false)) {
                    return false;
                }
            } else {
                byte[] bArr3 = bArr;
                byte[] bArr4 = bArr2;
                for (String str2 : linkedHashSet) {
                    if (!str2.equals(str)) {
                        bArr3 = BsonLite.withoutProfileKey(bArr3, str2);
                        bArr4 = BsonLite.withoutProfileKey(bArr4, str2);
                    }
                }
                if (!Arrays.equals(bArr3, bArr4)) {
                    return false;
                }
            }
        }
        return true;
    }

    private static List<byte[]> comments(byte[] bArr, byte[] bArr2, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = Arrays.asList(bArr2, bArr).iterator();
        while (it.hasNext()) {
            for (byte[] bArr3 : LocalResourceEngine.array(m9d(m9d((byte[]) it.next(), "social"), str))) {
                String uuidValue = BsonLite.uuidValue(bArr3, "_id");
                if (uuidValue != null) {
                    linkedHashMap.put(uuidValue, bArr3);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(BsonLite.withProfileInt((byte[]) entry.getValue(), "like", Math.addExact(m10v((byte[]) entry.getValue(), "like"), m10v(m9d(bArr, "likes"), (String) entry.getKey()))));
        }
        return arrayList;
    }

    private static List<byte[]> page(byte[] bArr, byte[] bArr2, String str, String str2, final boolean z, int i) {
        List<byte[]> comments = comments(bArr, bArr2, str);
        comments.sort(new Comparator() { // from class: com.project7.localmanager.LocalCommunityEngine$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return LocalCommunityEngine.lambda$page$0(z, (byte[]) obj, (byte[]) obj2);
            }
        });
        int i2 = 0;
        int max = Math.max(0, Math.min(i, comments.size()));
        if (str2 != null) {
            max = comments.size();
            while (true) {
                if (i2 >= comments.size()) {
                    break;
                }
                if (str2.equals(BsonLite.uuidValue(comments.get(i2), "_id"))) {
                    max = i2 + 1;
                    break;
                }
                i2++;
            }
        }
        return new ArrayList(comments.subList(max, Math.min(comments.size(), max + 20)));
    }

    static /* synthetic */ int lambda$page$0(boolean z, byte[] bArr, byte[] bArr2) {
        int compare = z ? Integer.compare(m10v(bArr2, "like"), m10v(bArr, "like")) : 0;
        return compare != 0 ? compare : BsonLite.uuidValue(bArr2, "_id").compareTo(BsonLite.uuidValue(bArr, "_id"));
    }
}
