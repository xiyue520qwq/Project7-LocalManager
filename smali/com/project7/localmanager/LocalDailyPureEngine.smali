.class final Lcom/project7/localmanager/LocalDailyPureEngine;
.super Ljava/lang/Object;
.source "LocalDailyPureEngine.java"


# static fields
.field static final KEY:Ljava/lang/String; = "q7DailyPure"

.field static final METHOD:Ljava/lang/String; = "dailyPureChooseHero"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static choose([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)Lcom/project7/localmanager/LocalResourceEngine$Result;
    .locals 16

    .line 24
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lcom/project7/localmanager/LocalResourceEngine$Result;

    invoke-direct {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;-><init>([B)V

    .line 25
    const-string v3, "h"

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lcom/project7/localmanager/LocalDailyPureEngine;->v([BLjava/lang/String;)I

    move-result v3

    const-string v4, "q7DailyPure"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalDailyPureEngine;->d([BLjava/lang/String;)[B

    move-result-object v5

    .line 26
    invoke-static {v5}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const-string v7, "hero"

    const-string v8, "m"

    const-string v9, "showMessageStr"

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v6, :cond_1

    .line 27
    invoke-static/range {p0 .. p1}, Lcom/project7/localmanager/LocalDailyPureEngine;->selected([BLcom/project7/localmanager/LocalEventCatalog;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v5, v7}, Lcom/project7/localmanager/LocalDailyPureEngine;->v([BLjava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    return-object v2

    .line 28
    :cond_0
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v8, v0, v12

    const-string v1, "\u672c\u8f6e\u7ed3\u5c40\u89d2\u8272\u5df2\u9009\u62e9\uff0c\u4e0d\u80fd\u66f4\u6362"

    aput-object v1, v0, v11

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    return-object v2

    .line 30
    :cond_1
    move-object/from16 v5, p1

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog;->dailyPure:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v13, "hrs"

    const-string v14, "bhrs"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 33
    const-string v15, "heromgr"

    invoke-static {v0, v15}, Lcom/project7/localmanager/LocalDailyPureEngine;->d([BLjava/lang/String;)[B

    move-result-object v15

    invoke-static {v15, v14}, Lcom/project7/localmanager/LocalDailyPureEngine;->d([BLjava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/project7/localmanager/LocalResourceEngine;->array([B)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "0"

    invoke-static {v15, v11}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v6, "1"

    invoke-static {v15, v6}, Lcom/project7/localmanager/LocalDailyPureEngine;->d([BLjava/lang/String;)[B

    move-result-object v6

    :cond_2
    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_1

    .line 33
    :cond_3
    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_0

    .line 35
    :cond_4
    if-eqz v1, :cond_6

    iget-object v10, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    const/16 v11, 0x1f8e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 36
    invoke-static/range {p0 .. p0}, Lcom/project7/localmanager/LocalDailyPureEngine;->dailyRoute([B)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 37
    const-string v1, "weeknum"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalDailyPureEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    const-string v11, "d"

    invoke-static {v10, v11}, Lcom/project7/localmanager/LocalDailyPureEngine;->v([BLjava/lang/String;)I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_6

    const-string v10, "q7WeekResult"

    invoke-static {v0, v10}, Lcom/project7/localmanager/LocalDailyPureEngine;->d([BLjava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    const-string v13, "cfd"

    invoke-static {v6, v13}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 41
    :cond_5
    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "week"

    aput-object v8, v6, v12

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalDailyPureEngine;->d([BLjava/lang/String;)[B

    move-result-object v1

    const-string v8, "w"

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalDailyPureEngine;->v([BLjava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v6, v8

    const/4 v1, 0x2

    aput-object v7, v6, v1

    const/4 v1, 0x3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v1, 0x4

    const-string v3, "event"

    aput-object v3, v6, v1

    const/4 v1, 0x5

    aget v3, v5, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v1, 0x6

    const-string v3, "scene"

    aput-object v3, v6, v1

    const/4 v1, 0x1

    aget v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v11

    .line 41
    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, v2, Lcom/project7/localmanager/LocalResourceEngine$Result;->profile:[B

    .line 43
    return-object v2

    .line 39
    :cond_6
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v8, v0, v12

    const-string v1, "\u8bf7\u9009\u62e9\u672c\u5468\u5df2\u5b8c\u6210\u653b\u7565\u4e14\u53ef\u8fdb\u5165\u7ed3\u5c40\u7684\u795e\u5668\u4f7f"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->document([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/project7/localmanager/LocalResourceEngine$Result;->add(Ljava/lang/String;[B)V

    return-object v2
.end method

.method static d([BLjava/lang/String;)[B
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static dailyRoute([B)Z
    .locals 1

    .line 11
    const-string v0, "std"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDailyPureEngine;->d([BLjava/lang/String;)[B

    move-result-object p0

    const-string v0, "rt"

    invoke-static {p0, v0}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    const-string v0, "6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, "6-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method static restore([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V
    .locals 2

    .line 46
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalDailyPureEngine;->selected([BLcom/project7/localmanager/LocalEventCatalog;)[I

    move-result-object p0

    .line 47
    if-eqz p0, :cond_1

    iget-object p1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v0, 0x1f8e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/4 v0, 0x0

    aget v1, p0, v0

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method static selected([BLcom/project7/localmanager/LocalEventCatalog;)[I
    .locals 4

    .line 15
    const-string v0, "q7DailyPure"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalDailyPureEngine;->d([BLjava/lang/String;)[B

    move-result-object v0

    .line 16
    const-string v1, "week"

    invoke-static {v0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 17
    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog;->dailyPure:Ljava/util/Map;

    const-string v2, "hero"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalDailyPureEngine;->v([BLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 20
    if-eqz v1, :cond_0

    .line 18
    const-string v2, "weeknum"

    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalDailyPureEngine;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "w"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {p0}, Lcom/project7/localmanager/LocalDailyPureEngine;->dailyRoute([B)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 20
    const-string p0, "event"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalDailyPureEngine;->v([BLjava/lang/String;)I

    move-result p0

    const/4 v1, 0x0

    aget v1, p1, v1

    if-ne p0, v1, :cond_0

    const-string p0, "scene"

    invoke-static {v0, p0}, Lcom/project7/localmanager/LocalDailyPureEngine;->v([BLjava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    aget v0, p1, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return-object p1
.end method

.method static v([BLjava/lang/String;)I
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result p0

    return p0
.end method
