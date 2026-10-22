.class final Lcom/project7/localmanager/LocalHomeDailyEngine;
.super Ljava/lang/Object;
.source "LocalHomeDailyEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static amount([BLcom/project7/localmanager/LocalFeatureCatalog;)I
    .locals 13

    .line 47
    const-string v0, "hhd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 48
    const-string v2, "hri"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 50
    invoke-static {p0, v6}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "WM"

    invoke-virtual {p1, v9, v7}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    if-eqz v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    const-string v9, "\u5165\u4f4f\u89d2\u8272\u7f3a\u5c11\u539f\u7248\u5fc3\u60c5\u914d\u7f6e"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 51
    const-string v7, "1"

    invoke-static {v5, v7}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_2

    :cond_1
    move v9, v3

    :goto_2
    const-string v10, "\u5165\u4f4f\u8bb0\u5f55\u683c\u5f0f\u672a\u77e5"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 52
    invoke-static {v5, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 53
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    const-string v11, "0"

    filled-new-array {v11, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_3

    :cond_2
    move v5, v3

    :goto_3
    invoke-static {v5, v10}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    const-string v7, "R"

    invoke-virtual {p1, v7, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p1, v7, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    const-string v10, "release"

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalHomeDailyEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 56
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {p0, v7, v9}, Lcom/project7/localmanager/LocalHomeEngine;->roomOwned([BII)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v8

    goto :goto_4

    :cond_3
    move v5, v3

    .line 55
    :goto_4
    const-string v7, "\u5165\u4f4f\u4f4d\u7f6e\u672a\u77e5\u6216\u91cd\u590d"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 57
    const-string v5, "hxq"

    invoke-static {v0, v5, v6, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->pairInt([BLjava/lang/String;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "WP"

    invoke-virtual {p1, v7, v6}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    .line 58
    if-lt v5, v8, :cond_4

    const/4 v7, 0x4

    if-gt v5, v7, :cond_4

    if-eqz v6, :cond_4

    const-string v7, "item"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeDailyEngine;->v([BLjava/lang/String;)I

    move-result v7

    const/16 v9, 0x2c8c

    if-ne v7, v9, :cond_4

    move v7, v8

    goto :goto_5

    :cond_4
    move v7, v3

    :goto_5
    const-string v9, "\u5165\u4f4f\u89d2\u8272\u5fc3\u60c5\u65e0\u6548"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 59
    const-string v7, "amount"

    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 60
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gez v10, :cond_7

    :cond_5
    if-ne v5, v8, :cond_6

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    move v8, v3

    :cond_7
    :goto_6
    const-string v5, "\u7f3a\u5c11\u539f\u7248\u5fc3\u613f\u5e01\u4ea7\u91cf"

    invoke-static {v8, v5}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 61
    if-nez v9, :cond_8

    move v5, v3

    goto :goto_7

    :cond_8
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_7
    invoke-static {v4, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    .line 62
    goto/16 :goto_0

    .line 63
    :cond_9
    return v4
.end method

.method static choose([II)I
    .locals 6

    .line 30
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    if-ltz p1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "\u5fc3\u60c5\u968f\u673a\u503c\u65e0\u6548"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 31
    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_3

    .line 32
    aget v4, p0, v0

    if-ltz v4, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    const-string v5, "\u5fc3\u60c5\u6743\u91cd\u65e0\u6548"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 33
    aget v4, p0, v0

    if-ge p1, v4, :cond_2

    add-int/2addr v0, v3

    return v0

    .line 34
    :cond_2
    aget v4, p0, v0

    sub-int/2addr p1, v4

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5fc3\u60c5\u968f\u673a\u503c\u8d85\u51fa\u6743\u91cd\u8303\u56f4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static day(J)Ljava/lang/String;
    .locals 2

    .line 12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 p1, 0x7

    if-ge p0, p1, :cond_0

    const/4 p0, 0x5

    const/4 p1, -0x1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    .line 14
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {p0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static income([B)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    const-string v1, "dxqr"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    new-array v0, v3, [Ljava/lang/Integer;

    aput-object v6, v0, v5

    aput-object v6, v0, v4

    aput-object v6, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 40
    :cond_0
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    const-string v6, "\u6bcf\u65e5\u5fc3\u613f\u5e01\u8bb0\u5f55\u683c\u5f0f\u672a\u77e5"

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 41
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v3, :cond_3

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalHomeDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    const-string v1, "0"

    const-string v3, "1"

    const-string v7, "2"

    filled-new-array {v1, v3, v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 43
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v4, :cond_3

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    .line 42
    :goto_1
    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 44
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method static payload([B)[B
    .locals 7

    .line 106
    const-string v0, "dxqr"

    const-string v1, "hxq"

    const-string v2, "q7HomeDaily"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalHomeDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "version"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return-object v4

    .line 107
    :cond_0
    const-string v2, "hhd"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalHomeDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 109
    :try_start_0
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeDailyEngine;->income([B)Ljava/util/List;

    move-result-object v2

    .line 110
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-instance v6, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalHomeDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-direct {v6, p0}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v6, v5, v3

    const/4 p0, 0x2

    aput-object v0, v5, p0

    const/4 p0, 0x3

    aput-object v2, v5, p0

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 110
    :cond_2
    :goto_0
    return-object v4

    .line 112
    :catch_0
    move-exception p0

    return-object v4
.end method

.method static refresh([BLcom/project7/localmanager/LocalFeatureCatalog;JZ)[B
    .locals 21

    .line 66
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "hxq"

    const-string v3, "hhd"

    const-string v4, "q7HomeDaily"

    .line 68
    :try_start_0
    invoke-static/range {p2 .. p3}, Lcom/project7/localmanager/LocalHomeDailyEngine;->day(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalHomeDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    .line 69
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v8, 0x1

    xor-int/2addr v7, v8

    const-string v9, "version"

    const-string v10, "legacy"

    const-string v11, "day"

    if-nez v7, :cond_1

    :try_start_1
    invoke-static {v1, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalHomeDailyEngine;->v([BLjava/lang/String;)I

    move-result v13

    if-ne v13, v8, :cond_0

    .line 71
    invoke-static {v6, v11}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/project7/localmanager/LocalHomeDailyEngine;->validDay(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {v6, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v13, v8

    :goto_1
    const-string v14, "\u6bcf\u65e5\u5bb6\u56ed\u8bb0\u5f55\u683c\u5f0f\u672a\u77e5"

    .line 70
    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 72
    if-eqz v7, :cond_2

    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v6, v11}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 73
    :goto_2
    if-nez v7, :cond_3

    invoke-virtual {v5, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_3

    move v15, v8

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 74
    :goto_3
    if-nez v7, :cond_4

    if-nez v15, :cond_4

    if-nez p4, :cond_4

    return-object v1

    .line 75
    :cond_4
    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalHomeDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 76
    nop

    .line 77
    const-string v12, "heromgr"

    invoke-static {v1, v12}, Lcom/project7/localmanager/LocalHomeDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    move-object/from16 v16, v5

    const-string v5, "hrs"

    invoke-static {v12, v5}, Lcom/project7/localmanager/LocalHomeDailyEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v12, 0x0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p4, v5

    move-object/from16 v5, v17

    check-cast v5, [B

    .line 78
    move-object/from16 v17, v14

    const-string v14, "0"

    invoke-static {v5, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 79
    if-eqz v5, :cond_d

    const-string v14, "WN"

    invoke-virtual {v0, v14, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v14

    if-eqz v14, :cond_d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v1, v14}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v19, v4

    move-object/from16 v18, v8

    goto/16 :goto_9

    .line 80
    :cond_5
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    if-nez v12, :cond_6

    const/4 v14, 0x0

    goto :goto_5

    :cond_6
    const-string v14, "1"

    invoke-static {v12, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 81
    :goto_5
    if-eqz v12, :cond_9

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-ltz v18, :cond_7

    move-object/from16 v18, v8

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v19, v4

    const/4 v4, 0x4

    if-gt v8, v4, :cond_8

    goto :goto_6

    :cond_7
    move-object/from16 v19, v4

    move-object/from16 v18, v8

    :cond_8
    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    move-object/from16 v19, v4

    move-object/from16 v18, v8

    :goto_6
    const/4 v4, 0x1

    :goto_7
    const-string v8, "\u5df2\u4fdd\u5b58\u5fc3\u60c5\u683c\u5f0f\u672a\u77e5"

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 82
    if-nez v15, :cond_a

    if-eqz v12, :cond_a

    if-eqz v7, :cond_c

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_c

    .line 83
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalHomeDailyEngine;->weights(Lcom/project7/localmanager/LocalFeatureCatalog;I)[I

    move-result-object v4

    array-length v8, v4

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_8
    if-ge v12, v8, :cond_b

    move/from16 v20, v8

    aget v8, v4, v12

    invoke-static {v14, v8}, Ljava/lang/Math;->addExact(II)I

    move-result v14

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v20

    goto :goto_8

    .line 84
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v14}, Lcom/project7/localmanager/LocalStoryEnvironment;->nextInt(I)I

    move-result v8

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalHomeDailyEngine;->choose([II)I

    move-result v4

    invoke-static {v13, v2, v5, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->setNumber([BLjava/lang/String;II)[B

    move-result-object v4

    move-object v13, v4

    .line 86
    :cond_c
    move-object/from16 v5, p4

    move-object/from16 v14, v17

    move-object/from16 v8, v18

    move-object/from16 v4, v19

    const/4 v12, 0x1

    goto/16 :goto_4

    .line 79
    :cond_d
    move-object/from16 v19, v4

    move-object/from16 v18, v8

    .line 77
    :goto_9
    move-object/from16 v5, p4

    move-object/from16 v14, v17

    move-object/from16 v8, v18

    move-object/from16 v4, v19

    goto/16 :goto_4

    .line 87
    :cond_e
    move-object/from16 v19, v4

    move-object/from16 v17, v14

    if-nez v12, :cond_f

    return-object v1

    .line 88
    :cond_f
    invoke-static {v13}, Lcom/project7/localmanager/LocalHomeDailyEngine;->income([B)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    const/4 v4, 0x2

    const-string v5, "dxqr"

    if-eqz v7, :cond_12

    :try_start_2
    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_10

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_11

    :cond_10
    const/4 v8, 0x1

    goto :goto_a

    :cond_11
    const/4 v8, 0x0

    goto :goto_a

    .line 90
    :cond_12
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v10}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 91
    :goto_a
    if-eqz v15, :cond_13

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v8, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    .line 92
    :cond_13
    invoke-static {v1, v3, v13}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v12

    .line 93
    const/4 v14, 0x0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_14

    if-nez v8, :cond_14

    invoke-static {v12, v0}, Lcom/project7/localmanager/LocalHomeDailyEngine;->amount([BLcom/project7/localmanager/LocalFeatureCatalog;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_14
    invoke-static {v13, v5, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v0

    .line 95
    const/4 v2, 0x1

    invoke-static {v6, v9, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 96
    if-nez v15, :cond_16

    if-eqz v7, :cond_15

    goto :goto_b

    :cond_15
    move-object/from16 v5, v17

    goto :goto_c

    :cond_16
    :goto_b
    move-object/from16 v5, v16

    :goto_c
    invoke-static {v2, v11, v5}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 97
    invoke-static {v2, v10, v8}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v2

    .line 98
    invoke-static {v12, v3, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 99
    move-object/from16 v3, v19

    invoke-static {v0, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    .line 101
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Home daily preserved reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Project7Gateway"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v1
.end method

.method static require(ZLjava/lang/String;)V
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    return-void
.end method

.method static sync(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeDailyEngine;->payload([B)[B

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/project7/localmanager/LocalHomeDailyEngine;->payload([B)[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    iget-object p0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    const/4 p1, 0x0

    new-instance v1, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    const-string v2, "syncHeroXinqing"

    invoke-direct {v1, v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Reply;-><init>(Ljava/lang/String;[B)V

    invoke-interface {p0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 118
    :cond_0
    return-void
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static validDay(Ljava/lang/String;)Z
    .locals 4

    .line 17
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "[0-9]{4}-[0-9]{2}-[0-9]{2}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 19
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 20
    :catch_0
    move-exception p0

    return v0

    .line 17
    :cond_1
    :goto_0
    return v0
.end method

.method static weights(Lcom/project7/localmanager/LocalFeatureCatalog;I)[I
    .locals 7

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "WM"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, "hero"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalHomeDailyEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-string v2, "\u7f3a\u5c11\u539f\u7248\u5fc3\u60c5\u6743\u91cd"

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 24
    const-string p1, "weights"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    const-string v3, "\u5fc3\u60c5\u6743\u91cd\u683c\u5f0f\u672a\u77e5"

    invoke-static {p1, v3}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    .line 25
    new-array p1, v2, [I

    .line 26
    move v3, v1

    move v4, v3

    :goto_2
    const-string v5, "\u5fc3\u60c5\u6743\u91cd\u65e0\u6548"

    if-ge v3, v2, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, p1, v3

    aget v6, p1, v3

    if-ltz v6, :cond_2

    move v6, v0

    goto :goto_3

    :cond_2
    move v6, v1

    :goto_3
    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    aget v5, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 27
    :cond_3
    if-lez v4, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalHomeDailyEngine;->require(ZLjava/lang/String;)V

    return-object p1
.end method
