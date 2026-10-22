.class final Lcom/project7/localmanager/LocalRoomGrowthEngine;
.super Ljava/lang/Object;
.source "LocalRoomGrowthEngine.java"


# static fields
.field static final METHODS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    const-string v0, "activeSkill"

    const-string v1, "upgradeSkill"

    const-string v2, "breakSkill"

    const-string v3, "swapSkillOption"

    const-string v4, "upRoomLevel"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalRoomGrowthEngine;->METHODS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[BJ)V
    .locals 18

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v5, "weeknum"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const-string v5, "w"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v4, v5, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const-string v8, "\u623f\u95f4\u6a21\u5757\u5c1a\u672a\u8fbe\u5230\u539f\u7248\u5468\u76ee\u5f00\u653e\u6761\u4ef6"

    invoke-static {v4, v8}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 159
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->roomLevel([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "RU"

    invoke-virtual {v1, v8, v4}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    const-string v9, "\u623f\u95f4\u7b49\u7ea7\u5c1a\u65e0\u539f\u7248\u914d\u7f6e"

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 160
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v1, v2, v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->validate([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)I

    move-result v4

    .line 161
    if-nez v4, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u623f\u95f4\u6a21\u5757\u64cd\u4f5c\u672a\u6ee1\u8db3\u539f\u7248\u6761\u4ef6\uff08"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\uff09"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/project7/localmanager/LocalHomeEngine;->require(ZLjava/lang/String;)V

    .line 162
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "rmd"

    invoke-static {v4, v9}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object v4

    const-string v10, "lv"

    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v11

    .line 163
    const-string v12, "upRoomLevel"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_4

    .line 164
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->active([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-wide/from16 v3, p4

    invoke-static {v2, v1, v3, v4}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->clock([BLcom/project7/localmanager/LocalFeatureCatalog;J)[B

    move-result-object v2

    invoke-static {v0, v2, v7}, Lcom/project7/localmanager/LocalRoomCrystalEngine;->setClock(Lcom/project7/localmanager/LocalResourceEngine$Result;[BZ)V

    .line 166
    :cond_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "up_level_cost_list"

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLjava/lang/String;)V

    .line 167
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 168
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    add-int/2addr v11, v7

    const-string v3, "rl"

    invoke-static {v1, v3, v11}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    invoke-static {v2, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 169
    new-array v1, v13, [Ljava/lang/Object;

    aput-object v10, v1, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "upRoomLevelReply"

    invoke-virtual {v0, v2, v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto/16 :goto_6

    .line 171
    :cond_4
    const-string v8, "sk"

    invoke-static {v3, v8}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v11

    const-string v12, "op"

    invoke-static {v3, v12}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v14

    const-string v15, "activeSkill"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move v5, v7

    goto :goto_3

    :cond_5
    iget-object v15, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v15, v11}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->skill([BI)[B

    move-result-object v15

    const/16 v5, 0x63

    invoke-static {v15, v10, v5}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v5

    .line 172
    :goto_3
    const-string v15, "upgradeSkill"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 173
    :cond_6
    const-string v15, "swapSkillOption"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const-string v14, "n_op"

    invoke-static {v3, v14}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v14

    .line 174
    :cond_7
    invoke-static {v1, v11, v5, v14}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;III)[B

    move-result-object v1

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->skill([BI)[B

    move-result-object v3

    .line 175
    const-string v13, "breakSkill"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v17, "break_cost_list"

    goto :goto_4

    :cond_8
    const-string v17, "up_cost_list"

    :goto_4
    move-object/from16 v6, v17

    invoke-static {v0, v1, v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLjava/lang/String;)V

    .line 176
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x6

    const-string v13, "bk"

    if-eqz v1, :cond_9

    .line 177
    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    invoke-static {v3, v13, v1}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 178
    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    aput-object v12, v2, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v13, v2, v3

    invoke-static {v1, v13}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "breakSkillReply"

    invoke-virtual {v0, v3, v2}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    goto :goto_5

    .line 180
    :cond_9
    invoke-static {v3, v10, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1, v12, v14}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 181
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    invoke-static {v1, v13, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 182
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Reply"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v3, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v7

    const/4 v6, 0x2

    aput-object v12, v3, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v3, v8

    const/4 v6, 0x4

    aput-object v10, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v3, v6

    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    .line 184
    :goto_5
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 185
    const-string v3, "rs"

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 184
    invoke-static {v4, v3, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-static {v2, v9, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 187
    :goto_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalHomeEngine;->callback(Lcom/project7/localmanager/LocalResourceEngine$Result;Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method static consume(Lcom/project7/localmanager/LocalResourceEngine$Result;[BLjava/lang/String;)V
    .locals 2

    .line 41
    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string v0, "0"

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v0

    const-string v1, "1"

    invoke-static {p2, v1}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result p2

    invoke-static {p0, v0, p2}, Lcom/project7/localmanager/LocalGiftEngine;->consume(Lcom/project7/localmanager/LocalResourceEngine$Result;II)V

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static definition(Lcom/project7/localmanager/LocalFeatureCatalog;III)[B
    .locals 1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RS"

    invoke-static {p0, p2, p1}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static enough([B[BLjava/lang/String;)Z
    .locals 4

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 31
    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 32
    const-string v2, "0"

    invoke-static {p2, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v2

    const-string v3, "1"

    invoke-static {p2, v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result p2

    .line 33
    if-lez v2, :cond_0

    if-ltz p2, :cond_0

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->addExact(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u623f\u95f4\u6a21\u5757\u6750\u6599\u914d\u7f6e\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalHomeEngine;->count([BI)I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge v0, p2, :cond_2

    return v1

    .line 38
    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method static expand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 94
    const-string v0, "_base_attack"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "_base_phy_att_str"

    const-string v0, "_base_mag_att_str"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    const-string v0, "_base_attack_delta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "_phy_str_delta"

    const-string v0, "_mag_str_delta"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_1
    const-string v0, "_base_defense"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "_base_phy_def"

    const-string v0, "_base_mag_def"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_2
    const-string v0, "_base_defense_delta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "_phy_def_delta"

    const-string v0, "_mag_def_delta"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 98
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method static groupLimit([BLcom/project7/localmanager/LocalFeatureCatalog;IIIII)Z
    .locals 20

    .line 67
    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RL"

    invoke-static {v0, v4, v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    move-object/from16 v4, p0

    invoke-static {v4, v1}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->skill([BI)[B

    move-result-object v4

    .line 68
    const-string v5, "lv"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v7

    invoke-static {v0, v1, v7, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;III)[B

    move-result-object v7

    .line 69
    invoke-static {v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v7}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_7

    .line 70
    :cond_0
    const-string v8, "group"

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 71
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 72
    const-string v11, "group_dict"

    invoke-static {v3, v11}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 74
    if-eq v12, v1, :cond_1

    invoke-static {v4}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    if-ne v12, v1, :cond_2

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v13

    add-int v13, v13, p6

    goto :goto_2

    :cond_2
    invoke-static {v4, v5, v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v13

    .line 76
    :goto_2
    const-string v14, "op"

    if-ne v12, v1, :cond_4

    if-eqz v2, :cond_3

    move v14, v2

    goto :goto_3

    :cond_3
    invoke-static {v4, v14, v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v14

    goto :goto_3

    :cond_4
    invoke-static {v4, v14, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v14

    .line 77
    :goto_3
    invoke-static {v0, v12, v13, v14}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;III)[B

    move-result-object v12

    const-string v13, "attrs"

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object v12

    .line 78
    invoke-static {v12}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 79
    invoke-static {v12, v14}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v15

    .line 80
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isFinite(D)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 81
    invoke-static {v14}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->expand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 82
    array-length v9, v14

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v9, :cond_5

    aget-object v1, v14, v6

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p4

    move/from16 v2, p5

    goto :goto_5

    .line 83
    :cond_5
    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v6, 0x1

    goto :goto_4

    .line 80
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6a21\u5757\u5c5e\u6027\u914d\u7f6e\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_7
    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 85
    :cond_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RG"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v1

    .line 86
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v8

    .line 88
    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    cmpl-double v6, v9, v11

    if-lez v6, :cond_9

    const/4 v0, 0x1

    return v0

    .line 89
    :cond_9
    goto :goto_6

    .line 90
    :cond_a
    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 91
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_c
    :goto_7
    const/4 v0, 0x1

    return v0
.end method

.method static has([B)Z
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static moduleReady([BLcom/project7/localmanager/LocalFeatureCatalog;[B)Z
    .locals 5

    .line 56
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->progress([BLcom/project7/localmanager/LocalFeatureCatalog;)Ljava/util/Map;

    move-result-object p0

    .line 57
    const-string p1, "unlock_mod_cond_list"

    invoke-static {p2, p1}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 58
    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v2

    const-string v3, "1"

    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v1

    .line 59
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    .line 60
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v1, :cond_1

    goto :goto_2

    .line 61
    :cond_1
    :goto_1
    goto :goto_0

    .line 60
    :cond_2
    :goto_2
    return p2

    .line 62
    :cond_3
    const/4 p1, 0x1

    if-nez v0, :cond_4

    return p1

    .line 63
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, p2

    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    .line 64
    :cond_6
    if-lt v1, v0, :cond_7

    move p2, p1

    :cond_7
    return p2
.end method

.method static progress([BLcom/project7/localmanager/LocalFeatureCatalog;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/project7/localmanager/LocalFeatureCatalog;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->roomLevel([B)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RL"

    invoke-static {p1, v4, v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v3

    const-string v4, "skill_dict"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    .line 47
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 48
    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {p1, v6, v1, v1}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;III)[B

    move-result-object v7

    const-string v8, "level_limit"

    invoke-static {v7, v8, v1}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v7

    .line 49
    invoke-static {p0, v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->skill([BI)[B

    move-result-object v6

    const-string v8, "lv"

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_1
    return-object v0
.end method

.method static roomLevel([B)I
    .locals 2

    .line 27
    const-string v0, "rmd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "rl"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/project7/localmanager/LocalFeatureCatalog;->get(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :cond_0
    return-object p0
.end method

.method static skill([BI)[B
    .locals 2

    .line 14
    const-string v0, "rmd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "rs"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u623f\u95f4\u6a21\u5757\u5b58\u6863\u683c\u5f0f\u5f02\u5e38"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 17
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p1

    .line 18
    if-nez p1, :cond_4

    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u623f\u95f4\u6280\u80fd\u5b58\u6863\u683c\u5f0f\u5f02\u5e38"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_4
    :goto_1
    if-nez p1, :cond_5

    sget-object p1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :cond_5
    return-object p1
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static validate([BLcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;[B)I
    .locals 17

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "lv"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v5

    .line 102
    const-string v6, "upRoomLevel"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x4eb

    const-string v8, "skill_dict"

    const-string v9, ":"

    const-string v10, "RL"

    const-string v11, "level_limit"

    const/4 v14, 0x1

    if-eqz v6, :cond_8

    .line 103
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->roomLevel([B)I

    move-result v2

    if-eq v2, v5, :cond_0

    return v7

    .line 104
    :cond_0
    add-int/lit8 v2, v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "RU"

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x4fc

    return v0

    .line 105
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v2

    .line 106
    invoke-static {v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "level"

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v6, "hero_level"

    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v6

    if-ge v3, v6, :cond_2

    goto :goto_3

    .line 107
    :cond_2
    move v3, v14

    :goto_0
    const/4 v6, 0x5

    if-gt v3, v6, :cond_5

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v10, v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v6

    invoke-static {v6, v8}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    .line 109
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 110
    invoke-static {v6, v15}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v15

    .line 111
    invoke-static {v0, v15}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->skill([BI)[B

    move-result-object v13

    invoke-static {v13, v4}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v13

    invoke-static {v1, v15, v14, v14}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;III)[B

    move-result-object v15

    invoke-static {v15, v11, v14}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v15

    if-ge v13, v15, :cond_3

    const/16 v0, 0x4fd

    return v0

    .line 112
    :cond_3
    goto :goto_1

    .line 107
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_5
    const-string v1, "up_level_cost_list"

    invoke-static {v0, v2, v1}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->enough([B[BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v12, 0x0

    goto :goto_2

    :cond_6
    const/16 v12, 0x4ef

    :goto_2
    return v12

    .line 106
    :cond_7
    :goto_3
    const/16 v0, 0x4fe

    return v0

    .line 116
    :cond_8
    const-string v6, "m"

    invoke-static {v3, v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v6

    const-string v13, "sk"

    invoke-static {v3, v13}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v13

    const-string v15, "op"

    invoke-static {v3, v15}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v12

    .line 117
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v10, v9}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->rule(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object v9

    .line 118
    invoke-static {v9}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v10

    if-nez v10, :cond_9

    const/16 v0, 0x4e9

    return v0

    .line 119
    :cond_9
    invoke-static {v9, v8}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v10, "idx"

    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v8

    if-eq v13, v8, :cond_a

    const/16 v0, 0x4ea

    return v0

    .line 120
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->roomLevel([B)I

    move-result v8

    if-le v5, v8, :cond_b

    return v7

    .line 121
    :cond_b
    invoke-static {v0, v13}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->skill([BI)[B

    move-result-object v7

    .line 122
    const-string v8, "activeSkill"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "up_cost_list"

    const/16 v14, 0x4f0

    const/16 v16, 0x4ed

    if-eqz v8, :cond_14

    .line 123
    invoke-static {v7}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0x4ec

    return v0

    .line 124
    :cond_c
    const/4 v2, 0x1

    invoke-static {v1, v13, v2, v12}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;III)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v3

    if-nez v3, :cond_d

    return v16

    .line 125
    :cond_d
    const-string v3, "skill_pre_link"

    invoke-static {v9, v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 126
    const-string v8, "0"

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v9

    invoke-static {v0, v9}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->skill([BI)[B

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-static {v7, v8}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v8

    invoke-static {v0, v8}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->skill([BI)[B

    move-result-object v8

    invoke-static {v8, v4}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v8

    const-string v9, "1"

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v7

    if-ge v8, v7, :cond_e

    :cond_f
    const/16 v0, 0x4ee

    return v0

    .line 127
    :cond_10
    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->moduleReady([BLcom/project7/localmanager/LocalFeatureCatalog;[B)Z

    move-result v3

    if-nez v3, :cond_11

    const/16 v0, 0x52b

    return v0

    .line 128
    :cond_11
    invoke-static {v0, v2, v10}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->enough([B[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v0, 0x4ef

    return v0

    .line 129
    :cond_12
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v13

    move v5, v12

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->groupLimit([BLcom/project7/localmanager/LocalFeatureCatalog;IIIII)Z

    move-result v0

    if-eqz v0, :cond_13

    move v13, v14

    goto :goto_4

    :cond_13
    const/4 v13, 0x0

    :goto_4
    return v13

    .line 131
    :cond_14
    invoke-static {v7}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v8

    if-nez v8, :cond_15

    const/16 v0, 0x4f5

    return v0

    .line 132
    :cond_15
    const/16 v8, 0x63

    invoke-static {v7, v4, v8}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v4

    .line 133
    invoke-static {v1, v13, v4, v12}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;III)[B

    move-result-object v8

    .line 134
    const-string v9, "upgradeSkill"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 135
    invoke-static {v8}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v2

    if-nez v2, :cond_16

    return v16

    .line 136
    :cond_16
    const/4 v2, 0x1

    invoke-static {v8, v11, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v3

    if-ge v3, v4, :cond_17

    const/16 v0, 0x4f6

    return v0

    .line 137
    :cond_17
    add-int/2addr v4, v2

    invoke-static {v1, v13, v4, v12}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;III)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v3

    if-nez v3, :cond_18

    return v16

    .line 138
    :cond_18
    invoke-static {v0, v2, v10}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->enough([B[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const/16 v0, 0x4ef

    return v0

    .line 139
    :cond_19
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v13

    move v5, v12

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->groupLimit([BLcom/project7/localmanager/LocalFeatureCatalog;IIIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v13, v14

    goto :goto_5

    :cond_1a
    const/4 v13, 0x0

    :goto_5
    return v13

    .line 141
    :cond_1b
    const-string v9, "breakSkill"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v9, 0x4fa

    if-eqz v2, :cond_23

    .line 142
    invoke-static {v8}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "can_break"

    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "break_limit"

    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_7

    .line 143
    :cond_1c
    const-string v3, "bk"

    invoke-static {v7, v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v2

    if-lt v3, v2, :cond_1d

    const/16 v0, 0x4f9

    return v0

    .line 144
    :cond_1d
    const/4 v2, 0x0

    invoke-static {v7, v15, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v3

    if-eq v3, v12, :cond_1e

    return v9

    .line 145
    :cond_1e
    const/4 v2, 0x1

    invoke-static {v8, v11, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_1f

    const/16 v0, 0x4f8

    return v0

    .line 146
    :cond_1f
    const-string v2, "break_cost_list"

    invoke-static {v0, v8, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->enough([B[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    const/16 v0, 0x4ef

    return v0

    .line 147
    :cond_20
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v13

    move v5, v12

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->groupLimit([BLcom/project7/localmanager/LocalFeatureCatalog;IIIII)Z

    move-result v0

    if-eqz v0, :cond_21

    move v13, v14

    goto :goto_6

    :cond_21
    const/4 v13, 0x0

    :goto_6
    return v13

    .line 142
    :cond_22
    :goto_7
    const/16 v0, 0x4f7

    return v0

    .line 149
    :cond_23
    const-string v2, "n_op"

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->v([BLjava/lang/String;)I

    move-result v11

    .line 150
    const/4 v3, 0x0

    invoke-static {v7, v15, v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v2

    if-ne v2, v11, :cond_24

    const/16 v0, 0x4fb

    return v0

    .line 151
    :cond_24
    invoke-static {v7, v15, v3}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->valueOr([BLjava/lang/String;I)I

    move-result v2

    if-eq v2, v12, :cond_25

    return v9

    .line 152
    :cond_25
    invoke-static {v1, v13, v4, v11}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->definition(Lcom/project7/localmanager/LocalFeatureCatalog;III)[B

    move-result-object v2

    .line 153
    invoke-static {v8}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-static {v2}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->has([B)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_9

    .line 154
    :cond_26
    invoke-static {v0, v2, v10}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->enough([B[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const/16 v0, 0x4ef

    return v0

    .line 155
    :cond_27
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v8, v3

    move v3, v6

    move v4, v13

    move v5, v11

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/project7/localmanager/LocalRoomGrowthEngine;->groupLimit([BLcom/project7/localmanager/LocalFeatureCatalog;IIIII)Z

    move-result v0

    if-eqz v0, :cond_28

    move v13, v14

    goto :goto_8

    :cond_28
    move v13, v8

    :goto_8
    return v13

    .line 153
    :cond_29
    :goto_9
    return v16
.end method

.method static valueOr([BLjava/lang/String;I)I
    .locals 1

    .line 23
    invoke-static {p0, p1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u623f\u95f4\u6a21\u5757\u6570\u5b57\u683c\u5f0f\u5f02\u5e38"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_1
    return p2
.end method
