.class final Lcom/project7/localmanager/LocalSpecialItemEngine;
.super Ljava/lang/Object;
.source "LocalSpecialItemEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply([BLcom/project7/localmanager/LocalCommerceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Ljava/lang/String;[BJ)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 17

    .line 13
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "ust"

    const-string v5, "m"

    const-string v6, "weeknum"

    const-string v7, "showMessageStr"

    new-instance v8, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v8, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 15
    const/4 v10, 0x1

    if-eqz v0, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    const/4 v13, 0x2

    :try_start_0
    const-string v14, "\u7f3a\u5c11\u5468\u76ee\u8fdb\u5ea6\uff0c\u672a\u6267\u884c\u64cd\u4f5c"

    invoke-static {v11, v14}, Lcom/project7/localmanager/LocalSpecialItemEngine;->require(ZLjava/lang/String;)V

    .line 16
    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->withPatrolProgress([BLcom/project7/localmanager/LocalTutorialStore$Progress;)[B

    move-result-object v11

    .line 17
    invoke-static {v11, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v14

    .line 18
    const-string v15, "requestSandglassToday"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 19
    const-string v0, "sgnt"

    .line 20
    invoke-static {v14, v0, v10}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 19
    invoke-static {v11, v6, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 21
    return-object v8

    .line 23
    :cond_1
    const-string v15, "store_id"

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v15

    .line 24
    invoke-static/range {p3 .. p4}, Lcom/project7/localmanager/LocalSpecialItemEngine;->handles(Ljava/lang/String;[B)Z

    move-result v9

    const-string v12, "\u672a\u77e5\u7279\u6b8a\u5546\u54c1"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalSpecialItemEngine;->require(ZLjava/lang/String;)V

    .line 25
    iget-boolean v9, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    if-nez v9, :cond_2

    const-string v9, "w"

    invoke-static {v14, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    if-lt v9, v13, :cond_2

    move v9, v10

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const-string v12, "\u7279\u6b8a\u9053\u5177\u9700\u5728\u7b2c\u4e09\u5468\u76ee\u8d77\u8d2d\u4e70"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalSpecialItemEngine;->require(ZLjava/lang/String;)V

    .line 26
    iget-boolean v9, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-nez v9, :cond_3

    iget-boolean v9, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    if-nez v9, :cond_3

    iget-object v9, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 27
    invoke-interface {v9}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    sget-object v12, Lcom/project7/localmanager/LocalSpecialItemEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalSpecialItemEngine$$ExternalSyntheticLambda0;

    invoke-interface {v9, v12}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "q7Battle"

    .line 28
    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "q7WeekResult"

    .line 29
    invoke-static {v11, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    const-string v12, "\u8bf7\u5148\u5b8c\u6210\u5f53\u524d\u5267\u60c5\u3001\u5de1\u67e5\u6216\u6218\u6597"

    .line 26
    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalSpecialItemEngine;->require(ZLjava/lang/String;)V

    .line 31
    const-string v9, "num"

    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_4

    move v9, v10

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    const-string v12, "\u6bcf\u6b21\u53ea\u80fd\u8d2d\u4e70\u4e00\u4e2a\u7279\u6b8a\u9053\u5177"

    invoke-static {v9, v12}, Lcom/project7/localmanager/LocalSpecialItemEngine;->require(ZLjava/lang/String;)V

    .line 32
    invoke-static {v14, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v9

    .line 33
    const/16 v12, 0x3c

    if-eq v15, v12, :cond_8

    .line 34
    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->regularActions([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v16

    if-nez v16, :cond_5

    .line 35
    invoke-static {v11, v0}, Lcom/project7/localmanager/LocalEconomyEngine;->sandglass([BLcom/project7/localmanager/LocalTutorialStore$Progress;)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v10

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    const-string v13, "\u5ef6\u65f6\u6c99\u6f0f\u9700\u5728\u5f53\u5929\u884c\u52a8\u7528\u5c3d\u540e\u8d2d\u4e70"

    .line 34
    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalSpecialItemEngine;->require(ZLjava/lang/String;)V

    .line 36
    const-string v0, "d"

    invoke-static {v14, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    const/4 v13, 0x7

    if-ge v0, v13, :cond_6

    move v0, v10

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    const-string v13, "\u8bf7\u5148\u5b8c\u6210\u6700\u540e\u4e00\u5929\u7684\u7ed3\u5c40\u5267\u60c5"

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalSpecialItemEngine;->require(ZLjava/lang/String;)V

    .line 37
    if-ltz v9, :cond_7

    const/4 v13, 0x3

    if-ge v9, v13, :cond_7

    add-int/lit16 v0, v9, 0x395

    if-ne v15, v0, :cond_7

    move v0, v10

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    const-string v13, "\u8bf7\u4f9d\u6b21\u8d2d\u4e70\u6c99\u6f0f\uff0c\u6bcf\u5468\u76ee\u6700\u591a\u4e09\u6b21"

    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalSpecialItemEngine;->require(ZLjava/lang/String;)V

    .line 39
    :cond_8
    move-wide/from16 v13, p5

    invoke-static {v11, v13, v14}, Lcom/project7/localmanager/LocalCommerceEngine;->refreshStoreLimits([BJ)[B

    move-result-object v0

    .line 40
    move-object/from16 v11, p1

    invoke-static {v0, v11, v2, v3, v10}, Lcom/project7/localmanager/LocalCommerceEngine;->apply([BLcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/String;[BZ)Lcom/project7/localmanager/LocalCommerceEngine$Result;

    move-result-object v0

    .line 41
    iget-object v3, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v10

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    iget-object v11, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 42
    iget-object v11, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v11, v5}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_a
    const-string v11, "\u7279\u6b8a\u5546\u54c1\u8d2d\u4e70\u5931\u8d25"

    .line 41
    :goto_8
    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalSpecialItemEngine;->require(ZLjava/lang/String;)V

    .line 43
    iget-object v3, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->profile:[B

    iput-object v3, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 44
    iget-object v0, v0, Lcom/project7/localmanager/LocalCommerceEngine$Result;->replies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v8, v11, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_9

    .line 45
    :cond_b
    if-eq v15, v12, :cond_c

    .line 46
    const/16 v0, 0x1176

    invoke-static {v8, v0, v10}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    .line 47
    iget-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 48
    add-int/2addr v9, v10

    invoke-static {v0, v4, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    const-string v3, "sgw"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 49
    iget-object v3, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v6, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 50
    new-instance v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    iget-object v3, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v0, v3}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    .line 51
    const/4 v3, 0x0

    iput v3, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingActions:I

    .line 52
    const/4 v4, 0x2

    iput v4, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->remainingSandglass:I

    .line 53
    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalEconomyEngine;->commit(Lcom/project7/localmanager/LocalEconomyEngine$Result;I)V

    .line 54
    iget-object v0, v0, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    iput-object v0, v8, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 55
    const-string v0, "useSandglassItem"

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-virtual {v8, v0, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_c
    return-object v8

    .line 59
    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 60
    :goto_a
    new-instance v3, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v3, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 61
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v5, v4, v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 62
    const-string v0, "buyCardMallItem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "r"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "i"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "replyBuyCardMallItem"

    invoke-virtual {v3, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 63
    :cond_d
    return-object v3
.end method

.method static handles(Ljava/lang/String;[B)Z
    .locals 1

    .line 6
    const-string v0, "store_id"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p1

    .line 7
    const-string v0, "requestSandglassToday"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "buyCardMallItem"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3c

    if-eq p1, p0, :cond_1

    const/16 p0, 0x395

    if-lt p1, p0, :cond_0

    const/16 p0, 0x397

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$apply$0(Ljava/lang/Integer;)Z
    .locals 1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static quantity([BI)I
    .locals 3

    .line 68
    nop

    .line 69
    const-string v0, "inv"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "items"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 70
    const-string v2, "i"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    goto :goto_0

    .line 71
    :cond_1
    return v0
.end method

.method private static require(ZLjava/lang/String;)V
    .locals 0

    .line 75
    if-eqz p0, :cond_0

    .line 76
    return-void

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
