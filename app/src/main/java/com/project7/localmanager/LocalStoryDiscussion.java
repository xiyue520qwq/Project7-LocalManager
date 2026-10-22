package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalStoryEngine;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
final class LocalStoryDiscussion {
    static final List<String> METHODS = Arrays.asList("requestStoryHttpInfo", "requestSelfStoryHttpInfo", "requestCreateStoryMsg", "requestUpdateStoryMsg", "requestCreateStoryComments", "requestLikeStoryMsg", "requestLikeStoryCmt", "reportStoryEditor");

    LocalStoryDiscussion() {
    }

    static boolean handles(String str) {
        return METHODS.contains(str);
    }

    /* renamed from: d */
    static byte[] m72d(byte[] bArr, String str) {
        return LocalResourceEngine.doc(bArr, str);
    }

    /* renamed from: v */
    static int m74v(byte[] bArr, String str) {
        return LocalResourceEngine.value(bArr, str);
    }

    /* renamed from: s */
    static String m73s(byte[] bArr, String str) {
        return BsonLite.stringValue(bArr, str);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:(11:(3:194|195|(1:197)(7:198|199|(11:201|(3:253|254|(9:256|204|(1:206)(1:252)|207|(2:208|(4:210|211|(2:243|244)(2:217|(2:221|222))|241)(2:249|250))|(4:224|225|226|227)(1:239)|228|229|230))|203|204|(0)(0)|207|(3:208|(0)(0)|241)|(0)(0)|228|229|230)(14:260|(3:265|(3:267|(1:273)(1:271)|272)|274)|275|(1:277)(1:306)|278|(1:280)(1:305)|281|(1:304)(1:284)|(1:303)(1:288)|289|(3:291|(1:293)(1:295)|294)|(3:297|(1:299)|300)(1:302)|301|274)|151|(1:153)(1:165)|154|164))(1:106)|(3:132|133|(7:(3:141|(1:143)(1:145)|144)|(7:166|167|168|169|170|(1:172)(1:174)|173)(1:149)|150|151|(0)(0)|154|164)(2:138|139))|169|170|(0)(0)|173|150|151|(0)(0)|154|164)|110|111|(1:113)(1:190)|114|(2:115|(6:117|118|119|120|121|(1:180)(2:125|126))(2:187|188))|127|128|176|133|(0)|(0)|(1:147)|166|167|168) */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x058f, code lost:
    
        r10.player.add(r1, com.project7.localmanager.BsonLite.document(r26, false, "i", com.project7.localmanager.BsonLite.document("rsn", 2)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0572, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0573, code lost:
    
        r5 = r25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0465 A[Catch: ArithmeticException | IllegalArgumentException -> 0x03ea, IllegalArgumentException -> 0x03ec, TryCatch #17 {ArithmeticException | IllegalArgumentException -> 0x03ea, blocks: (B:121:0x03c6, B:123:0x03cc, B:126:0x03dc, B:136:0x041c, B:138:0x0428, B:141:0x0465, B:144:0x0475, B:147:0x0480), top: B:120:0x03c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0562  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0564  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0507 A[Catch: ArithmeticException -> 0x056c, IllegalArgumentException -> 0x056e, TryCatch #19 {ArithmeticException -> 0x056c, IllegalArgumentException -> 0x056e, blocks: (B:150:0x052e, B:151:0x055b, B:154:0x0566, B:170:0x04dc, B:172:0x0507, B:173:0x0510, B:174:0x050a), top: B:169:0x04dc }] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x050a A[Catch: ArithmeticException -> 0x056c, IllegalArgumentException -> 0x056e, TryCatch #19 {ArithmeticException -> 0x056c, IllegalArgumentException -> 0x056e, blocks: (B:150:0x052e, B:151:0x055b, B:154:0x0566, B:170:0x04dc, B:172:0x0507, B:173:0x0510, B:174:0x050a), top: B:169:0x04dc }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x016b A[Catch: ArithmeticException -> 0x015c, IllegalArgumentException -> 0x015e, TRY_LEAVE, TryCatch #13 {ArithmeticException -> 0x015c, IllegalArgumentException -> 0x015e, blocks: (B:211:0x00f6, B:213:0x010e, B:215:0x0118, B:217:0x0124, B:219:0x0138, B:222:0x0144, B:224:0x016b), top: B:210:0x00f6 }] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0163 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:252:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void apply(LocalStoryEngine.Result result, String str, String str2, byte[] bArr, int i) {
        String str3;
        byte[] bArr2;
        String str4;
        LocalStoryEngine.Result result2;
        String str5;
        LocalStoryEngine.Result result3;
        Object obj;
        byte[] bArr3;
        String str6;
        LocalStoryEngine.Result result4;
        RuntimeException runtimeException;
        LocalStoryEngine.Result result5;
        LocalStoryEngine.Result result6;
        byte[] intDocument;
        boolean z;
        Iterator<Map.Entry<String, byte[]>> it;
        byte[] bArr4;
        String str7;
        byte[] bArr5;
        String str8;
        LocalStoryEngine.Result result7;
        String str9;
        String str10;
        String str11;
        String text;
        byte[] bArr6;
        String str12;
        String str13;
        boolean equals;
        boolean z2;
        byte[] entry;
        Map.Entry<String, byte[]> next;
        Iterator<Map.Entry<String, byte[]>> it2;
        LocalStoryEngine.Result result8 = result;
        String str14 = str;
        byte[] bArr7 = result8.state;
        byte[] m72d = m72d(bArr7, "messages");
        byte[] m72d2 = m72d(bArr7, "comments");
        String uuidValue = BsonLite.uuidValue(bArr, "oi");
        byte[] work = work(bArr7, uuidValue);
        String str15 = "owner";
        String str16 = uuidValue;
        if ("requestStoryHttpInfo".equals(str2)) {
            str3 = str14;
            bArr2 = m72d2;
            str4 = str16;
            result2 = result8;
        } else if ("requestSelfStoryHttpInfo".equals(str2)) {
            str3 = str14;
            bArr2 = m72d2;
            str4 = str16;
            result2 = result8;
        } else {
            String str17 = str2.startsWith("request") ? "reply" + str2.substring(7) : null;
            try {
                String str18 = str17;
                obj = "rs";
                String str19 = "likes";
                try {
                    try {
                        if ("requestCreateStoryMsg".equals(str2)) {
                            result3 = result8;
                            str6 = str18;
                            str9 = str14;
                            str10 = "likes";
                        } else {
                            try {
                                if (!"requestUpdateStoryMsg".equals(str2)) {
                                    try {
                                        if ("requestCreateStoryComments".equals(str2)) {
                                            String m73s = m73s(bArr, "msg_id");
                                            byte[] entry2 = entry(m72d, m73s);
                                            if (entry2 != null) {
                                                try {
                                                    if (work(bArr7, m73s(entry2, "oi")) != null) {
                                                        z = true;
                                                        require(z, "心得不存在或已删除");
                                                        String text2 = text(bArr, "cmts", 75);
                                                        require(BsonLite.keys(m72d2).size() >= 20000, "本地回复数量已达上限");
                                                        it = BsonLite.documentEntries(m72d2).entrySet().iterator();
                                                        bArr4 = m72d2;
                                                        while (true) {
                                                            if (it.hasNext()) {
                                                                str7 = str19;
                                                                bArr5 = bArr4;
                                                                str8 = null;
                                                                break;
                                                            }
                                                            try {
                                                                Map.Entry<String, byte[]> next2 = it.next();
                                                                byte[] value = next2.getValue();
                                                                Iterator<Map.Entry<String, byte[]>> it3 = it;
                                                                if (str14.equals(m73s(value, "owner")) && m73s.equals(m73s(value, "msg_id")) && text2.equals(m73s(value, "comment"))) {
                                                                    str7 = str19;
                                                                    bArr5 = bArr4;
                                                                    long j = i;
                                                                    if (j - m74v(value, "created_time") >= 0 && j - m74v(value, "created_time") < 10) {
                                                                        str8 = next2.getKey();
                                                                        break;
                                                                    }
                                                                } else {
                                                                    str7 = str19;
                                                                    bArr5 = bArr4;
                                                                }
                                                                result8 = result;
                                                                str14 = str;
                                                                it = it3;
                                                                bArr4 = bArr5;
                                                                str19 = str7;
                                                            } catch (ArithmeticException e) {
                                                                e = e;
                                                                result5 = result;
                                                                runtimeException = e;
                                                                result6 = result5;
                                                                bArr3 = bArr7;
                                                                str6 = str18;
                                                                result4 = result6;
                                                                result4.state = bArr3;
                                                                result4.player.replies.clear();
                                                                if (str6 != null) {
                                                                }
                                                                result4.player.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                                                                return;
                                                            } catch (IllegalArgumentException e2) {
                                                                e = e2;
                                                                result5 = result;
                                                                runtimeException = e;
                                                                result6 = result5;
                                                                bArr3 = bArr7;
                                                                str6 = str18;
                                                                result4 = result6;
                                                                result4.state = bArr3;
                                                                result4.player.replies.clear();
                                                                if (str6 != null) {
                                                                }
                                                                result4.player.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                                                                return;
                                                            }
                                                        }
                                                        if (str8 != null) {
                                                            String uuid = LocalResourceEngine.uuid();
                                                            Object[] objArr = new Object[16];
                                                            objArr[0] = "comment_id";
                                                            objArr[1] = uuid;
                                                            objArr[2] = "msg_id";
                                                            objArr[3] = m73s;
                                                            objArr[4] = "owner";
                                                            objArr[5] = str;
                                                            objArr[6] = "comment";
                                                            objArr[7] = text2;
                                                            objArr[8] = "created_time";
                                                            objArr[9] = Integer.valueOf(i);
                                                            objArr[10] = "seq";
                                                            objArr[11] = Integer.valueOf(Math.addExact(m74v(bArr7, "sequence"), 1));
                                                            objArr[12] = "user_info";
                                                            result7 = result;
                                                            try {
                                                                objArr[13] = user(result7.player.profile, str);
                                                                objArr[14] = str7;
                                                                objArr[15] = BsonLite.EMPTY_DOCUMENT;
                                                                byte[] document = BsonLite.document(objArr);
                                                                result7.state = BsonLite.withProfileDocument(bArr7, "comments", BsonLite.withProfileDocument(bArr5, uuid, document));
                                                                result7.state = BsonLite.withProfileInt(result7.state, "sequence", m74v(document, "seq"));
                                                                str8 = uuid;
                                                                result7 = result7;
                                                            } catch (ArithmeticException e3) {
                                                                e = e3;
                                                                result5 = result7;
                                                                runtimeException = e;
                                                                result6 = result5;
                                                                bArr3 = bArr7;
                                                                str6 = str18;
                                                                result4 = result6;
                                                                result4.state = bArr3;
                                                                result4.player.replies.clear();
                                                                if (str6 != null) {
                                                                }
                                                                result4.player.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                                                                return;
                                                            } catch (IllegalArgumentException e4) {
                                                                e = e4;
                                                                result5 = result7;
                                                                runtimeException = e;
                                                                result6 = result5;
                                                                bArr3 = bArr7;
                                                                str6 = str18;
                                                                result4 = result6;
                                                                result4.state = bArr3;
                                                                result4.player.replies.clear();
                                                                if (str6 != null) {
                                                                }
                                                                result4.player.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                                                                return;
                                                            }
                                                        } else {
                                                            result7 = result;
                                                        }
                                                        result7.player.add(str18, BsonLite.document(obj, true, "i", BsonLite.document("msg_id", m73s, "cm_id", str8)));
                                                        bArr3 = bArr7;
                                                        str6 = str18;
                                                        result3 = result7;
                                                    }
                                                } catch (ArithmeticException | IllegalArgumentException e5) {
                                                    runtimeException = e5;
                                                    result6 = result8;
                                                    bArr3 = bArr7;
                                                    str6 = str18;
                                                    result4 = result6;
                                                    result4.state = bArr3;
                                                    result4.player.replies.clear();
                                                    if (str6 != null) {
                                                    }
                                                    result4.player.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                                                    return;
                                                }
                                            }
                                            z = false;
                                            require(z, "心得不存在或已删除");
                                            String text22 = text(bArr, "cmts", 75);
                                            require(BsonLite.keys(m72d2).size() >= 20000, "本地回复数量已达上限");
                                            it = BsonLite.documentEntries(m72d2).entrySet().iterator();
                                            bArr4 = m72d2;
                                            while (true) {
                                                if (it.hasNext()) {
                                                }
                                                result8 = result;
                                                str14 = str;
                                                it = it3;
                                                bArr4 = bArr5;
                                                str19 = str7;
                                            }
                                            if (str8 != null) {
                                            }
                                            result7.player.add(str18, BsonLite.document(obj, true, "i", BsonLite.document("msg_id", m73s, "cm_id", str8)));
                                            bArr3 = bArr7;
                                            str6 = str18;
                                            result3 = result7;
                                        } else {
                                            byte[] bArr8 = m72d2;
                                            LocalStoryEngine.Result result9 = result8;
                                            if (!"requestLikeStoryMsg".equals(str2) && !"requestLikeStoryCmt".equals(str2)) {
                                                if ("reportStoryEditor".equals(str2)) {
                                                    byte[] m72d3 = m72d(bArr7, "reports");
                                                    byte[] m72d4 = m72d(bArr, "msg");
                                                    require(BsonLite.keys(m72d3).size() < 1000 && m72d4.length <= 16384, "本地反馈过多或内容过大");
                                                    result9.state = BsonLite.withProfileDocument(bArr7, "reports", BsonLite.withProfileDocument(m72d3, LocalResourceEngine.uuid(), BsonLite.document("owner", str14, "type", Integer.valueOf(m74v(bArr, "type")), "msg", m72d4, "created_time", Integer.valueOf(i))));
                                                    bArr3 = bArr7;
                                                    str6 = str18;
                                                    result3 = result9;
                                                }
                                                bArr3 = bArr7;
                                                str6 = str18;
                                                result3 = result9;
                                            }
                                            boolean equals2 = "requestLikeStoryCmt".equals(str2);
                                            String m73s2 = m73s(bArr, equals2 ? "cmt_id" : "msg_id");
                                            if (!equals2) {
                                                bArr8 = m72d;
                                            }
                                            byte[] entry3 = entry(bArr8, m73s2);
                                            byte[] entry4 = (!equals2 || entry3 == null) ? entry3 : entry(m72d, m73s(entry3, "msg_id"));
                                            require((entry4 == null || work(bArr7, m73s(entry4, "oi")) == null) ? false : true, "内容不存在或已删除");
                                            byte[] m72d5 = m72d(entry3, "likes");
                                            boolean z3 = !Boolean.TRUE.equals(BsonLite.boolValue(m72d5, str14));
                                            if (z3) {
                                                result9.state = BsonLite.withProfileDocument(bArr7, equals2 ? "comments" : "messages", BsonLite.withProfileDocument(bArr8, m73s2, BsonLite.withProfileDocument(entry3, "likes", BsonLite.withProfileBool(m72d5, str14, true))));
                                            }
                                            if (z3) {
                                                Object[] objArr2 = new Object[2];
                                                objArr2[0] = equals2 ? "comment_id" : "msg_id";
                                                objArr2[1] = m73s2;
                                                intDocument = BsonLite.document(objArr2);
                                            } else {
                                                intDocument = BsonLite.intDocument("rsn", 3);
                                            }
                                            result9.player.add(str18, BsonLite.document(obj, Boolean.valueOf(z3), "i", intDocument));
                                            bArr3 = bArr7;
                                            str6 = str18;
                                            result3 = result9;
                                        }
                                        require(result3.state.length <= 33554432, "本地作品存档已达保存上限");
                                        return;
                                    } catch (ArithmeticException | IllegalArgumentException e6) {
                                        runtimeException = e6;
                                        bArr3 = bArr7;
                                        str6 = "seq";
                                        result4 = m72d2;
                                        result4.state = bArr3;
                                        result4.player.replies.clear();
                                        if (str6 != null) {
                                        }
                                        result4.player.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                                        return;
                                    }
                                }
                                result3 = result8;
                                str6 = str18;
                                str9 = str14;
                                str10 = "likes";
                            } catch (ArithmeticException | IllegalArgumentException e7) {
                                e = e7;
                                result5 = result8;
                            }
                        }
                        if (equals && str13 == null) {
                            z2 = false;
                            require(z2, "请先发布自己的心得");
                            entry = entry(m72d, str13);
                            if (entry == null && !equals && !text.equals(m73s(entry, "content"))) {
                                result3.player.add(str6, BsonLite.document(obj, false, "i", BsonLite.document("rsn", 9, "oi", uuid(str12), "msg_id", str13)));
                                return;
                            }
                            if (entry == null) {
                                require(BsonLite.keys(m72d).size() < 10000, "本地心得数量已达上限");
                                str13 = LocalResourceEngine.uuid();
                            }
                            if (entry == null && text.equals(m73s(entry, "content"))) {
                                bArr3 = bArr6;
                            } else {
                                Object[] objArr3 = new Object[20];
                                objArr3[0] = "msg_id";
                                objArr3[1] = str13;
                                objArr3[2] = "oi";
                                objArr3[3] = str12;
                                objArr3[4] = "owner";
                                objArr3[5] = str9;
                                objArr3[6] = "content";
                                objArr3[7] = text;
                                objArr3[8] = "created_time";
                                objArr3[9] = Integer.valueOf(i);
                                objArr3[10] = "status";
                                objArr3[11] = 1;
                                objArr3[12] = "extra";
                                objArr3[13] = "";
                                objArr3[14] = "seq";
                                bArr3 = bArr6;
                                objArr3[15] = Integer.valueOf(Math.addExact(m74v(bArr3, "sequence"), 1));
                                objArr3[16] = "user_info";
                                objArr3[17] = user(result3.player.profile, str9);
                                objArr3[18] = str11;
                                objArr3[19] = entry != null ? BsonLite.EMPTY_DOCUMENT : m72d(entry, str11);
                                byte[] document2 = BsonLite.document(objArr3);
                                result3.state = BsonLite.withProfileDocument(bArr3, "messages", BsonLite.withProfileDocument(m72d, str13, document2));
                                result3.state = BsonLite.withProfileInt(result3.state, "sequence", m74v(document2, "seq"));
                            }
                            result3.player.add(str6, BsonLite.document(obj, true, "i", BsonLite.document("oi", uuid(str12), "msg_id", str13)));
                            result3 = result3;
                            require(result3.state.length <= 33554432, "本地作品存档已达保存上限");
                            return;
                        }
                        objArr3[15] = Integer.valueOf(Math.addExact(m74v(bArr3, "sequence"), 1));
                        objArr3[16] = "user_info";
                        objArr3[17] = user(result3.player.profile, str9);
                        objArr3[18] = str11;
                        objArr3[19] = entry != null ? BsonLite.EMPTY_DOCUMENT : m72d(entry, str11);
                        byte[] document22 = BsonLite.document(objArr3);
                        result3.state = BsonLite.withProfileDocument(bArr3, "messages", BsonLite.withProfileDocument(m72d, str13, document22));
                        result3.state = BsonLite.withProfileInt(result3.state, "sequence", m74v(document22, "seq"));
                        result3.player.add(str6, BsonLite.document(obj, true, "i", BsonLite.document("oi", uuid(str12), "msg_id", str13)));
                        result3 = result3;
                        require(result3.state.length <= 33554432, "本地作品存档已达保存上限");
                        return;
                    } catch (ArithmeticException e8) {
                        e = e8;
                        runtimeException = e;
                        result4 = result3;
                        result4.state = bArr3;
                        result4.player.replies.clear();
                        if (str6 != null) {
                        }
                        result4.player.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                        return;
                    } catch (IllegalArgumentException e9) {
                        e = e9;
                        runtimeException = e;
                        result4 = result3;
                        result4.state = bArr3;
                        result4.player.replies.clear();
                        if (str6 != null) {
                        }
                        result4.player.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                        return;
                    }
                    require(work != null, "作品不存在或已删除");
                    require(m74v(result3.player.profile, "level") >= 30, "小剧场心得需要指挥使等级30级");
                    text = text(bArr, "m", 350);
                    Iterator<Map.Entry<String, byte[]>> it4 = BsonLite.documentEntries(m72d).entrySet().iterator();
                    while (true) {
                        if (!it4.hasNext()) {
                            bArr6 = bArr7;
                            str12 = str16;
                            str13 = null;
                            break;
                        }
                        try {
                            next = it4.next();
                            it2 = it4;
                            bArr6 = bArr7;
                            str12 = str16;
                        } catch (ArithmeticException | IllegalArgumentException e10) {
                            runtimeException = e10;
                            bArr3 = bArr7;
                            result4 = result3;
                        }
                        try {
                            if (str12.equals(m73s(next.getValue(), "oi")) && str9.equals(m73s(next.getValue(), "owner"))) {
                                str13 = next.getKey();
                                break;
                            } else {
                                it4 = it2;
                                str16 = str12;
                                bArr7 = bArr6;
                            }
                        } catch (ArithmeticException | IllegalArgumentException e11) {
                            runtimeException = e11;
                            bArr3 = bArr6;
                            result4 = result3;
                            result4.state = bArr3;
                            result4.player.replies.clear();
                            if (str6 != null) {
                            }
                            result4.player.add("showMessageStr", BsonLite.stringDocument("m", runtimeException.getMessage()));
                            return;
                        }
                    }
                    equals = "requestUpdateStoryMsg".equals(str2);
                    z2 = true;
                    require(z2, "请先发布自己的心得");
                    entry = entry(m72d, str13);
                    if (entry == null) {
                    }
                    if (entry == null) {
                    }
                    if (entry == null) {
                    }
                    Object[] objArr32 = new Object[20];
                    objArr32[0] = "msg_id";
                    objArr32[1] = str13;
                    objArr32[2] = "oi";
                    objArr32[3] = str12;
                    objArr32[4] = "owner";
                    objArr32[5] = str9;
                    objArr32[6] = "content";
                    objArr32[7] = text;
                    objArr32[8] = "created_time";
                    objArr32[9] = Integer.valueOf(i);
                    objArr32[10] = "status";
                    objArr32[11] = 1;
                    objArr32[12] = "extra";
                    objArr32[13] = "";
                    objArr32[14] = "seq";
                    bArr3 = bArr6;
                } catch (ArithmeticException | IllegalArgumentException e12) {
                    e = e12;
                    bArr3 = bArr7;
                }
                str11 = str10;
            } catch (ArithmeticException | IllegalArgumentException e13) {
                e = e13;
                result3 = result8;
                obj = "rs";
                bArr3 = bArr7;
                str6 = str17;
            }
        }
        int m74v = "requestSelfStoryHttpInfo".equals(str2) ? 1 : m74v(bArr, "cmd");
        byte[] m72d6 = m72d(bArr, "d");
        ArrayList arrayList = new ArrayList();
        if (work != null && m74v >= 1 && m74v <= 4) {
            if (m74v == 2) {
                String m73s3 = m73s(m72d6, "msg_id");
                byte[] entry5 = entry(m72d, m73s3);
                if (entry5 != null && str4.equals(m73s(entry5, "oi"))) {
                    for (byte[] bArr9 : BsonLite.documentEntries(bArr2).values()) {
                        if (Objects.equals(m73s3, m73s(bArr9, "msg_id"))) {
                            arrayList.add(bArr9);
                        }
                    }
                }
            } else {
                String m73s4 = m73s(m72d6, "target_uid");
                boolean z4 = "requestSelfStoryHttpInfo".equals(str2) || Objects.equals(m73s4, m73s(m72d6, "uid"));
                Iterator<byte[]> it5 = BsonLite.documentEntries(m72d).values().iterator();
                while (it5.hasNext()) {
                    byte[] next3 = it5.next();
                    Iterator<byte[]> it6 = it5;
                    if (str4.equals(m73s(next3, "oi"))) {
                        if (m74v != 1) {
                            str5 = str15;
                        } else if (!z4) {
                            str5 = str15;
                            if (!Objects.equals(m73s4, m73s(m72d(next3, "user_info"), "uid"))) {
                                it5 = it6;
                                str15 = str5;
                            }
                        } else if (str3.equals(m73s(next3, str15))) {
                            str5 = str15;
                        } else {
                            it5 = it6;
                        }
                        arrayList.add(next3);
                        it5 = it6;
                        str15 = str5;
                    } else {
                        it5 = it6;
                    }
                }
            }
        }
        final boolean z5 = m74v == 3;
        arrayList.sort(new Comparator() { // from class: com.project7.localmanager.LocalStoryDiscussion$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return LocalStoryDiscussion.lambda$apply$0(z5, (byte[]) obj2, (byte[]) obj3);
            }
        });
        int max = Math.max(1, Math.min(10000, m74v(m72d6, "page")));
        int max2 = Math.max(1, Math.min(100, m74v(m72d6, "num") == 0 ? 20 : m74v(m72d6, "num")));
        int min = Math.min(arrayList.size(), (max - 1) * max2);
        int min2 = Math.min(arrayList.size(), max2 + min);
        ArrayList arrayList2 = new ArrayList();
        Iterator it7 = arrayList.subList(min, min2).iterator();
        while (it7.hasNext()) {
            arrayList2.add(publicRow((byte[]) it7.next(), str3, bArr2, m74v == 2));
        }
        result2.player.add("onStoryHttpInfoReply", BsonLite.document("i", BsonLite.document("cmd", Integer.valueOf(m74v), "oi", uuid(str4), "d", m72d6, "r", BsonLite.document("data", BsonLite.document("data", arrayList2, "total", Integer.valueOf(arrayList.size()))))));
        if (!"requestSelfStoryHttpInfo".equals(str2) || str4 == null) {
            return;
        }
        result2.player.add("evalCode", BsonLite.document("s", selfCache(str4, arrayList2)));
    }

    static /* synthetic */ int lambda$apply$0(boolean z, byte[] bArr, byte[] bArr2) {
        int compare = z ? Integer.compare(BsonLite.keys(m72d(bArr2, "likes")).size(), BsonLite.keys(m72d(bArr, "likes")).size()) : 0;
        if (compare == 0) {
            compare = Integer.compare(m74v(bArr2, "created_time"), m74v(bArr, "created_time"));
        }
        return compare == 0 ? Integer.compare(m74v(bArr2, "seq"), m74v(bArr, "seq")) : compare;
    }

    static void deleteWork(LocalStoryEngine.Result result, String str) {
        byte[] m72d = m72d(result.state, "messages");
        byte[] m72d2 = m72d(result.state, "comments");
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, byte[]> entry : BsonLite.documentEntries(m72d).entrySet()) {
            if (Objects.equals(str, m73s(entry.getValue(), "oi"))) {
                hashSet.add(entry.getKey());
                m72d = BsonLite.withoutProfileKey(m72d, entry.getKey());
            }
        }
        for (Map.Entry<String, byte[]> entry2 : BsonLite.documentEntries(m72d2).entrySet()) {
            if (hashSet.contains(m73s(entry2.getValue(), "msg_id"))) {
                m72d2 = BsonLite.withoutProfileKey(m72d2, entry2.getKey());
            }
        }
        result.state = BsonLite.withProfileDocument(BsonLite.withProfileDocument(result.state, "messages", m72d), "comments", m72d2);
    }

    private static byte[] publicRow(byte[] bArr, String str, byte[] bArr2, boolean z) {
        byte[] withProfileInt = BsonLite.withProfileInt(BsonLite.withProfileBool(BsonLite.withoutProfileKey(BsonLite.withoutProfileKey(BsonLite.withoutProfileKey(BsonLite.withoutProfileKey(bArr, "owner"), "likes"), "oi"), "seq"), "liked", Boolean.TRUE.equals(BsonLite.boolValue(m72d(bArr, "likes"), str))), "like_num", BsonLite.keys(m72d(bArr, "likes")).size());
        int i = 0;
        if (!z) {
            Iterator<byte[]> it = BsonLite.documentEntries(bArr2).values().iterator();
            while (it.hasNext()) {
                if (Objects.equals(m73s(bArr, "msg_id"), m73s(it.next(), "msg_id"))) {
                    i++;
                }
            }
        }
        return BsonLite.withProfileInt(withProfileInt, "comment_num", i);
    }

    private static byte[] user(byte[] bArr, String str) {
        byte[] m72d = m72d(bArr, "headImage");
        String m73s = m73s(m72d, "2");
        if (m73s == null || !m73s.matches("[A-Za-z0-9_-]{0,128}")) {
            m73s = "";
        }
        String str2 = "[" + m74v(m72d, "0") + "," + m74v(m72d, "1") + ",\"" + m73s + "\"]";
        Object[] objArr = new Object[10];
        objArr[0] = "avatar";
        objArr[1] = str2;
        objArr[2] = "uid";
        objArr[3] = accountId(str);
        objArr[4] = "game_uid";
        objArr[5] = Integer.valueOf(m74v(bArr, "uid"));
        objArr[6] = "head_skin";
        objArr[7] = Integer.valueOf(m74v(bArr, "bbs_skin"));
        objArr[8] = "name";
        if (m73s(bArr, "name") != null) {
            str = m73s(bArr, "name");
        }
        objArr[9] = str;
        return BsonLite.document(objArr);
    }

    private static String accountId(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 12; i++) {
                sb.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(digest[i] & 255)));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    private static byte[] work(byte[] bArr, String str) {
        if (str != null) {
            for (byte[] bArr2 : BsonLite.documentEntries(m72d(bArr, "works")).values()) {
                if (str.equals(m73s(bArr2, "id"))) {
                    return bArr2;
                }
            }
            return null;
        }
        return null;
    }

    private static byte[] entry(byte[] bArr, String str) {
        if (str == null) {
            return null;
        }
        return BsonLite.documentValue(bArr, str);
    }

    private static String text(byte[] bArr, String str, int i) {
        String m73s = m73s(bArr, str);
        boolean z = false;
        if (m73s != null && !m73s.trim().isEmpty() && m73s.indexOf(0) < 0 && m73s.codePointCount(0, m73s.length()) <= i) {
            z = true;
        }
        require(z, "内容为空或超过字数上限");
        return m73s;
    }

    private static void require(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    private static BsonLite.UuidValue uuid(String str) {
        if (str == null) {
            str = "000000000000000000000000";
        }
        return new BsonLite.UuidValue(str);
    }

    private static String selfCache(String str, List<byte[]> list) {
        return "import bson,base64\nfrom common.IdManager import IdManager\n_q7_id=IdManager.str2id('" + str + "')\n_q7_msgs=bson.BSON(base64.b64decode('" + Base64.getEncoder().encodeToString(BsonLite.document("rows", list)) + "')).decode()['rows']\ngg.avatar.StoryEditorData.story_msg_cache.pop(_q7_id,None)\ngg.avatar.StoryEditorData.cache_commond.pop(_q7_id,None)\ngg.avatar.updateStoryUserInfo(_q7_id,_q7_msgs)\ngg.avatar.StoryEditorData.story_msg_info.pop(_q7_id,None)\nif _q7_msgs:\n    gg.avatar.StoryEditorData.story_msg_info[_q7_id]=_q7_msgs[0]['msg_id']\n    gg.avatar.StoryEditorData.cache_commond[_q7_id]=_q7_msgs[0]\ngg.ui._tree.proc_event('reply_myStoryMsg',_children=True)";
    }
}
