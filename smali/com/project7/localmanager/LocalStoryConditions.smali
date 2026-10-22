.class final Lcom/project7/localmanager/LocalStoryConditions;
.super Ljava/lang/Object;
.source "LocalStoryConditions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalStoryConditions$Evaluation;,
        Lcom/project7/localmanager/LocalStoryConditions$Context;
    }
.end annotation


# static fields
.field static final SUPPORTED:Ljava/util/Set;
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
    .locals 19

    .line 13
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x23

    new-array v2, v1, [Ljava/lang/Integer;

    .line 14
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v2, v7

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v2, v8

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v2, v9

    const/16 v8, 0x13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v3

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v4

    const/16 v4, 0x16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v5

    const/16 v5, 0x17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x8

    aput-object v9, v2, v10

    const/16 v9, 0x18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v2, v11

    const/16 v10, 0x19

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0xa

    aput-object v11, v2, v12

    const/16 v11, 0x1a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0xb

    aput-object v12, v2, v13

    const/16 v12, 0x1b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v2, v6

    const/16 v6, 0x1c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0xd

    aput-object v13, v2, v14

    const/16 v13, 0x1d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v2, v15

    const/16 v14, 0x1e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0xf

    aput-object v15, v2, v16

    const/16 v15, 0x20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x10

    aput-object v16, v2, v17

    const/16 v16, 0x21

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x11

    aput-object v17, v2, v18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v7

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v7, 0x14

    aput-object v1, v2, v7

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v9

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v10

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v11

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v12

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v13

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v14

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1f

    aput-object v1, v2, v3

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v15

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v16

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x22

    aput-object v1, v2, v3

    .line 13
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/project7/localmanager/LocalStoryConditions;->SUPPORTED:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static evaluate(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalStoryConditions$Evaluation;
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/project7/localmanager/LocalStoryConditions;->evaluate(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalStoryConditions$Context;)Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    move-result-object p0

    return-object p0
.end method

.method static evaluate(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalStoryConditions$Context;)Lcom/project7/localmanager/LocalStoryConditions$Evaluation;
    .locals 4

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "condition-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/project7/localmanager/LocalStoryConditions;->SUPPORTED:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    const-string p1, "unsupported"

    invoke-direct {p0, v2, p1, v0}, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 46
    :cond_0
    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 48
    :cond_1
    const/16 v1, 0x1d

    const-string v3, "missing-context"

    if-ne p0, v1, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/project7/localmanager/LocalStoryConditions$Context;->isPatrol()Z

    move-result v1

    if-nez v1, :cond_3

    .line 49
    :cond_2
    new-instance p0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":patrol-area-required"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v3, p1}, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 50
    :cond_3
    const/16 v1, 0x26

    if-lt p0, v1, :cond_5

    const/16 v1, 0x28

    if-gt p0, v1, :cond_5

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/project7/localmanager/LocalStoryConditions$Context;->isPatrol()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p4, Lcom/project7/localmanager/LocalStoryConditions$Context;->work:Lcom/project7/localmanager/LocalPatrolCatalog;

    if-eqz v1, :cond_4

    iget-object v1, p4, Lcom/project7/localmanager/LocalStoryConditions$Context;->heroes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    :cond_4
    new-instance p0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":selected-patrol-team-required"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v3, p1}, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 53
    :cond_5
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/project7/localmanager/LocalStoryConditions;->matchesValue(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalStoryConditions$Context;)Z

    move-result p0

    .line 54
    new-instance p1, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    if-eqz p0, :cond_6

    const-string p2, "passed"

    goto :goto_0

    :cond_6
    const-string p2, "unmet"

    :goto_0
    invoke-direct {p1, p0, p2, v0}, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 55
    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 56
    :goto_1
    new-instance p1, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "invalid"

    invoke-direct {p1, v2, p2, p0}, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 47
    :cond_7
    :goto_2
    new-instance p0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    const-string p1, "missing-state"

    invoke-direct {p0, v2, p1, v0}, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static hasBuilding([BLjava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 286
    const-string v0, "bd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 287
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 289
    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 290
    :cond_0
    goto :goto_0

    .line 291
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static integers(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 314
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-object v0
.end method

.method static matches(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z
    .locals 0

    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/project7/localmanager/LocalStoryConditions;->evaluate(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;)Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    move-result-object p0

    iget-boolean p0, p0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;->satisfied:Z

    return p0
.end method

.method private static matchesValue(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalStoryConditions$Context;)Z
    .locals 16

    .line 61
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    if-nez v2, :cond_0

    return v5

    .line 62
    :cond_0
    const/16 v6, 0x36

    const-string v7, ","

    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v0, v6, :cond_4

    .line 63
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 64
    array-length v1, v0

    if-ne v1, v9, :cond_3

    .line 65
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 66
    if-gt v1, v0, :cond_2

    .line 67
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalStoryGeneralEngine;->value([B)I

    move-result v2

    .line 68
    if-lt v2, v1, :cond_1

    if-gt v2, v0, :cond_1

    move v5, v10

    :cond_1
    return v5

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reversed general value interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid general value interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_4
    const/16 v6, 0x32

    if-ne v0, v6, :cond_8

    .line 71
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 72
    array-length v1, v0

    if-ne v1, v9, :cond_7

    .line 73
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    if-gt v1, v0, :cond_6

    .line 75
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalStoryClearConditions;->count([B)I

    move-result v2

    .line 76
    if-lt v2, v1, :cond_5

    if-gt v2, v0, :cond_5

    move v5, v10

    :cond_5
    return v5

    .line 74
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reversed hero clear interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid hero clear interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_8
    const/16 v6, 0x23

    if-eq v0, v6, :cond_7c

    const/16 v6, 0x24

    if-eq v0, v6, :cond_7c

    const/16 v6, 0x29

    if-ne v0, v6, :cond_9

    goto/16 :goto_28

    .line 79
    :cond_9
    const/16 v6, 0x20

    const-string v11, "\\|"

    const-string v12, ":"

    if-ne v0, v6, :cond_13

    .line 80
    invoke-virtual {v1, v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v5

    :goto_0
    if-ge v3, v1, :cond_12

    aget-object v4, v0, v3

    .line 81
    invoke-virtual {v4, v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 82
    array-length v6, v4

    if-ne v6, v9, :cond_11

    .line 83
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v4, v4, v10

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 84
    if-lez v6, :cond_10

    if-eqz v4, :cond_a

    if-ne v4, v10, :cond_10

    .line 85
    :cond_a
    invoke-static {v2, v6}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v7

    if-nez v7, :cond_b

    return v5

    .line 86
    :cond_b
    invoke-static {v2, v6}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v6

    .line 87
    const-string v7, "oa"

    invoke-static {v6, v7}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    .line 88
    if-nez v11, :cond_d

    invoke-static {v6}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_1

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "malformed artifact state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_d
    :goto_1
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v4, v10, :cond_e

    move v4, v10

    goto :goto_2

    :cond_e
    move v4, v5

    :goto_2
    if-eq v6, v4, :cond_f

    return v5

    .line 80
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid artifact state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid artifact condition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_12
    return v10

    .line 94
    :cond_13
    const/4 v6, 0x3

    const/16 v13, 0x26

    if-lt v0, v13, :cond_1b

    const/16 v14, 0x28

    if-gt v0, v14, :cond_1b

    .line 95
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 96
    if-ltz v1, :cond_1a

    iget-object v3, v4, Lcom/project7/localmanager/LocalStoryConditions$Context;->heroes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v6, :cond_1a

    new-instance v3, Ljava/util/LinkedHashSet;

    iget-object v6, v4, Lcom/project7/localmanager/LocalStoryConditions$Context;->heroes:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    iget-object v6, v4, Lcom/project7/localmanager/LocalStoryConditions$Context;->heroes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v3, v6, :cond_1a

    .line 98
    iget-object v3, v4, Lcom/project7/localmanager/LocalStoryConditions$Context;->heroes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v5

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 99
    if-eqz v7, :cond_17

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_17

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, v4, Lcom/project7/localmanager/LocalStoryConditions$Context;->work:Lcom/project7/localmanager/LocalPatrolCatalog;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v11, v0, -0x26

    invoke-virtual {v8, v9, v11}, Lcom/project7/localmanager/LocalPatrolCatalog;->hasWork(II)Z

    move-result v8

    if-nez v8, :cond_14

    goto :goto_5

    .line 100
    :cond_14
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v2, v8}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v8

    .line 101
    const-string v9, "sl"

    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const-string v12, "so"

    invoke-static {v8, v12}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 102
    if-eqz v9, :cond_16

    if-eqz v12, :cond_16

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v9, v10, :cond_16

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v9, v10, :cond_15

    goto :goto_4

    .line 103
    :cond_15
    iget-object v9, v4, Lcom/project7/localmanager/LocalStoryConditions$Context;->work:Lcom/project7/localmanager/LocalPatrolCatalog;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v9, v8, v7, v11}, Lcom/project7/localmanager/LocalPatrolCatalog;->work([BII)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->addExact(II)I

    move-result v6

    .line 104
    goto :goto_3

    .line 102
    :cond_16
    :goto_4
    return v5

    .line 99
    :cond_17
    :goto_5
    return v5

    .line 105
    :cond_18
    if-lt v6, v1, :cond_19

    move v5, v10

    :cond_19
    return v5

    .line 97
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid patrol ability request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1b
    const/16 v13, 0x35

    const/16 v14, 0x64

    const-string v15, "std"

    if-ne v0, v13, :cond_21

    .line 108
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 109
    array-length v1, v0

    if-ne v1, v9, :cond_20

    .line 110
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 111
    if-gt v1, v0, :cond_1f

    .line 112
    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "yiv"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 113
    if-nez v2, :cond_1c

    return v5

    .line 114
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v14, :cond_1e

    .line 116
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_1d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v0, :cond_1d

    move v5, v10

    :cond_1d
    return v5

    .line 115
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid native yisake value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reversed yisake interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid yisake interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_21
    const/16 v13, 0x33

    if-ne v0, v13, :cond_27

    .line 119
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 120
    array-length v1, v0

    if-ne v1, v9, :cond_26

    .line 121
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    if-gt v1, v0, :cond_25

    .line 123
    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "byv"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 124
    if-nez v2, :cond_22

    return v5

    .line 125
    :cond_22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_24

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v14, :cond_24

    .line 127
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_23

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v0, :cond_23

    move v5, v10

    :cond_23
    return v5

    .line 126
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid native baiyu value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reversed baiyu interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid baiyu interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_27
    const/16 v13, 0x25

    if-ne v0, v13, :cond_30

    .line 130
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 131
    invoke-virtual {v1, v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v4, v5

    :goto_6
    if-ge v4, v1, :cond_2e

    aget-object v7, v0, v4

    .line 132
    invoke-virtual {v7, v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 133
    array-length v11, v7

    if-ne v11, v6, :cond_2d

    .line 134
    aget-object v11, v7, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aget-object v13, v7, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 135
    if-lez v11, :cond_2c

    if-gt v13, v7, :cond_2c

    .line 136
    invoke-static {v2, v3, v11}, Lcom/project7/localmanager/LocalStoryConditions;->remainingFatigue([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;

    move-result-object v11

    .line 137
    if-nez v11, :cond_28

    return v5

    .line 138
    :cond_28
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ltz v14, :cond_2b

    .line 139
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lt v14, v13, :cond_2a

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v7, :cond_29

    goto :goto_7

    .line 131
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 139
    :cond_2a
    :goto_7
    return v5

    .line 138
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative remaining fatigue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid fatigue bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid fatigue interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2e
    return v10

    .line 130
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty fatigue condition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_30
    const/16 v6, 0x2b

    if-eq v0, v6, :cond_76

    const/16 v13, 0x2c

    if-ne v0, v13, :cond_31

    goto/16 :goto_25

    .line 156
    :cond_31
    const/16 v6, 0x1d

    const-string v8, "areas"

    const-string v13, "area_"

    const-string v14, "city"

    if-ne v0, v6, :cond_34

    .line 157
    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 158
    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/project7/localmanager/LocalStoryConditions$Context;->patrolArea:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "bd"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 160
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 162
    if-eqz v3, :cond_32

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    return v10

    .line 163
    :cond_32
    goto :goto_8

    .line 164
    :cond_33
    return v5

    .line 166
    :cond_34
    const/16 v4, 0x21

    if-ne v0, v4, :cond_36

    const-string v0, "money"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_35

    move v5, v10

    :cond_35
    return v5

    .line 167
    :cond_36
    const/16 v4, 0x13

    const-string v6, "w"

    if-ne v0, v4, :cond_3d

    .line 168
    const-string v0, "weeknum"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 169
    invoke-static {v0, v6}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    const-string v4, "d"

    invoke-static {v0, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 170
    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v6, v5

    :goto_9
    if-ge v6, v4, :cond_3c

    aget-object v7, v1, v6

    .line 171
    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 172
    iget-object v8, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventDays:Ljava/util/Map;

    aget-object v11, v7, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 173
    if-nez v8, :cond_37

    return v5

    .line 174
    :cond_37
    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 175
    array-length v11, v8

    if-ne v11, v9, :cond_3b

    aget-object v11, v8, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v2, :cond_38

    goto :goto_b

    .line 176
    :cond_38
    aget-object v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sub-int v8, v0, v8

    .line 177
    aget-object v11, v7, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-lt v8, v11, :cond_3a

    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v8, v7, :cond_39

    goto :goto_a

    .line 170
    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 177
    :cond_3a
    :goto_a
    return v5

    .line 175
    :cond_3b
    :goto_b
    return v5

    .line 179
    :cond_3c
    return v10

    .line 181
    :cond_3d
    const/16 v4, 0xc

    const/16 v9, 0x18

    if-ne v0, v4, :cond_40

    .line 182
    iget v0, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    if-ltz v0, :cond_3e

    iget v0, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    goto :goto_c

    .line 183
    :cond_3e
    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "av"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 184
    :goto_c
    sub-int/2addr v9, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v9, v0, :cond_3f

    move v5, v10

    :cond_3f
    return v5

    .line 186
    :cond_40
    const/16 v4, 0x1b

    const/16 v10, 0x1a

    const/16 v5, 0x15

    if-eq v0, v5, :cond_6f

    if-eq v0, v10, :cond_6f

    if-eq v0, v4, :cond_6f

    const/16 v4, 0x1c

    if-eq v0, v4, :cond_6f

    const/16 v4, 0x1e

    if-ne v0, v4, :cond_41

    goto/16 :goto_22

    .line 194
    :cond_41
    const/16 v4, 0x12

    const/16 v5, 0x16

    if-eq v0, v4, :cond_64

    if-ne v0, v5, :cond_42

    goto/16 :goto_1c

    .line 214
    :cond_42
    const/16 v4, 0x34

    if-ne v0, v4, :cond_44

    .line 215
    invoke-static {v2, v15}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "rt"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    if-nez v0, :cond_43

    const-string v0, "1"

    .line 218
    :cond_43
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 220
    :cond_44
    if-eq v0, v9, :cond_60

    const/16 v4, 0x19

    if-ne v0, v4, :cond_45

    goto/16 :goto_19

    .line 230
    :cond_45
    const/16 v4, 0x2a

    if-eq v0, v4, :cond_5d

    const/16 v4, 0x30

    if-ne v0, v4, :cond_46

    goto/16 :goto_17

    .line 234
    :cond_46
    const/4 v4, 0x7

    if-ne v0, v4, :cond_48

    .line 235
    const-string v0, "level"

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 236
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v2, v3, :cond_47

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gt v0, v1, :cond_47

    const/4 v5, 0x1

    goto :goto_d

    :cond_47
    const/4 v5, 0x0

    :goto_d
    return v5

    .line 239
    :cond_48
    const/4 v4, 0x6

    if-ne v0, v4, :cond_4d

    .line 240
    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v1, :cond_4c

    aget-object v5, v0, v4

    .line 241
    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 242
    const/4 v6, 0x0

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 243
    invoke-static {v2, v7}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v8

    .line 244
    const-string v9, "ef"

    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 245
    if-nez v8, :cond_49

    return v6

    .line 246
    :cond_49
    invoke-static {v2, v3, v7}, Lcom/project7/localmanager/LocalStoryFriendshipEngine;->current([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 247
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    aget-object v9, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lt v7, v8, :cond_4b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v6, v5, :cond_4a

    goto :goto_f

    .line 240
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 247
    :cond_4b
    :goto_f
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_4c
    const/4 v0, 0x1

    return v0

    .line 251
    :cond_4d
    const/4 v4, 0x5

    if-ne v0, v4, :cond_53

    .line 252
    const-string v0, "inv"

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "items"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 253
    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_52

    aget-object v4, v1, v3

    .line 254
    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 255
    const/4 v5, 0x0

    aget-object v7, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 256
    const-wide/16 v7, 0x0

    .line 257
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 258
    invoke-static {v0, v10}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v10

    .line 259
    invoke-static {v10, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 260
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "i"

    invoke-static {v10, v14}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    if-eqz v11, :cond_4e

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v7, v10

    .line 261
    :cond_4e
    goto :goto_11

    .line 262
    :cond_4f
    const/4 v5, 0x1

    aget-object v9, v4, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_51

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v7, v4

    if-lez v4, :cond_50

    goto :goto_12

    .line 253
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 262
    :cond_51
    :goto_12
    const/4 v0, 0x0

    return v0

    .line 264
    :cond_52
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_53
    const/16 v4, 0x17

    if-ne v0, v4, :cond_59

    .line 267
    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_58

    aget-object v4, v0, v3

    .line 268
    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 269
    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 270
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalServiceEngine;->cores([B)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_54
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v5, :cond_54

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 271
    :cond_55
    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v7, v5, :cond_57

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v7, v4, :cond_56

    goto :goto_15

    .line 267
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 271
    :cond_57
    :goto_15
    const/4 v0, 0x0

    return v0

    .line 273
    :cond_58
    const/4 v0, 0x1

    return v0

    .line 275
    :cond_59
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_5c

    .line 276
    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v1, :cond_5b

    aget-object v5, v0, v4

    .line 277
    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 278
    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-static {v7}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5, v2}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    return v7

    .line 276
    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 280
    :cond_5b
    const/4 v0, 0x1

    return v0

    .line 282
    :cond_5c
    const/4 v7, 0x0

    return v7

    .line 231
    :cond_5d
    :goto_17
    new-instance v3, Ljava/util/LinkedHashSet;

    const-string v4, "cgs"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 232
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_5e

    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_18

    :cond_5e
    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5f

    const/4 v5, 0x1

    goto :goto_18

    :cond_5f
    const/4 v5, 0x0

    :goto_18
    return v5

    .line 221
    :cond_60
    :goto_19
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 222
    const-string v4, "heromgr"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    const-string v4, "hrs"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 223
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 224
    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 225
    if-eqz v5, :cond_61

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_61
    goto :goto_1a

    .line 227
    :cond_62
    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 228
    if-ne v0, v9, :cond_63

    invoke-interface {v3, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_1b

    :cond_63
    invoke-static {v3, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    :goto_1b
    return v0

    .line 195
    :cond_64
    :goto_1c
    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v8}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 196
    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_6d

    aget-object v6, v1, v4

    .line 197
    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v9, v6, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    .line 199
    if-ne v0, v5, :cond_67

    .line 200
    const-string v8, "lv"

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 201
    if-eqz v7, :cond_66

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v7, v6, :cond_65

    goto :goto_1e

    .line 202
    :cond_65
    goto :goto_20

    .line 201
    :cond_66
    :goto_1e
    const/4 v8, 0x0

    return v8

    .line 203
    :cond_67
    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v10, v6, v9

    invoke-static {v10}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .line 204
    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 205
    if-ltz v6, :cond_6c

    const/16 v8, 0x8

    if-gt v6, v8, :cond_6c

    .line 206
    if-nez v6, :cond_6a

    .line 207
    const/4 v6, 0x1

    :goto_1f
    const/16 v7, 0x8

    if-gt v6, v7, :cond_69

    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalStoryConditions;->hasBuilding([BLjava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_68

    const/4 v8, 0x1

    return v8

    .line 207
    :cond_68
    const/4 v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_69
    const/4 v8, 0x1

    goto :goto_20

    .line 209
    :cond_6a
    const/4 v8, 0x1

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalStoryConditions;->hasBuilding([BLjava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_6b

    return v8

    .line 196
    :cond_6b
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 205
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid building area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_6d
    if-ne v0, v5, :cond_6e

    const/4 v5, 0x1

    goto :goto_21

    :cond_6e
    const/4 v5, 0x0

    :goto_21
    return v5

    .line 187
    :cond_6f
    :goto_22
    if-ne v0, v5, :cond_70

    const-string v0, "bf"

    goto :goto_23

    :cond_70
    if-ne v0, v10, :cond_71

    const-string v0, "fv"

    goto :goto_23

    :cond_71
    const/16 v3, 0x1b

    if-ne v0, v3, :cond_72

    const-string v0, "rv"

    goto :goto_23

    :cond_72
    const/16 v3, 0x1e

    if-ne v0, v3, :cond_73

    const-string v0, "cc"

    goto :goto_23

    :cond_73
    const-string v0, "dv"

    .line 188
    :goto_23
    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 189
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 190
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 191
    if-gt v2, v1, :cond_75

    .line 192
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v2, :cond_74

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_74

    const/4 v5, 0x1

    goto :goto_24

    :cond_74
    const/4 v5, 0x0

    :goto_24
    return v5

    .line 191
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reversed interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_76
    :goto_25
    invoke-virtual {v1, v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 145
    nop

    .line 146
    array-length v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v3, :cond_7a

    aget-object v9, v1, v7

    .line 147
    invoke-virtual {v9, v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 148
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_79

    .line 149
    const/4 v10, 0x0

    aget-object v13, v9, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    aget-object v9, v9, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 150
    if-lez v13, :cond_78

    if-lt v9, v14, :cond_78

    const/16 v15, 0x1f

    if-gt v9, v15, :cond_78

    .line 151
    invoke-static {v2, v13}, Lcom/project7/localmanager/LocalStoryMemoryEngine;->mask([BI)I

    move-result v13

    add-int/lit8 v9, v9, -0x1

    shl-int v9, v14, v9

    and-int/2addr v9, v13

    if-eqz v9, :cond_77

    move v9, v14

    goto :goto_27

    :cond_77
    move v9, v10

    .line 152
    :goto_27
    and-int/2addr v5, v9

    xor-int/lit8 v9, v9, 0x1

    and-int/2addr v4, v9

    .line 146
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 150
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid memory piece index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid memory piece"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_7a
    if-ne v0, v6, :cond_7b

    move v4, v5

    :cond_7b
    return v4

    .line 78
    :cond_7c
    :goto_28
    invoke-static/range {p0 .. p2}, Lcom/project7/localmanager/LocalStoryTreasureConditions;->matches(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method private static remainingFatigue([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;
    .locals 4

    .line 295
    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v0

    .line 296
    if-eqz v0, :cond_4

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    const-string v1, "q7EconomyCommit"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 298
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    const-string v2, "cf"

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->economyCommit:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 300
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 301
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 304
    if-eqz p0, :cond_1

    .line 305
    return-object p0

    .line 304
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid pending fatigue"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_2
    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolFatigue:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 309
    :cond_3
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 296
    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
