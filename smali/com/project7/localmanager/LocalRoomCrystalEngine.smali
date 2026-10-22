.class final Lcom/project7/localmanager/LocalRoomCrystalEngine;
.super Ljava/lang/Object;
.source "LocalRoomCrystalEngine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static active([B)Z
    .locals 2

    .line 26
    const-string v0, "weeknum"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "w"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string v0, "rmd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "fc"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;J)V
    .locals 16

    .line 83
    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-wide/from16 v1, p4

    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "weeknum"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "w"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v3, v4, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    const-string v5, "\u5e7b\u529b\u7ed3\u6676\u5c1a\u672a\u8fbe\u5230\u539f\u7248\u5468\u76ee\u5f00\u653e\u6761\u4ef6"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    .line 84
    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "rmd"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    iget-object v9, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->rule([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    .line 85
    const-string v9, "requestRoomJiejingOpen"

    move-object/from16 v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_3

    .line 86
    const-string v9, "fc"

    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v8

    goto :goto_1

    :cond_1
    move v3, v7

    .line 87
    :goto_1
    iget-object v11, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v0, v1, v2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->clock([BLcom/project7/localmanager/LocalFeatureCatalog;J)[B

    move-result-object v0

    .line 88
    invoke-static {v6, v0, v7}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->setClock(Lcom/project7/localmanager/LocalResourceEngine$Result;[BZ)V

    .line 89
    if-eqz v3, :cond_2

    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v9, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 90
    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "d"

    aput-object v1, v0, v7

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "f"

    aput-object v1, v0, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "requestRoomJiejingOpenReply"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 91
    return-void

    .line 93
    :cond_3
    iget-object v4, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->active([B)Z

    move-result v4

    const-string v5, "\u8bf7\u5148\u5f00\u542f\u5e7b\u529b\u7ed3\u6676"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    .line 94
    const-string v4, "rwd"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "\u65e7\u7ed3\u6676\u968f\u673a\u5956\u52b1\u5c1a\u5f85\u539f\u7248\u5408\u540c\u6838\u67e5\uff0c\u5df2\u4fdd\u7559\u672a\u9886\u53d6\u5185\u5bb9"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    .line 95
    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v0, v1, v2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->clock([BLcom/project7/localmanager/LocalFeatureCatalog;J)[B

    move-result-object v9

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->rule([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v0

    .line 96
    const-string v1, "crystal_itemid"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v11

    const-string v1, "crystal_limit"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v0

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalHomeEngine;->count([BI)I

    move-result v1

    sub-int/2addr v0, v1

    .line 97
    if-lez v0, :cond_4

    move v1, v8

    goto :goto_2

    :cond_4
    move v1, v7

    :goto_2
    const-string v2, "\u5e7b\u529b\u7ed3\u6676\u5df2\u8fbe\u5230\u539f\u7248\u6301\u6709\u4e0a\u9650"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    .line 98
    const-string v12, "crc"

    const-wide/16 v13, 0x0

    invoke-static {v9, v12, v13, v14}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->number([BLjava/lang/String;D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 99
    if-lez v15, :cond_5

    move v0, v8

    goto :goto_3

    :cond_5
    move v0, v7

    :goto_3
    const-string v1, "\u6682\u65e0\u53ef\u9886\u53d6\u7684\u5e7b\u529b\u7ed3\u6676"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    .line 100
    const/4 v5, 0x1

    const-string v2, "item"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v3, v11

    move v4, v15

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 101
    invoke-static {v9, v12, v13, v14}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->number([BLjava/lang/String;D)D

    move-result-wide v0

    int-to-double v2, v15

    sub-double/2addr v0, v2

    invoke-static {v9, v12, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDouble([BLjava/lang/String;D)[B

    move-result-object v0

    .line 102
    invoke-static {v6, v0, v8}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->setClock(Lcom/project7/localmanager/LocalResourceEngine$Result;[BZ)V

    .line 103
    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "rd"

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/util/List;

    new-array v2, v10, [Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "calcCrystalReply"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 104
    return-void
.end method

.method static clock([BLcom/project7/localmanager/LocalFeatureCatalog;J)[B
    .locals 12

    .line 60
    const-string v0, "rmd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "ac"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const-string v5, "\u7ed3\u6676\u8ba1\u65f6\u5b58\u6863\u683c\u5f0f\u5f02\u5e38"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    .line 61
    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->rule([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v1

    .line 62
    const-wide/16 v5, 0x0

    const-string v2, "crc"

    invoke-static {v0, v2, v5, v6}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->number([BLjava/lang/String;D)D

    move-result-wide v5

    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->seconds(J)I

    move-result v7

    int-to-double v7, v7

    const-string v9, "lct"

    invoke-static {v0, v9, v7, v8}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->number([BLjava/lang/String;D)D

    move-result-wide v7

    .line 63
    const-wide v10, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double v10, v7, v10

    if-gtz v10, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    cmpl-double v10, v7, v10

    if-nez v10, :cond_1

    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v4

    :goto_1
    const-string v11, "\u7ed3\u6676\u8ba1\u65f6\u683c\u5f0f\u5f02\u5e38"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    .line 64
    const-string v10, "max_crystal"

    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    int-to-double v10, v1

    cmpg-double v10, v5, v10

    if-gtz v10, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    const-string v4, "\u7ed3\u6676\u6682\u5b58\u8d85\u8fc7\u539f\u7248\u4e0a\u9650"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    .line 65
    invoke-static {p2, p3}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->seconds(J)I

    move-result p2

    .line 67
    int-to-double v3, p2

    cmpg-double p3, v3, v7

    if-gtz p3, :cond_3

    return-object v0

    .line 68
    :cond_3
    invoke-static {p0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->active([B)Z

    move-result p3

    if-eqz p3, :cond_4

    int-to-double v10, v1

    sub-double/2addr v3, v7

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->rate([BLcom/project7/localmanager/LocalFeatureCatalog;)I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr v3, p0

    const-wide p0, 0x40f5180000000000L    # 86400.0

    div-double/2addr v3, p0

    add-double/2addr v5, v3

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 69
    :cond_4
    invoke-static {v0, v2, v5, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDouble([BLjava/lang/String;D)[B

    move-result-object p0

    .line 70
    invoke-static {p0, v9, p2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static handles(Ljava/lang/String;)Z
    .locals 1

    .line 8
    const-string v0, "requestRoomJiejingOpen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "calcCrystal"

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

    :goto_1
    return p0
.end method

.method static initialize([BJ)[B
    .locals 8

    .line 47
    const-string v0, "rmd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    const-string v3, "rl"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 49
    :cond_0
    const-string v2, "ac"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v3

    .line 50
    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 51
    :cond_1
    if-nez v3, :cond_2

    sget-object v3, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 52
    :cond_2
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    const-string v5, "crc"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-wide/16 v6, 0x0

    invoke-static {v3, v5, v6, v7}, Lcom/project7/localmanager/BsonLite;->withProfileDouble([BLjava/lang/String;D)[B

    move-result-object v3

    .line 54
    :cond_3
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    const-string v5, "lct"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->seconds(J)I

    move-result p1

    invoke-static {v3, v5, p1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 55
    :cond_4
    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 57
    :cond_5
    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static inventoryChanged(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;J)V
    .locals 3

    .line 77
    invoke-static {p1}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->active([B)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "rmd"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "ac"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->clock([BLcom/project7/localmanager/LocalFeatureCatalog;J)[B

    move-result-object p1

    .line 80
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->setClock(Lcom/project7/localmanager/LocalResourceEngine$Result;[BZ)V

    .line 81
    :cond_1
    return-void

    .line 77
    :cond_2
    :goto_0
    return-void
.end method

.method static number([BLjava/lang/String;D)D
    .locals 2

    .line 15
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 16
    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    const-string p1, "\u7ed3\u6676\u5b58\u6863\u6570\u5b57\u683c\u5f0f\u5f02\u5e38"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    return-wide p2

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result p2

    if-eqz p2, :cond_1

    const-wide/16 p2, 0x0

    cmpl-double p2, p0, p2

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string p2, "\u7ed3\u6676\u5b58\u6863\u6570\u503c\u5f02\u5e38"

    invoke-static {v1, p2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    return-wide p0
.end method

.method static rate([BLcom/project7/localmanager/LocalFeatureCatalog;)I
    .locals 8

    .line 29
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->rule([BLcom/project7/localmanager/LocalFeatureCatalog;)[B

    move-result-object v0

    .line 30
    const-string v1, "base_crystal"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v1

    const-string v2, "crystal_acc"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    .line 31
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeEngine;->inventoryCounts([B)Ljava/util/Map;

    move-result-object p0

    .line 32
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 33
    iget-object v3, p1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "F:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 34
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v6, "itemid"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v6

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v7, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    const-string v5, "quality_acc_dict"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "star"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    .line 37
    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    .line 33
    :cond_2
    goto :goto_0

    .line 39
    :cond_3
    iget-object p1, p1, Lcom/project7/localmanager/LocalFeatureCatalog;->entries:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "TH:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v6, "items"

    invoke-static {v4, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    .line 41
    xor-int/2addr v3, v6

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_4

    move v3, v5

    .line 42
    :cond_5
    if-eqz v3, :cond_6

    const-string v3, "theme_acc_dict"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    .line 39
    :cond_6
    goto :goto_1

    .line 44
    :cond_7
    if-lez v1, :cond_8

    move v5, v3

    :cond_8
    const-string p0, "\u7ed3\u6676\u4ea7\u51fa\u89c4\u5219\u5f02\u5e38"

    invoke-static {v5, p0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    return v1
.end method

.method static require(ZLjava/lang/String;)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    return-void
.end method

.method static rule([BLcom/project7/localmanager/LocalFeatureCatalog;)[B
    .locals 3

    .line 20
    const-string v0, "rmd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "rl"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 21
    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 22
    :cond_0
    if-nez v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-string p0, "RB"

    invoke-virtual {p1, p0, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    .line 23
    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string p1, "\u7ed3\u6676\u623f\u95f4\u7b49\u7ea7\u5c1a\u65e0\u539f\u7248\u6570\u636e"

    invoke-static {v2, p1}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->require(ZLjava/lang/String;)V

    return-object p0
.end method

.method static seconds(J)I
    .locals 2

    .line 13
    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0
.end method

.method static setClock(Lcom/project7/localmanager/LocalResourceEngine$Result;[BZ)V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "rmd"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v3, "ac"

    invoke-static {v1, v3, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 74
    if-eqz p2, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "d"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "syncAutoCrytal"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 75
    :cond_0
    return-void
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
