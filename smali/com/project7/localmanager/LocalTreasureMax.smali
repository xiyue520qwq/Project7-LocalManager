.class final Lcom/project7/localmanager/LocalTreasureMax;
.super Ljava/lang/Object;
.source "LocalTreasureMax.java"


# static fields
.field private static final DYE_COUNTS:[I

.field private static final DYE_ITEMS:[I

.field private static final IDS:Ljava/lang/String; = ",1200,1201,1208,1223,1224,1225,1226,1227,1228,1229,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1330,1331,1335,1336,1337,1338,1339,1340,1341,1342,1345,1346,1347,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1361,1365,1366,1367,1368,1369,1370,1371,1373,1374,1375,1376,1377,1378,1379,1380,"

.field private static final MAX_EXP:I = 0xf50

.field private static final MAX_LEVEL:I = 0x7

.field private static final PALACE:Ljava/lang/String; = "1:300001,300002,300003,300004,300005,300006,300007,300008,300009,300010;2:300011,300012,300013,300014,300015,300016,300017,300018,300019,300020;3:300021,300022,300023,300024,300025,300026,300027,300028,300029,300030;4:300031,300032,300033,300034,300035,300036,300037,300038,300039,300040;5:300041,300042,300043,300044,300045,300046,300047,300048,300049,300050;6:300051,300052,300053,300054,300055,300056,300057,300058,300059,300060;7:300101,300102,300103,300104,300105,300106,300107,300108,300109,300110;8:300111,300112,300113,300114,300115,300116,300117,300118,300119,300120;9:300121,300122,300123,300124,300125,300126,300127,300128,300129,300130;10:300131,300132,300133,300134,300135,300136,300137,300138,300139,300140;11:300061,300062,300063,300064,300065,300066,300067,300068,300069,300070;12:300071,300072,300073,300074,300075,300076,300077,300078,300079,300080;13:300141,300142,300143,300144,300145,300146,300147,300148,300149,300150;14:300151,300152,300153,300154,300155,300156,300157,300158,300159,300160;15:300161,300162,300163,300164,300165,300166,300167,300168,300169,300170;16:300081,300082,300083,300084,300085,300086,300087,300088,300089,300090;17:300171,300172,300173,300174,300175,300176,300177,300178,300179,300180;18:300181,300182,300183,300184,300185,300186,300187,300188,300189,300190;19:300091,300092,300093,300094,300095,300096,300097,300098,300099,300100;20:300191,300192,300193,300194,300195,300196,300197,300198,300199,300200;21:300201,300202,300203,300204,300205,300206,300207,300208,300209,300210;22:300211,300212,300213,300214,300215,300216,300217,300218,300219,300220;23:300221,300222,300223,300224,300225,300226,300227,300228,300229,300230;24:300311,300312,300313,300314,300315,300316,300317,300318,300319,300320;25:300321,300322,300323,300324,300325,300326,300327,300328,300329,300330;26:;"

.field private static final POINTS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    const-string v0, "_base_phy_def"

    const-string v1, "_base_mag_def"

    const-string v2, "_base_max_hp"

    const-string v3, "_base_phy_att_str"

    const-string v4, "_base_mag_att_str"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalTreasureMax;->POINTS:[Ljava/lang/String;

    .line 116
    const/16 v0, 0xf9

    const/16 v1, 0xca1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalTreasureMax;->DYE_ITEMS:[I

    .line 117
    const/16 v0, 0x270f

    const/16 v1, 0x3e7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalTreasureMax;->DYE_COUNTS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static clearStaleBattle([B)[B
    .locals 4

    .line 52
    const-string v0, "q7DailyBattle"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "active"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 56
    :cond_0
    const-string v0, "q7Battle"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    .line 60
    :cond_1
    return-object p0
.end method

.method private static exclusive([B)Z
    .locals 2

    .line 64
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    const-string v1, "i"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 68
    if-nez p0, :cond_1

    .line 69
    return v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ",1200,1201,1208,1223,1224,1225,1226,1227,1228,1229,1233,1234,1235,1236,1237,1238,1239,1240,1241,1242,1243,1244,1245,1246,1247,1248,1249,1250,1251,1252,1253,1254,1255,1256,1257,1258,1259,1260,1261,1262,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1330,1331,1335,1336,1337,1338,1339,1340,1341,1342,1345,1346,1347,1350,1351,1352,1353,1354,1355,1356,1357,1358,1359,1361,1365,1366,1367,1368,1369,1370,1371,1373,1374,1375,1376,1377,1378,1379,1380,"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static fix([B)[B
    .locals 1

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object p0

    .line 28
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/project7/localmanager/LocalTreasureMax;->clearStaleBattle([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 32
    :goto_1
    :try_start_1
    invoke-static {p0}, Lcom/project7/localmanager/LocalTreasureMax;->grantDye([B)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :goto_2
    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 36
    :goto_3
    :try_start_2
    invoke-static {p0}, Lcom/project7/localmanager/LocalTreasureMax;->fixInventory([B)[B

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 37
    :goto_4
    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 40
    :goto_5
    :try_start_3
    invoke-static {p0}, Lcom/project7/localmanager/LocalTreasureMax;->unlockPalace([B)[B

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 41
    :goto_6
    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 44
    :goto_7
    :try_start_4
    invoke-static {p0}, Lcom/project7/localmanager/LocalTreasureMax;->fixHeroes([B)[B

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-object p0

    .line 45
    :catchall_4
    move-exception v0

    .line 46
    return-object p0
.end method

.method private static fixArtifact([B)[B
    .locals 8

    .line 171
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "oa"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    return-object p0

    .line 174
    :cond_0
    const-string v0, "ar"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 175
    if-nez v2, :cond_1

    .line 176
    return-object p0

    .line 178
    :cond_1
    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 179
    if-nez v3, :cond_2

    .line 180
    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 182
    :cond_2
    nop

    .line 183
    const/4 v4, 0x0

    move-object v6, v3

    const/4 v5, 0x0

    :goto_0
    sget-object v7, Lcom/project7/localmanager/LocalTreasureMax;->POINTS:[Ljava/lang/String;

    array-length v7, v7

    if-lt v5, v7, :cond_5

    .line 188
    const-string v4, "cf"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    .line 189
    const/16 v5, 0x64

    invoke-static {v2, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 191
    :cond_3
    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    return-object p0

    .line 194
    :cond_4
    invoke-static {v2, v1, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 184
    :cond_5
    sget-object v7, Lcom/project7/localmanager/LocalTreasureMax;->POINTS:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_6

    .line 185
    sget-object v7, Lcom/project7/localmanager/LocalTreasureMax;->POINTS:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-static {v6, v7, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    .line 183
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private static fixHeroes([B)[B
    .locals 6

    .line 254
    const-string v0, "ti"

    const-string v1, "heromgr"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 255
    if-nez v1, :cond_0

    .line 256
    return-object p0

    .line 258
    :cond_0
    const-string v2, "hrs"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 259
    if-nez v1, :cond_1

    .line 260
    return-object p0

    .line 262
    :cond_1
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    .line 266
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 267
    nop

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 297
    return-object p0

    .line 268
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 269
    instance-of v3, v2, [B

    if-nez v3, :cond_5

    .line 270
    goto :goto_0

    .line 272
    :cond_5
    check-cast v2, [B

    .line 273
    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 274
    const-string v4, "1"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 275
    if-eqz v3, :cond_3

    if-nez v2, :cond_6

    .line 276
    goto :goto_0

    .line 278
    :cond_6
    nop

    .line 280
    :try_start_0
    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 281
    if-eqz v4, :cond_7

    .line 282
    const-string v5, "items"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalTreasureMax;->fixItems([BLjava/lang/String;)[B

    move-result-object v5

    .line 283
    if-eq v5, v4, :cond_7

    .line 284
    invoke-static {v2, v0, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    goto :goto_1

    :catchall_0
    move-exception v4

    .line 290
    :cond_7
    move-object v4, v2

    :goto_1
    :try_start_1
    invoke-static {v4}, Lcom/project7/localmanager/LocalTreasureMax;->fixArtifact([B)[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 291
    :goto_2
    goto :goto_3

    :catchall_1
    move-exception v5

    goto :goto_2

    .line 293
    :goto_3
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    .line 294
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2, v4}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object p0

    goto :goto_0

    .line 264
    :cond_8
    :goto_4
    return-object p0
.end method

.method private static fixInventory([B)[B
    .locals 3

    .line 158
    const-string v0, "inv"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 159
    if-nez v1, :cond_0

    .line 160
    return-object p0

    .line 162
    :cond_0
    const-string v2, "items"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalTreasureMax;->fixItems([BLjava/lang/String;)[B

    move-result-object v2

    .line 163
    if-ne v2, v1, :cond_1

    .line 164
    return-object p0

    .line 166
    :cond_1
    invoke-static {p0, v0, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static fixItems([BLjava/lang/String;)[B
    .locals 6

    .line 89
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 93
    :cond_0
    nop

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 108
    if-nez v3, :cond_1

    .line 109
    return-object p0

    .line 111
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0

    .line 96
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 97
    instance-of v5, v4, [B

    if-nez v5, :cond_3

    .line 98
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    goto :goto_2

    .line 101
    :cond_3
    check-cast v4, [B

    .line 102
    invoke-static {v4}, Lcom/project7/localmanager/LocalTreasureMax;->exclusive([B)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Lcom/project7/localmanager/LocalTreasureMax;->maxed([B)[B

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v4

    .line 103
    :goto_1
    if-eq v5, v4, :cond_5

    .line 104
    const/4 v3, 0x1

    .line 106
    :cond_5
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_6
    :goto_3
    return-object p0
.end method

.method private static grantDye([B)[B
    .locals 15

    .line 120
    const-string v0, "inv"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 121
    if-nez v1, :cond_0

    .line 122
    return-object p0

    .line 124
    :cond_0
    const-string v2, "items"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    .line 125
    if-nez v3, :cond_1

    .line 126
    return-object p0

    .line 128
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    nop

    .line 130
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    sget-object v8, Lcom/project7/localmanager/LocalTreasureMax;->DYE_ITEMS:[I

    array-length v8, v8

    if-lt v6, v8, :cond_3

    .line 151
    if-nez v7, :cond_2

    .line 152
    return-object p0

    .line 154
    :cond_2
    invoke-static {v1, v2, v4}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 131
    :cond_3
    sget-object v8, Lcom/project7/localmanager/LocalTreasureMax;->DYE_ITEMS:[I

    aget v8, v8, v6

    .line 132
    nop

    .line 133
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const-string v12, "i"

    const-string v13, "w"

    if-lt v9, v11, :cond_5

    .line 144
    sget-object v9, Lcom/project7/localmanager/LocalTreasureMax;->DYE_COUNTS:[I

    aget v9, v9, v6

    if-lt v10, v9, :cond_4

    .line 145
    goto :goto_2

    .line 147
    :cond_4
    new-instance v7, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcom/project7/localmanager/LocalTreasureMax;->DYE_COUNTS:[I

    aget v9, v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    const-string v14, "u"

    aput-object v14, v11, v5

    const/4 v14, 0x1

    aput-object v7, v11, v14

    const/4 v7, 0x2

    aput-object v12, v11, v7

    const/4 v7, 0x3

    aput-object v8, v11, v7

    const/4 v7, 0x4

    aput-object v13, v11, v7

    const/4 v7, 0x5

    aput-object v9, v11, v7

    const-string v7, "c"

    const/4 v8, 0x6

    aput-object v7, v11, v8

    const/4 v7, 0x7

    aput-object v10, v11, v7

    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    .line 148
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    const/4 v7, 0x1

    .line 130
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 134
    :cond_5
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 135
    instance-of v14, v11, [B

    if-nez v14, :cond_6

    .line 136
    goto :goto_4

    .line 138
    :cond_6
    check-cast v11, [B

    .line 139
    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 140
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v8, :cond_8

    .line 141
    invoke-static {v11, v13}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-nez v12, :cond_7

    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    invoke-static {v11, v13}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_3
    add-int/2addr v10, v11

    .line 133
    :cond_8
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private static maxed([B)[B
    .locals 8

    .line 75
    const-string v0, "tr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 76
    if-nez v1, :cond_0

    .line 77
    return-object p0

    .line 79
    :cond_0
    const-string v2, "lv"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 80
    const-string v4, "x"

    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 81
    const/16 v6, 0xf50

    const/4 v7, 0x7

    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_1

    .line 82
    return-object p0

    .line 84
    :cond_1
    invoke-static {v1, v2, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1, v4, v6}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 85
    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static unlockPalace([B)[B
    .locals 14

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    const-string v3, "1:300001,300002,300003,300004,300005,300006,300007,300008,300009,300010;2:300011,300012,300013,300014,300015,300016,300017,300018,300019,300020;3:300021,300022,300023,300024,300025,300026,300027,300028,300029,300030;4:300031,300032,300033,300034,300035,300036,300037,300038,300039,300040;5:300041,300042,300043,300044,300045,300046,300047,300048,300049,300050;6:300051,300052,300053,300054,300055,300056,300057,300058,300059,300060;7:300101,300102,300103,300104,300105,300106,300107,300108,300109,300110;8:300111,300112,300113,300114,300115,300116,300117,300118,300119,300120;9:300121,300122,300123,300124,300125,300126,300127,300128,300129,300130;10:300131,300132,300133,300134,300135,300136,300137,300138,300139,300140;11:300061,300062,300063,300064,300065,300066,300067,300068,300069,300070;12:300071,300072,300073,300074,300075,300076,300077,300078,300079,300080;13:300141,300142,300143,300144,300145,300146,300147,300148,300149,300150;14:300151,300152,300153,300154,300155,300156,300157,300158,300159,300160;15:300161,300162,300163,300164,300165,300166,300167,300168,300169,300170;16:300081,300082,300083,300084,300085,300086,300087,300088,300089,300090;17:300171,300172,300173,300174,300175,300176,300177,300178,300179,300180;18:300181,300182,300183,300184,300185,300186,300187,300188,300189,300190;19:300091,300092,300093,300094,300095,300096,300097,300098,300099,300100;20:300191,300192,300193,300194,300195,300196,300197,300198,300199,300200;21:300201,300202,300203,300204,300205,300206,300207,300208,300209,300210;22:300211,300212,300213,300214,300215,300216,300217,300218,300219,300220;23:300221,300222,300223,300224,300225,300226,300227,300228,300229,300230;24:300311,300312,300313,300314,300315,300316,300317,300318,300319,300320;25:300321,300322,300323,300324,300325,300326,300327,300328,300329,300330;26:;"

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 204
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-lt v5, v6, :cond_2

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    return-object p0

    .line 243
    :cond_0
    const-string v3, "mpd"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 244
    if-nez v4, :cond_1

    .line 245
    sget-object v4, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 247
    :cond_1
    const-string v5, "ai"

    invoke-static {v4, v5, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 248
    const-string v4, "asi"

    invoke-static {v0, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 249
    const-string v1, "sr"

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 250
    invoke-static {p0, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 205
    :cond_2
    aget-object v6, v3, v5

    .line 206
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 207
    goto/16 :goto_3

    .line 209
    :cond_3
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 210
    if-gtz v7, :cond_4

    .line 211
    goto/16 :goto_3

    .line 215
    :cond_4
    :try_start_0
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    nop

    .line 219
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 220
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 221
    const/4 v9, 0x0

    :goto_1
    array-length v10, v6

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-lt v9, v10, :cond_6

    .line 234
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 235
    goto :goto_3

    .line 237
    :cond_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v9, v11, [Ljava/lang/Integer;

    aput-object v8, v9, v4

    aput-object v6, v9, v12

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-array v6, v11, [Ljava/io/Serializable;

    aput-object v8, v6, v4

    aput-object v7, v6, v12

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 222
    :cond_6
    aget-object v10, v6, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7

    .line 223
    goto :goto_2

    .line 227
    :cond_7
    :try_start_1
    aget-object v10, v6, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    nop

    .line 231
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v11, v11, [Ljava/lang/Integer;

    aput-object v10, v11, v4

    aput-object v13, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 228
    :catch_0
    move-exception v10

    .line 229
    nop

    .line 221
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 216
    :catch_1
    move-exception v6

    .line 217
    nop

    .line 204
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method
