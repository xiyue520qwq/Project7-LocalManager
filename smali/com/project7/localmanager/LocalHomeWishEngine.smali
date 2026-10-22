.class final Lcom/project7/localmanager/LocalHomeWishEngine;
.super Ljava/lang/Object;
.source "LocalHomeWishEngine.java"


# static fields
.field static final METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 7
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "requestNewTaskLinkByHeroId"

    const-string v2, "requestCompleteWishTask"

    const-string v3, "requestGetHeroHomeSpecialReward"

    const-string v4, "requestHeroHomeWishMoney"

    const-string v5, "requestShowTaskLinkResult"

    const-string v6, "clearHeroHomeTaskReward"

    const-string v7, "clearHeroHomeRecordHistory"

    const-string v8, "requestHeroHomeMark"

    const-string v9, "updateHeroHomeRed"

    const-string v10, "processClientTask"

    const-string v11, "requestGetTask"

    const-string v12, "requestGetTaskReward"

    const-string v13, "requestGiveUpTask"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/project7/localmanager/LocalHomeWishEngine;->METHODS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static accept(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V
    .locals 20

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "ct"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-lez v4, :cond_0

    const-string v4, "ft"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    const-string v4, "rt"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 162
    :goto_0
    const-string v7, "\u5fc3\u613f\u4efb\u52a1\u65e0\u6cd5\u9886\u53d6"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 164
    const-string v4, "at"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    const-string v9, "\u5fc3\u613f\u9886\u53d6\u8bb0\u5f55\u683c\u5f0f\u672a\u77e5"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 165
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "ctl"

    const-string v9, "ptl"

    if-lez v7, :cond_3

    .line 166
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->tasks([B)[B

    move-result-object v2

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->ids([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 167
    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->tasks([B)[B

    move-result-object v0

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeWishDailyEngine;->ids([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v6

    .line 166
    :goto_2
    const-string v0, "\u5df2\u9886\u53d6\u5fc3\u613f\u7684\u4efb\u52a1\u5217\u8868\u4e0d\u4e00\u81f4"

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_3
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->tasks([B)[B

    move-result-object v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 172
    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v6

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 173
    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v15}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v12, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    const-string v5, "\u4efb\u52a1\u5217\u8868\u6807\u8bc6\u91cd\u590d\u6216\u683c\u5f0f\u672a\u77e5"

    invoke-static {v15, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 174
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_5
    new-instance v5, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v5, v6}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_5
    const/4 v6, 0x0

    goto :goto_3

    .line 176
    :cond_6
    const/4 v5, 0x1

    if-ne v14, v5, :cond_7

    move v6, v5

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    const-string v12, "\u5f85\u9886\u53d6\u5fc3\u613f\u7f3a\u5c11\u552f\u4e00\u7684\u5019\u9009\u8bb0\u5f55"

    invoke-static {v6, v12}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 177
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 178
    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 179
    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14, v13}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 180
    if-eqz v13, :cond_8

    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    move v14, v5

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    :goto_8
    const-string v15, "\u4efb\u52a1\u9886\u53d6\u5217\u8868\u91cd\u590d\u6216\u683c\u5f0f\u672a\u77e5"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 181
    new-instance v14, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v14, v13}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    goto :goto_7

    .line 183
    :cond_9
    const-string v6, "et"

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 184
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_a

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    goto :goto_a

    :cond_b
    :goto_9
    move v6, v5

    :goto_a
    const-string v13, "\u4efb\u52a1\u8fc7\u671f\u8bb0\u5f55\u683c\u5f0f\u672a\u77e5"

    invoke-static {v6, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 185
    const-wide/16 v13, 0x1

    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v5, v16, v18

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 186
    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v5, v13

    if-ltz v13, :cond_c

    const/4 v13, 0x1

    goto :goto_b

    :cond_c
    const/4 v13, 0x0

    :goto_b
    const-string v14, "\u5f53\u524d\u8bbe\u5907\u65f6\u95f4\u65e9\u4e8e\u5fc3\u613f\u521b\u5efa\u65f6\u95f4"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 187
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_e

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v3

    int-to-long v13, v3

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v2, v3

    add-long/2addr v13, v2

    cmp-long v2, v5, v13

    if-gtz v2, :cond_d

    goto :goto_c

    :cond_d
    const/4 v15, 0x0

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v15, 0x1

    :goto_d
    const-string v2, "\u5fc3\u613f\u4efb\u52a1\u5df2\u8fc7\u671f"

    invoke-static {v15, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 188
    new-instance v2, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-static {v7, v9, v10}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    invoke-static {v2, v8, v11}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 190
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v7, "tsd"

    invoke-static {v3, v7, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 191
    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    move-object/from16 v3, p2

    invoke-static {v3, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "ts"

    invoke-static {v2, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->writeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V

    .line 192
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->syncMembership(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 193
    return-void
.end method

.method static addExperience(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;II)V
    .locals 12

    .line 58
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "\u7f81\u7eca\u5956\u52b1\u914d\u7f6e\u65e0\u6548"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, p2}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "WX"

    invoke-virtual {p1, v3, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    const-string v2, "exp"

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "\u7f3a\u5c11\u539f\u7248\u7f81\u7eca\u503c\u4e0a\u9650"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, p2}, Lcom/project7/localmanager/LocalHomeWishEngine;->experience([BI)I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    .line 61
    const-wide/16 v2, 0x4e20

    iget-object p3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p3, p2}, Lcom/project7/localmanager/LocalHomeWishEngine;->storedExperience([BI)I

    move-result p3

    int-to-long v4, p3

    const-wide/16 v6, 0x0

    int-to-long v8, p1

    sub-long v10, v0, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    .line 62
    iget-object p3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p3}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object p3

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "hhe"

    invoke-static {p3, v1, p2, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->setNumber([BLjava/lang/String;II)[B

    move-result-object p3

    .line 63
    const-string v0, "hehe"

    if-gtz p1, :cond_2

    invoke-static {p3, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {p3, v0, p2, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->setNumber([BLjava/lang/String;II)[B

    move-result-object p3

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string p2, "hhd"

    invoke-static {p1, p2, p3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 65
    return-void
.end method

.method static apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;[B)V
    .locals 17

    .line 475
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "requestNewTaskLinkByHeroId"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x1

    .line 483
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 475
    if-eqz v2, :cond_0

    invoke-static {v6, v7, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->select(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V

    goto/16 :goto_1a

    .line 476
    :cond_0
    const-string v2, "requestCompleteWishTask"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "\u5fc3\u613f\u69fd\u4f4d\u65e0\u6548"

    const-string v5, "s"

    const-string v10, "ft"

    const-string v12, "r"

    const-string v13, "item"

    const-string v14, "t"

    const-string v15, "i"

    const/4 v9, 0x0

    if-eqz v2, :cond_5

    .line 477
    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v0

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v1

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v2

    .line 478
    if-lt v0, v8, :cond_1

    iget-object v5, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->slots([B)I

    move-result v5

    if-gt v0, v5, :cond_1

    move v5, v8

    goto :goto_0

    :cond_1
    move v5, v9

    :goto_0
    invoke-static {v5, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 479
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "WQ"

    invoke-virtual {v7, v4, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v2, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-string v5, "amount"

    if-lez v4, :cond_2

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    move v4, v8

    goto :goto_1

    :cond_2
    move v4, v9

    :goto_1
    const-string v11, "\u7f3a\u5c11\u539f\u7248\u5fc3\u613f\u8d39\u7528"

    invoke-static {v4, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 480
    iget-object v4, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v4, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    iget-object v4, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object v4

    .line 481
    :goto_2
    if-eqz v4, :cond_4

    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    move v4, v8

    goto :goto_3

    :cond_4
    move v4, v9

    :goto_3
    const-string v10, "\u5f53\u524d\u5fc3\u613f\u4e0d\u80fd\u5feb\u6377\u5b8c\u6210"

    invoke-static {v4, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 482
    invoke-static {v2, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v6, v4, v2}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    invoke-static {v6, v7, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->normalDone(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;I)V

    .line 483
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v12, v2, v9

    aput-object v3, v2, v8

    const/4 v3, 0x2

    aput-object v15, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    aput-object v14, v2, v0

    new-instance v0, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v0, v1}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "replyCompleteWishTask"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 484
    goto/16 :goto_1a

    :cond_5
    const-string v2, "requestGetHeroHomeSpecialReward"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v11, "group"

    const-string v9, "WT"

    if-eqz v2, :cond_b

    .line 485
    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    const/4 v1, 0x3

    if-gt v0, v1, :cond_6

    move v1, v8

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 486
    move v1, v8

    :goto_5
    const/4 v2, 0x3

    if-gt v1, v2, :cond_a

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_9

    .line 487
    :cond_7
    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v2

    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_6

    .line 488
    :cond_8
    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v3

    .line 489
    if-eqz v3, :cond_9

    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v9, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_9

    invoke-static {v6, v7, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->specialReward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;I)V

    .line 486
    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 491
    :cond_a
    goto/16 :goto_1a

    :cond_b
    const-string v2, "processClientTask"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_e

    .line 492
    const-string v0, "tfid"

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_d

    .line 493
    const-string v0, "pl"

    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v8, :cond_c

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 494
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 495
    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v1

    const-string v3, "hri"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v9, v8

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    .line 493
    :goto_7
    const-string v1, "\u8bf7\u5728\u5bf9\u5e94\u795e\u5668\u4f7f\u623f\u95f4\u4ea4\u6d41"

    invoke-static {v9, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 496
    invoke-static {v6, v7, v4, v0, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->count(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;ILjava/util/List;I)V

    .line 497
    goto/16 :goto_1a

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Home client task has no supported counter tfid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Project7Gateway"

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 498
    :cond_e
    const-string v2, "requestHeroHomeWishMoney"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "hhd"

    if-eqz v2, :cond_12

    .line 499
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v0

    const-string v10, "dxqr"

    invoke-static {v0, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 500
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    :goto_8
    const-string v1, "\u4eca\u65e5\u5fc3\u613f\u5e01\u5c1a\u4e0d\u53ef\u9886\u53d6\u6216\u5df2\u9886\u53d6"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 501
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v0

    const-string v1, "fi"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_9

    .line 502
    :cond_10
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v2, 0x2c8c

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalHeroGrowthEngine;->count([BI)I

    move-result v0

    int-to-long v2, v0

    int-to-long v0, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    :goto_a
    const-string v1, "\u5fc3\u613f\u5e01\u8fbe\u5230\u623f\u95f4\u4e0a\u9650"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 503
    const/16 v3, 0x2c8c

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    const-string v2, "item"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v9, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v2

    invoke-static {v2, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 505
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v12, v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object v15, v1, v0

    const/4 v0, 0x3

    aput-object v9, v1, v0

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "replyHeroHomeWishMoney"

    invoke-virtual {v6, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 506
    goto/16 :goto_1a

    :cond_12
    const-string v2, "requestShowTaskLinkResult"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 507
    const-string v0, "v"

    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 508
    if-nez v2, :cond_14

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_13

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v1, 0x1

    :goto_c
    const-string v3, "\u5fc3\u613f\u63d0\u793a\u8bbe\u7f6e\u65e0\u6548"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 509
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v3

    if-nez v2, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_d

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v9, 0x1

    goto :goto_d

    :cond_16
    const/4 v9, 0x0

    :goto_d
    const-string v0, "sf"

    invoke-static {v3, v0, v9}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    invoke-static {v1, v8, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 510
    goto/16 :goto_1a

    :cond_17
    const-string v2, "requestHeroHomeMark"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 511
    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    const/4 v9, 0x1

    goto :goto_e

    :cond_18
    const/4 v9, 0x0

    :goto_e
    const-string v0, "\u5bb6\u56ed\u5f15\u5bfc\u6807\u8bb0\u65e0\u6548"

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 512
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v1

    const-string v2, "fm"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto/16 :goto_1a

    .line 513
    :cond_19
    const-string v2, "updateHeroHomeRed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 514
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v1

    const-string v2, "ir"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileBool([BLjava/lang/String;Z)[B

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto/16 :goto_1a

    .line 515
    :cond_1a
    const-string v2, "clearHeroHomeTaskReward"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 516
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "rc"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->cached([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v13}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v6, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->saveCache(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 517
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "rac"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->cached([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v13}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "rac"

    invoke-static {v6, v1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->saveCache(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V

    goto/16 :goto_1a

    .line 518
    :cond_1b
    const-string v2, "clearHeroHomeRecordHistory"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 519
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v0

    const-string v1, "rh"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 520
    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_10

    :cond_1c
    const/4 v2, 0x0

    :goto_10
    const-string v1, "\u5bb6\u56ed\u5386\u53f2\u8bb0\u5f55\u683c\u5f0f\u672a\u77e5"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    goto :goto_f

    .line 521
    :cond_1d
    iget-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const-string v3, "rh"

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto/16 :goto_1a

    .line 523
    :cond_1e
    const-string v2, "taskUuid"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    goto :goto_11

    :cond_1f
    const/4 v2, 0x0

    :goto_11
    const-string v8, "\u5fc3\u613f\u4efb\u52a1\u6807\u8bc6\u65e0\u6548"

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 524
    iget-object v2, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_20

    const/4 v8, 0x1

    goto :goto_12

    :cond_20
    const/4 v8, 0x0

    :goto_12
    const-string v13, "\u5fc3\u613f\u4efb\u52a1\u5df2\u7ed3\u675f\u6216\u4e0d\u5b58\u5728"

    invoke-static {v8, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 525
    const/4 v8, 0x0

    const/4 v13, 0x1

    :goto_13
    const-string v4, "tid"

    move-object/from16 v16, v15

    const/4 v15, 0x3

    if-gt v13, v15, :cond_22

    iget-object v15, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v15

    invoke-static {v15, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v15

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v4

    if-ne v15, v4, :cond_21

    move v8, v13

    :cond_21
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v15, v16

    const/16 v4, 0x8

    goto :goto_13

    .line 526
    :cond_22
    if-eqz v8, :cond_23

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v9, v13}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v13

    invoke-static {v13, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v13

    if-lez v13, :cond_23

    const/4 v13, 0x1

    goto :goto_14

    :cond_23
    const/4 v13, 0x0

    :goto_14
    const-string v14, "\u8be5\u8bf7\u6c42\u4e0d\u662f\u5bb6\u56ed\u5fc3\u613f\u4efb\u52a1"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 527
    const-string v13, "requestGetTaskReward"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 528
    invoke-static {v2, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-lez v5, :cond_24

    const-string v5, "rt"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_24

    const/4 v5, 0x1

    goto :goto_15

    :cond_24
    const/4 v5, 0x0

    :goto_15
    const-string v10, "\u5fc3\u613f\u4efb\u52a1\u5c1a\u672a\u5b8c\u6210"

    invoke-static {v5, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 529
    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v9, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_25

    invoke-static {v6, v7, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->specialReward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;I)V

    goto/16 :goto_18

    :cond_25
    invoke-static {v6, v7, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->normalDone(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;I)V

    goto/16 :goto_18

    .line 530
    :cond_26
    const-string v10, "requestGiveUpTask"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->removeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {v6, v8, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->setSlot(Lcom/project7/localmanager/LocalResourceEngine$Result;I[B)V

    goto/16 :goto_18

    .line 532
    :cond_27
    iget-object v10, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v10

    const-string v13, "h"

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v13

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v4

    .line 533
    invoke-static {v2, v13, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->binding([BII)V

    .line 534
    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v13}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v8

    if-eqz v8, :cond_28

    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v8

    const/4 v14, 0x5

    if-ge v8, v14, :cond_28

    const/4 v8, 0x1

    goto :goto_16

    :cond_28
    const/4 v8, 0x0

    :goto_16
    const-string v14, "\u5fc3\u613f\u89d2\u8272\u672a\u62e5\u6709\u6216\u7f81\u7eca\u5df2\u6ee1\u7ea7"

    invoke-static {v8, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 535
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v8

    const/4 v14, 0x1

    if-ne v8, v14, :cond_29

    invoke-static {v10, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v7, v13, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->normalTask(Lcom/project7/localmanager/LocalFeatureCatalog;II)I

    move-result v5

    if-eq v5, v4, :cond_2a

    .line 536
    :cond_29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v9, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    invoke-static {v5, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "WS"

    invoke-virtual {v7, v8, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    const-string v8, "task"

    invoke-static {v5, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_2b

    :cond_2a
    const/4 v4, 0x1

    goto :goto_17

    :cond_2b
    const/4 v4, 0x0

    .line 535
    :goto_17
    const-string v5, "\u5fc3\u613f\u4e0e\u795e\u5668\u4f7f\u914d\u7f6e\u4e0d\u5339\u914d"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 538
    invoke-static {v6, v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->accept(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V

    .line 540
    :goto_18
    const-string v2, "requestGetTaskReward"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v0, "replyGetTaskReward"

    goto :goto_19

    :cond_2c
    const-string v2, "requestGiveUpTask"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "replyGiveUpTask"

    goto :goto_19

    :cond_2d
    const-string v0, "replyGetTask"

    :goto_19
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v12, v4, v2

    .line 541
    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v8, 0x2

    aput-object v16, v4, v8

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "taskUuid"

    aput-object v10, v9, v2

    new-instance v10, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v10, v1}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v5

    aput-object v12, v9, v8

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const/4 v5, 0x3

    aput-object v1, v9, v5

    const-string v1, "show"

    const/4 v8, 0x4

    aput-object v1, v9, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v9, v2

    const/4 v1, 0x6

    const-string v2, "ad"

    aput-object v2, v9, v1

    const/4 v1, 0x7

    aput-object v3, v9, v1

    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    .line 540
    invoke-virtual {v6, v0, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 543
    :goto_1a
    const/4 v0, 0x1

    invoke-static {v6, v7, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 544
    return-void
.end method

.method static binding([BII)V
    .locals 10

    .line 195
    const-string v0, "ext"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "\u5fc3\u613f\u76ee\u6807\u683c\u5f0f\u672a\u77e5"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 196
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 197
    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v4, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 198
    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 199
    const-string v8, "1"

    if-eqz v7, :cond_1

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    const-string v9, "\u5fc3\u613f\u76ee\u6807\u91cd\u590d\u6216\u683c\u5f0f\u672a\u77e5"

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 200
    const-string v6, "target_hero"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 201
    :cond_2
    const-string v6, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v5, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 202
    :cond_3
    goto :goto_1

    .line 203
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    const-string p0, "\u5fc3\u613f\u76ee\u6807\u4e0e\u69fd\u4f4d\u4e0d\u5339\u914d"

    invoke-static {v2, p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 204
    return-void
.end method

.method static cache(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalResourceEngine$Result;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->cached([BLjava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 306
    const-string v2, "item"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 307
    const-string v7, "0"

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v8

    const-string v9, "1"

    if-lez v8, :cond_1

    const-string v8, "rc"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-lez v8, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    const-string v6, "\u5fc3\u613f\u5956\u52b1\u7f13\u5b58\u65e0\u6548"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    invoke-static {v4, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v6, Lcom/project7/localmanager/LocalHomeWishEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalHomeWishEngine$$ExternalSyntheticLambda0;

    invoke-interface {v1, v5, v4, v6}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 308
    goto :goto_0

    .line 309
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v7, Lcom/project7/localmanager/LocalHomeWishEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalHomeWishEngine$$ExternalSyntheticLambda0;

    invoke-interface {v1, v4, v3, v7}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_2

    .line 310
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    aput-object v7, v4, v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    aput-object v3, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 311
    :cond_4
    invoke-static {v0, v2, p2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/LocalHomeWishEngine;->saveCache(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V

    .line 312
    return-void
.end method

.method static cache(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalResourceEngine$Result;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 302
    const-string v0, "rc"

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->cache(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;Ljava/util/List;)V

    .line 303
    return-void
.end method

.method static cached([BLjava/lang/String;)[B
    .locals 7

    .line 281
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 283
    :cond_0
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    const-string v1, "\u5fc3\u613f\u5956\u52b1\u7f13\u5b58\u683c\u5f0f\u672a\u77e5"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 284
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 285
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 286
    const-string v4, "0"

    invoke-static {p1, v4}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    invoke-static {v5, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 287
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    const-string v6, "\u5fc3\u613f\u5956\u52b1\u7f13\u5b58\u5b57\u6bb5\u91cd\u590d"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 288
    const-string v5, "1"

    invoke-static {v0, v4, p1, v5}, Lcom/project7/localmanager/BsonLite;->withCopiedValue([BLjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    .line 289
    goto :goto_2

    .line 290
    :cond_4
    return-object v0
.end method

.method static count(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;ILjava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalResourceEngine$Result;",
            "Lcom/project7/localmanager/LocalFeatureCatalog;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 414
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->count(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;ILjava/util/List;I[B)V

    .line 415
    return-void
.end method

.method static count(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;ILjava/util/List;I[B)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalResourceEngine$Result;",
            "Lcom/project7/localmanager/LocalFeatureCatalog;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I[B)V"
        }
    .end annotation

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    const-string v7, "\u5fc3\u613f\u8ba1\u6570\u65e0\u6548"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 418
    move v6, v5

    :goto_1
    const/4 v7, 0x3

    if-gt v6, v7, :cond_d

    .line 419
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v7

    const-string v8, "h"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v8

    const-string v9, "t"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "WT"

    invoke-virtual {v1, v10, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v9

    .line 420
    const-string v10, "group"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v10

    if-ne v10, v5, :cond_a

    const-string v10, "type"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v10

    move/from16 v11, p2

    if-ne v10, v11, :cond_b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v12, p3

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_5

    .line 421
    :cond_1
    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    move v10, v5

    goto :goto_2

    :cond_2
    move v10, v4

    :goto_2
    const-string v13, "\u5fc3\u613f\u4efb\u52a1\u8bb0\u5f55\u7f3a\u5931"

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    iget-object v10, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object v10

    .line 422
    if-eqz v3, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto/16 :goto_5

    .line 423
    :cond_3
    const-string v13, "at"

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "ft"

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v13

    if-nez v13, :cond_c

    const-string v13, "rt"

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_4

    goto/16 :goto_5

    .line 424
    :cond_4
    const-string v13, "para"

    invoke-static {v9, v13}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v14, :cond_6

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v8, :cond_6

    :cond_5
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_6

    move v8, v5

    goto :goto_3

    :cond_6
    move v8, v4

    :goto_3
    const-string v13, "\u5fc3\u613f\u76ee\u6807\u914d\u7f6e\u7f3a\u5931"

    invoke-static {v8, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 425
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->counter([B)I

    move-result v13

    invoke-static {v13, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 426
    const-string v15, "mi"

    invoke-static {v10, v15}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const-string v5, "counter"

    if-eqz v17, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, [B

    .line 427
    const-string v14, "0"

    invoke-static {v4, v14}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v5, v4}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v14, 0x2

    goto :goto_4

    .line 428
    :cond_8
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/Serializable;

    const/4 v14, 0x0

    aput-object v5, v4, v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x1

    aput-object v5, v4, v14

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v15, v13}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v4

    invoke-static {v0, v7, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->writeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V

    .line 429
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v8, v4, :cond_9

    invoke-static {v0, v1, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->normalDone(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;I)V

    goto :goto_5

    :cond_9
    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->syncTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    goto :goto_5

    .line 420
    :cond_a
    move/from16 v11, p2

    :cond_b
    move-object/from16 v12, p3

    .line 418
    :cond_c
    :goto_5
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 431
    :cond_d
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 432
    return-void
.end method

.method static counter([B)I
    .locals 8

    .line 403
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    const-string v1, "mi"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string v4, "\u5fc3\u613f\u8ba1\u6570\u683c\u5f0f\u672a\u77e5"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 404
    const/4 v0, 0x0

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 405
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 406
    invoke-static {p0, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_2

    move v6, v2

    goto :goto_3

    :cond_2
    move v6, v3

    :goto_3
    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 407
    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "counter"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 408
    const-string v6, "1"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v0, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    move v0, v2

    goto :goto_4

    :cond_3
    move v0, v3

    :goto_4
    const-string v6, "\u5fc3\u613f\u8ba1\u6570\u91cd\u590d\u6216\u683c\u5f0f\u672a\u77e5"

    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    move-object v0, v5

    .line 410
    :cond_4
    goto :goto_2

    .line 411
    :cond_5
    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_5
    return v3
.end method

.method static create(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;IIII)[B
    .locals 16

    .line 219
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WT"

    move-object/from16 v5, p1

    invoke-virtual {v5, v4, v3}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 219
    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const-string v7, "\u5fc3\u613f\u4efb\u52a1\u914d\u7f6e\u7f3a\u5931\u6216\u5df2\u6709\u91cd\u590d\u4efb\u52a1"

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/project7/localmanager/LocalResourceEngine;->uuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 221
    const/16 v8, 0x12

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "uuid"

    aput-object v9, v8, v5

    new-instance v9, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v9, v3}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v4

    const-string v9, "tid"

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v8, v11

    const/4 v9, 0x4

    const-string v12, "ct"

    aput-object v12, v8, v9

    const/4 v9, 0x5

    .line 222
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v9

    const/4 v9, 0x6

    const-string v12, "at"

    aput-object v12, v8, v9

    const/4 v9, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v9

    const/16 v7, 0x8

    const-string v9, "ft"

    aput-object v9, v8, v7

    const/16 v7, 0x9

    aput-object v6, v8, v7

    const/16 v7, 0xa

    const-string v9, "rt"

    aput-object v9, v8, v7

    const/16 v7, 0xb

    aput-object v6, v8, v7

    const/16 v7, 0xc

    const-string v9, "ts"

    aput-object v9, v8, v7

    const/16 v7, 0xd

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    const/16 v7, 0xe

    const-string v9, "ext"

    aput-object v9, v8, v7

    const/16 v7, 0xf

    new-array v9, v11, [Ljava/util/List;

    new-array v11, v10, [Ljava/io/Serializable;

    const-string v12, "target_hero"

    aput-object v12, v11, v5

    .line 223
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    aput-object v11, v9, v5

    new-array v11, v10, [Ljava/io/Serializable;

    const-string v12, "i"

    aput-object v12, v11, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    aput-object v11, v9, v4

    new-array v11, v10, [Ljava/io/Serializable;

    const-string v12, "cfd"

    aput-object v12, v11, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    aput-object v9, v8, v7

    const/16 v7, 0x10

    const-string v9, "mi"

    aput-object v9, v8, v7

    const/16 v7, 0x11

    new-array v9, v10, [Ljava/io/Serializable;

    const-string v10, "counter"

    aput-object v10, v9, v5

    .line 224
    aput-object v6, v9, v4

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    aput-object v6, v8, v7

    .line 221
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v6

    .line 225
    invoke-static {v0, v3, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->writeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V

    .line 226
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v8, "tsd"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 227
    const-string v10, "ctl"

    invoke-static {v7, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    .line 228
    invoke-static {v11}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 229
    invoke-static {v11, v13}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    move v14, v4

    goto :goto_2

    :cond_1
    move v14, v5

    :goto_2
    const-string v15, "\u4efb\u52a1\u5217\u8868\u6807\u8bc6\u683c\u5f0f\u672a\u77e5"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 230
    new-instance v14, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v14, v13}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    goto :goto_1

    .line 232
    :cond_2
    new-instance v4, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v4, v3}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v4

    invoke-static {v3, v8, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 235
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->syncMembership(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 236
    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v3

    .line 237
    const-string v4, "h"

    move/from16 v5, p3

    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    const-string v4, "s"

    move/from16 v5, p4

    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    const-string v4, "t"

    invoke-static {v3, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v2

    .line 238
    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->setSlot(Lcom/project7/localmanager/LocalResourceEngine$Result;I[B)V

    return-object v6
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static dailyChanged(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLcom/project7/localmanager/LocalFeatureCatalog;)V
    .locals 16

    .line 435
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "q7DailyBattle"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 436
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "active"

    invoke-static {v8, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 437
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 438
    const-string v9, "Project7Gateway"

    const-string v4, "tasks"

    const/4 v5, 0x0

    const-string v10, "q7HomeWishBattle"

    const-string v11, "t"

    const-string v6, "f"

    const/4 v12, 0x1

    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 439
    sget-object v0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 440
    move-object v2, v0

    move v3, v12

    :goto_0
    const/4 v0, 0x3

    if-gt v3, v0, :cond_2

    .line 442
    :try_start_0
    iget-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v0

    invoke-static {v0, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v8, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v0

    .line 443
    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v0}, Lcom/project7/localmanager/BsonLite;->withProfileString([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_1
    goto :goto_2

    .line 444
    :catch_0
    move-exception v0

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Home wish admission preserved slot="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 448
    :cond_2
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v5

    .line 449
    invoke-static {v1, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v12

    const/4 v1, 0x2

    aput-object v4, v8, v1

    aput-object v2, v8, v0

    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    .line 448
    invoke-static {v3, v10, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto/16 :goto_d

    .line 450
    :cond_3
    if-eqz v2, :cond_f

    if-nez v3, :cond_f

    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_f

    .line 451
    invoke-static {v0, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v8, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    if-eqz v2, :cond_e

    invoke-static {v0, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_c

    .line 453
    :cond_4
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 454
    const-string v13, "reply"

    if-nez v3, :cond_6

    invoke-static {v1, v6}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1, v13}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    return-void

    .line 455
    :cond_6
    if-nez v3, :cond_7

    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "w"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    move v13, v12

    goto :goto_3

    :cond_7
    move v13, v5

    .line 456
    :goto_3
    const-string v1, "h"

    invoke-static {v8, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 457
    if-eqz v13, :cond_8

    const-string v1, "wishCost"

    goto :goto_4

    :cond_8
    const-string v1, "wishFailCost"

    :goto_4
    invoke-static {v8, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 458
    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 459
    iget-object v15, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 461
    if-eqz v1, :cond_9

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_9

    const/16 v3, 0x51

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v4, v14

    move v12, v6

    move-object v6, v0

    :try_start_2
    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->count(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;ILjava/util/List;I[B)V

    goto :goto_6

    .line 466
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_5
    move v12, v6

    goto :goto_8

    .line 461
    :cond_9
    move v12, v6

    .line 463
    :goto_6
    if-eqz v13, :cond_a

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a

    const/16 v3, 0xb

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v4, v14

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->count(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;ILjava/util/List;I[B)V

    goto :goto_7

    .line 466
    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_8

    .line 464
    :cond_a
    :goto_7
    if-eqz v13, :cond_b

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_b

    const/4 v3, 0x3

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v4, v14

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->count(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;ILjava/util/List;I[B)V

    .line 465
    :cond_b
    if-eqz v13, :cond_d

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_d

    const/4 v3, 0x4

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v4, v14

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->count(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;ILjava/util/List;I[B)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_a

    .line 467
    :goto_8
    iput-object v15, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    :goto_9
    iget-object v1, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v12, :cond_c

    iget-object v1, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v2, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 468
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Home wish settlement preserved reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 469
    :cond_d
    :goto_a
    nop

    .line 470
    :goto_b
    iget-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v10}, Lcom/project7/localmanager/BsonLite;->withoutProfileKey([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, v7, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    goto :goto_e

    .line 452
    :cond_e
    :goto_c
    return-void

    .line 450
    :cond_f
    :goto_d
    nop

    .line 472
    :goto_e
    move-object/from16 v1, p2

    const/4 v2, 0x1

    invoke-static {v7, v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 473
    return-void
.end method

.method static enter(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;)V
    .locals 14

    .line 546
    const-string v0, "t"

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v1

    const-string v2, "tls"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->syncMembership(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v2, "rc"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->cached([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "item"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p0, v2, v2, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->rewardNotice(Lcom/project7/localmanager/LocalResourceEngine$Result;IIZ)V

    .line 549
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V

    .line 550
    move v3, v1

    :goto_0
    const/4 v4, 0x3

    if-gt v3, v4, :cond_a

    .line 552
    :try_start_0
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v5

    invoke-static {v5, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v6

    const-string v7, "h"

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v5

    .line 553
    const-string v7, "WT"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    const-string v8, "group"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, p1, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->specialMet([BLcom/project7/localmanager/LocalFeatureCatalog;I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 554
    invoke-static {v7, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v7

    const/4 v9, 0x5

    if-ge v7, v9, :cond_8

    const-string v7, "WS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v7, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v7

    const-string v9, "task"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ne v7, v6, :cond_8

    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 555
    invoke-static {v7, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->experience([BI)I

    move-result v7

    const-string v9, "WX"

    iget-object v10, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v9, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    const-string v9, "exp"

    invoke-static {v5, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v5

    if-ge v7, v5, :cond_2

    goto/16 :goto_3

    .line 556
    :cond_2
    iget-object v5, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object v6

    .line 557
    :goto_1
    if-eqz v6, :cond_9

    const-string v7, "at"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "ft"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "rt"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    .line 558
    :cond_4
    nop

    .line 559
    iget-object v7, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "i"

    const-string v12, "replyFinishSpecialTask"

    if-eqz v10, :cond_6

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/project7/localmanager/LocalResourceEngine$Reply;

    iget-object v13, v10, Lcom/project7/localmanager/LocalResourceEngine$Reply;->method:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v10, v10, Lcom/project7/localmanager/LocalResourceEngine$Reply;->parameters:[B

    .line 560
    invoke-static {v10, v11}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v9, v1

    .line 559
    :cond_5
    goto :goto_2

    .line 561
    :cond_6
    if-nez v9, :cond_7

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v6, v7, v1

    aput-object v11, v7, v8

    new-instance v6, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v6, v5}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v6, v7, v4

    invoke-static {v7}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {p0, v12, v4}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    :cond_7
    goto :goto_4

    .line 555
    :cond_8
    :goto_3
    goto :goto_4

    .line 562
    :catch_0
    move-exception v4

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Home wish entry preserved slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Project7Gateway"

    invoke-static {v5, v4}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 566
    :cond_a
    return-void
.end method

.method static experience([BI)I
    .locals 2

    .line 43
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object p0

    const-string v0, "hhe"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->pairInt([BLjava/lang/String;II)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "\u7f81\u7eca\u503c\u683c\u5f0f\u672a\u77e5"

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    return p0
.end method

.method static home([B)[B
    .locals 1

    .line 15
    const-string v0, "hhd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static key([B)Ljava/lang/String;
    .locals 2

    .line 72
    const-string v0, "0"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method static level([BI)I
    .locals 2

    .line 40
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object p0

    const-string v0, "hhl"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->pairInt([BLjava/lang/String;II)I

    move-result p0

    if-lt p0, v1, :cond_0

    const/4 p1, 0x5

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string p1, "\u7f81\u7eca\u7b49\u7ea7\u683c\u5f0f\u672a\u77e5"

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    return p0
.end method

.method static next(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;III)V
    .locals 7

    .line 241
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, p3}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v0

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, p3}, Lcom/project7/localmanager/LocalHomeWishEngine;->experience([BI)I

    move-result v1

    .line 242
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    sget-object p1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    invoke-static {p0, p2, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->setSlot(Lcom/project7/localmanager/LocalResourceEngine$Result;I[B)V

    return-void

    .line 243
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "WX"

    invoke-virtual {p1, v3, v2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "exp"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    const-string v6, "\u7f3a\u5c11\u539f\u7248\u7f81\u7eca\u503c\u4e0a\u9650"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 245
    if-lt v1, v2, :cond_3

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WS"

    invoke-virtual {p1, v1, v0}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "task"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    const-string v1, "\u7f3a\u5c11\u539f\u7248\u7f81\u7eca\u7a81\u7834\u914d\u7f6e"

    invoke-static {v3, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    move v6, v0

    goto :goto_2

    .line 247
    :cond_3
    invoke-static {p1, p3, p4}, Lcom/project7/localmanager/LocalHomeWishEngine;->normalTask(Lcom/project7/localmanager/LocalFeatureCatalog;II)I

    move-result v0

    move v6, v0

    .line 248
    :goto_2
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->create(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;IIII)[B

    .line 249
    return-void
.end method

.method static normalDone(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;I)V
    .locals 21

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v3

    const-string v4, "h"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v4

    const-string v5, "t"

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v5

    const-string v6, "s"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v3

    .line 319
    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object v8

    .line 320
    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    const-string v11, "at"

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-lez v11, :cond_1

    const-string v11, "rt"

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 321
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "WT"

    invoke-virtual {v1, v11, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    const-string v11, "group"

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_1

    invoke-static {v1, v4, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->normalTask(Lcom/project7/localmanager/LocalFeatureCatalog;II)I

    move-result v8

    if-ne v8, v5, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v10

    .line 320
    :goto_1
    const-string v11, "\u5f53\u524d\u5fc3\u613f\u65e0\u6cd5\u5b8c\u6210"

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 322
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v8

    const/4 v11, 0x5

    if-ge v8, v11, :cond_2

    move v8, v9

    goto :goto_2

    :cond_2
    move v8, v10

    :goto_2
    const-string v11, "\u795e\u5668\u4f7f\u6216\u7f81\u7eca\u72b6\u6001\u65e0\u6548"

    invoke-static {v8, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 323
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v8

    const-string v11, "hxq"

    invoke-static {v8, v11, v4, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->pairInt([BLjava/lang/String;II)I

    move-result v8

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 324
    if-eqz v8, :cond_4

    .line 325
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "WP"

    invoke-virtual {v1, v11, v8}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v8

    const-string v11, "para"

    invoke-static {v8, v11}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v8

    .line 326
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_3

    move v11, v9

    goto :goto_3

    :cond_3
    move v11, v10

    :goto_3
    const-string v12, "\u5fc3\u60c5\u500d\u7387\u914d\u7f6e\u672a\u77e5"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    .line 328
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v14, "WR"

    invoke-virtual {v1, v14, v5}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v5

    if-eqz v5, :cond_5

    move v14, v9

    goto :goto_4

    :cond_5
    move v14, v10

    :goto_4
    const-string v15, "\u7f3a\u5c11\u539f\u7248\u7f81\u7eca\u5956\u52b1"

    invoke-static {v14, v15}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 330
    const-string v14, "grants"

    invoke-static {v5, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v14, v10

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, [B

    .line 331
    const-string v10, "hero"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v10

    move-object/from16 v18, v5

    const-string v5, "count"

    if-ne v10, v4, :cond_6

    invoke-static {v9, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v10

    if-lez v10, :cond_6

    const/4 v10, 0x1

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    :goto_6
    move-object/from16 v19, v6

    const-string v6, "\u7f81\u7eca\u5956\u52b1\u4e0e\u795e\u5668\u4f7f\u4e0d\u5339\u914d"

    invoke-static {v10, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 332
    invoke-static {v9, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v6

    move v10, v3

    int-to-double v2, v6

    mul-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v2, :cond_7

    const/4 v3, 0x1

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    const-string v6, "\u7f81\u7eca\u5956\u52b1\u914d\u7f6e\u65e0\u6548"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 333
    invoke-static {v14, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v14

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Integer;

    const-string v3, "item"

    invoke-static {v9, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v16, 0x0

    aput-object v20, v6, v16

    invoke-static {v9, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v17, 0x1

    aput-object v20, v6, v17

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Integer;

    invoke-static {v9, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v16

    invoke-static {v9, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v17

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    move/from16 v2, p2

    move v3, v10

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_5

    .line 336
    :cond_8
    move v10, v3

    move-object/from16 v19, v6

    if-lez v14, :cond_9

    const/4 v2, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_8
    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 337
    invoke-static {v0, v1, v4, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->addExperience(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;II)V

    .line 338
    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->cache(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/util/List;)V

    const-string v2, "rac"

    invoke-static {v0, v2, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->cache(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->removeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    const/4 v2, 0x7

    if-ne v10, v2, :cond_a

    const/4 v9, 0x1

    goto :goto_9

    :cond_a
    const/4 v2, 0x1

    add-int/lit8 v9, v10, 0x1

    :goto_9
    move/from16 v2, p2

    invoke-static {v0, v1, v2, v4, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->next(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;III)V

    .line 339
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->syncHappiness(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v1

    move-object/from16 v3, v19

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->rewardNotice(Lcom/project7/localmanager/LocalResourceEngine$Result;IIZ)V

    .line 340
    return-void
.end method

.method static normalTask(Lcom/project7/localmanager/LocalFeatureCatalog;II)I
    .locals 1

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "WN"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "\u8be5\u795e\u5668\u4f7f\u5c1a\u65e0\u539f\u7248\u5fc3\u613f\u914d\u7f6e"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 215
    const-string p1, "links"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, p2, :cond_1

    const-string p0, "1"

    invoke-static {p1, p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result p0

    return p0

    .line 216
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u7f3a\u5c11\u539f\u7248\u5fc3\u613f\u73af\u8282"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static numericPairs([BLjava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string v3, "\u5bb6\u56ed\u8bb0\u5f55\u683c\u5f0f\u672a\u77e5"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 20
    invoke-static {p0, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_2

    move v5, v2

    goto :goto_3

    :cond_2
    move v5, v1

    :goto_3
    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 21
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    const-string v6, "0"

    const-string v7, "1"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 22
    invoke-static {v4, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 23
    if-eqz v5, :cond_3

    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v2

    goto :goto_4

    :cond_3
    move v6, v1

    :goto_4
    const-string v7, "\u5bb6\u56ed\u8bb0\u5f55\u91cd\u590d\u6216\u683c\u5f0f\u672a\u77e5"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 24
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    goto :goto_2

    .line 26
    :cond_4
    return-object v0
.end method

.method static pairInt([BLjava/lang/String;II)I
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 30
    if-nez p0, :cond_0

    return p3

    .line 31
    :cond_0
    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p2, "\u5bb6\u56ed\u6570\u503c\u683c\u5f0f\u672a\u77e5"

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static refresh(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Z)V
    .locals 17

    .line 352
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "ft"

    const-string v4, "t"

    iget-object v0, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v0

    const-string v5, "tls"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 353
    :cond_0
    const/4 v5, 0x1

    move v6, v5

    :goto_0
    const/4 v0, 0x3

    if-gt v6, v0, :cond_9

    .line 354
    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v8, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 356
    :try_start_0
    iget-object v9, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v9

    const-string v10, "h"

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-static {v9, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v9

    .line 357
    if-eqz v9, :cond_8

    iget-object v11, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v10}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v2, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->specialMet([BLcom/project7/localmanager/LocalFeatureCatalog;I)Z

    move-result v11

    if-nez v11, :cond_1

    goto/16 :goto_6

    .line 358
    :cond_1
    const-string v11, "WS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v13, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v11

    const-string v12, "task"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    if-ne v11, v9, :cond_2

    move v11, v5

    goto :goto_1

    :cond_2
    move v11, v12

    :goto_1
    const-string v13, "\u7f81\u7eca\u7a81\u7834\u4efb\u52a1\u4e0e\u7b49\u7ea7\u4e0d\u5339\u914d"

    invoke-static {v11, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 359
    iget-object v11, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v11

    const/4 v13, 0x5

    if-ge v11, v13, :cond_3

    iget-object v11, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v11, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->experience([BI)I

    move-result v11

    const-string v13, "WX"

    iget-object v14, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v13, v10}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    const-string v13, "exp"

    invoke-static {v10, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v10

    if-lt v11, v10, :cond_3

    move v10, v5

    goto :goto_2

    :cond_3
    move v10, v12

    :goto_2
    const-string v11, "\u7f81\u7eca\u503c\u5c1a\u672a\u8fbe\u5230\u7a81\u7834\u95e8\u69db"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 361
    iget-object v10, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    move v10, v5

    goto :goto_3

    :cond_4
    move v10, v12

    :goto_3
    const-string v11, "\u5fc3\u613f\u4efb\u52a1\u8bb0\u5f55\u7f3a\u5931"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 362
    iget-object v10, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v10, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object v10

    .line 363
    const-string v11, "at"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v10, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "rt"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_5

    goto/16 :goto_6

    .line 364
    :cond_5
    invoke-static {}, Lcom/project7/localmanager/LocalStoryEnvironment;->now()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v11, v13

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v3, v11}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v10

    const-string v11, "ts"

    invoke-static {v10, v11, v0}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v10

    .line 365
    invoke-static {v1, v9, v10}, Lcom/project7/localmanager/LocalHomeWishEngine;->writeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V

    .line 366
    if-eqz p2, :cond_6

    .line 367
    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->syncTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    .line 368
    const-string v11, "replyFinishSpecialTask"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v4, v13, v12

    aput-object v10, v13, v5

    const/4 v10, 0x2

    const-string v12, "i"

    aput-object v12, v13, v10

    new-instance v10, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v10, v9}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v10, v13, v0

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_6
    goto :goto_6

    .line 370
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 371
    :goto_4
    iput-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    :goto_5
    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_7

    iget-object v7, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v9, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 372
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Home wish preserved slot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Project7Gateway"

    invoke-static {v7, v0}, Lcom/project7/localmanager/LocalDiagnosticLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 375
    :cond_9
    return-void
.end method

.method static removeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V
    .locals 19

    .line 114
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object v2

    .line 115
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 116
    new-instance v5, Ljava/util/HashSet;

    const-string v6, "uuid"

    const-string v7, "tid"

    const-string v8, "ct"

    const-string v9, "at"

    const-string v10, "ft"

    const-string v11, "rt"

    const-string v12, "ts"

    const-string v13, "ext"

    const-string v14, "mi"

    const-string v15, "et"

    const-string v16, "lt"

    const-string v17, "aft"

    const-string v18, "validTime"

    filled-new-array/range {v6 .. v18}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 117
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    .line 118
    xor-int/2addr v5, v4

    const-string v6, "ext"

    const-string v7, "mi"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 119
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v2, v8}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v9

    if-nez v9, :cond_0

    move v9, v4

    goto :goto_1

    :cond_0
    move v9, v3

    :goto_1
    or-int/2addr v5, v9

    .line 120
    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "target_hero"

    const-string v11, "i"

    const-string v12, "cfd"

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto :goto_2

    :cond_1
    const-string v10, "counter"

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    :goto_2
    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 121
    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    .line 122
    invoke-static {v8}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 123
    invoke-static {v8, v11}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v11

    .line 124
    if-eqz v11, :cond_3

    const-string v12, "0"

    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_4

    :cond_2
    move v11, v3

    goto :goto_5

    :cond_3
    :goto_4
    move v11, v4

    :goto_5
    or-int/2addr v5, v11

    .line 125
    goto :goto_3

    .line 126
    :cond_4
    goto :goto_0

    .line 127
    :cond_5
    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 128
    const-string v7, "q7HomeWishRetiredTasks"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    .line 127
    invoke-static {v5, v7, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 130
    :cond_6
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "tsd"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 131
    const-string v7, "td"

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 132
    invoke-static {v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->key([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    new-instance v10, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v10, v9}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 133
    :cond_8
    invoke-static {v2, v7, v6}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 134
    const-string v6, "ptl"

    const-string v7, "ctl"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 135
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v9

    .line 137
    invoke-static {v9}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 138
    invoke-static {v9, v11}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 139
    if-eqz v11, :cond_9

    move v12, v4

    goto :goto_9

    :cond_9
    move v12, v3

    :goto_9
    const-string v13, "\u4efb\u52a1\u5217\u8868\u6807\u8bc6\u683c\u5f0f\u672a\u77e5"

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 140
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    new-instance v12, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v12, v11}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_a
    goto :goto_8

    .line 142
    :cond_b
    invoke-static {v2, v7, v8}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v2

    .line 143
    goto :goto_7

    .line 144
    :cond_c
    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v5, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 145
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "dtl"

    aput-object v5, v2, v3

    new-instance v3, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v3, v1}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "syncDeleteTask"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 146
    return-void
.end method

.method static require(ZLjava/lang/String;)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    return-void
.end method

.method static rewardNotice(Lcom/project7/localmanager/LocalResourceEngine$Result;IIZ)V
    .locals 8

    .line 314
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "r"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v4, "rc"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->cached([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "a"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "rac"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->cached([BLjava/lang/String;)[B

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "c"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "i"

    aput-object v2, v0, v3

    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "s"

    aput-object p1, v0, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v6

    const-string p1, "f"

    aput-object p1, v0, v7

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    aput-object p1, v1, p2

    .line 314
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "replyDoneWishTask"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 316
    return-void
.end method

.method static saveCache(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V
    .locals 7

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/project7/localmanager/BsonLite$ArrayValue;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 298
    invoke-static {v4}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v4

    const-string v5, "1"

    invoke-static {v4, v5, p2, v2}, Lcom/project7/localmanager/BsonLite;->withCopiedValue([BLjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    .line 297
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_0
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p1

    const-string v0, "hhd"

    invoke-static {p2, v0, p1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 300
    return-void
.end method

.method static saveCache(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 1

    .line 293
    const-string v0, "rc"

    invoke-static {p0, v0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->saveCache(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V

    .line 294
    return-void
.end method

.method static select(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;[B)V
    .locals 9

    .line 251
    const-string v0, "i"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v0

    const-string v1, "h"

    invoke-static {p2, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result p2

    .line 252
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->slots([B)I

    move-result v4

    if-gt v0, v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-string v5, "\u5fc3\u613f\u69fd\u4f4d\u5c1a\u672a\u5f00\u653e"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 253
    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, p2}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v4

    const-string v5, "WN"

    if-eqz v4, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const-string v6, "\u672a\u62e5\u6709\u8be5\u795e\u5668\u4f7f\u6216\u5176\u5fc3\u613f\u5c1a\u672a\u5f00\u653e"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 254
    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, p2}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v4

    const/4 v6, 0x5

    if-ge v4, v6, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    const-string v6, "\u8be5\u795e\u5668\u4f7f\u7f81\u7eca\u7b49\u7ea7\u5df2\u6ee1"

    invoke-static {v4, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 255
    move v4, v3

    :goto_3
    const/4 v6, 0x3

    if-gt v4, v6, :cond_4

    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v6, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v6

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-eq v6, p2, :cond_3

    move v6, v3

    goto :goto_4

    :cond_3
    move v6, v2

    :goto_4
    const-string v7, "\u8be5\u795e\u5668\u4f7f\u5df2\u6709\u5fc3\u613f\u4efb\u52a1"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 256
    :cond_4
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v1

    .line 257
    const-string v4, "hhl"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 258
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v4, p2, v6}, Lcom/project7/localmanager/LocalHomeEngine;->pairSet([BLjava/lang/String;ILjava/lang/Object;)[B

    move-result-object v1

    move v4, v3

    goto :goto_5

    .line 257
    :cond_5
    move v4, v2

    .line 260
    :goto_5
    const-string v6, "hhe"

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v6, p2, v4}, Lcom/project7/localmanager/LocalHomeEngine;->pairSet([BLjava/lang/String;ILjava/lang/Object;)[B

    move-result-object v1

    move v4, v3

    .line 263
    :cond_6
    if-eqz v4, :cond_7

    .line 264
    iget-object v4, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "hhd"

    invoke-static {v4, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 265
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->syncHappiness(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 267
    :cond_7
    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v1

    .line 268
    const-string v4, "t"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-lez v6, :cond_9

    .line 269
    iget-object v6, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v6, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    const-string v3, "\u73b0\u6709\u5fc3\u613f\u7f3a\u5c11\u4efb\u52a1\u8bb0\u5f55\uff0c\u4fdd\u7559\u539f\u8fdb\u5ea6"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 270
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->removeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    .line 272
    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "idx"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->next(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;III)V

    .line 273
    return-void
.end method

.method static setNumber([BLjava/lang/String;II)[B
    .locals 6

    .line 50
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "1"

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    const/4 p2, 0x2

    aput-object v3, v1, p2

    const/4 p2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {v1, v3, p3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p2

    :goto_0
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v1, v0}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method static setSlot(Lcom/project7/localmanager/LocalResourceEngine$Result;I[B)V
    .locals 5

    .line 206
    invoke-static {p2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "s"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 207
    iget-object p2, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object p2

    .line 208
    const-string v0, "h"

    const-string v3, "t"

    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object p2

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    iget-object v3, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v3

    const-string v4, "tls"

    invoke-static {v3, v4, p1, p2}, Lcom/project7/localmanager/LocalHomeEngine;->pairSet([BLjava/lang/String;ILjava/lang/Object;)[B

    move-result-object v3

    const-string v4, "hhd"

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 211
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "i"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "replyNewTaskLinkByHeroId"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 212
    return-void
.end method

.method static slot([BI)[B
    .locals 1

    .line 34
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object p0

    .line 35
    const-string v0, "tls"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 36
    if-nez p0, :cond_0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    return-object p0

    .line 37
    :cond_0
    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "\u5fc3\u613f\u69fd\u4f4d\u683c\u5f0f\u672a\u77e5"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    return-object p0
.end method

.method static slots([B)I
    .locals 3

    .line 67
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object p0

    const-string v0, "fi"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeEngine;->pairs([BLjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 68
    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    goto :goto_0

    .line 69
    :cond_0
    const/16 p0, 0xd

    if-lt v0, p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    const/4 p0, 0x7

    if-lt v0, p0, :cond_2

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static specialMet([BLcom/project7/localmanager/LocalFeatureCatalog;I)Z
    .locals 5

    .line 342
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "WT"

    invoke-virtual {p1, v0, p2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p1

    const-string p2, "para"

    invoke-static {p1, p2}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 343
    const-string v0, "group"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 344
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 345
    :cond_1
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v3

    const/16 v4, 0x1c

    if-ne v3, v4, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "fd"

    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 346
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_8

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 347
    :cond_3
    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v1

    const/16 v4, 0x19

    if-ne v1, v4, :cond_5

    const-string p1, "ls"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result p0

    add-int/2addr p0, v3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p0, p1, :cond_4

    move v2, v3

    :cond_4
    return v2

    .line 348
    :cond_5
    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result p1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_7

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "oa"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "ar"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string p1, "o"

    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result p0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p0, p1, :cond_6

    move v2, v3

    :cond_6
    return v2

    .line 349
    :cond_7
    return v2

    .line 346
    :cond_8
    :goto_0
    return v2

    .line 343
    :cond_9
    :goto_1
    return v2
.end method

.method static specialReward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;I)V
    .locals 16

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v3

    const-string v4, "h"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v5

    const-string v6, "t"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v6

    iget-object v7, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v7, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->level([BI)I

    move-result v7

    .line 378
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v8, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->taskUuid([BI)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object v9

    .line 379
    :goto_0
    const-string v10, ":"

    if-eqz v9, :cond_1

    const-string v13, "ft"

    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v13

    if-lez v13, :cond_1

    const-string v13, "rt"

    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9, v1, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->specialMet([BLcom/project7/localmanager/LocalFeatureCatalog;I)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 380
    const-string v13, "WS"

    invoke-virtual {v1, v13, v9}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v9

    const-string v13, "task"

    invoke-static {v9, v13}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v9

    if-ne v9, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 379
    :goto_1
    const-string v9, "\u7f81\u7eca\u7a81\u7834\u4efb\u52a1\u5c1a\u672a\u5b8c\u6210"

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 381
    const-string v6, "exp"

    const-string v9, "WX"

    const/4 v13, 0x5

    if-ge v7, v13, :cond_2

    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->experience([BI)I

    move-result v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v9, v15}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v15

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v15

    if-lt v14, v15, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v14, "WA"

    invoke-virtual {v1, v14, v10}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const-string v14, "\u7f81\u7eca\u503c\u6216\u7a81\u7834\u914d\u7f6e\u672a\u6ee1\u8db3\u8981\u6c42"

    invoke-static {v10, v14}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 383
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v10

    invoke-static {v10, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v10

    .line 384
    iget-object v14, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v14, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->storedExperience([BI)I

    move-result v14

    int-to-long v14, v14

    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v12, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->experience([BI)I

    move-result v12

    int-to-long v11, v12

    add-long/2addr v14, v11

    int-to-long v10, v10

    sub-long/2addr v14, v10

    .line 385
    const-wide/16 v10, 0x0

    cmp-long v10, v14, v10

    if-ltz v10, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    const-string v12, "\u7f81\u7eca\u503c\u683c\u5f0f\u672a\u77e5"

    invoke-static {v11, v12}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 386
    const-wide/16 v11, 0x4e20

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v11, v11

    .line 387
    const/4 v12, 0x1

    add-int/2addr v7, v12

    if-ge v7, v13, :cond_5

    .line 388
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v9

    invoke-static {v9, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    const-string v9, "\u7f3a\u5c11\u539f\u7248\u7f81\u7eca\u503c\u4e0a\u9650"

    invoke-static {v12, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 389
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v11, v6

    goto :goto_5

    .line 387
    :cond_5
    const/4 v6, 0x0

    .line 392
    :goto_5
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->syncHappiness(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 393
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object v9

    const-string v12, "hhl"

    invoke-static {v9, v12, v5, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->setNumber([BLjava/lang/String;II)[B

    move-result-object v9

    .line 394
    const-string v12, "hhe"

    invoke-static {v9, v12, v5, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->setNumber([BLjava/lang/String;II)[B

    move-result-object v6

    .line 395
    const-string v9, "hehe"

    if-gtz v10, :cond_6

    invoke-static {v6, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    invoke-static {v6, v9, v5, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->setNumber([BLjava/lang/String;II)[B

    move-result-object v6

    .line 396
    :cond_7
    iget-object v9, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v11, "hhd"

    invoke-static {v9, v11, v6}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v6

    iput-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 397
    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalHomeWishEngine;->removeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V

    const-string v6, "s"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v2, v5, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->next(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;III)V

    .line 398
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v4, "syncHeroHappinessLevelUp"

    invoke-virtual {v0, v4, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 399
    if-lez v10, :cond_8

    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->syncHappiness(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V

    .line 400
    :cond_8
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->slot([BI)[B

    move-result-object v1

    invoke-static {v1, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v7, v13, :cond_9

    move v11, v5

    goto :goto_6

    :cond_9
    move v11, v3

    :goto_6
    invoke-static {v0, v2, v1, v11}, Lcom/project7/localmanager/LocalHomeWishEngine;->rewardNotice(Lcom/project7/localmanager/LocalResourceEngine$Result;IIZ)V

    .line 401
    return-void
.end method

.method static storedExperience([BI)I
    .locals 2

    .line 46
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object p0

    const-string v0, "hehe"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->pairInt([BLjava/lang/String;II)I

    move-result p0

    .line 47
    if-ltz p0, :cond_0

    const/16 p1, 0x4e20

    if-gt p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "\u6682\u5b58\u7f81\u7eca\u503c\u683c\u5f0f\u672a\u77e5"

    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    return p0
.end method

.method static syncHappiness(Lcom/project7/localmanager/LocalResourceEngine$Result;[B)V
    .locals 6

    .line 275
    invoke-static {p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->home([B)[B

    move-result-object p1

    .line 276
    const-string v0, "hhe"

    const-string v1, "hhl"

    const-string v2, "hehe"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->numericPairs([BLjava/lang/String;)Ljava/util/Map;

    goto :goto_0

    .line 277
    :cond_0
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {p1, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v5, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    new-instance v4, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 278
    invoke-static {p1, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v2, v3, v0

    const/4 v0, 0x5

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {p1, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v1, v3, v0

    .line 277
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "syncHeroHomeHappiness"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 279
    return-void
.end method

.method static syncMembership(Lcom/project7/localmanager/LocalResourceEngine$Result;)V
    .locals 10

    .line 152
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "tsd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    const-string v2, "td"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 154
    const-string v7, "1"

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v7, "uuid"

    invoke-static {v3, v7}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    if-eqz v7, :cond_0

    move v8, v5

    goto :goto_1

    :cond_0
    move v8, v6

    :goto_1
    const-string v9, "\u4efb\u52a1\u8bb0\u5f55\u6807\u8bc6\u683c\u5f0f\u672a\u77e5"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 156
    new-array v4, v4, [Ljava/lang/Object;

    new-instance v8, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v8, v7}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    aput-object v8, v4, v6

    aput-object v3, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ptl"

    aput-object v3, v2, v6

    new-instance v6, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v6, v2, v5

    const-string v3, "ctl"

    aput-object v3, v2, v4

    const/4 v4, 0x3

    new-instance v5, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 159
    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    aput-object v5, v2, v4

    const/4 v0, 0x4

    const-string v3, "tpd"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    aput-object v1, v2, v0

    .line 158
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "syncTaskList"

    invoke-virtual {p0, v1, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 160
    return-void
.end method

.method static syncTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;)V
    .locals 3

    .line 148
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "uuids"

    aput-object v2, v0, v1

    new-instance v1, Lcom/project7/localmanager/BsonLite$UuidValue;

    invoke-direct {v1, p1}, Lcom/project7/localmanager/BsonLite$UuidValue;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "to"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 149
    invoke-static {v1, p1}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 148
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object p1

    const-string v0, "syncTasks"

    invoke-virtual {p0, v0, p1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 150
    return-void
.end method

.method static task([BLjava/lang/String;)[B
    .locals 5

    .line 88
    nop

    .line 89
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->tasks([B)[B

    move-result-object p0

    const-string v0, "td"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->key([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v3

    :goto_1
    const-string v4, "\u5fc3\u613f\u4efb\u52a1\u8bb0\u5f55\u91cd\u590d"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    const-string v0, "1"

    invoke-static {v1, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    const-string v1, "uuid"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->uuidValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    const-string v1, "\u5fc3\u613f\u4efb\u52a1\u8bb0\u5f55\u683c\u5f0f\u672a\u77e5"

    invoke-static {v2, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 89
    :cond_2
    goto :goto_0

    .line 93
    :cond_3
    return-object v0
.end method

.method static taskUuid([BI)Ljava/lang/String;
    .locals 6

    .line 96
    nop

    .line 97
    invoke-static {p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->tasks([B)[B

    move-result-object v0

    const-string v1, "td"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "tid"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalHomeWishEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 98
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, v4

    :goto_1
    const-string v5, "\u5fc3\u613f\u4efb\u52a1\u8bb0\u5f55\u91cd\u590d"

    invoke-static {v1, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    invoke-static {v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->key([B)Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    :goto_2
    const-string v2, "\u5fc3\u613f\u4efb\u52a1\u6807\u8bc6\u683c\u5f0f\u672a\u77e5"

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->task([BLjava/lang/String;)[B

    .line 97
    :cond_2
    goto :goto_0

    .line 101
    :cond_3
    return-object v1
.end method

.method static tasks([B)[B
    .locals 7

    .line 75
    const-string v0, "tsd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 76
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v4

    :goto_1
    const-string v0, "\u4efb\u52a1\u5bb9\u5668\u683c\u5f0f\u672a\u77e5"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 77
    const-string p0, "td"

    const-string v0, "ptl"

    const-string v2, "ctl"

    filled-new-array {p0, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->arrayValue([BLjava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_4

    :cond_3
    :goto_3
    move v2, v4

    :goto_4
    const-string v5, "\u4efb\u52a1\u5217\u8868\u683c\u5f0f\u672a\u77e5"

    invoke-static {v2, v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    goto :goto_2

    .line 79
    :cond_4
    invoke-static {v1, p0}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 80
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 81
    invoke-static {p0, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    .line 82
    if-eqz v5, :cond_5

    invoke-static {v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->key([B)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v5}, Lcom/project7/localmanager/LocalHomeWishEngine;->key([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "1"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_5

    move v5, v4

    goto :goto_6

    :cond_5
    move v5, v3

    :goto_6
    const-string v6, "\u4efb\u52a1\u8bb0\u5f55\u91cd\u590d\u6216\u683c\u5f0f\u672a\u77e5"

    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    .line 84
    goto :goto_5

    .line 85
    :cond_6
    return-object v1
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static writeTask(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/String;[B)V
    .locals 11

    .line 104
    iget-object v0, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v1, "tsd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    const-string v3, "td"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalHomeWishEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 106
    invoke-static {v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->key([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 107
    xor-int/lit8 v6, v6, 0x1

    const-string v7, "\u5fc3\u613f\u4efb\u52a1\u8bb0\u5f55\u91cd\u590d"

    invoke-static {v6, v7}, Lcom/project7/localmanager/LocalHomeWishEngine;->require(ZLjava/lang/String;)V

    new-array v6, v8, [Ljava/io/Serializable;

    aput-object p1, v6, v5

    aput-object p2, v6, v9

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v9

    goto :goto_1

    .line 108
    :cond_0
    new-instance v8, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v8, v7}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :goto_1
    goto :goto_0

    .line 110
    :cond_1
    if-nez v6, :cond_2

    new-array v4, v8, [Ljava/io/Serializable;

    aput-object p1, v4, v5

    aput-object p2, v4, v9

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v0, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 112
    return-void
.end method
