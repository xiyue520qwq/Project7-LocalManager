package com.project7.localmanager;

import com.project7.localmanager.BsonLite;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class LocalTreasureMax {
    private static final String IDS = ",1200,1201,1208,1223,1224,1225,1226,1227,1228,1229,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1330,1331,1335,1336,1337,1338,1339,1340,1341,1342,1345,1346,1347,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1361,1365,1366,1367,1368,1369,1370,1371,1373,1374,1375,1376,1377,1378,1379,1380,";
    private static final int MAX_EXP = 3920;
    private static final int MAX_LEVEL = 7;
    private static final String PALACE = "1:300001,300002,300003,300004,300005,300006,300007,300008,300009,300010;2:300011,300012,300013,300014,300015,300016,300017,300018,300019,300020;3:300021,300022,300023,300024,300025,300026,300027,300028,300029,300030;4:300031,300032,300033,300034,300035,300036,300037,300038,300039,300040;5:300041,300042,300043,300044,300045,300046,300047,300048,300049,300050;6:300051,300052,300053,300054,300055,300056,300057,300058,300059,300060;7:300101,300102,300103,300104,300105,300106,300107,300108,300109,300110;8:300111,300112,300113,300114,300115,300116,300117,300118,300119,300120;9:300121,300122,300123,300124,300125,300126,300127,300128,300129,300130;10:300131,300132,300133,300134,300135,300136,300137,300138,300139,300140;11:300061,300062,300063,300064,300065,300066,300067,300068,300069,300070;12:300071,300072,300073,300074,300075,300076,300077,300078,300079,300080;13:300141,300142,300143,300144,300145,300146,300147,300148,300149,300150;14:300151,300152,300153,300154,300155,300156,300157,300158,300159,300160;15:300161,300162,300163,300164,300165,300166,300167,300168,300169,300170;16:300081,300082,300083,300084,300085,300086,300087,300088,300089,300090;17:300171,300172,300173,300174,300175,300176,300177,300178,300179,300180;18:300181,300182,300183,300184,300185,300186,300187,300188,300189,300190;19:300091,300092,300093,300094,300095,300096,300097,300098,300099,300100;20:300191,300192,300193,300194,300195,300196,300197,300198,300199,300200;21:300201,300202,300203,300204,300205,300206,300207,300208,300209,300210;22:300211,300212,300213,300214,300215,300216,300217,300218,300219,300220;23:300221,300222,300223,300224,300225,300226,300227,300228,300229,300230;24:300311,300312,300313,300314,300315,300316,300317,300318,300319,300320;25:300321,300322,300323,300324,300325,300326,300327,300328,300329,300330;26:;";
    private static final String[] POINTS = {"_base_max_hp", "_base_phy_att_str", "_base_mag_att_str", "_base_phy_def", "_base_mag_def"};
    private static final int[] DYE_ITEMS = {249, 3233};
    private static final int[] DYE_COUNTS = {9999, 999};

    private LocalTreasureMax() {
    }

    static byte[] fix(byte[] bArr) {
        if (bArr == null) {
            return bArr;
        }
        try {
            bArr = clearStaleBattle(bArr);
        } catch (Throwable th) {
        }
        try {
            bArr = grantDye(bArr);
        } catch (Throwable th2) {
        }
        try {
            bArr = fixInventory(bArr);
        } catch (Throwable th3) {
        }
        try {
            bArr = unlockPalace(bArr);
        } catch (Throwable th4) {
        }
        try {
            return fixHeroes(bArr);
        } catch (Throwable th5) {
            return bArr;
        }
    }

    private static byte[] clearStaleBattle(byte[] bArr) {
        byte[] doc = LocalResourceEngine.doc(bArr, "q7DailyBattle");
        if (doc != null && Boolean.TRUE.equals(BsonLite.boolValue(doc, "active"))) {
            bArr = BsonLite.withProfileDocument(bArr, "q7DailyBattle", BsonLite.EMPTY_DOCUMENT);
        }
        byte[] doc2 = LocalResourceEngine.doc(bArr, "q7Battle");
        if (doc2 != null && !BsonLite.keys(doc2).isEmpty()) {
            return BsonLite.withProfileDocument(bArr, "q7Battle", BsonLite.EMPTY_DOCUMENT);
        }
        return bArr;
    }

    private static boolean exclusive(byte[] bArr) {
        Integer intValue;
        if (bArr == null || (intValue = BsonLite.intValue(bArr, "i")) == null) {
            return false;
        }
        return IDS.contains("," + intValue + ",");
    }

    private static byte[] maxed(byte[] bArr) {
        byte[] doc = LocalResourceEngine.doc(bArr, "tr");
        if (doc == null) {
            return bArr;
        }
        Integer intValue = BsonLite.intValue(doc, "lv");
        Integer intValue2 = BsonLite.intValue(doc, "x");
        if (intValue != null && intValue2 != null && intValue.intValue() >= MAX_LEVEL && intValue2.intValue() >= MAX_EXP) {
            return bArr;
        }
        return BsonLite.withProfileDocument(bArr, "tr", BsonLite.withProfileInt(BsonLite.withProfileInt(doc, "lv", MAX_LEVEL), "x", MAX_EXP));
    }

    private static byte[] fixItems(byte[] bArr, String str) {
        List<byte[]> array = LocalResourceEngine.array(LocalResourceEngine.doc(bArr, str));
        if (array == null || array.isEmpty()) {
            return bArr;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (int i = 0; i < array.size(); i++) {
            byte[] bArr2 = array.get(i);
            if (!(bArr2 instanceof byte[])) {
                arrayList.add(bArr2);
            } else {
                byte[] bArr3 = bArr2;
                byte[] maxed = exclusive(bArr3) ? maxed(bArr3) : bArr3;
                if (maxed != bArr3) {
                    z = true;
                }
                arrayList.add(maxed);
            }
        }
        if (!z) {
            return bArr;
        }
        return BsonLite.withProfileArray(bArr, str, arrayList);
    }

    private static byte[] grantDye(byte[] bArr) {
        byte[] bArr2;
        Integer intValue;
        byte[] doc = LocalResourceEngine.doc(bArr, "inv");
        if (doc == null) {
            return bArr;
        }
        List<byte[]> array = LocalResourceEngine.array(LocalResourceEngine.doc(doc, "items"));
        if (array == null) {
            return bArr;
        }
        ArrayList arrayList = new ArrayList(array);
        boolean z = false;
        for (int i = 0; i < DYE_ITEMS.length; i++) {
            int i2 = DYE_ITEMS[i];
            int i3 = 0;
            for (int i4 = 0; i4 < array.size(); i4++) {
                byte[] bArr3 = array.get(i4);
                if ((bArr3 instanceof byte[]) && (intValue = BsonLite.intValue((bArr2 = bArr3), "i")) != null && intValue.intValue() == i2) {
                    i3 += BsonLite.intValue(bArr2, "w") == null ? 0 : BsonLite.intValue(bArr2, "w").intValue();
                }
            }
            if (i3 < DYE_COUNTS[i]) {
                arrayList.add(BsonLite.document("u", new BsonLite.UuidValue(LocalResourceEngine.uuid()), "i", Integer.valueOf(i2), "w", Integer.valueOf(DYE_COUNTS[i]), "c", 0));
                z = true;
            }
        }
        if (z) {
            return BsonLite.withProfileDocument(bArr, "inv", BsonLite.withProfileArray(doc, "items", arrayList));
        }
        return bArr;
    }

    private static byte[] fixInventory(byte[] bArr) {
        byte[] doc = LocalResourceEngine.doc(bArr, "inv");
        if (doc == null) {
            return bArr;
        }
        byte[] fixItems = fixItems(doc, "items");
        if (fixItems == doc) {
            return bArr;
        }
        return BsonLite.withProfileDocument(bArr, "inv", fixItems);
    }

    private static byte[] fixArtifact(byte[] bArr) {
        if (!Boolean.TRUE.equals(BsonLite.boolValue(bArr, "oa"))) {
            return bArr;
        }
        byte[] doc = LocalResourceEngine.doc(bArr, "ar");
        if (doc == null) {
            return bArr;
        }
        byte[] documentValue = BsonLite.documentValue(doc, "oa");
        if (documentValue == null) {
            documentValue = BsonLite.EMPTY_DOCUMENT;
        }
        byte[] bArr2 = documentValue;
        for (int i = 0; i < POINTS.length; i++) {
            if (BsonLite.intValue(bArr2, POINTS[i]) == null) {
                bArr2 = BsonLite.withProfileInt(bArr2, POINTS[i], 0);
            }
        }
        if (BsonLite.intValue(doc, "cf") == null) {
            doc = BsonLite.withProfileInt(doc, "cf", 100);
        }
        if (!Arrays.equals(documentValue, bArr2) || !Arrays.equals(doc, LocalResourceEngine.doc(bArr, "ar"))) {
            return BsonLite.withProfileDocument(bArr, "ar", BsonLite.withProfileDocument(doc, "oa", bArr2));
        }
        return bArr;
    }

    private static byte[] unlockPalace(byte[] bArr) {
        int indexOf;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (String str : PALACE.split(";")) {
            if (str.length() != 0 && (indexOf = str.indexOf(58)) > 0) {
                try {
                    Integer valueOf = Integer.valueOf(str.substring(0, indexOf));
                    String[] split = str.substring(indexOf + 1).split(",");
                    ArrayList arrayList4 = new ArrayList();
                    for (int i = 0; i < split.length; i++) {
                        if (split[i].length() != 0) {
                            try {
                                Integer valueOf2 = Integer.valueOf(split[i]);
                                arrayList4.add(valueOf2);
                                arrayList3.add(Arrays.asList(valueOf2, 2));
                            } catch (RuntimeException e) {
                            }
                        }
                    }
                    if (!arrayList4.isEmpty()) {
                        arrayList.add(Arrays.asList(valueOf, 2));
                        arrayList2.add(Arrays.asList(valueOf, arrayList4));
                    }
                } catch (RuntimeException e2) {
                }
            }
        }
        if (arrayList.isEmpty()) {
            return bArr;
        }
        byte[] doc = LocalResourceEngine.doc(bArr, "mpd");
        if (doc == null) {
            doc = BsonLite.EMPTY_DOCUMENT;
        }
        return BsonLite.withProfileDocument(bArr, "mpd", BsonLite.withProfileArray(BsonLite.withProfileArray(BsonLite.withProfileArray(doc, "ai", arrayList), "asi", arrayList2), "sr", arrayList3));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:22|23|(5:27|28|29|30|(3:32|33|34)(1:36))|39|28|29|30|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0070 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x002a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static byte[] fixHeroes(byte[] bArr) {
        byte[] bArr2;
        byte[] doc;
        byte[] fixItems;
        byte[] doc2 = LocalResourceEngine.doc(bArr, "heromgr");
        if (doc2 == null) {
            return bArr;
        }
        byte[] documentValue = BsonLite.documentValue(doc2, "hrs");
        if (documentValue == null) {
            return bArr;
        }
        Map<String, byte[]> documentEntries = BsonLite.documentEntries(documentValue);
        if (documentEntries == null || documentEntries.isEmpty()) {
            return bArr;
        }
        for (byte[] bArr3 : documentEntries.values()) {
            if (bArr3 instanceof byte[]) {
                byte[] bArr4 = bArr3;
                Integer intValue = BsonLite.intValue(bArr4, "0");
                byte[] doc3 = LocalResourceEngine.doc(bArr4, "1");
                if (intValue != null && doc3 != null) {
                    try {
                        doc = LocalResourceEngine.doc(doc3, "ti");
                    } catch (Throwable th) {
                    }
                    if (doc != null && (fixItems = fixItems(doc, "items")) != doc) {
                        bArr2 = BsonLite.withProfileDocument(doc3, "ti", fixItems);
                        bArr2 = fixArtifact(bArr2);
                        if (Arrays.equals(doc3, bArr2)) {
                            bArr = BsonLite.withHeroDocument(bArr, intValue.intValue(), bArr2);
                        }
                    }
                    bArr2 = doc3;
                    bArr2 = fixArtifact(bArr2);
                    if (Arrays.equals(doc3, bArr2)) {
                    }
                }
            }
        }
        return bArr;
    }
}
