.class final Lcom/project7/localmanager/LocalCommerceEngine;
.super Ljava/lang/Object;
.source "LocalCommerceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalCommerceEngine$Rejected;,
        Lcom/project7/localmanager/LocalCommerceEngine$Result;
    }
.end annotation


# static fields
.field private static final COUNT_KEYS:[Ljava/lang/String;

.field private static final CURRENCY_CALLBACKS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const-string v0, "din"

    const-string v1, "win"

    const-string v2, "ton"

    const-string v3, "mon"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalCommerceEngine;->COUNT_KEYS:[Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/project7/localmanager/LocalCommerceEngine;->CURRENCY_CALLBACKS:Ljava/util/Map;

    .line 15
    const-string v1, "money"

    const-string v2, "updateMoney"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v1, "summonCoin"

    const-string v2, "updateSummonCoin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v1, "skinCoin"

    const-string v2, "updateSkinCoin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v1, "tCoin"

    const-string v2, "updateTCoin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v1, "bCoin"

    const-string v2, "updateBCoin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "wCoin"

    const-string v2, "updateWCoin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "souvenir"

    const-string v2, "updateSouvenirCoin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "lxtlCoin"

    const-string v2, "updateLxtlCoin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "sCoin"

    const-string v2, "updateSCoin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "newFriendCoin"

    const-string v2, "updateNewFriendCoin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addItems(Lcom/project7/localmanager/LocalCommerceEngine$Result;III)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalCommerceEngine$Result;",
            "III)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 244
    move-object/from16 v0, p0

    move/from16 v1, p3

    if-lez p2, :cond_6

    if-lez v1, :cond_6

    .line 245
    iget-object v2, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    const-string v3, "inv"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 246
    const-string v4, "items"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    .line 247
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move/from16 v9, p2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "i"

    const-string v12, "w"

    const/4 v13, 0x0

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 250
    invoke-static {v5, v10}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v10

    .line 251
    if-eqz v10, :cond_1

    .line 252
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v10, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-lez v9, :cond_0

    .line 253
    invoke-static {v10, v12}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v11

    .line 254
    sub-int v14, v1, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 255
    if-lez v13, :cond_0

    .line 256
    invoke-static {v11, v13}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    invoke-static {v10, v12, v11}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v10

    .line 257
    sub-int/2addr v9, v13

    .line 258
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    goto :goto_0

    .line 251
    :cond_1
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u80cc\u5305\u6570\u636e\u683c\u5f0f\u5f02\u5e38\uff0c\u672a\u6267\u884c\u8d2d\u4e70\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    int-to-long v14, v9

    move/from16 p2, v9

    int-to-long v8, v1

    add-long/2addr v14, v8

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    div-long/2addr v14, v8

    .line 265
    const-wide/16 v8, 0x1f4

    cmp-long v5, v14, v8

    if-gtz v5, :cond_5

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-lez v5, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v16, v2

    move-object v10, v3

    int-to-long v2, v5

    add-long/2addr v2, v14

    cmp-long v2, v2, v8

    if-gtz v2, :cond_5

    goto :goto_1

    :cond_3
    move-object/from16 v16, v2

    move-object v10, v3

    .line 266
    :goto_1
    move/from16 v9, p2

    :goto_2
    if-lez v9, :cond_4

    .line 267
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 268
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "-"

    const-string v8, ""

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x18

    invoke-virtual {v3, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 269
    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "u"

    aput-object v8, v5, v13

    const/4 v8, 0x1

    new-instance v14, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v14, v3}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v14, v5, v8

    const/4 v3, 0x2

    aput-object v11, v5, v3

    const/4 v3, 0x3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    const/4 v3, 0x4

    aput-object v12, v5, v3

    const/4 v3, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    const/4 v3, 0x6

    const-string v8, "c"

    aput-object v8, v5, v3

    const/4 v3, 0x7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    const/16 v3, 0x8

    const-string v8, "ctt"

    aput-object v8, v5, v3

    const/16 v3, 0x9

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v17, 0x3e8

    div-long v14, v14, v17

    long-to-int v8, v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v3

    .line 269
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    .line 271
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    sub-int/2addr v9, v2

    .line 274
    goto :goto_2

    .line 275
    :cond_4
    move-object/from16 v1, v16

    invoke-static {v1, v4, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 276
    iget-object v2, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v2, v10, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 277
    return-object v7

    .line 265
    :cond_5
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u80cc\u5305\u7a7a\u95f4\u4e0d\u8db3\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_6
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u65e0\u6548\u7684\u5546\u54c1\u6570\u91cf\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static apply([BLcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalCommerceEngine$Result;
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/project7/localmanager/LocalCommerceEngine;->apply([BLcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/String;[BZ)Lcom/project7/localmanager/LocalCommerceEngine$Result;

    move-result-object p0

    return-object p0
.end method

.method static apply([BLcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/String;[BZ)Lcom/project7/localmanager/LocalCommerceEngine$Result;
    .locals 12

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    invoke-static/range {v4 .. v11}, Lcom/project7/localmanager/LocalCommerceEngine;->apply([BLcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/String;[BZJLjava/util/Map;)Lcom/project7/localmanager/LocalCommerceEngine$Result;

    move-result-object v0

    return-object v0
.end method

.method static apply([BLcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/String;[BZJLjava/util/Map;)Lcom/project7/localmanager/LocalCommerceEngine$Result;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/project7/localmanager/LocalCommerceCatalog;",
            "Ljava/lang/String;",
            "[BZJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[J>;)",
            "Lcom/project7/localmanager/LocalCommerceEngine$Result;"
        }
    .end annotation

    .line 44
    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "queryItemDetail"

    const-string v11, "buySkinRequest"

    const-string v12, "setSkinRequest"

    const-string v13, "buyCardMallItem"

    new-instance v14, Lcom/project7/localmanager/LocalCommerceEngine$Result;

    invoke-direct {v14, p0}, Lcom/project7/localmanager/LocalCommerceEngine$Result;-><init>([B)V

    .line 46
    :try_start_0
    invoke-static/range {p2 .. p3}, Lcom/project7/localmanager/LocalSpecialItemEngine;->handles(Ljava/lang/String;[B)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v2, "\u7279\u6b8a\u9053\u5177\u9700\u8981\u901a\u8fc7\u5468\u76ee\u4e8b\u52a1\u8d2d\u4e70\uff0c\u672a\u6263\u6b3e\u3002"

    invoke-direct {v0, v2}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    :goto_0
    const-string v2, "buyMoney"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v14, v0, v9}, Lcom/project7/localmanager/LocalCommerceEngine;->charge(Lcom/project7/localmanager/LocalCommerceEngine$Result;Lcom/project7/localmanager/LocalCommerceCatalog;[B)V

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v14, v0, v9}, Lcom/project7/localmanager/LocalCommerceEngine;->buy(Lcom/project7/localmanager/LocalCommerceEngine$Result;Lcom/project7/localmanager/LocalCommerceCatalog;[B)V

    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v14, v0, v9}, Lcom/project7/localmanager/LocalCommerceEngine;->equip(Lcom/project7/localmanager/LocalCommerceEngine$Result;Lcom/project7/localmanager/LocalCommerceCatalog;[B)V

    goto :goto_1

    .line 51
    :cond_4
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v14, v9}, Lcom/project7/localmanager/LocalCommerceEngine;->itemDetail(Lcom/project7/localmanager/LocalCommerceEngine$Result;[B)V

    goto :goto_1

    .line 52
    :cond_5
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalCommerceEngine;->buySkin(Lcom/project7/localmanager/LocalCommerceEngine$Result;Lcom/project7/localmanager/LocalCommerceCatalog;[BJLjava/util/Map;)V

    goto :goto_1

    .line 53
    :cond_6
    const-string v0, "yuanbaoExchangeCrystal"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v4, "yuanbao"

    const-string v5, "crystal"

    const/16 v6, 0xa

    const/4 v7, 0x1

    move-object v2, v14

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalCommerceEngine;->exchange(Lcom/project7/localmanager/LocalCommerceEngine$Result;[BLjava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 54
    :cond_7
    const-string v0, "crystalExchangeSkinCoin"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v4, "crystal"

    const-string v5, "skinCoin"

    const/4 v6, 0x1

    const/16 v7, 0x32

    move-object v2, v14

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lcom/project7/localmanager/LocalCommerceEngine;->exchange(Lcom/project7/localmanager/LocalCommerceEngine$Result;[BLjava/lang/String;Ljava/lang/String;II)V

    .line 68
    :goto_1
    goto/16 :goto_4

    .line 55
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "unsupported commerce method"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/project7/localmanager/LocalCommerceEngine$Rejected; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 57
    :goto_2
    iput-object v1, v14, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 58
    iget-object v1, v14, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 59
    nop

    .line 60
    instance-of v1, v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v0, "\u6570\u503c\u8d85\u51fa\u8303\u56f4\uff0c\u64cd\u4f5c\u672a\u6267\u884c\u3002"

    .line 59
    :goto_3
    const-string v1, "m"

    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->stringDocument(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "showMessageStr"

    invoke-virtual {v14, v1, v0}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 61
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v0, :cond_a

    new-array v0, v4, [Ljava/lang/Object;

    const-string v6, "r"

    aput-object v6, v0, v5

    .line 62
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v0, v3

    const-string v6, "i"

    aput-object v6, v0, v2

    sget-object v6, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v6, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 61
    const-string v6, "replyBuyCardMallItem"

    invoke-virtual {v14, v6, v0}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 63
    :cond_a
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "sid"

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalCommerceEngine;->uuid([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalCommerceEngine;->skinReply(ZLjava/lang/String;)[B

    move-result-object v0

    const-string v6, "setSkinReply"

    invoke-virtual {v14, v6, v0}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 64
    :cond_b
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-array v0, v4, [Ljava/lang/Object;

    const-string v6, "s"

    aput-object v6, v0, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v0, v3

    const-string v6, "id"

    aput-object v6, v0, v2

    invoke-static {v9, v6}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v6, "buySkinReply"

    invoke-virtual {v14, v6, v0}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 65
    :cond_c
    const-string v0, "u"

    invoke-static {v9, v0}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v6, :cond_d

    .line 67
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    new-instance v0, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v0, v6}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v0, v4, v3

    const-string v0, "d"

    aput-object v0, v4, v2

    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object v0, v4, v1

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "queryItemDetailReply"

    invoke-virtual {v14, v1, v0}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 69
    :cond_d
    :goto_4
    return-object v14
.end method

.method private static arrayPairs([BLjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 413
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalCommerceEngine;->pairCounts([B)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalCommerceEngine;->pairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buy(Lcom/project7/localmanager/LocalCommerceEngine$Result;Lcom/project7/localmanager/LocalCommerceCatalog;[B)V
    .locals 17

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "store_id"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalCommerceEngine;->required([BLjava/lang/String;)I

    move-result v2

    .line 201
    const-string v3, "num"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalCommerceEngine;->required([BLjava/lang/String;)I

    move-result v4

    .line 202
    move-object/from16 v5, p1

    iget-object v5, v5, Lcom/project7/localmanager/LocalCommerceCatalog;->products:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;

    .line 203
    if-eqz v5, :cond_a

    .line 204
    if-lez v4, :cond_9

    iget v6, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->max:I

    if-lez v6, :cond_0

    iget v6, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->max:I

    if-gt v4, v6, :cond_9

    :cond_0
    iget-object v6, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 205
    const-string v7, "level"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v6

    iget v7, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->level:I

    if-lt v6, v7, :cond_9

    .line 206
    const-string v6, "coin_type"

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    .line 207
    iget-object v6, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    const-string v7, "weeknum"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v6

    const-string v7, "w"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v6

    .line 208
    iget-object v8, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    const-string v9, "ldd"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalCommerceEngine;->normalizeStoryCounts([BI)[B

    move-result-object v8

    .line 209
    invoke-static {v8}, Lcom/project7/localmanager/LocalCommerceEngine;->storyCounts([B)Ljava/util/Map;

    move-result-object v10

    .line 210
    iget v11, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->storyLimit:I

    const/4 v12, 0x0

    if-lez v11, :cond_2

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v13, Lcom/project7/localmanager/LocalCommerceEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalCommerceEngine$$ExternalSyntheticLambda0;

    invoke-interface {v10, v11, v13}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 212
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v13

    .line 213
    iget v14, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->storyLimit:I

    if-gt v13, v14, :cond_1

    .line 214
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {v10}, Lcom/project7/localmanager/LocalCommerceEngine;->storyPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    const-string v11, "zin"

    invoke-static {v8, v11, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v8

    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u672c\u5468\u76ee\u5df2\u8d2d\u4e70\u6b64\u4efb\u52a1\u9053\u5177\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_2
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 218
    move v11, v12

    :goto_1
    const/4 v13, 0x4

    if-ge v11, v13, :cond_6

    .line 219
    sget-object v13, Lcom/project7/localmanager/LocalCommerceEngine;->COUNT_KEYS:[Ljava/lang/String;

    aget-object v13, v13, v11

    invoke-static {v8, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/project7/localmanager/LocalCommerceEngine;->pairCounts([B)Ljava/util/Map;

    move-result-object v13

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_2

    :cond_3
    move v14, v12

    :goto_2
    invoke-static {v14, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v14

    .line 221
    iget-object v15, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->limits:[I

    aget v15, v15, v11

    if-lez v15, :cond_5

    iget-object v15, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->limits:[I

    aget v15, v15, v11

    if-gt v14, v15, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u5546\u54c1\u5df2\u8fbe\u5230\u9650\u8d2d\u6b21\u6570\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_5
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 225
    :cond_6
    iget-object v11, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->costs:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 226
    iget-object v15, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14, v4}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v14

    invoke-static {v15, v12, v14}, Lcom/project7/localmanager/LocalCommerceEngine;->spend([BLjava/lang/String;I)[B

    move-result-object v12

    iput-object v12, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 227
    const/4 v12, 0x0

    goto :goto_4

    .line 228
    :cond_7
    iget v11, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->quantity:I

    invoke-static {v11, v4}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v11

    .line 229
    iget v12, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->item:I

    iget v14, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->wrap:I

    invoke-static {v0, v12, v11, v14}, Lcom/project7/localmanager/LocalCommerceEngine;->addItems(Lcom/project7/localmanager/LocalCommerceEngine$Result;III)Ljava/util/List;

    move-result-object v12

    .line 230
    move-object v14, v8

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v13, :cond_8

    sget-object v15, Lcom/project7/localmanager/LocalCommerceEngine;->COUNT_KEYS:[Ljava/lang/String;

    aget-object v15, v15, v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Lcom/project7/localmanager/LocalCommerceEngine;->pairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v14

    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x4

    goto :goto_5

    .line 231
    :cond_8
    iget-object v8, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v8, v9, v14}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v8

    iput-object v8, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 232
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalCommerceEngine;->currencies(Lcom/project7/localmanager/LocalCommerceEngine$Result;)V

    .line 233
    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const-string v13, "i"

    const/4 v14, 0x0

    aput-object v13, v9, v14

    const/4 v15, 0x1

    aput-object v12, v9, v15

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v9

    const-string v12, "updateItems"

    invoke-virtual {v0, v12, v9}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 234
    const/4 v9, 0x4

    new-array v12, v9, [Ljava/lang/Object;

    const-string v9, "r"

    aput-object v9, v12, v14

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v12, v15

    aput-object v13, v12, v8

    sget-object v9, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v13, 0x3

    aput-object v9, v12, v13

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v9

    const-string v12, "replyBuyCardMallItem"

    invoke-virtual {v0, v12, v9}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 235
    const-string v9, "ext"

    invoke-static {v1, v9}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 236
    const/16 v9, 0x14

    new-array v9, v9, [Ljava/lang/Object;

    const-string v12, "d"

    const/4 v14, 0x0

    aput-object v12, v9, v14

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    invoke-static {v12}, Lcom/project7/localmanager/LocalCommerceEngine;->pairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    aput-object v12, v9, v15

    aput-object v7, v9, v8

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-static {v7}, Lcom/project7/localmanager/LocalCommerceEngine;->pairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v9, v13

    const-string v7, "t"

    const/4 v12, 0x4

    aput-object v7, v9, v12

    const/4 v7, 0x5

    .line 237
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    invoke-static {v12}, Lcom/project7/localmanager/LocalCommerceEngine;->pairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v12

    aput-object v12, v9, v7

    const/4 v7, 0x6

    const-string v12, "m"

    aput-object v12, v9, v7

    const/4 v7, 0x7

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-static {v6}, Lcom/project7/localmanager/LocalCommerceEngine;->pairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    aput-object v6, v9, v7

    const/16 v6, 0x8

    const-string v7, "z"

    aput-object v7, v9, v6

    const/16 v6, 0x9

    invoke-static {v10}, Lcom/project7/localmanager/LocalCommerceEngine;->storyPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    aput-object v7, v9, v6

    const/16 v6, 0xa

    const-string v7, "itemid"

    aput-object v7, v9, v6

    const/16 v6, 0xb

    iget v7, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->item:I

    .line 238
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    const/16 v6, 0xc

    aput-object v3, v9, v6

    const/16 v3, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    const/16 v3, 0xe

    const-string v4, "result"

    aput-object v4, v9, v3

    const/16 v3, 0xf

    new-array v4, v8, [Ljava/lang/Object;

    const-string v6, "item"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    new-array v6, v8, [Ljava/lang/Integer;

    iget v5, v5, Lcom/project7/localmanager/LocalCommerceCatalog$Product;->item:I

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v15

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v15

    .line 238
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    aput-object v4, v9, v3

    const/16 v3, 0x10

    const-string v4, "sd"

    aput-object v4, v9, v3

    const/16 v3, 0x11

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    const/16 v2, 0x12

    const-string v3, "silence"

    aput-object v3, v9, v2

    const/16 v2, 0x13

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 240
    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v9, v2

    .line 236
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "buyCardMallItemDone"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 241
    return-void

    .line 206
    :cond_9
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u8d2d\u4e70\u6570\u91cf\u3001\u7b49\u7ea7\u6216\u652f\u4ed8\u65b9\u5f0f\u4e0d\u7b26\u5408\u6761\u4ef6\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_a
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u6b64\u5546\u54c1\u7684\u7279\u6b8a\u89c4\u5219\u5c1a\u672a\u5b9e\u73b0\uff0c\u672a\u6263\u9664\u4efb\u4f55\u4ee3\u5e01\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buySkin(Lcom/project7/localmanager/LocalCommerceEngine$Result;Lcom/project7/localmanager/LocalCommerceCatalog;[BJLjava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalCommerceEngine$Result;",
            "Lcom/project7/localmanager/LocalCommerceCatalog;",
            "[BJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    .line 74
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    const-string v5, "id"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->required([BLjava/lang/String;)I

    move-result v6

    .line 75
    iget-object v7, v1, Lcom/project7/localmanager/LocalCommerceCatalog;->skinProducts:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;

    .line 76
    iget-object v1, v1, Lcom/project7/localmanager/LocalCommerceCatalog;->skins:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 77
    if-eqz v1, :cond_1b

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->purchasable()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 79
    const-string v8, "uri"

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1a

    .line 80
    invoke-virtual {v7}, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->activityKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v8, p5

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 81
    const/4 v8, 0x0

    if-nez v2, :cond_0

    iget-wide v9, v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->start:J

    goto :goto_0

    :cond_0
    aget-wide v9, v2, v8

    :goto_0
    const/4 v11, 0x1

    if-nez v2, :cond_1

    iget-wide v12, v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->end:J

    goto :goto_1

    :cond_1
    aget-wide v12, v2, v11

    .line 82
    :goto_1
    iget-wide v14, v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->start:J

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-lez v2, :cond_3

    cmp-long v2, v3, v9

    if-ltz v2, :cond_2

    cmp-long v2, v3, v12

    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u8be5\u65f6\u88c5\u6d3b\u52a8\u5c1a\u672a\u5f00\u653e\u6216\u5df2\u7ecf\u7ed3\u675f\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_3
    :goto_2
    aget v1, v1, v8

    .line 84
    iget-object v2, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    const-string v9, "heromgr"

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    iget-object v10, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v10, v1}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v10

    .line 85
    nop

    .line 86
    const-string v12, "sk"

    invoke-static {v10, v12}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v8

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 87
    invoke-static {v10, v12}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11, v15}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v11

    const-string v15, "i"

    invoke-static {v11, v15}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v11

    if-ne v11, v6, :cond_4

    .line 88
    const/4 v14, 0x1

    .line 87
    :cond_4
    const/4 v11, 0x1

    goto :goto_3

    .line 89
    :cond_5
    const-string v11, "ps"

    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v13

    .line 90
    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    if-nez v14, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v8, 0x1

    .line 92
    :goto_5
    iget v14, v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->type:I

    move-object/from16 v16, v5

    const-string v5, "es"

    move-object/from16 p5, v11

    const/4 v11, 0x4

    if-ne v14, v11, :cond_9

    if-nez v8, :cond_9

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    .line 93
    :cond_8
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u9700\u8981\u5148\u89e3\u9501\u8be5\u89c9\u9192\u65f6\u88c5\uff0c\u624d\u80fd\u8d2d\u4e70\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_9
    :goto_6
    nop

    .line 95
    iget v14, v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->type:I

    const/4 v2, 0x6

    const-string v11, "item:"

    move-object/from16 v18, v5

    const/4 v5, 0x3

    if-ne v14, v2, :cond_c

    if-nez v8, :cond_c

    .line 96
    iget-object v8, v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->costs:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/16 v17, 0x0

    :cond_a
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v17, v14

    goto :goto_7

    :cond_b
    move-object/from16 v2, v17

    goto :goto_a

    .line 98
    :cond_c
    const-string v8, "crystal"

    const-string v14, "skinCoin"

    const-string v2, "yuanbao"

    filled-new-array {v8, v14, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v17, 0x0

    :goto_8
    if-ge v8, v5, :cond_e

    aget-object v14, v2, v8

    .line 99
    if-nez v17, :cond_d

    iget-object v5, v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->costs:Ljava/util/Map;

    invoke-interface {v5, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v17, v14

    .line 98
    :cond_d
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x3

    goto :goto_8

    .line 100
    :cond_e
    if-nez v17, :cond_10

    iget-object v2, v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->costs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 101
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    move-object/from16 v17, v5

    goto :goto_9

    .line 100
    :cond_10
    move-object/from16 v2, v17

    .line 103
    :goto_a
    if-eqz v2, :cond_19

    .line 104
    invoke-static {v10, v12}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v5, v8

    const/16 v8, 0x1f4

    if-ge v5, v8, :cond_18

    .line 106
    iget-object v5, v7, Lcom/project7/localmanager/LocalCommerceCatalog$SkinProduct;->costs:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    goto :goto_b

    .line 108
    :cond_11
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_14

    .line 109
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 110
    new-instance v14, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v8, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-direct {v14, v8}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 111
    :try_start_0
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v20, v2

    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v14, v2, v7}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 113
    iget-object v2, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iput-object v2, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 114
    iget-object v2, v14, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v8, v7, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    iget-object v7, v7, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    invoke-virtual {v0, v8, v7}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_c

    .line 115
    :cond_12
    goto :goto_d

    .line 112
    :catch_0
    move-exception v0

    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u8d2d\u4e70\u65f6\u88c5\u6240\u9700\u9053\u5177\u4e0d\u8db3\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_13
    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2, v8, v7}, Lcom/project7/localmanager/LocalCommerceEngine;->spend([BLjava/lang/String;I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 116
    :goto_d
    move-object/from16 v2, v20

    goto/16 :goto_b

    .line 108
    :cond_14
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u65e0\u6548\u7684\u65f6\u88c5\u4ef7\u683c\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_15
    iget-object v2, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v2

    const-string v5, "s"

    const-string v7, "d"

    const/4 v8, 0x2

    if-eqz v2, :cond_16

    .line 118
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "-"

    const-string v13, ""

    invoke-virtual {v2, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x18

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v6, v2, v3, v4}, Lcom/project7/localmanager/LocalCommerceEngine;->purchasedSkin(ILjava/lang/String;J)[B

    move-result-object v3

    .line 120
    invoke-static {v10, v12}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    invoke-static {v10, v12, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 121
    iget-object v10, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v10, v1, v4}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v4

    iput-object v4, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 122
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v10, "h"

    const/4 v11, 0x0

    aput-object v10, v4, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v4, v10

    aput-object v5, v4, v8

    new-instance v1, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v1, v2}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const/4 v1, 0x4

    aput-object v7, v4, v1

    const/4 v1, 0x5

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "syncOneSkinData"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 123
    goto :goto_e

    .line 124
    :cond_16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 126
    nop

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v13, v1, v15}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    move-object/from16 v3, p5

    invoke-static {v2, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 128
    iget-object v2, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v2, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 129
    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "syncHeroMgrPendingData"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 131
    :goto_e
    iget-object v1, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v3, v18

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_17
    iget-object v4, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v4, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 135
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalCommerceEngine;->currencies(Lcom/project7/localmanager/LocalCommerceEngine$Result;)V

    .line 136
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v16, v1, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "buySkinReply"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 137
    return-void

    .line 105
    :cond_18
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u8863\u6a71\u6570\u91cf\u5df2\u8fbe\u5230\u672c\u5730\u5b89\u5168\u4e0a\u9650\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_19
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u65f6\u88c5\u652f\u4ed8\u65b9\u5f0f\u4e0d\u5b8c\u6574\uff0c\u672a\u6263\u6b3e\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1a
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u6b64\u66ff\u4ee3\u5238\u7684\u5151\u6362\u89c4\u5219\u5c1a\u672a\u5b9e\u73b0\uff0c\u672a\u6263\u6b3e\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1b
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string v1, "\u8fd9\u4ef6\u65f6\u88c5\u4e0d\u662f\u53ef\u76f4\u63a5\u8d2d\u4e70\u7684\u5546\u54c1\u3002"

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static charge(Lcom/project7/localmanager/LocalCommerceEngine$Result;Lcom/project7/localmanager/LocalCommerceCatalog;[B)V
    .locals 9

    .line 171
    const-string v0, "g"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 172
    iget-object p1, p1, Lcom/project7/localmanager/LocalCommerceCatalog;->charges:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 173
    if-eqz p1, :cond_1

    .line 174
    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    const-string v3, "eby"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 176
    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget v4, p1, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 177
    :goto_0
    aget p1, p1, v6

    invoke-static {p1, v4}, Ljava/lang/Math;->addExact(II)I

    move-result p1

    .line 178
    iget-object v4, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    iget-object v7, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 179
    const-string v8, "yuanbao"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v7

    invoke-static {v7, p1}, Ljava/lang/Math;->addExact(II)I

    move-result v7

    .line 178
    invoke-static {v4, v8, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v4

    iput-object v4, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 180
    iget-object v4, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 181
    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v7

    invoke-static {v7, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v7

    invoke-static {v2, v1, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 180
    invoke-static {v4, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 182
    invoke-static {p0}, Lcom/project7/localmanager/LocalCommerceEngine;->currencies(Lcom/project7/localmanager/LocalCommerceEngine$Result;)V

    .line 184
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "r"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "item"

    aput-object v4, v3, v6

    new-array v4, v2, [Ljava/lang/Integer;

    const/16 v7, 0x50

    .line 185
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    aput-object p1, v3, v5

    .line 184
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    aput-object p1, v1, v5

    aput-object v0, v1, v2

    const/4 p1, 0x3

    aput-object p2, v1, p1

    const/4 p1, 0x4

    const-string p2, "i"

    aput-object p2, v1, p1

    const/4 p1, 0x5

    sget-object p2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    aput-object p2, v1, p1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "onOrderYuanbao"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 186
    return-void

    .line 173
    :cond_1
    new-instance p0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string p1, "\u6b64\u5145\u503c\u793c\u5305\u5c1a\u672a\u5b9e\u73b0\uff1b\u666e\u901a\u94bb\u77f3\u6863\u4f4d\u652f\u6301\u672c\u5730\u76f4\u63a5\u9886\u53d6\uff0c\u4e0d\u4f1a\u4ea7\u751f\u771f\u5b9e\u652f\u4ed8\u3002"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static currencies(Lcom/project7/localmanager/LocalCommerceEngine$Result;)V
    .locals 9

    .line 332
    iget-object v0, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 333
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "v"

    aput-object v4, v2, v3

    const-string v5, "crystal"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v5, "bv"

    const/4 v7, 0x2

    aput-object v5, v2, v7

    const-string v5, "bind_crystal"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v2, v8

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v5, "updateCrystal"

    invoke-virtual {p0, v5, v2}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 334
    const/16 v2, 0x1a

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v3

    const-string v5, "yuanbao"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    const-string v5, "fv"

    aput-object v5, v2, v7

    const-string v5, "fyuanbao"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v8

    const-string v5, "dv"

    aput-object v5, v2, v1

    .line 335
    const-string v1, "dyuanbao"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v2, v5

    const/4 v1, 0x6

    const-string v5, "eby"

    aput-object v5, v2, v1

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v2, v5

    const/16 v1, 0x8

    const-string v5, "gc"

    aput-object v5, v2, v1

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const/16 v5, 0x9

    aput-object v1, v2, v5

    const/16 v1, 0xa

    const-string v5, "chry"

    aput-object v5, v2, v1

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0xb

    aput-object v1, v2, v5

    const/16 v1, 0xc

    const-string v5, "nyy"

    aput-object v5, v2, v1

    .line 336
    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0xd

    aput-object v1, v2, v5

    const/16 v1, 0xe

    const-string v5, "mary"

    aput-object v5, v2, v1

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0xf

    aput-object v1, v2, v5

    const/16 v1, 0x10

    const-string v5, "mayy"

    aput-object v5, v2, v1

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0x11

    aput-object v1, v2, v5

    const/16 v1, 0x12

    const-string v5, "novy"

    aput-object v5, v2, v1

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0x13

    aput-object v1, v2, v5

    const/16 v1, 0x14

    const-string v5, "yuanbao_20190130"

    aput-object v5, v2, v1

    .line 337
    const-string v1, "yb20190130"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0x15

    aput-object v1, v2, v5

    const/16 v1, 0x16

    const-string v5, "yuanbao_20190403"

    aput-object v5, v2, v1

    const-string v1, "yb20190403"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0x17

    aput-object v1, v2, v5

    const/16 v1, 0x18

    const-string v5, "ybumba"

    aput-object v5, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x19

    aput-object v1, v2, v3

    .line 334
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "updateYuanbao"

    invoke-virtual {p0, v2, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 338
    sget-object v1, Lcom/project7/localmanager/LocalCommerceEngine;->CURRENCY_CALLBACKS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 339
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v2

    invoke-static {v4, v2}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 340
    :cond_0
    goto :goto_0

    .line 341
    :cond_1
    return-void
.end method

.method private static doc([BLjava/lang/String;)[B
    .locals 0

    .line 360
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    .line 361
    if-nez p0, :cond_0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :cond_0
    return-object p0
.end method

.method private static equip(Lcom/project7/localmanager/LocalCommerceEngine$Result;Lcom/project7/localmanager/LocalCommerceCatalog;[B)V
    .locals 5

    .line 281
    const-string v0, "h"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalCommerceEngine;->required([BLjava/lang/String;)I

    move-result v0

    .line 282
    const-string v1, "sid"

    invoke-static {p2, v1}, Lcom/project7/localmanager/LocalCommerceEngine;->uuid([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 283
    iget-object v1, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v1

    .line 284
    const-string v2, "sk"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, p2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 285
    const-string v3, "i"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 286
    if-nez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/project7/localmanager/LocalCommerceCatalog;->skins:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 287
    :goto_0
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    aget p1, p1, v3

    if-ne p1, v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "fb"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 290
    const-string p1, "cs"

    invoke-static {v1, p1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileUuid([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 291
    const-string v1, "ass"

    invoke-static {p1, v1, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object p1

    .line 292
    iget-object v1, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v1, v0, p1}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 293
    const/4 p1, 0x1

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalCommerceEngine;->skinReply(ZLjava/lang/String;)[B

    move-result-object p1

    const-string p2, "setSkinReply"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 294
    return-void

    .line 288
    :cond_1
    new-instance p0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string p1, "\u8be5\u89d2\u8272\u672a\u62e5\u6709\u8fd9\u4ef6\u53ef\u7a7f\u6234\u65f6\u88c5\u3002"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static exchange(Lcom/project7/localmanager/LocalCommerceEngine$Result;[BLjava/lang/String;Ljava/lang/String;II)V
    .locals 4

    .line 189
    const-string v0, "yuanbao"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "yn"

    const-string v3, "cn"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalCommerceEngine;->required([BLjava/lang/String;)I

    move-result p1

    .line 190
    if-lez p1, :cond_2

    rem-int v1, p1, p5

    if-nez v1, :cond_2

    .line 191
    div-int p5, p1, p5

    invoke-static {p5, p4}, Ljava/lang/Math;->multiplyExact(II)I

    move-result p4

    .line 192
    iget-object p5, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {p5, p2, p1}, Lcom/project7/localmanager/LocalCommerceEngine;->spend([BLjava/lang/String;I)[B

    move-result-object p5

    iput-object p5, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 193
    iget-object p5, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    iget-object v1, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 194
    invoke-static {v1, p3}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1, p4}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    .line 193
    invoke-static {p5, p3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p3

    iput-object p3, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    .line 195
    invoke-static {p0}, Lcom/project7/localmanager/LocalCommerceEngine;->currencies(Lcom/project7/localmanager/LocalCommerceEngine$Result;)V

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object v2, p2, p3

    const/4 p3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, p3

    const/4 p1, 0x2

    aput-object v3, p2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, p1

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "yuanbaoExchangeCrystalReply"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 197
    :cond_1
    return-void

    .line 190
    :cond_2
    new-instance p0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string p1, "\u5151\u6362\u6570\u91cf\u4e0d\u7b26\u5408\u539f\u7248\u6bd4\u4f8b\u3002"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 28
    const-string v0, "buyMoney"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "buyCardMallItem"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    const-string v0, "setSkinRequest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "queryItemDetail"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    const-string v0, "yuanbaoExchangeCrystal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "crystalExchangeSkinCoin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    const-string v0, "buySkinRequest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 28
    :goto_1
    return p0
.end method

.method private static itemDetail(Lcom/project7/localmanager/LocalCommerceEngine$Result;[B)V
    .locals 4

    .line 301
    const-string v0, "u"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalCommerceEngine;->uuid([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 302
    iget-object v1, p0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalEquipmentEngine;->findOwned([BLjava/lang/String;)[B

    move-result-object v1

    .line 303
    if-eqz v1, :cond_0

    .line 306
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    new-instance v3, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v3, p1}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    const/4 p1, 0x2

    const-string v0, "d"

    aput-object v0, v2, p1

    const/4 p1, 0x3

    aput-object v1, v2, p1

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "queryItemDetailReply"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 307
    return-void

    .line 304
    :cond_0
    new-instance p0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string p1, "\u8be5\u5f71\u88c5\u6216\u9053\u5177\u5df2\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u80cc\u5305\u3002"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$buy$0(Ljava/lang/Integer;)Ljava/util/Map;
    .locals 0

    .line 211
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method private static normalizeStoryCounts([BI)[B
    .locals 7

    .line 391
    invoke-static {p0}, Lcom/project7/localmanager/LocalCommerceEngine;->storyCounts([B)Ljava/util/Map;

    move-result-object v0

    .line 392
    nop

    .line 393
    const-string v1, "q7ShopStoryWeek"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 395
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 396
    const-string v2, "zin"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 397
    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "1"

    invoke-static {v4, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 398
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 399
    sget-object v1, Lcom/project7/localmanager/LocalCommerceEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalCommerceEngine$$ExternalSyntheticLambda0;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const/4 v1, 0x1

    .line 402
    :cond_1
    goto :goto_1

    .line 403
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/project7/localmanager/LocalCommerceEngine;->storyPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private static pairCounts([B)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 365
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 366
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 367
    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 368
    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "1"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 369
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_0
    goto :goto_0

    .line 371
    :cond_1
    return-object v0
.end method

.method private static pairs(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_0
    return-object v0
.end method

.method static purchasedSkin(ILjava/lang/String;J)[B
    .locals 4

    .line 140
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "i"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v1, v0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "u"

    aput-object v1, v0, p0

    new-instance p0, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {p0, p1}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const/4 p0, 0x4

    const-string p1, "fb"

    aput-object p1, v0, p0

    const/4 p0, 0x5

    aput-object v3, v0, p0

    const/4 p0, 0x6

    const-string p1, "cr"

    aput-object p1, v0, p0

    long-to-int p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x7

    aput-object p0, v0, p1

    const/16 p0, 0x8

    const-string p1, "cd"

    aput-object p1, v0, p0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/16 p1, 0x9

    aput-object p0, v0, p1

    const/16 p0, 0xa

    const-string p1, "pd"

    aput-object p1, v0, p0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/16 p1, 0xb

    aput-object p0, v0, p1

    const/16 p0, 0xc

    const-string p1, "cwd"

    aput-object p1, v0, p0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/16 p1, 0xd

    aput-object p0, v0, p1

    const/16 p0, 0xe

    const-string p1, "pwd"

    aput-object p1, v0, p0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/16 p1, 0xf

    aput-object p0, v0, p1

    const/16 p0, 0x10

    const-string p1, "ias"

    aput-object p1, v0, p0

    .line 142
    const/16 p0, 0x11

    aput-object v3, v0, p0

    const/16 p0, 0x12

    const-string p1, "tr"

    aput-object p1, v0, p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    const/16 p1, 0x13

    aput-object p0, v0, p1

    .line 140
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static refreshStoreLimits([BJ)[B
    .locals 11

    .line 146
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 147
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 148
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 149
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {p1, v2, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 150
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 151
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 152
    const/4 v0, 0x0

    const/4 v2, 0x7

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    add-int/2addr v4, v5

    rem-int/2addr v4, v2

    .line 154
    neg-int v2, v4

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 155
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 156
    const-string v1, "ldd"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 157
    const/4 v4, 0x3

    new-array v5, v4, [[Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "q7ShopDay"

    aput-object v7, v6, v0

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const-string p2, "din"

    const/4 v8, 0x2

    aput-object p2, v6, v8

    aput-object v6, v5, v0

    new-array p2, v4, [Ljava/lang/String;

    const-string v6, "q7ShopWeek"

    aput-object v6, p2, v0

    aput-object p1, p2, v7

    const-string p1, "win"

    aput-object p1, p2, v8

    aput-object p2, v5, v7

    new-array p1, v4, [Ljava/lang/String;

    const-string p2, "q7ShopMonth"

    aput-object p2, p1, v0

    aput-object v3, p1, v7

    const-string p2, "mon"

    aput-object p2, p1, v8

    aput-object p1, v5, v8

    move p1, v0

    :goto_0
    if-ge p1, v4, :cond_2

    aget-object p2, v5, p1

    .line 159
    aget-object v3, p2, v0

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    if-eqz v3, :cond_0

    aget-object v9, p2, v7

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 161
    aget-object v9, p2, v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {v2, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 162
    aget-object v9, p2, v0

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const-string v10, "swl"

    invoke-static {v2, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 164
    :cond_0
    aget-object v9, p2, v7

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p2, v0

    aget-object p2, p2, v7

    invoke-static {v2, v3, p2}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    move-object v2, p2

    .line 157
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 166
    :cond_2
    const-string p1, "weeknum"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p1

    const-string p2, "w"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result p1

    invoke-static {v2, p1}, Lcom/project7/localmanager/LocalCommerceEngine;->normalizeStoryCounts([BI)[B

    move-result-object p1

    .line 167
    invoke-static {p0, v1, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static required([BLjava/lang/String;)I
    .locals 0

    .line 349
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 350
    if-eqz p0, :cond_0

    .line 351
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 350
    :cond_0
    new-instance p0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string p1, "\u8bf7\u6c42\u53c2\u6570\u4e0d\u5b8c\u6574\u3002"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static skinReply(ZLjava/lang/String;)[B
    .locals 3

    .line 297
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "s"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    const-string v1, "sid"

    aput-object v1, v0, p0

    new-instance p0, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {p0, p1}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const/4 p0, 0x4

    const-string p1, "ass"

    aput-object p1, v0, p0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x5

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method private static spend([BLjava/lang/String;I)[B
    .locals 8

    .line 310
    if-ltz p2, :cond_5

    .line 311
    const-string v0, "crystal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const-string p1, "bind_crystal"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v1

    .line 313
    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v2

    .line 314
    int-to-long v3, v1

    int-to-long v5, v2

    add-long/2addr v3, v5

    int-to-long v5, p2

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 315
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 316
    sub-int/2addr v1, v3

    invoke-static {p0, p1, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 317
    sub-int/2addr p2, v3

    sub-int/2addr v2, p2

    invoke-static {p0, v0, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0

    .line 314
    :cond_0
    new-instance p0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string p1, "\u6676\u94bb\u4e0d\u8db3\u3002"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_1
    const-string v0, "yuanbao"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    const-string p1, "fyuanbao"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v2

    const-string v3, "dyuanbao"

    invoke-static {p0, v3}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v3

    .line 321
    int-to-long v4, v1

    int-to-long v6, v2

    add-long/2addr v4, v6

    int-to-long v6, v3

    sub-long/2addr v4, v6

    int-to-long v6, p2

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 322
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 323
    sub-int/2addr v1, v3

    invoke-static {p0, p1, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    .line 324
    sub-int/2addr p2, v3

    sub-int/2addr v2, p2

    invoke-static {p0, v0, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0

    .line 321
    :cond_2
    new-instance p0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string p1, "\u94bb\u77f3\u4e0d\u8db3\u3002"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :cond_3
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 327
    if-lt v0, p2, :cond_4

    .line 328
    sub-int/2addr v0, p2

    invoke-static {p0, p1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0

    .line 327
    :cond_4
    new-instance p0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string p1, "\u5546\u54c1\u6240\u9700\u4ee3\u5e01\u4e0d\u8db3\u3002"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw p0

    .line 310
    :cond_5
    new-instance p0, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;

    const-string p1, "\u65e0\u6548\u7684\u4ef7\u683c\u3002"

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine$Rejected;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static storyCounts([B)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 376
    const-string v1, "zin"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 377
    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 378
    if-eqz v2, :cond_0

    const-string v3, "1"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalCommerceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalCommerceEngine;->pairCounts([B)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    goto :goto_0

    .line 380
    :cond_1
    return-object v0
.end method

.method private static storyPairs(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 386
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/project7/localmanager/LocalCommerceEngine;->pairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    :cond_0
    return-object v0
.end method

.method private static uuid([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 355
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 356
    if-nez p0, :cond_0

    const-string p0, "000000000000000000000000"

    :cond_0
    return-object p0
.end method

.method static value([BLjava/lang/String;)I
    .locals 0

    .line 344
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 345
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method
