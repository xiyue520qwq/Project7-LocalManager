package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import com.project7.localmanager.LocalResourceEngine;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalProfileEngine {
    LocalProfileEngine() {
    }

    static boolean handles(String str) {
        return "setRoleIdRequest".equals(str) || "setDescribeRequest".equals(str) || "setBbsSkin".equals(str) || "read_cg".equals(str) || "changeName".equals(str) || "setHeadImage".equals(str) || "setImgState".equals(str) || "unlockCollectMark".equals(str) || "setAssistHero".equals(str) || "requestNameCardChange".equals(str) || "setNameCardFirstSee".equals(str) || "setTitleShowList".equals(str) || "setBadgeShowList".equals(str) || "updateTitleNewState".equals(str) || "updateBadgeNewState".equals(str) || "updateTitleExchange".equals(str) || "requestUpdateCollectCover".equals(str) || "clearFirstGetFlag".equals(str) || "set_hero_shoucang".equals(str) || "setHeroEmojiUsed".equals(str) || "requestEmojiRead".equals(str) || "addRecentEmoji".equals(str);
    }

    static Result apply(byte[] bArr, String str, byte[] bArr2) {
        return apply(bArr, str, bArr2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:423:0x086d, code lost:
    
        if (r5.equals(com.project7.localmanager.BsonLite.intValue(r1, "1")) != false) goto L308;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static Result apply(byte[] bArr, String str, byte[] bArr2, LocalFeatureCatalog localFeatureCatalog) {
        byte[] bArr3;
        ArrayList arrayList;
        String str2;
        int i;
        String str3;
        byte[] bArr4;
        byte[] withProfileDocument;
        char c;
        char c2;
        Object arrayValue;
        byte[] bArr5;
        byte[] bArr6;
        byte[] bArr7;
        boolean z;
        byte[] document;
        byte[] bArr8;
        char c3;
        ArrayList arrayList2;
        Object obj;
        Iterator<Map.Entry<Integer, Integer>> it;
        byte[] bArr9;
        byte[] bArr10 = bArr;
        byte[] bArr11 = BsonLite.EMPTY_DOCUMENT;
        ArrayList arrayList3 = new ArrayList();
        Integer num = 1;
        if ("set_hero_shoucang".equals(str)) {
            int value = LocalResourceEngine.value(bArr2, "h");
            Boolean boolValue = BsonLite.boolValue(bArr2, "a");
            byte[] doc = LocalResourceEngine.doc(bArr10, "heromgr");
            LinkedHashSet linkedHashSet = new LinkedHashSet(BsonLite.intArrayValues(doc, "hs"));
            if (boolValue != null && ownsHero(bArr10, value)) {
                if (boolValue.booleanValue()) {
                    linkedHashSet.add(Integer.valueOf(value));
                } else {
                    linkedHashSet.remove(Integer.valueOf(value));
                }
                bArr10 = BsonLite.withProfileDocument(bArr10, "heromgr", BsonLite.withProfileIntArray(doc, "hs", linkedHashSet));
            } else {
                arrayList3.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", "只能收藏已拥有的神器使")));
            }
            bArr11 = BsonLite.document("h", Integer.valueOf(value), "a", Boolean.valueOf(linkedHashSet.contains(Integer.valueOf(value))));
            str2 = "set_hero_shoucang";
            arrayList = arrayList3;
        } else if ("setAssistHero".equals(str)) {
            int value2 = LocalResourceEngine.value(bArr2, "ass");
            if (ownsHero(bArr10, value2)) {
                bArr10 = BsonLite.withProfileInt(bArr10, "ash", value2);
                bArr11 = BsonLite.document("ass", Integer.valueOf(value2));
                str2 = "on_ass_hero_done";
            } else {
                arrayList3.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.stringDocument("m", "只能选择已拥有的神器使")));
                str2 = null;
            }
            arrayList = arrayList3;
        } else {
            if ("requestNameCardChange".equals(str)) {
                bArr3 = bArr11;
                arrayList = arrayList3;
            } else if ("setNameCardFirstSee".equals(str)) {
                bArr3 = bArr11;
                arrayList = arrayList3;
            } else {
                if ("setTitleShowList".equals(str)) {
                    arrayList = arrayList3;
                    i = 5;
                } else if ("setBadgeShowList".equals(str)) {
                    arrayList = arrayList3;
                    i = 5;
                } else {
                    if ("updateTitleNewState".equals(str)) {
                        bArr4 = bArr11;
                        arrayList = arrayList3;
                    } else if ("updateBadgeNewState".equals(str)) {
                        bArr4 = bArr11;
                        arrayList = arrayList3;
                    } else if ("updateTitleExchange".equals(str)) {
                        byte[] doc2 = LocalResourceEngine.doc(bArr10, "ttd");
                        int value3 = LocalResourceEngine.value(bArr2, "o");
                        int value4 = LocalResourceEngine.value(bArr2, "c");
                        Map<Integer, Integer> pairs = LocalAccountFeatures.pairs(LocalResourceEngine.doc(doc2, "ct"));
                        if (pairs.containsKey(Integer.valueOf(value3)) && pairs.containsKey(Integer.valueOf(value4))) {
                            Map<Integer, Integer> pairs2 = LocalAccountFeatures.pairs(LocalResourceEngine.doc(doc2, "et"));
                            pairs2.put(Integer.valueOf(value3), Integer.valueOf(value4));
                            bArr9 = BsonLite.withProfileDocument(bArr10, "ttd", BsonLite.withProfileArray(doc2, "et", LocalAccountFeatures.pairList(pairs2)));
                            bArr11 = BsonLite.document("o", Integer.valueOf(value3), "c", Integer.valueOf(value4));
                            str2 = "syncTitleExchange";
                        } else {
                            bArr9 = bArr10;
                            str2 = null;
                        }
                        bArr10 = bArr9;
                        arrayList = arrayList3;
                    } else if ("requestUpdateCollectCover".equals(str)) {
                        int value5 = LocalResourceEngine.value(bArr2, "i");
                        int i2 = value5 == 0 ? 0 : 1;
                        byte[] doc3 = LocalResourceEngine.doc(bArr2, "d");
                        byte[] doc4 = LocalResourceEngine.doc(bArr10, "cid");
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        List<byte[]> array = LocalResourceEngine.array(LocalResourceEngine.doc(doc4, "ccd"));
                        int i3 = i2;
                        int i4 = 0;
                        while (true) {
                            arrayList2 = arrayList3;
                            if (i4 >= array.size()) {
                                obj = "d";
                                i4 = -1;
                                break;
                            }
                            if (LocalResourceEngine.value(array.get(i4), "0") == value5) {
                                obj = "d";
                                linkedHashMap.putAll(LocalAccountFeatures.pairs(LocalResourceEngine.doc(LocalResourceEngine.doc(array.get(i4), "1"), "hid")));
                                break;
                            }
                            i4++;
                            arrayList3 = arrayList2;
                        }
                        Iterator<Map.Entry<Integer, Integer>> it2 = LocalAccountFeatures.pairs(LocalResourceEngine.doc(doc3, "hid")).entrySet().iterator();
                        int i5 = i3;
                        while (it2.hasNext()) {
                            Map.Entry<Integer, Integer> next = it2.next();
                            if (next.getKey().intValue() >= 0) {
                                it = it2;
                                int i6 = i5;
                                if (next.getKey().intValue() < 16) {
                                    if (ownsHero(bArr10, next.getValue().intValue())) {
                                        linkedHashMap.put(next.getKey(), next.getValue());
                                        i5 = i6;
                                    } else {
                                        i5 = 2;
                                    }
                                    it2 = it;
                                }
                            } else {
                                it = it2;
                            }
                            i5 = 1;
                            it2 = it;
                        }
                        int i7 = i5;
                        Integer intValue = BsonLite.intValue(doc3, "ct");
                        int i8 = (intValue == null || intValue.intValue() == 0) ? i7 : 1;
                        byte[] document2 = BsonLite.document("ct", 0, "hid", LocalAccountFeatures.pairList(linkedHashMap));
                        if (i8 == 0) {
                            ArrayList arrayList4 = new ArrayList();
                            int i9 = 0;
                            while (i9 < array.size()) {
                                arrayList4.add(i9 == i4 ? Arrays.asList(Integer.valueOf(value5), document2) : Arrays.asList(Integer.valueOf(LocalResourceEngine.value(array.get(i9), "0")), LocalResourceEngine.doc(array.get(i9), "1")));
                                i9++;
                            }
                            if (i4 < 0) {
                                arrayList4.add(Arrays.asList(Integer.valueOf(value5), document2));
                            }
                            bArr10 = BsonLite.withProfileDocument(bArr10, "cid", BsonLite.withProfileArray(doc4, "ccd", arrayList4));
                        }
                        bArr11 = BsonLite.document("r", Integer.valueOf(i8), "i", Integer.valueOf(value5), obj, document2);
                        str2 = "replyUpdateCollectCover";
                        arrayList = arrayList2;
                    } else if ("clearFirstGetFlag".equals(str)) {
                        byte[] doc5 = LocalResourceEngine.doc(bArr10, "cid");
                        int value6 = LocalResourceEngine.value(bArr2, "k");
                        ArrayList arrayList5 = new ArrayList();
                        for (byte[] bArr12 : LocalResourceEngine.array(LocalResourceEngine.doc(doc5, "hfi"))) {
                            int value7 = LocalResourceEngine.value(bArr12, "0");
                            byte[] doc6 = LocalResourceEngine.doc(bArr12, "1");
                            if (value7 == value6) {
                                c3 = 0;
                                doc6 = BsonLite.withProfileBool(doc6, "fg", false);
                            } else {
                                c3 = 0;
                            }
                            Serializable[] serializableArr = new Serializable[2];
                            serializableArr[c3] = Integer.valueOf(value7);
                            serializableArr[1] = doc6;
                            arrayList5.add(Arrays.asList(serializableArr));
                        }
                        bArr10 = BsonLite.withProfileDocument(bArr10, "cid", BsonLite.withProfileArray(doc5, "hfi", arrayList5));
                        bArr11 = bArr11;
                        arrayList = arrayList3;
                        str2 = null;
                    } else {
                        if ("setHeadImage".equals(str)) {
                            arrayList = arrayList3;
                        } else if ("setImgState".equals(str)) {
                            arrayList = arrayList3;
                        } else if ("addRecentEmoji".equals(str)) {
                            int value8 = LocalResourceEngine.value(bArr2, "eid");
                            byte[] doc7 = LocalResourceEngine.doc(bArr10, "amd");
                            ArrayList arrayList6 = new ArrayList(BsonLite.intArrayValues(LocalResourceEngine.doc(bArr10, "cht"), "re"));
                            if (!BsonLite.intArrayValues(doc7, "he").contains(Integer.valueOf(value8))) {
                                bArr8 = bArr10;
                            } else {
                                arrayList6.remove(Integer.valueOf(value8));
                                arrayList6.add(0, Integer.valueOf(value8));
                                while (arrayList6.size() > 20) {
                                    arrayList6.remove(arrayList6.size() - 1);
                                }
                                bArr8 = BsonLite.withProfileDocument(bArr10, "cht", BsonLite.withProfileIntArray(LocalResourceEngine.doc(bArr10, "cht"), "re", arrayList6));
                            }
                            bArr11 = BsonLite.document("re", arrayList6);
                            str2 = "syncRecentEmoji";
                            bArr10 = bArr8;
                            arrayList = arrayList3;
                        } else if ("setHeroEmojiUsed".equals(str)) {
                            ArrayList arrayList7 = new ArrayList();
                            byte[] doc8 = LocalResourceEngine.doc(bArr2, "hl");
                            for (String str4 : BsonLite.keys(doc8)) {
                                String stringValue = BsonLite.stringValue(doc8, str4);
                                Integer intValue2 = BsonLite.intValue(doc8, str4);
                                if (stringValue == null && intValue2 != null) {
                                    stringValue = intValue2.toString();
                                }
                                boolean equals = "default".equals(stringValue);
                                if (!equals && stringValue != null) {
                                    try {
                                        equals = ownsHero(bArr10, Integer.parseInt(stringValue));
                                    } catch (NumberFormatException e) {
                                    }
                                }
                                if (equals && !arrayList7.contains(stringValue) && arrayList7.size() < 10) {
                                    arrayList7.add(stringValue);
                                }
                            }
                            byte[] withProfileDocument2 = !arrayList7.isEmpty() ? BsonLite.withProfileDocument(bArr10, "cht", BsonLite.withProfileArray(LocalResourceEngine.doc(bArr10, "cht"), "heu", arrayList7)) : bArr10;
                            bArr11 = BsonLite.document("heu", new BsonLite.ArrayValue(LocalResourceEngine.doc(LocalResourceEngine.doc(withProfileDocument2, "cht"), "heu")));
                            str2 = "syncHeroEmojiUsed";
                            bArr10 = withProfileDocument2;
                            arrayList = arrayList3;
                        } else if ("requestEmojiRead".equals(str)) {
                            byte[] doc9 = LocalResourceEngine.doc(bArr10, "amd");
                            Map<Integer, Integer> pairs3 = LocalAccountFeatures.pairs(LocalResourceEngine.doc(doc9, "er"));
                            String stringValue2 = BsonLite.stringValue(bArr2, "h");
                            Integer intValue3 = BsonLite.intValue(bArr2, "h");
                            if (stringValue2 == null && intValue3 != null) {
                                stringValue2 = intValue3.toString();
                            }
                            if (stringValue2 != null) {
                                try {
                                    pairs3.remove(Integer.valueOf(Integer.parseInt(stringValue2)));
                                } catch (NumberFormatException e2) {
                                }
                            }
                            bArr10 = BsonLite.withProfileDocument(bArr10, "amd", BsonLite.withProfileArray(doc9, "er", LocalAccountFeatures.pairList(pairs3)));
                            byte[] bArr13 = BsonLite.EMPTY_DOCUMENT;
                            for (Map.Entry<Integer, Integer> entry : pairs3.entrySet()) {
                                bArr13 = BsonLite.withProfileInt(bArr13, entry.getKey().toString(), entry.getValue().intValue());
                            }
                            bArr11 = BsonLite.document("he", new BsonLite.ArrayValue(LocalResourceEngine.doc(doc9, "he")), "er", bArr13);
                            str2 = "syncEmoji";
                            arrayList = arrayList3;
                        } else if ("unlockCollectMark".equals(str)) {
                            int value9 = LocalResourceEngine.value(bArr2, "h");
                            int value10 = LocalResourceEngine.value(bArr2, "i");
                            int i10 = value10 - 1;
                            byte[] profileHeroDocument = BsonLite.profileHeroDocument(bArr10, value9);
                            int value11 = LocalResourceEngine.value(LocalResourceEngine.doc(profileHeroDocument, "ar"), "o");
                            if (i10 == 0) {
                                z = flag(profileHeroDocument, "gp");
                            } else if (i10 >= 1 && i10 <= 4) {
                                z = flag(profileHeroDocument, "oa") && (i10 == 1 || value11 >= (i10 + (-1)) * 10);
                            } else if (i10 == 5) {
                                z = flag(profileHeroDocument, "pt");
                            } else if (i10 == 6) {
                                z = flag(profileHeroDocument, "blp");
                            } else if (i10 == 7 || i10 == 8) {
                                z = LocalResourceEngine.value(profileHeroDocument, "blt") >= (i10 == 7 ? 100 : 200);
                            } else {
                                z = i10 == 10 ? flag(profileHeroDocument, "fd") : false;
                            }
                            byte[] bArr14 = localFeatureCatalog == null ? null : localFeatureCatalog.get("H", Integer.valueOf(value9));
                            if (bArr14 != null && i10 == 9) {
                                List<Integer> intArrayValues = BsonLite.intArrayValues(bArr14, "partners");
                                z = intArrayValues.size() == 3;
                                Iterator<Integer> it3 = intArrayValues.iterator();
                                while (it3.hasNext()) {
                                    z &= ownsHero(bArr10, it3.next().intValue());
                                }
                            } else if (bArr14 != null && i10 >= 11 && i10 <= 14) {
                                int value12 = LocalResourceEngine.value(bArr14, "treasure");
                                byte[] bArr15 = localFeatureCatalog.get("T", Integer.valueOf(value12));
                                int i11 = ((i10 - 11) * 2) + 1;
                                List<byte[]> array2 = LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr10, "inv"), "items"));
                                array2.addAll(LocalResourceEngine.array(LocalResourceEngine.doc(LocalResourceEngine.doc(profileHeroDocument, "ti"), "items")));
                                for (byte[] bArr16 : array2) {
                                    if (LocalResourceEngine.value(bArr16, "i") != value12 || bArr15 == null) {
                                        bArr15 = bArr15;
                                    } else {
                                        int value13 = LocalResourceEngine.value(LocalResourceEngine.doc(bArr16, "tr"), "x");
                                        int i12 = 0;
                                        for (byte[] bArr17 : LocalResourceEngine.array(LocalResourceEngine.doc(bArr15, "stages"))) {
                                            byte[] bArr18 = bArr15;
                                            if (LocalResourceEngine.value(bArr17, "exp") <= value13) {
                                                i12 = Math.max(i12, LocalResourceEngine.value(bArr17, "stage"));
                                            }
                                            bArr15 = bArr18;
                                        }
                                        byte[] bArr19 = bArr15;
                                        if (i12 >= i11) {
                                            z = true;
                                        }
                                        bArr15 = bArr19;
                                    }
                                }
                            } else if (bArr14 != null && i10 >= 15 && i10 <= 18) {
                                Map<Integer, Integer> pairs4 = LocalAccountFeatures.pairs(LocalResourceEngine.doc(LocalResourceEngine.doc(bArr10, "hhd"), "hhl"));
                                z = Boolean.TRUE.equals(BsonLite.boolValue(LocalResourceEngine.doc(bArr14, "memories"), Integer.toString(i10 + (-15)))) && (pairs4.containsKey(Integer.valueOf(value9)) ? pairs4.get(Integer.valueOf(value9)).intValue() : 1) > i10 + (-14);
                            }
                            byte[] doc10 = LocalResourceEngine.doc(profileHeroDocument, "clm");
                            if (i10 < 0 || i10 >= 19 || !ownsHero(bArr10, value9) || !(z || flag(doc10, Integer.toString(i10)))) {
                                document = BsonLite.document("d", BsonLite.document("errId", 179));
                            } else {
                                ArrayList arrayList8 = new ArrayList();
                                for (int i13 = 0; i13 < 19; i13++) {
                                    arrayList8.add(Boolean.valueOf(Boolean.TRUE.equals(BsonLite.boolValue(doc10, Integer.toString(i13))) || LocalResourceEngine.value(doc10, Integer.toString(i13)) != 0));
                                }
                                arrayList8.set(i10, true);
                                bArr10 = BsonLite.withHeroDocument(bArr10, value9, BsonLite.withProfileArray(profileHeroDocument, "clm", arrayList8));
                                document = BsonLite.document("d", BsonLite.document("h", Integer.valueOf(value9), "i", Integer.valueOf(value10), "clm", arrayList8));
                            }
                            bArr11 = document;
                            str2 = "unlockCollectMarkReply";
                            arrayList = arrayList3;
                        } else if ("setRoleIdRequest".equals(str)) {
                            Integer intValue4 = BsonLite.intValue(bArr2, "r");
                            Integer intValue5 = BsonLite.intValue(bArr10, "role");
                            int intValue6 = intValue5 == null ? 1 : intValue5.intValue();
                            if (intValue4 == null) {
                                arrayList = arrayList3;
                            } else if (intValue4.intValue() == 1 || intValue4.intValue() == 2) {
                                intValue6 = intValue4.intValue();
                                bArr7 = BsonLite.withProfileInt(bArr10, "role", intValue6);
                                byte[] documentValue = BsonLite.documentValue(bArr10, "headImage");
                                if (documentValue != null) {
                                    if (num.equals(BsonLite.intValue(documentValue, "0"))) {
                                        if (!num.equals(BsonLite.intValue(documentValue, "1"))) {
                                            Integer num2 = 2;
                                        }
                                    }
                                    arrayList = arrayList3;
                                    bArr11 = BsonLite.intDocument("r", intValue6);
                                    str2 = "setRoleIdReply";
                                    bArr10 = bArr7;
                                }
                                List asList = Arrays.asList(num, Integer.valueOf(intValue6), "");
                                bArr7 = BsonLite.withProfileArray(bArr7, "headImage", asList);
                                Object[] objArr = {"headImage", asList, "imgid", "", "del_imgid", Collections.emptyList()};
                                arrayList = arrayList3;
                                arrayList.add(new LocalResourceEngine.Reply("updateHeadImage", BsonLite.document(objArr)));
                                bArr11 = BsonLite.intDocument("r", intValue6);
                                str2 = "setRoleIdReply";
                                bArr10 = bArr7;
                            } else {
                                arrayList = arrayList3;
                            }
                            bArr7 = bArr10;
                            bArr11 = BsonLite.intDocument("r", intValue6);
                            str2 = "setRoleIdReply";
                            bArr10 = bArr7;
                        } else {
                            arrayList = arrayList3;
                            if ("changeName".equals(str)) {
                                String stringValue3 = BsonLite.stringValue(bArr2, "name");
                                byte[] doc11 = LocalResourceEngine.doc(bArr10, "cni");
                                int value14 = LocalResourceEngine.value(doc11, "cnt");
                                int value15 = LocalResourceEngine.value(doc11, "last");
                                int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
                                int i14 = value14 == 0 ? 0 : 500;
                                boolean z2 = (stringValue3 == null || stringValue3.trim().isEmpty() || stringValue3.codePointCount(0, stringValue3.length()) > 16 || stringValue3.matches(".*[\\p{Cntrl}].*") || (value15 != 0 && ((long) currentTimeMillis) - ((long) value15) < 86400) || LocalResourceEngine.value(bArr10, "crystal") < i14) ? false : true;
                                if (!z2) {
                                    bArr6 = bArr10;
                                } else {
                                    stringValue3 = stringValue3.trim();
                                    bArr6 = BsonLite.withProfileDocument(BsonLite.withProfileInt(BsonLite.withProfileString(bArr10, "name", stringValue3), "crystal", LocalResourceEngine.value(bArr10, "crystal") - i14), "cni", BsonLite.document("cnt", Integer.valueOf(value14 + 1), "last", Integer.valueOf(currentTimeMillis)));
                                }
                                Object[] objArr2 = new Object[4];
                                objArr2[0] = "r";
                                objArr2[1] = Boolean.valueOf(z2);
                                objArr2[2] = "n";
                                if (!z2) {
                                    stringValue3 = BsonLite.stringValue(bArr10, "name");
                                }
                                objArr2[3] = stringValue3;
                                str2 = "changeNameReply";
                                bArr10 = bArr6;
                                bArr11 = BsonLite.document(objArr2);
                            } else if ("setDescribeRequest".equals(str)) {
                                String stringValue4 = BsonLite.stringValue(bArr2, "describe");
                                String stringValue5 = BsonLite.stringValue(bArr10, "describe");
                                String str5 = stringValue5 != null ? stringValue5 : "";
                                if (stringValue4 == null) {
                                    stringValue4 = str5;
                                } else {
                                    bArr10 = BsonLite.withProfileString(bArr10, "describe", stringValue4);
                                }
                                bArr11 = BsonLite.stringDocument("describe", stringValue4);
                                str2 = "setDescribeReply";
                            } else if ("setBbsSkin".equals(str)) {
                                ArrayList arrayList9 = new ArrayList(BsonLite.intArrayValues(bArr10, "tbk"));
                                if (BsonLite.documentValue(bArr10, "tbk") == null) {
                                    arrayList9.add(0);
                                }
                                Integer intValue7 = BsonLite.intValue(bArr10, "bk");
                                Integer intValue8 = BsonLite.intValue(bArr2, "s");
                                int intValue9 = intValue7 == null ? 0 : intValue7.intValue();
                                if (intValue8 != null && arrayList9.contains(intValue8)) {
                                    intValue9 = intValue8.intValue();
                                    bArr10 = BsonLite.withProfileInt(bArr10, "bk", intValue9);
                                }
                                bArr11 = BsonLite.bbsSkinReplyDocument(arrayList9, intValue9);
                                str2 = "updateBbsSkin";
                            } else if ("read_cg".equals(str)) {
                                Integer intValue10 = BsonLite.intValue(bArr2, "cg");
                                ArrayList arrayList10 = new ArrayList(BsonLite.intArrayValues(bArr10, "ncgs"));
                                if (intValue10 != null && arrayList10.remove(intValue10)) {
                                    bArr5 = BsonLite.withProfileIntArray(bArr10, "ncgs", arrayList10);
                                } else {
                                    bArr5 = bArr10;
                                }
                                bArr10 = bArr5;
                                bArr11 = bArr11;
                                str2 = null;
                            } else {
                                throw new IllegalArgumentException("unsupported profile method: " + str);
                            }
                        }
                        int value16 = LocalResourceEngine.value(bArr2, "t");
                        int value17 = LocalResourceEngine.value(bArr2, "hc");
                        if ("setImgState".equals(str)) {
                            withProfileDocument = LocalImageAvatar.approveStored(bArr10, BsonLite.stringValue(bArr2, "ii"));
                            arrayList.addAll(LocalImageAvatar.cache(withProfileDocument));
                        } else if (value16 == 2) {
                            withProfileDocument = LocalImageAvatar.update(bArr10, bArr2);
                            arrayList.addAll(LocalImageAvatar.cache(withProfileDocument));
                            if (withProfileDocument == bArr10) {
                                arrayList.add(new LocalResourceEngine.Reply("showMessageStr", BsonLite.document("m", "头像未保存，请选择有效的PNG/JPEG图片（最大2MB）")));
                            }
                        } else {
                            withProfileDocument = (value16 == 1 && (value17 == 1 || value17 == 2 || ownsHero(bArr10, value17))) ? BsonLite.withProfileDocument(BsonLite.withProfileString(BsonLite.withProfileArray(bArr10, "headImage", Arrays.asList(num, Integer.valueOf(value17), "")), "imgid", ""), "q7Avatar", BsonLite.EMPTY_DOCUMENT) : bArr10;
                        }
                        Object[] objArr3 = new Object[6];
                        objArr3[0] = "headImage";
                        if (BsonLite.documentValue(withProfileDocument, "headImage") == null) {
                            c = 1;
                            c2 = 2;
                            arrayValue = Arrays.asList(num, num, "");
                        } else {
                            c = 1;
                            c2 = 2;
                            arrayValue = new BsonLite.ArrayValue(BsonLite.documentValue(withProfileDocument, "headImage"));
                        }
                        objArr3[c] = arrayValue;
                        objArr3[c2] = "imgid";
                        objArr3[3] = BsonLite.stringValue(withProfileDocument, "imgid") != null ? BsonLite.stringValue(withProfileDocument, "imgid") : "";
                        objArr3[4] = "del_imgid";
                        objArr3[5] = Collections.emptyList();
                        bArr11 = BsonLite.document(objArr3);
                        str2 = "updateHeadImage";
                        bArr10 = withProfileDocument;
                    }
                    boolean equals2 = "updateTitleNewState".equals(str);
                    str3 = equals2 ? "ttd" : "bgd";
                    String str6 = equals2 ? "nt" : "nb";
                    byte[] doc12 = LocalResourceEngine.doc(bArr10, str3);
                    ArrayList arrayList11 = new ArrayList(BsonLite.intArrayValues(doc12, str6));
                    arrayList11.remove(Integer.valueOf(LocalResourceEngine.value(bArr2, "i")));
                    bArr10 = BsonLite.withProfileDocument(bArr10, str3, BsonLite.withProfileIntArray(doc12, str6, arrayList11));
                    bArr11 = bArr4;
                    str2 = null;
                }
                boolean equals3 = "setTitleShowList".equals(str);
                str3 = equals3 ? "ttd" : "bgd";
                String str7 = equals3 ? "mt" : "mb";
                byte[] doc13 = LocalResourceEngine.doc(bArr10, str3);
                Map<Integer, Integer> pairs5 = LocalAccountFeatures.pairs(LocalResourceEngine.doc(doc13, equals3 ? "ct" : "cb"));
                List arrayList12 = new ArrayList(BsonLite.intArrayValues(bArr2, "sl"));
                boolean z3 = arrayList12.size() <= (equals3 ? 3 : i);
                HashSet hashSet = new HashSet();
                Iterator it4 = arrayList12.iterator();
                while (it4.hasNext()) {
                    int intValue11 = ((Integer) it4.next()).intValue();
                    z3 &= intValue11 == 0 || (pairs5.containsKey(Integer.valueOf(intValue11)) && hashSet.add(Integer.valueOf(intValue11)));
                }
                if (z3) {
                    bArr10 = BsonLite.withProfileDocument(bArr10, str3, BsonLite.withProfileIntArray(doc13, str7, arrayList12));
                }
                str2 = equals3 ? "replySetTitleShowList" : "setBadgeShowListReply";
                Object[] objArr4 = new Object[2];
                objArr4[0] = equals3 ? "mt" : "sl";
                if (!z3) {
                    arrayList12 = BsonLite.intArrayValues(doc13, str7);
                }
                objArr4[1] = arrayList12;
                bArr11 = BsonLite.document(objArr4);
            }
            byte[] doc14 = LocalResourceEngine.doc(bArr10, "oaed");
            if ("setNameCardFirstSee".equals(str)) {
                bArr10 = BsonLite.withProfileDocument(bArr10, "oaed", BsonLite.withProfileBool(doc14, "fs", false));
                bArr11 = bArr3;
                str2 = null;
            } else {
                int value18 = LocalResourceEngine.value(bArr2, "nc");
                boolean contains = BsonLite.intArrayValues(doc14, "ncb").contains(Integer.valueOf(value18));
                if (contains) {
                    bArr10 = BsonLite.withProfileDocument(bArr10, "oaed", BsonLite.withProfileInt(doc14, "cnc", value18));
                }
                Object[] objArr5 = new Object[4];
                objArr5[0] = "rs";
                objArr5[1] = Boolean.valueOf(contains);
                objArr5[2] = "i";
                Object[] objArr6 = new Object[2];
                objArr6[0] = "nc";
                if (!contains) {
                    value18 = LocalResourceEngine.value(doc14, "cnc");
                }
                objArr6[1] = Integer.valueOf(value18);
                objArr5[3] = BsonLite.document(objArr6);
                bArr11 = BsonLite.document(objArr5);
                str2 = "replyNameCardChange";
            }
        }
        Result result = new Result(bArr10, str2, bArr11);
        result.extras.addAll(arrayList);
        return result;
    }

    private static boolean flag(byte[] bArr, String str) {
        return Boolean.TRUE.equals(BsonLite.boolValue(bArr, str)) || LocalResourceEngine.value(bArr, str) != 0;
    }

    private static boolean ownsHero(byte[] bArr, int i) {
        byte[] documentValue = BsonLite.documentValue(BsonLite.documentValue(bArr, "heromgr"), "hrs");
        int i2 = 0;
        while (true) {
            byte[] documentValue2 = BsonLite.documentValue(documentValue, Integer.toString(i2));
            if (documentValue2 == null) {
                return false;
            }
            if (Integer.valueOf(i).equals(BsonLite.intValue(documentValue2, "0"))) {
                return true;
            }
            i2++;
        }
    }

    static final class Result {
        final String callback;
        final List<LocalResourceEngine.Reply> extras = new ArrayList();
        final byte[] profile;
        final byte[] reply;

        Result(byte[] bArr, String str, byte[] bArr2) {
            this.profile = bArr;
            this.callback = str;
            this.reply = bArr2;
        }
    }
}
