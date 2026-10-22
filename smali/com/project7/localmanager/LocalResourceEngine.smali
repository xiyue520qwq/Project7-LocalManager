.class final Lcom/project7/localmanager/LocalResourceEngine;
.super Ljava/lang/Object;
.source "LocalResourceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalResourceEngine$Result;,
        Lcom/project7/localmanager/LocalResourceEngine$Reply;
    }
.end annotation


# static fields
.field static final COINS:[Ljava/lang/String;

.field static final MAIL_COINS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    const-string v0, "money"

    const-string v1, "yuanbao"

    const-string v2, "crystal"

    const-string v3, "summonCoin"

    const-string v4, "giftCoin"

    const-string v5, "friendCoin"

    const-string v6, "souvenir"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalResourceEngine;->COINS:[Ljava/lang/String;

    .line 29
    const-string v1, "mn"

    const-string v2, "yb"

    const-string v3, "cr"

    const-string v4, "sc"

    const-string v5, "gc"

    const-string v6, "fc"

    const-string v7, "svc"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalResourceEngine;->MAIL_COINS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addMissingHero(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const/4 v1, 0x4

    if-gt p2, v1, :cond_1

    .line 189
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, p1}, Lcom/project7/localmanager/BsonLite;->withHero([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 190
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, p1}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v2

    const-string v3, "sl"

    invoke-static {v2, v3, p2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p2

    .line 191
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, p1, p2}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 192
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->heroRewards:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "h"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x2

    const-string v0, "d"

    aput-object v0, v1, p1

    const/4 p1, 0x3

    aput-object p2, v1, p1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "addHero"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 194
    return-void

    .line 188
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid original hero definition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static array([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static currency(Ljava/lang/String;)Z
    .locals 8

    .line 40
    sget-object v0, Lcom/project7/localmanager/LocalResourceEngine;->COINS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "tCoin"

    const-string v2, "bCoin"

    const-string v3, "skinCoin"

    const-string v4, "wCoin"

    const-string v5, "sCoin"

    const-string v6, "lxtlCoin"

    const-string v7, "newFriendCoin"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 40
    :goto_1
    return p0
.end method

.method static doc([BLjava/lang/String;)[B
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    .line 33
    if-nez p0, :cond_0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :cond_0
    return-object p0
.end method

.method static grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V
    .locals 7

    .line 79
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III[B)V

    .line 80
    return-void
.end method

.method static grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III[B)V
    .locals 21

    .line 83
    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v0, p3

    move/from16 v9, p4

    invoke-static/range {p1 .. p5}, Lcom/project7/localmanager/LocalResourceEngine;->validate(Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 84
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalResourceEngine;->currency(Ljava/lang/String;)Z

    move-result v2

    const-string v10, "treasure"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_1

    .line 85
    iget-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v1, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    iput-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 86
    sget-object v0, Lcom/project7/localmanager/LocalResourceEngine;->COINS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 87
    const/4 v1, 0x7

    if-ltz v0, :cond_0

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    aget v0, v1, v0

    goto :goto_0

    .line 88
    :cond_0
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    const-string v12, "tCoin"

    const-string v13, "bCoin"

    const-string v14, "skinCoin"

    const-string v15, "wCoin"

    const-string v16, "sCoin"

    const-string v17, "lxtlCoin"

    const-string v18, "newFriendCoin"

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aget v0, v0, v1

    .line 90
    :goto_0
    iget-object v1, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    new-array v2, v3, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v11

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    move/from16 v9, p5

    goto/16 :goto_6

    :cond_1
    const-string v2, "skin"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 92
    iget-object v1, v1, Lcom/project7/localmanager/LocalResourceCatalog;->skins:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;

    .line 93
    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "heromgr"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    iget-object v12, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget v13, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v12, v13}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v12

    .line 94
    const-string v13, "sk"

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    const-string v15, "ps"

    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    iget v11, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 97
    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, [B

    const-string v9, "i"

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v4

    if-ne v4, v0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    or-int/2addr v11, v4

    move/from16 v9, p4

    const/4 v4, 0x0

    goto :goto_1

    .line 99
    :cond_3
    if-nez v11, :cond_6

    .line 100
    invoke-static {v14}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v4, v9

    const/16 v9, 0x1f4

    if-ge v4, v9, :cond_5

    .line 102
    iget-object v4, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget v9, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v4

    const-string v9, "d"

    if-eqz v4, :cond_4

    .line 103
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v3

    const-wide/16 v19, 0x3e8

    div-long v3, v3, v19

    invoke-static {v0, v2, v3, v4}, Lcom/project7/localmanager/LocalCommerceEngine;->purchasedSkin(ILjava/lang/String;J)[B

    move-result-object v3

    .line 105
    invoke-static {v14, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    invoke-static {v12, v13, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    .line 106
    iget-object v5, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget v11, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v5, v11, v4}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object v4

    iput-object v4, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 107
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "h"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    iget v5, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v4, v11

    const-string v5, "s"

    const/4 v11, 0x2

    aput-object v5, v4, v11

    const/4 v5, 0x3

    new-instance v11, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v11, v2}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v11, v4, v5

    const/4 v2, 0x4

    aput-object v9, v4, v2

    const/4 v2, 0x5

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "syncOneSkinData"

    invoke-virtual {v7, v3, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 108
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto :goto_3

    .line 109
    :cond_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget v4, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->hero:I

    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-static {v5, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    invoke-static {v2, v15, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 112
    iget-object v3, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v6, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 113
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v9, 0x1

    aput-object v2, v4, v9

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v4, "syncHeroMgrPendingData"

    invoke-virtual {v7, v4, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 115
    :goto_3
    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    new-array v3, v3, [Ljava/lang/Integer;

    iget v1, v1, Lcom/project7/localmanager/LocalResourceCatalog$Skin;->item:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 101
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8863\u6a71\u6570\u91cf\u5df2\u8fbe\u5230\u672c\u5730\u5b89\u5168\u4e0a\u9650"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_6
    :goto_4
    iget-object v1, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "es"

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_7
    iget-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 121
    move/from16 v9, p5

    goto/16 :goto_6

    :cond_8
    const-string v2, "hero"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 122
    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 123
    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceCatalog$Hero;

    .line 124
    iget v2, v0, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->rank:I

    const/4 v3, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit16 v4, v2, 0x109c

    iget v0, v0, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->duplicate:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x1

    const-string v2, "item"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 125
    return-void

    .line 127
    :cond_9
    iget-object v1, v1, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/project7/localmanager/LocalResourceCatalog$Hero;

    iget v1, v1, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->rank:I

    invoke-static {v7, v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->addMissingHero(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    move/from16 v9, p5

    goto :goto_6

    .line 129
    :cond_a
    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceCatalog;->items:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalResourceCatalog$Item;

    .line 130
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 131
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez p6, :cond_b

    iget-object v3, v1, Lcom/project7/localmanager/LocalResourceCatalog;->treasures:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;

    invoke-virtual {v0}, Lcom/project7/localmanager/LocalResourceCatalog$Treasure;->data()[B

    move-result-object v0

    move-object v6, v0

    goto :goto_5

    :cond_b
    move/from16 v9, p5

    move-object/from16 v6, p6

    .line 130
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lcom/project7/localmanager/LocalResourceEngine;->grantInventory(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalResourceCatalog$Item;IZI[B)V

    .line 133
    :goto_6
    const-string v0, "money"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move/from16 v1, p4

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->add([BII)[B

    move-result-object v0

    iput-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto :goto_7

    :cond_c
    move/from16 v1, p4

    .line 134
    :goto_7
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v2, 0x33

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->add([BILjava/util/List;I)[B

    move-result-object v0

    iput-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 135
    :cond_d
    return-void

    nop

    :array_0
    .array-data 4
        0x66
        0x50
        0x59
        0x5a
        0x69
        0xb3
        0x149
    .end array-data

    :array_1
    .array-data 4
        0x803
        0x804
        0x805
        0x806
        0x807
        0x80a
        0x2792
    .end array-data
.end method

.method private static grantInventory(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalResourceCatalog$Item;IZI[B)V
    .locals 28

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v2, Lcom/project7/localmanager/LocalResourceCatalog$Item;->id:I

    .line 146
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "inv"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 147
    const-string v6, "items"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v7

    .line 148
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 149
    nop

    .line 150
    const-string v9, "w"

    const-string v10, "i"

    const/4 v11, 0x0

    if-nez p4, :cond_2

    .line 151
    move/from16 v13, p3

    move v12, v11

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_3

    if-lez v13, :cond_3

    .line 152
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 153
    invoke-static {v14, v10}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v15

    if-eq v15, v3, :cond_0

    goto :goto_1

    .line 154
    :cond_0
    iget v15, v2, Lcom/project7/localmanager/LocalResourceCatalog$Item;->wrap:I

    invoke-static {v14, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v16

    sub-int v15, v15, v16

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 155
    if-nez v15, :cond_1

    goto :goto_1

    .line 156
    :cond_1
    invoke-static {v14, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v11

    invoke-static {v11, v15}, Ljava/lang/Math;->addExact(II)I

    move-result v11

    invoke-static {v14, v9, v11}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v11

    .line 157
    invoke-interface {v7, v12, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr v13, v15

    .line 151
    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto :goto_0

    .line 150
    :cond_2
    move/from16 v13, p3

    .line 160
    :cond_3
    if-eqz p4, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    iget v12, v2, Lcom/project7/localmanager/LocalResourceCatalog$Item;->wrap:I

    .line 161
    :goto_2
    int-to-long v14, v13

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    int-to-long v4, v12

    add-long/2addr v14, v4

    const-wide/16 v19, 0x1

    sub-long v14, v14, v19

    div-long/2addr v14, v4

    .line 163
    nop

    .line 164
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    const-string v11, "tr"

    move/from16 v21, v13

    if-eqz v19, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    check-cast v13, [B

    .line 165
    if-nez v1, :cond_5

    const/16 v19, 0x0

    move-object/from16 v24, v6

    move-object/from16 v27, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v27

    goto :goto_4

    :cond_5
    move-object/from16 v19, v4

    iget-object v4, v1, Lcom/project7/localmanager/LocalResourceCatalog;->items:Ljava/util/Map;

    invoke-static {v13, v10}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v23

    move-object/from16 v24, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalResourceCatalog$Item;

    .line 166
    :goto_4
    if-nez v1, :cond_8

    invoke-static {v13, v11}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    const-string v6, "cl"

    invoke-static {v4, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    iget v6, v2, Lcom/project7/localmanager/LocalResourceCatalog$Item;->type:I

    const/4 v11, 0x5

    if-ne v6, v11, :cond_7

    const/4 v6, 0x1

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    if-ne v4, v6, :cond_b

    goto :goto_9

    :cond_8
    if-eqz v4, :cond_b

    iget v4, v4, Lcom/project7/localmanager/LocalResourceCatalog$Item;->type:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    iget v11, v2, Lcom/project7/localmanager/LocalResourceCatalog$Item;->type:I

    if-ne v11, v6, :cond_a

    const/4 v6, 0x1

    goto :goto_8

    :cond_a
    const/4 v6, 0x0

    :goto_8
    if-ne v4, v6, :cond_b

    .line 167
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 168
    :cond_b
    move-object/from16 v4, v19

    move/from16 v13, v21

    move-object/from16 v6, v24

    goto :goto_3

    .line 169
    :cond_c
    move-object/from16 v24, v6

    const-wide/16 v1, 0x1f4

    cmp-long v4, v14, v1

    if-gtz v4, :cond_10

    int-to-long v4, v5

    add-long/2addr v4, v14

    cmp-long v1, v4, v1

    if-gtz v1, :cond_10

    move/from16 v13, v21

    .line 170
    :goto_a
    const/4 v1, 0x2

    if-lez v13, :cond_e

    .line 171
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 172
    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "u"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v6, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    aput-object v6, v4, v14

    aput-object v10, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x3

    aput-object v6, v4, v14

    const/4 v6, 0x4

    aput-object v9, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v19, 0x5

    aput-object v15, v4, v19

    const/4 v15, 0x6

    const-string v21, "c"

    aput-object v21, v4, v15

    const/4 v15, 0x7

    .line 173
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v4, v15

    const/16 v15, 0x8

    const-string v21, "ctt"

    aput-object v21, v4, v15

    const/16 v15, 0x9

    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v21

    const-wide/16 v25, 0x3e8

    move/from16 p2, v2

    div-long v1, v21, v25

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v15

    .line 172
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 174
    if-eqz p4, :cond_d

    .line 175
    move-object/from16 v2, p6

    invoke-static {v1, v11, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 176
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->treasureRewards:Ljava/util/List;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v6, v16

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v20, 0x1

    aput-object v15, v6, v20

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v21, 0x2

    aput-object v15, v6, v21

    new-instance v15, Lcom/project7/localmanager/BsonLite$UuidValue;

    .line 177
    invoke-static {v1, v5}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v6, v14

    .line 176
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 174
    :cond_d
    move-object/from16 v2, p6

    .line 179
    :goto_b
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int v13, v13, p2

    .line 180
    goto/16 :goto_a

    .line 181
    :cond_e
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v2, v18

    move-object/from16 v4, v24

    invoke-static {v2, v4, v7}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    move-object/from16 v4, v17

    invoke-static {v1, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 182
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v2, v4

    const/4 v5, 0x1

    aput-object v8, v2, v5

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v5, "updateItems"

    invoke-virtual {v0, v5, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 183
    if-nez p4, :cond_f

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->itemRewards:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_f
    return-void

    .line 169
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u80cc\u5305\u7a7a\u95f4\u4e0d\u8db3\uff0c\u5956\u52b1\u4fdd\u7559\u5728\u90ae\u4ef6/\u5361\u6c60\u4e2d"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static grantItem(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog$Item;I)V
    .locals 8

    .line 138
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/project7/localmanager/LocalResourceCatalog$Item;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/project7/localmanager/LocalResourceCatalog$Item;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/project7/localmanager/LocalResourceCatalog$Item;->wrap:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    if-lt p2, v1, :cond_0

    const v0, 0xf4240

    if-gt p2, v0, :cond_0

    .line 140
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v1 .. v7}, Lcom/project7/localmanager/LocalResourceEngine;->grantInventory(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalResourceCatalog$Item;IZI[B)V

    .line 141
    return-void

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid physical story item"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static ownsHero([BI)Z
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static repairHeroDefaults([BLcom/project7/localmanager/LocalResourceCatalog;)[B
    .locals 9

    .line 45
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "hrs"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 46
    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    .line 47
    const-string v3, "1"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 48
    nop

    .line 49
    iget-object v3, p1, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/project7/localmanager/LocalResourceCatalog$Hero;

    .line 50
    if-eqz v3, :cond_0

    const-string v4, "sl"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v5

    iget v6, v3, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->rank:I

    if-ge v5, v6, :cond_0

    .line 51
    iget v3, v3, Lcom/project7/localmanager/LocalResourceCatalog$Hero;->rank:I

    invoke-static {v1, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    goto :goto_1

    .line 52
    :cond_0
    move-object v3, v1

    :goto_1
    const-string v4, "ti"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 54
    const-string v6, "mc"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v7

    const/16 v8, 0x270f

    if-ne v7, v8, :cond_1

    .line 55
    const/16 v7, 0x19

    invoke-static {v5, v6, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    .line 56
    :cond_1
    if-eq v3, v1, :cond_2

    invoke-static {p0, v2, v3}, Lcom/project7/localmanager/BsonLite;->withHeroDocument([BI[B)[B

    move-result-object p0

    .line 57
    :cond_2
    goto :goto_0

    .line 58
    :cond_3
    return-object p0
.end method

.method static syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 3

    .line 197
    new-instance v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v0, v1}, Lcom/project7/localmanager/LocalCommerceEngine$Result;-><init>([B)V

    .line 198
    invoke-static {v0}, Lcom/project7/localmanager/LocalCommerceEngine;->currencies(Lcom/project7/localmanager/LocalCommerceEngine$Result;)V

    .line 199
    iget-object v0, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "friendCoin"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "v"

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "updateFriendCoin"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "giftCoin"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->intDocument(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "updateGiftCoin"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 204
    :cond_2
    return-void
.end method

.method static uuid()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->identity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static validate(Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V
    .locals 2

    .line 62
    const/4 v0, 0x1

    if-lt p3, v0, :cond_9

    const v1, 0xf4240

    if-gt p3, v1, :cond_9

    .line 63
    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->currency(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 64
    :cond_0
    const-string v1, "skin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->skins:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-ne p3, v0, :cond_1

    goto/16 :goto_0

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u65f6\u88c5 ID \u65e0\u6548\u6216\u6570\u91cf\u4e0d\u662f 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_2
    const-string v1, "hero"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->heroes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-ne p3, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u89d2\u8272 ID \u65e0\u6548\u6216\u6570\u91cf\u4e0d\u662f 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_4
    const-string v0, "item"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->items:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/project7/localmanager/LocalResourceCatalog$Item;

    .line 71
    if-eqz p0, :cond_5

    iget p0, p0, Lcom/project7/localmanager/LocalResourceCatalog$Item;->type:I

    const/4 p1, 0x5

    if-eq p0, p1, :cond_5

    .line 72
    goto :goto_0

    .line 71
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u9053\u5177 ID \u65e0\u6548\uff1b\u5f71\u88c5\u8bf7\u9009\u62e9\u5f71\u88c5\u7c7b\u578b\uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_6
    const-string v0, "treasure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 73
    const/16 p1, 0x64

    if-gt p3, p1, :cond_7

    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceCatalog;->items:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceCatalog;->treasures:Ljava/util/Map;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5f71\u88c5 ID/\u54c1\u8d28\u65e0\u6548\u6216\u6570\u91cf\u8d85\u8fc7 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8d44\u6e90\u7c7b\u578b\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6570\u91cf\u5e94\u4e3a 1-1000000"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static value([BLjava/lang/String;)I
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalCommerceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
