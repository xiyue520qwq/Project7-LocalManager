.class final Lcom/project7/localmanager/LocalWeekSettlement;
.super Ljava/lang/Object;
.source "LocalWeekSettlement.java"


# static fields
.field static final HERO_ROUTE_SCORE:I = 0xa

.field static final VERSION:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static best([BLjava/util/List;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)[B"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    nop

    .line 167
    const-string v1, "ls"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 168
    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    .line 169
    :cond_0
    new-instance v4, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v4, v3}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_1
    goto :goto_0

    .line 171
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method static complete(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalEconomyCatalog;Lcom/project7/localmanager/LocalResourceCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;III)V
    .locals 35

    .line 19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v3, "weeknum"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v4, "w"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v2

    .line 20
    new-instance v4, Ljava/util/LinkedHashSet;

    move-object/from16 v5, p4

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 21
    iget-object v5, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v6, "q7WeekEventBaseline"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 22
    new-instance v5, Ljava/util/LinkedHashSet;

    iget-object v6, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v7, "ccgs"

    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 23
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 24
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 25
    iget-object v10, v1, Lcom/project7/localmanager/LocalWeekCatalog;->scoreEvents:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 26
    if-nez v9, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    const-string v10, "cgs"

    invoke-static {v9, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 28
    const-string v10, "heroes"

    invoke-static {v9, v10}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-lez p7, :cond_2

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_2
    iget-object v8, v1, Lcom/project7/localmanager/LocalWeekCatalog;->cgScores:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 32
    iget-object v8, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "city"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v8

    const-string v9, "areas"

    invoke-static {v8, v9}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v10

    .line 33
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 34
    iget-object v12, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v13, "q7BattleReceipts"

    invoke-static {v12, v13}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 35
    const-string v14, "s"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v13

    .line 36
    iget-object v14, v1, Lcom/project7/localmanager/LocalWeekCatalog;->battleScores:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_3
    goto :goto_1

    .line 38
    :cond_4
    const/4 v12, 0x6

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "ending"

    aput-object v15, v13, v14

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v12, 0x1

    aput-object v16, v13, v12

    const/4 v14, 0x2

    const-string v16, "week"

    aput-object v16, v13, v14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/4 v14, 0x3

    aput-object v17, v13, v14

    const-string v17, "cur_cgs"

    const/16 v18, 0x4

    aput-object v17, v13, v18

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v19, 0x5

    aput-object v14, v13, v19

    invoke-static {v13}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v13

    .line 39
    nop

    .line 40
    iget-object v14, v1, Lcom/project7/localmanager/LocalWeekCatalog;->scores:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object/from16 v20, v13

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    const-string v12, "score"

    move-object/from16 v22, v15

    if-eqz v21, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 41
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 42
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v24, v14

    move-object/from16 v14, v21

    check-cast v14, [B

    move-object/from16 v21, v7

    const-string v7, "conditions"

    invoke-static {v14, v7}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v7

    .line 43
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    .line 44
    move/from16 v26, v14

    const/4 v14, 0x1

    if-ne v15, v14, :cond_6

    .line 45
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v12, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v23, v7

    iget-object v7, v1, Lcom/project7/localmanager/LocalWeekCatalog;->cgScores:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v28, v2

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v14, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v12

    move-object/from16 v7, v23

    move/from16 v2, v28

    goto :goto_3

    .line 46
    :cond_5
    move/from16 v28, v2

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v2

    move/from16 v26, v2

    move-object/from16 v30, v4

    move-object/from16 v27, v6

    goto/16 :goto_a

    .line 47
    :cond_6
    move/from16 v28, v2

    const/4 v2, 0x3

    if-ne v15, v2, :cond_7

    .line 49
    const-string v2, "dv"

    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v7, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v7, v1, Lcom/project7/localmanager/LocalWeekCatalog;->cityScores:Ljava/util/Map;

    const/16 v12, 0x5dc

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v30, v4

    move-object/from16 v27, v6

    move/from16 v26, v12

    move v12, v7

    goto/16 :goto_a

    .line 50
    :cond_7
    const/4 v2, 0x6

    if-ne v15, v2, :cond_9

    .line 51
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v14, v1, Lcom/project7/localmanager/LocalWeekCatalog;->battleScores:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v7

    goto :goto_4

    .line 52
    :cond_8
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v12, v1, Lcom/project7/localmanager/LocalWeekCatalog;->battleScores:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    move-object/from16 v30, v4

    move-object/from16 v27, v6

    move/from16 v26, v12

    move v12, v7

    goto/16 :goto_a

    .line 53
    :cond_9
    const/16 v2, 0x8

    if-ne v15, v2, :cond_a

    .line 54
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v2

    .line 55
    const/16 v7, 0xa

    invoke-static {v2, v7}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v12

    move/from16 v26, v2

    move-object/from16 v30, v4

    move-object/from16 v27, v6

    goto/16 :goto_a

    .line 56
    :cond_a
    const/16 v2, 0x13

    if-ne v15, v2, :cond_b

    .line 57
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v7, "ust"

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v2

    const/4 v7, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 58
    const/16 v7, -0x64

    invoke-static {v2, v7}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v12

    move-object/from16 v30, v4

    move-object/from16 v27, v6

    const/16 v26, 0x3

    goto/16 :goto_a

    .line 59
    :cond_b
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v25, v2

    move-object/from16 v2, v23

    check-cast v2, [B

    .line 60
    move-object/from16 v27, v6

    const-string v6, "events"

    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 61
    invoke-static {v2, v9}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 62
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_c

    invoke-interface {v4, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    .line 63
    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_f

    .line 64
    nop

    .line 65
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v23, 0x1

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 66
    move-object/from16 v30, v4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v4

    move-object/from16 v29, v6

    const-string v6, "st"

    invoke-static {v4, v6}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 67
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    and-int v23, v23, v4

    .line 68
    move-object/from16 v6, v29

    move-object/from16 v4, v30

    goto :goto_7

    .line 65
    :cond_e
    move-object/from16 v30, v4

    move/from16 v6, v23

    goto :goto_9

    .line 63
    :cond_f
    move-object/from16 v30, v4

    .line 70
    :goto_9
    if-eqz v6, :cond_10

    add-int/lit8 v14, v14, 0x1

    invoke-static {v2, v12}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    move v7, v2

    .line 71
    :cond_10
    move-object/from16 v2, v25

    move-object/from16 v6, v27

    move-object/from16 v4, v30

    goto/16 :goto_5

    .line 59
    :cond_11
    move-object/from16 v30, v4

    move-object/from16 v27, v6

    move v12, v7

    move v2, v14

    .line 72
    :goto_a
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v7, v14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v7, v6

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v7, v6

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v6, v20

    invoke-static {v6, v4, v2}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v20

    .line 73
    invoke-static {v13, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v13

    .line 74
    move-object/from16 v7, v21

    move-object/from16 v15, v22

    move-object/from16 v14, v24

    move-object/from16 v6, v27

    move/from16 v2, v28

    move-object/from16 v4, v30

    const/4 v12, 0x1

    goto/16 :goto_2

    .line 75
    :cond_12
    move/from16 v28, v2

    move-object/from16 v21, v7

    move-object/from16 v6, v20

    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v2

    .line 76
    const-string v4, "ccl"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 77
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_13

    new-array v4, v8, [Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_b

    :cond_13
    const/4 v9, 0x0

    .line 78
    :goto_b
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-long v7, v7

    iget-object v10, v1, Lcom/project7/localmanager/LocalWeekCatalog;->bonuses:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 78
    invoke-interface {v10, v11, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x2710

    div-long/2addr v7, v9

    long-to-int v7, v7

    .line 80
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const/4 v8, 0x1

    aput-object v4, v9, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x2

    aput-object v8, v9, v11

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "add_score"

    invoke-static {v6, v9, v8}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v6

    .line 81
    invoke-static {v13, v7}, Ljava/lang/Math;->addExact(II)I

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 82
    const-string v8, "total"

    invoke-static {v6, v8, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v6

    .line 83
    move/from16 v8, v28

    invoke-static {v2, v8, v6}, Lcom/project7/localmanager/LocalWeekSettlement;->history([BI[B)[B

    move-result-object v2

    .line 84
    invoke-static {v2, v4, v7}, Lcom/project7/localmanager/LocalWeekSettlement;->best([BLjava/util/List;I)[B

    move-result-object v2

    .line 85
    iget-object v4, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 86
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v3, v21

    invoke-static {v2, v3, v5}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 87
    const/4 v2, 0x0

    .line 88
    iget-object v1, v1, Lcom/project7/localmanager/LocalWeekCatalog;->settlements:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v7, v4, :cond_14

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v5, "max"

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v4

    if-gt v7, v4, :cond_14

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [B

    .line 90
    :cond_15
    if-eqz v2, :cond_1a

    .line 91
    new-instance v1, Lcom/project7/localmanager/LocalResourceEngine$Result;

    iget-object v3, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 92
    move-object/from16 v3, p3

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lcom/project7/localmanager/LocalGiftEngine;->reward(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;[BI)V

    .line 93
    const-string v4, "money"

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v5

    .line 94
    if-lez v5, :cond_16

    const/16 v29, 0x0

    const/16 v31, 0x1

    const-string v28, "money"

    move-object/from16 v26, v1

    move-object/from16 v27, p3

    move/from16 v30, v5

    invoke-static/range {v26 .. v31}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 95
    :cond_16
    if-lez v7, :cond_17

    const/16 v32, 0x0

    const/16 v34, 0x1

    const-string v31, "souvenir"

    move-object/from16 v29, v1

    move-object/from16 v30, p3

    move/from16 v33, v7

    invoke-static/range {v29 .. v34}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 96
    :cond_17
    invoke-virtual {v1}, Lcom/project7/localmanager/LocalResourceEngine$Result;->reward()[B

    move-result-object v3

    .line 97
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 98
    const-string v10, "item"

    invoke-static {v3, v10}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 99
    const-string v14, "0"

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v15

    move-object/from16 p1, v11

    const/16 v11, 0x66

    if-eq v15, v11, :cond_18

    invoke-static {v13, v14}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v11

    const/16 v14, 0x149

    if-eq v11, v14, :cond_18

    new-instance v11, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v11, v13}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    move-object/from16 v11, p1

    goto :goto_c

    .line 100
    :cond_19
    invoke-static {v3, v10, v9}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v3

    .line 101
    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    const-string v4, "souvenir"

    invoke-static {v3, v4, v7}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v3

    .line 102
    invoke-static {v3}, Lcom/project7/localmanager/LocalWeekSettlement;->withItemSummary([B)[B

    move-result-object v3

    .line 103
    new-instance v4, Lcom/project7/localmanager/LocalEconomyEngine$Result;

    iget-object v5, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-direct {v4, v5}, Lcom/project7/localmanager/LocalEconomyEngine$Result;-><init>([B)V

    .line 104
    iput-object v3, v4, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    .line 105
    const-string v3, "exp"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v2

    move-object/from16 v3, p2

    invoke-static {v4, v3, v2}, Lcom/project7/localmanager/LocalEconomyEngine;->addExperience(Lcom/project7/localmanager/LocalEconomyEngine$Result;Lcom/project7/localmanager/LocalEconomyCatalog;I)V

    .line 106
    iget-object v2, v4, Lcom/project7/localmanager/LocalEconomyEngine$Result;->profile:[B

    iput-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 107
    iget-object v2, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v1, v1, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->replies:Ljava/util/List;

    iget-object v2, v4, Lcom/project7/localmanager/LocalEconomyEngine$Result;->replies:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "version"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 109
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v2, v7

    aput-object v16, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const-string v3, "event"

    aput-object v3, v2, v18

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v19

    const/4 v3, 0x6

    aput-object v22, v2, v3

    const/4 v3, 0x7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x8

    aput-object v12, v2, v3

    const/16 v3, 0x9

    aput-object v6, v2, v3

    const-string v3, "reward"

    const/16 v5, 0xa

    aput-object v3, v2, v5

    const/16 v3, 0xb

    iget-object v4, v4, Lcom/project7/localmanager/LocalEconomyEngine$Result;->reward:[B

    aput-object v4, v2, v3

    .line 108
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v2

    const-string v3, "q7WeekResult"

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 110
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 111
    return-void

    .line 90
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing original week reward range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d([BLjava/lang/String;)[B
    .locals 0

    .line 184
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static history([BI[B)[B
    .locals 6

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    const-string v1, "wasi"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 178
    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v4

    if-eq v4, p1, :cond_0

    new-instance v4, Lcom/project7/localmanager/BsonLite$ArrayValue;

    invoke-direct {v4, v3}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/io/Serializable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    .line 181
    new-array v0, v2, [Ljava/io/Serializable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    aput-object p2, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "wsi"

    invoke-static {p0, p2, p1}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object p0

    return-object p0
.end method

.method static repairAwarded(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalWeekCatalog;Lcom/project7/localmanager/LocalResourceCatalog;)V
    .locals 22

    .line 115
    move-object/from16 v6, p0

    move-object/from16 v0, p1

    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v7, "q7WeekResult"

    invoke-static {v1, v7}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v1

    .line 116
    const-string v8, "week"

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v2

    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    const-string v9, "weeknum"

    invoke-static {v3, v9}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "w"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    return-void

    .line 117
    :cond_0
    const-string v10, "score"

    invoke-static {v1, v10}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v11, "reward"

    invoke-static {v1, v11}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v3

    .line 118
    invoke-static {v3}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 119
    :cond_1
    const-string v4, "its"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_2

    .line 120
    invoke-static {v3}, Lcom/project7/localmanager/LocalWeekSettlement;->withItemSummary([B)[B

    move-result-object v3

    .line 121
    invoke-static {v1, v11, v3}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    .line 122
    iget-object v4, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v4, v7, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v4

    iput-object v4, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object v12, v1

    move-object v13, v3

    goto :goto_0

    .line 119
    :cond_2
    move-object v12, v1

    move-object v13, v3

    .line 124
    :goto_0
    const-string v14, "version"

    invoke-static {v12, v14}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    return-void

    .line 125
    :cond_3
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v4, "wasi"

    invoke-static {v1, v4}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "1"

    const-string v15, "total"

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 126
    const-string v3, "0"

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v3

    move-object/from16 v17, v1

    invoke-static {v12, v8}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v1

    if-ne v3, v1, :cond_4

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v15}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_4

    return-void

    :cond_4
    move-object/from16 v1, v17

    const/4 v3, 0x1

    goto :goto_1

    .line 127
    :cond_5
    const-string v1, "8"

    invoke-static {v2, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 128
    const-string v4, "add_score"

    move-object/from16 v17, v7

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 129
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v18, v11

    const/4 v11, 0x3

    if-ne v5, v11, :cond_c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x2

    if-eq v5, v11, :cond_6

    goto/16 :goto_3

    .line 130
    :cond_6
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v5, 0x0

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v5, 0xa

    invoke-static {v11, v5}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v5

    .line 131
    move-object/from16 v19, v14

    const/4 v11, 0x3

    new-array v14, v11, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v14, v11

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    aput-object v11, v14, v5

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    aput-object v3, v14, v5

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/project7/localmanager/BsonLite;->withProfileIntArray([BLjava/lang/String;Ljava/lang/Iterable;)[B

    move-result-object v1

    .line 132
    nop

    .line 133
    iget-object v2, v0, Lcom/project7/localmanager/LocalWeekCatalog;->scores:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 135
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v14, 0x3

    if-eq v11, v14, :cond_7

    return-void

    .line 136
    :cond_7
    const/4 v11, 0x0

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    .line 137
    goto :goto_2

    .line 138
    :cond_8
    const/4 v11, 0x0

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object v14, v12

    int-to-long v11, v2

    iget-object v0, v0, Lcom/project7/localmanager/LocalWeekCatalog;->bonuses:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    move-object/from16 v20, v14

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 138
    invoke-interface {v0, v2, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v14, v8

    move-object/from16 v21, v9

    int-to-long v8, v0

    mul-long/2addr v11, v8

    const-wide/16 v8, 0x2710

    div-long/2addr v11, v8

    long-to-int v0, v11

    .line 140
    invoke-static {v3, v0}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 141
    move-object/from16 v9, v20

    invoke-static {v9, v10}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v2

    sub-int v11, v8, v2

    .line 142
    if-gez v11, :cond_9

    return-void

    .line 143
    :cond_9
    invoke-static {v1, v15, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 144
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v7, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/project7/localmanager/BsonLite;->withProfileArray([BLjava/lang/String;Ljava/util/List;)[B

    move-result-object v12

    .line 145
    if-lez v11, :cond_a

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v2, "souvenir"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v4, v11

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalResourceEngine;->grant(Lcom/project7/localmanager/LocalResourceEngine$Result;Lcom/project7/localmanager/LocalResourceCatalog;Ljava/lang/String;III)V

    .line 146
    :cond_a
    invoke-static {v13}, Lcom/project7/localmanager/LocalWeekSettlement;->withItemSummary([B)[B

    move-result-object v0

    const-string v1, "souvenir"

    invoke-static {v0, v1, v8}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v0

    .line 147
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v2, v21

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v1

    move-object v3, v14

    invoke-static {v9, v3}, Lcom/project7/localmanager/LocalWeekSettlement;->v([BLjava/lang/String;)I

    move-result v3

    invoke-static {v1, v3, v12}, Lcom/project7/localmanager/LocalWeekSettlement;->history([BI[B)[B

    move-result-object v1

    .line 148
    invoke-static {v1, v7, v8}, Lcom/project7/localmanager/LocalWeekSettlement;->best([BLjava/util/List;I)[B

    move-result-object v1

    .line 149
    iget-object v3, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    invoke-static {v3, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 150
    move-object/from16 v1, v19

    const/4 v2, 0x2

    invoke-static {v9, v1, v2}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    .line 151
    invoke-static {v1, v10, v12}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    move-object/from16 v2, v18

    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    .line 152
    iget-object v1, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    move-object/from16 v2, v17

    invoke-static {v1, v2, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v6, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 153
    if-lez v11, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalResourceEngine;->syncCurrencies(Lcom/project7/localmanager/LocalResourceEngine$Result;)V

    .line 154
    :cond_b
    return-void

    .line 129
    :cond_c
    :goto_3
    return-void
.end method

.method private static v([BLjava/lang/String;)I
    .locals 0

    .line 185
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static withItemSummary([B)[B
    .locals 3

    .line 158
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "item"

    aput-object v2, v0, v1

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 159
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "treasure"

    aput-object v2, v0, v1

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 160
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "hero"

    aput-object v2, v0, v1

    new-instance v1, Lcom/project7/localmanager/BsonLite$ArrayValue;

    .line 161
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalWeekSettlement;->d([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/project7/localmanager/BsonLite$ArrayValue;-><init>([B)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 158
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    const-string v1, "its"

    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method
