.class final Lcom/project7/localmanager/LocalNewAchievementEngine;
.super Ljava/lang/Object;
.source "LocalNewAchievementEngine.java"


# static fields
.field static final SUB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 7
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x29

    new-array v2, v1, [Ljava/lang/Integer;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/16 v5, 0x16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    const/16 v6, 0x17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v2, v8

    const/16 v7, 0x1a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v2, v9

    const/16 v8, 0x1d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v2, v10

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v2, v11

    const/16 v10, 0x22

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x7

    aput-object v11, v2, v12

    const/16 v11, 0x23

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v2, v13

    const/16 v12, 0x26

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v2, v14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v13, 0xa

    aput-object v1, v2, v13

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v13, 0xb

    aput-object v1, v2, v13

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v13, 0xc

    aput-object v1, v2, v13

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v13, 0xd

    aput-object v1, v2, v13

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v13, 0xe

    aput-object v1, v2, v13

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v2, v3

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v2, v3

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v2, v3

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x14

    aput-object v1, v2, v3

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v2, v3

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x18

    aput-object v1, v2, v3

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x19

    aput-object v1, v2, v3

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v7

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1b

    aput-object v1, v2, v3

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1c

    aput-object v1, v2, v3

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1e

    aput-object v1, v2, v3

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1f

    aput-object v1, v2, v3

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v9

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x21

    aput-object v1, v2, v3

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v10

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v11

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x24

    aput-object v1, v2, v3

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x25

    aput-object v1, v2, v3

    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v12

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x27

    aput-object v1, v2, v3

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x28

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/project7/localmanager/LocalNewAchievementEngine;->SUB:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add([BII)[B
    .locals 1

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->add([BILjava/util/List;I)[B

    move-result-object p0

    return-object p0
.end method

.method static add([BILjava/util/List;I)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)[B"
        }
    .end annotation

    .line 20
    if-gtz p3, :cond_0

    return-object p0

    .line 21
    :cond_0
    const-string v0, "q7AchievementCounts"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 22
    const-wide/32 v2, 0x5f5e100

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->key(ILjava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    int-to-long v6, p3

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 23
    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->key(ILjava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static apply([BLcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 10

    .line 179
    const-string v0, "0"

    new-instance v1, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 180
    const-string v2, "requestNewAchievementAutoShow"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "nad"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 181
    iget-object p2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    .line 182
    iget-object p3, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "as"

    invoke-static {p2, v0}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p4

    invoke-static {p2, v0, p4}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object p2

    invoke-static {p3, v3, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p2

    iput-object p2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto/16 :goto_2

    .line 183
    :cond_0
    const-string v2, "requestNewAchievementReward"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 184
    const-string p3, "tid"

    invoke-static {p4, p3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "NA"

    invoke-virtual {p1, v5, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    iget-object v5, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5}, Lcom/project7/localmanager/LocalNewAchievementEngine;->tasks([B)Ljava/util/Map;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 186
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    :try_start_0
    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 187
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "supported"

    invoke-static {v2, v8}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 188
    invoke-static {v1, p2, v2, v4}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 189
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->tasks([B)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 192
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p4, :cond_1

    invoke-static {v8, v0, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v8

    .line 193
    :cond_1
    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v9, v6

    new-instance v5, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v5, v8}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v5, v9, v4

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v5, "ad"

    invoke-static {v2, v5, p2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p2

    invoke-static {v0, v3, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p2

    iput-object p2, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 196
    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 197
    const-string p2, "replyNewAchievementReward"

    new-array v0, v7, [Ljava/lang/Object;

    const-string v2, "i"

    aput-object v2, v0, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v4

    const-string p3, "r"

    aput-object p3, v2, v7

    const/4 p3, 0x3

    invoke-virtual {v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object p4

    aput-object p4, v2, p3

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p3

    aput-object p3, v0, v4

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 201
    goto :goto_3

    .line 187
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "\u6b64\u6210\u5c31\u5305\u542b\u5c1a\u672a\u63a5\u5165\u7684\u7279\u6b8a\u5956\u52b1\uff0c\u5df2\u4fdd\u7559\u9886\u53d6\u72b6\u6001"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 186
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "\u6210\u5c31\u5c1a\u672a\u5b8c\u6210\u6216\u5df2\u7ecf\u9886\u53d6"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 199
    :goto_1
    new-instance v1, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v1, p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 200
    new-array p3, v7, [Ljava/lang/Object;

    const-string p4, "m"

    aput-object p4, p3, v6

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v4

    invoke-static {p3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p2

    const-string p3, "showMessageStr"

    invoke-virtual {v1, p3, p2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_3

    .line 183
    :cond_5
    :goto_2
    nop

    .line 203
    :goto_3
    invoke-static {v1, p0, p1, v4}, Lcom/project7/localmanager/LocalNewAchievementEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 204
    return-object v1
.end method

.method static counter([BILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 11
    const-string v0, "q7AchievementCounts"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->key(ILjava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static groupCounter([BILjava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 13
    const-string v0, "nad"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "ga"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 14
    sget-object v2, Lcom/project7/localmanager/LocalNewAchievementEngine;->SUB:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "1"

    if-nez v2, :cond_0

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0

    .line 15
    :cond_0
    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0

    .line 13
    :cond_2
    goto :goto_0

    .line 17
    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 3

    .line 42
    const-string v0, "updateNewAchievementTaskFromClient"

    const-string v1, "requestNewAchievementReward"

    const-string v2, "requestNewAchievementAutoShow"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static key(ILjava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static known([BILjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 50
    const-string v0, "heromgr"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "hrs"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    .line 51
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 51
    if-ne p1, v2, :cond_0

    const-string p1, "money"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 52
    :cond_0
    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    const-string p1, "q7LoginCount"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0

    .line 53
    :cond_1
    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    const-string p1, "level"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0

    .line 54
    :cond_2
    const/16 v6, 0x13

    if-ne p1, v6, :cond_3

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance p1, Ljava/util/HashSet;

    const-string p2, "cgs"

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p0

    return p0

    .line 55
    :cond_3
    const/16 v6, 0x18

    const-string v7, "1"

    if-ne p1, v6, :cond_5

    .line 56
    nop

    .line 57
    const-string p1, "weeknum"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string p1, "wasi"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1, v7}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    const-string p2, "total"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    .line 58
    :cond_4
    return v3

    .line 60
    :cond_5
    const/16 v6, 0x24

    if-ne p1, v6, :cond_7

    .line 61
    const-string p1, "ldd"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    const-string v0, "ct"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result p2

    .line 62
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string p1, "ad"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1, v7}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result p1

    add-int/2addr p2, p1

    goto :goto_1

    .line 63
    :cond_6
    return p2

    .line 65
    :cond_7
    const/16 v6, 0x2e

    if-ne p1, v6, :cond_8

    new-instance p1, Ljava/util/HashSet;

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string p2, "es"

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p0

    return p0

    .line 66
    :cond_8
    const/16 v0, 0x33

    if-ne p1, v0, :cond_c

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 67
    nop

    .line 68
    const-string p1, "inv"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string p1, "items"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    .line 69
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v4, "ti"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 70
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v3

    :cond_a
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 71
    const-string v1, "tr"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v4, "cl"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_a

    const-string v1, "w"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_3

    .line 72
    :cond_b
    return p1

    .line 74
    :cond_c
    const/16 p0, 0x1d

    if-ne p1, p0, :cond_d

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    return p0

    .line 75
    :cond_d
    if-ne p1, p0, :cond_11

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v5, :cond_11

    .line 76
    nop

    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v3

    :cond_e
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "sl"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v4, v5, :cond_f

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_e

    const-string v1, "so"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_e

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 78
    :cond_10
    return p1

    .line 80
    :cond_11
    const/16 p0, 0x1e

    if-eq p1, p0, :cond_13

    const/16 p2, 0x1f

    if-ne p1, p2, :cond_12

    goto :goto_5

    .line 85
    :cond_12
    const/4 p0, -0x1

    return p0

    .line 81
    :cond_13
    :goto_5
    nop

    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_14
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    if-ne p1, p0, :cond_15

    const-string v2, "oa"

    goto :goto_7

    :cond_15
    const-string v2, "fd"

    :goto_7
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 83
    :cond_16
    return v3
.end method

.method static synthetic lambda$refresh$0(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 3

    .line 120
    instance-of v0, p1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/project7/localmanager/BsonLite$ArrayValue;

    iget-object v0, v0, Lcom/project7/localmanager/BsonLite$ArrayValue;->bytes:[B

    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    .line 121
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 120
    :goto_0
    return v1
.end method

.method static synthetic lambda$sync$1(Lcom/project7/localmanager/LocalResourceEngine$Reply;)Z
    .locals 1

    .line 162
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    const-string v0, "updateAllAchievement"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static moneyTransition([B[B)[B
    .locals 5

    .line 27
    const-string v0, "money"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->counter([BILjava/util/List;)I

    move-result v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/project7/localmanager/LocalNewAchievementEngine;->counter([BILjava/util/List;)I

    move-result p0

    sub-int/2addr v2, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 29
    if-le v1, p0, :cond_0

    sub-int/2addr v1, p0

    invoke-static {p1, v3, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->add([BII)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static recordPatrol([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)[B
    .locals 6

    .line 32
    if-eqz p1, :cond_4

    iget-boolean v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    const/16 v1, 0x8

    if-le p2, v1, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/project7/localmanager/LocalPatrolEngine;->dayKey([B)Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v2, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolDay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object p0

    .line 35
    :cond_1
    const-string v2, "q7AchievementPatrolDay"

    invoke-static {p0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "q7AchievementPatrolCount"

    if-eqz v3, :cond_2

    invoke-static {p0, v4}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 36
    :goto_0
    iget v5, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    if-gt v5, v3, :cond_3

    return-object p0

    .line 37
    :cond_3
    const/16 v3, 0x1a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, v3, p2, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->add([BILjava/util/List;I)[B

    move-result-object p0

    .line 38
    invoke-static {p0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 39
    iget p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolCount:I

    invoke-static {p0, v4, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0

    .line 32
    :cond_4
    :goto_1
    return-object p0
.end method

.method static refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B
    .locals 22

    .line 88
    move-object/from16 v0, p1

    const-string v1, "nad"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 89
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->tasks([B)Ljava/util/Map;

    move-result-object v4

    .line 90
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 91
    const-string v6, "ga"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "1"

    const-string v10, "0"

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 92
    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 93
    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-nez v11, :cond_0

    new-instance v11, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-direct {v11, v8}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    :cond_0
    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 96
    sget-object v8, Lcom/project7/localmanager/LocalNewAchievementEngine;->SUB:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 97
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-static {v14, v10}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v15

    if-ne v15, v11, :cond_2

    .line 99
    invoke-static {v14, v9}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    new-instance v2, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v2, v15}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    goto :goto_3

    .line 98
    :cond_2
    move-object/from16 v2, p0

    goto :goto_2

    .line 100
    :cond_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-object/from16 v2, p0

    goto :goto_1

    .line 102
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v8, v0, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v11, p0

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/String;

    const-string v14, "NA:"

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v17, v8

    goto :goto_5

    .line 105
    :cond_5
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 106
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 107
    const-string v15, "para"

    invoke-static {v12, v15}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 108
    move-object/from16 v17, v8

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v13, :cond_6

    .line 103
    :goto_5
    move-object/from16 v8, v17

    goto :goto_4

    .line 109
    :cond_6
    const/4 v8, 0x0

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v19, v1

    const/4 v13, 0x1

    add-int/lit8 v1, v18, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 110
    move-object/from16 v18, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    move-object/from16 v21, v3

    add-int/lit8 v3, v20, -0x1

    invoke-interface {v15, v13, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    invoke-static {v11, v8, v6}, Lcom/project7/localmanager/LocalNewAchievementEngine;->groupCounter([BILjava/util/List;)I

    move-result v3

    .line 112
    invoke-static {v11, v8, v6}, Lcom/project7/localmanager/LocalNewAchievementEngine;->known([BILjava/util/List;)I

    move-result v13

    invoke-static {v11, v8, v6}, Lcom/project7/localmanager/LocalNewAchievementEngine;->counter([BILjava/util/List;)I

    move-result v15

    move-object/from16 v20, v2

    const/4 v0, 0x0

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 113
    if-ltz v13, :cond_7

    .line 114
    const-string v2, "q7AchievementCounts"

    invoke-static {v11, v2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 115
    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalNewAchievementEngine;->key(ILjava/util/List;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v13

    if-eq v13, v0, :cond_7

    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalNewAchievementEngine;->key(ILjava/util/List;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    invoke-static {v11, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    move-object v11, v2

    .line 117
    :cond_7
    sget-object v2, Lcom/project7/localmanager/LocalNewAchievementEngine;->SUB:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 118
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 120
    new-instance v3, Lcom/project7/localmanager/LocalNewAchievementEngine$$ExternalSyntheticLambda0;

    invoke-direct {v3, v6}, Lcom/project7/localmanager/LocalNewAchievementEngine$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 122
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v8, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v8, v6

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    goto :goto_6

    :cond_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :goto_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 125
    if-nez v2, :cond_9

    const/4 v3, 0x0

    goto :goto_7

    :cond_9
    invoke-static {v2, v10}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 126
    :goto_7
    const-string v6, "pre"

    invoke-static {v12, v6}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v6

    .line 127
    if-eqz v6, :cond_c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6, v10}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v6

    const-string v8, "finish_prev"

    invoke-static {v12, v8}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_a

    const/4 v8, 0x1

    goto :goto_8

    :cond_a
    const/4 v8, 0x2

    :goto_8
    if-lt v6, v8, :cond_b

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v6, 0x1

    .line 128
    :goto_a
    const/4 v8, 0x2

    if-eq v3, v8, :cond_d

    if-eqz v6, :cond_d

    if-lt v0, v1, :cond_d

    const/4 v3, 0x1

    .line 129
    :cond_d
    if-nez v2, :cond_e

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object v9, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    const-string v3, "2"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    goto :goto_b

    :cond_e
    invoke-static {v2, v10, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 130
    :goto_b
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v2, v0}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v0, 0x1

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    move-object/from16 v0, p1

    move-object v2, v1

    move-object/from16 v8, v17

    move-object/from16 v6, v18

    move-object/from16 v1, v19

    move-object/from16 v3, v21

    goto/16 :goto_4

    .line 134
    :cond_f
    move-object/from16 v19, v1

    move-object v1, v2

    move-object/from16 v21, v3

    move-object/from16 v18, v6

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "NA"

    move-object/from16 v6, p1

    invoke-virtual {v6, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    if-nez v3, :cond_10

    .line 135
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v4, v8

    new-instance v3, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v3, v2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_10
    goto :goto_c

    .line 136
    :cond_11
    sget-object v0, Lcom/project7/localmanager/LocalNewAchievementEngine;->SUB:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 137
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 139
    :cond_14
    const-string v2, "ad"

    move-object/from16 v3, v21

    invoke-static {v3, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    move-object/from16 v2, v18

    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 140
    const-string v1, "si"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_15

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v0

    .line 141
    :cond_15
    move-object/from16 v1, v19

    invoke-static {v11, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_f

    :cond_16
    invoke-static {v11, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v11

    :goto_f
    return-object v11
.end method

.method static sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Z)V
    .locals 12

    .line 144
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, p2}, Lcom/project7/localmanager/LocalAchievementEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->refresh([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 145
    const/4 v0, 0x3

    const/4 v1, 0x4

    const-string v2, "nad"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p3, :cond_0

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p3

    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {p3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-nez p3, :cond_5

    .line 146
    :cond_0
    new-array p3, v3, [Ljava/lang/Object;

    const-string v6, "d"

    aput-object v6, p3, v4

    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    aput-object v2, p3, v5

    invoke-static {p3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p3

    const-string v2, "syncNewAchievementData"

    invoke-virtual {p0, v2, p3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 147
    invoke-static {p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->tasks([B)Ljava/util/Map;

    move-result-object p3

    .line 148
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->tasks([B)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "NA"

    invoke-virtual {p2, v8, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    .line 150
    if-nez v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v8, "para"

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 151
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_2

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-interface {v7, v5, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-static {p1, v8, v9}, Lcom/project7/localmanager/LocalNewAchievementEngine;->groupCounter([BILjava/util/List;)I

    move-result v8

    iget-object v9, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 152
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-interface {v7, v5, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {v9, v10, v7}, Lcom/project7/localmanager/LocalNewAchievementEngine;->groupCounter([BILjava/util/List;)I

    move-result v7

    if-eq v8, v7, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v4

    .line 153
    :goto_2
    if-nez v7, :cond_3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_4

    .line 154
    :cond_3
    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "tid"

    aput-object v8, v7, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "i"

    aput-object v8, v7, v3

    new-instance v8, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v8, v6}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v8, v7, v0

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    const-string v7, "createNewAchievementTask"

    invoke-virtual {p0, v7, v6}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 155
    :cond_4
    goto/16 :goto_0

    .line 157
    :cond_5
    const-string p2, "amd"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p3

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {p3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-nez p3, :cond_b

    .line 160
    iget-object p3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 161
    move v2, v4

    :goto_3
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "updateAllAchievement"

    if-ge v2, v6, :cond_7

    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v6, v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 162
    :cond_7
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    sget-object v6, Lcom/project7/localmanager/LocalNewAchievementEngine$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalNewAchievementEngine$$ExternalSyntheticLambda1;

    invoke-interface {v2, v6}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 163
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result p3

    new-instance v6, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "info"

    aput-object v9, v8, v4

    iget-object v10, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 164
    invoke-static {v10, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    aput-object v10, v8, v5

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    .line 163
    invoke-interface {v2, p3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    const-string p3, "is"

    invoke-static {p1, p3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    .line 166
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, p2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->documentEntries([B)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 167
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 168
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "id"

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 169
    :cond_8
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-static {v10, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_9

    .line 170
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "h"

    aput-object v11, v10, v4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    aput-object v8, v10, v3

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v0

    aput-object v9, v10, v1

    const/4 v11, 0x5

    aput-object v7, v10, v11

    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v7

    const-string v10, "updateAchievement"

    invoke-virtual {p0, v10, v7}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 169
    :cond_9
    goto :goto_6

    .line 171
    :cond_a
    goto/16 :goto_4

    .line 173
    :cond_b
    return-void
.end method

.method static syncMoneyAndStatistics(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->moneyTransition([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 176
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/project7/localmanager/LocalNewAchievementEngine;->sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 177
    return-void
.end method

.method static tasks([B)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    const-string v1, "nad"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v1, "ad"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalNewAchievementEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalNewAchievementEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
