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
    .locals 13

    .line 13
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x1a

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

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v11, 0xb

    aput-object v1, v2, v11

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v6, 0xd

    aput-object v1, v2, v6

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v6, 0xe

    aput-object v1, v2, v6

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v6, 0xf

    aput-object v1, v2, v6

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v6, 0x10

    aput-object v1, v2, v6

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v6, 0x11

    aput-object v1, v2, v6

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v7

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v6, 0x14

    aput-object v1, v2, v6

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v9

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v10

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

    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/project7/localmanager/LocalStoryConditions;->evaluate(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalStoryConditions$Context;)Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    move-result-object p0

    return-object p0
.end method

.method static evaluate(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalStoryConditions$Context;)Lcom/project7/localmanager/LocalStoryConditions$Evaluation;
    .locals 3

    .line 37
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

    .line 38
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

    .line 39
    :cond_0
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-nez p1, :cond_1

    goto :goto_2

    .line 41
    :cond_1
    const/16 v1, 0x1d

    if-ne p0, v1, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/project7/localmanager/LocalStoryConditions$Context;->isPatrol()Z

    move-result v1

    if-nez v1, :cond_3

    .line 42
    :cond_2
    new-instance p0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":patrol-area-required"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "missing-context"

    invoke-direct {p0, v2, p2, p1}, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 44
    :cond_3
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/project7/localmanager/LocalStoryConditions;->matchesValue(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalStoryConditions$Context;)Z

    move-result p0

    .line 45
    new-instance p1, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    if-eqz p0, :cond_4

    const-string p2, "passed"

    goto :goto_0

    :cond_4
    const-string p2, "unmet"

    :goto_0
    invoke-direct {p1, p0, p2, v0}, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 46
    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 47
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

    .line 40
    :cond_5
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

    .line 232
    const-string v0, "bd"

    invoke-static {p0, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 233
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

    .line 234
    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 236
    :cond_0
    goto :goto_0

    .line 237
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

    .line 259
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 260
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

    .line 261
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

    .line 52
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    return v4

    .line 53
    :cond_0
    const/16 v5, 0x35

    const/16 v6, 0x64

    const-string v7, "std"

    const-string v8, ","

    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ne v0, v5, :cond_6

    .line 54
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 55
    array-length v1, v0

    if-ne v1, v10, :cond_5

    .line 56
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 57
    if-gt v1, v0, :cond_4

    .line 58
    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "yiv"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 59
    if-nez v2, :cond_1

    return v4

    .line 60
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v6, :cond_3

    .line 62
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v0, :cond_2

    move v4, v11

    :cond_2
    return v4

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid native yisake value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reversed yisake interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid yisake interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_6
    const/16 v5, 0x33

    if-ne v0, v5, :cond_c

    .line 65
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 66
    array-length v1, v0

    if-ne v1, v10, :cond_b

    .line 67
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 68
    if-gt v1, v0, :cond_a

    .line 69
    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "byv"

    invoke-static {v2, v3}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 70
    if-nez v2, :cond_7

    return v4

    .line 71
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v6, :cond_9

    .line 73
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v0, :cond_8

    move v4, v11

    :cond_8
    return v4

    .line 72
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid native baiyu value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reversed baiyu interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid baiyu interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_c
    const/16 v5, 0x25

    const-string v6, "\\|"

    const-string v12, ":"

    if-ne v0, v5, :cond_15

    .line 76
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 77
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_13

    aget-object v6, v0, v5

    .line 78
    invoke-virtual {v6, v12, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 79
    array-length v7, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_12

    .line 80
    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v8, v6, v11

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 81
    if-lez v7, :cond_11

    if-gt v8, v6, :cond_11

    .line 82
    invoke-static {v2, v3, v7}, Lcom/project7/localmanager/LocalStoryConditions;->remainingFatigue([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;

    move-result-object v7

    .line 83
    if-nez v7, :cond_d

    return v4

    .line 84
    :cond_d
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ltz v13, :cond_10

    .line 85
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lt v13, v8, :cond_f

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v6, :cond_e

    goto :goto_1

    .line 77
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    :cond_f
    :goto_1
    return v4

    .line 84
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative remaining fatigue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid fatigue bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid fatigue interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_13
    return v11

    .line 76
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty fatigue condition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_15
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_5b

    const/16 v13, 0x2c

    if-ne v0, v13, :cond_16

    goto/16 :goto_1f

    .line 102
    :cond_16
    const/16 v5, 0x1d

    const-string v9, "areas"

    const-string v13, "area_"

    const-string v14, "city"

    if-ne v0, v5, :cond_19

    .line 103
    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 104
    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    iget v3, v3, Lcom/project7/localmanager/LocalStoryConditions$Context;->patrolArea:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "bd"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    invoke-static {v1, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const-string v5, "id"

    invoke-static {v3, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 108
    if-eqz v3, :cond_17

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    return v11

    .line 109
    :cond_17
    goto :goto_2

    .line 110
    :cond_18
    return v4

    .line 112
    :cond_19
    const/16 v5, 0x21

    if-ne v0, v5, :cond_1b

    const-string v0, "money"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_1a

    move v4, v11

    :cond_1a
    return v4

    .line 113
    :cond_1b
    const/16 v5, 0x13

    const-string v15, "w"

    if-ne v0, v5, :cond_22

    .line 114
    const-string v0, "weeknum"

    invoke-static {v2, v0}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 115
    invoke-static {v0, v15}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v2

    const-string v5, "d"

    invoke-static {v0, v5}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 116
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_21

    aget-object v7, v1, v6

    .line 117
    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 118
    iget-object v8, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventDays:Ljava/util/Map;

    aget-object v9, v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 119
    if-nez v8, :cond_1c

    return v4

    .line 120
    :cond_1c
    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 121
    array-length v9, v8

    if-ne v9, v10, :cond_20

    aget-object v9, v8, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v2, :cond_1d

    goto :goto_5

    .line 122
    :cond_1d
    aget-object v8, v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sub-int v8, v0, v8

    .line 123
    aget-object v9, v7, v11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lt v8, v9, :cond_1f

    aget-object v7, v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v8, v7, :cond_1e

    goto :goto_4

    .line 116
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 123
    :cond_1f
    :goto_4
    return v4

    .line 121
    :cond_20
    :goto_5
    return v4

    .line 125
    :cond_21
    return v11

    .line 127
    :cond_22
    const/16 v5, 0xc

    const/16 v10, 0x18

    if-ne v0, v5, :cond_25

    .line 128
    iget v0, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    if-ltz v0, :cond_23

    iget v0, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolActions:I

    goto :goto_6

    .line 129
    :cond_23
    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "av"

    invoke-static {v0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v0

    .line 130
    :goto_6
    sub-int/2addr v10, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v10, v0, :cond_24

    move v4, v11

    :cond_24
    return v4

    .line 132
    :cond_25
    const/16 v5, 0x1e

    const/16 v11, 0x1b

    const/16 v4, 0x1a

    const/16 v10, 0x15

    if-eq v0, v10, :cond_54

    if-eq v0, v4, :cond_54

    if-eq v0, v11, :cond_54

    const/16 v11, 0x1c

    if-eq v0, v11, :cond_54

    if-ne v0, v5, :cond_26

    goto/16 :goto_1c

    .line 140
    :cond_26
    const/16 v4, 0x12

    const/16 v5, 0x16

    if-eq v0, v4, :cond_49

    if-ne v0, v5, :cond_27

    goto/16 :goto_16

    .line 160
    :cond_27
    const/16 v4, 0x34

    if-ne v0, v4, :cond_29

    .line 161
    invoke-static {v2, v7}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "rt"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    if-nez v0, :cond_28

    const-string v0, "1"

    .line 164
    :cond_28
    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 166
    :cond_29
    const/16 v4, 0x18

    if-eq v0, v4, :cond_45

    const/16 v4, 0x19

    if-ne v0, v4, :cond_2a

    goto/16 :goto_13

    .line 176
    :cond_2a
    const/16 v4, 0x2a

    if-eq v0, v4, :cond_42

    const/16 v5, 0x30

    if-ne v0, v5, :cond_2b

    goto/16 :goto_11

    .line 180
    :cond_2b
    const/4 v4, 0x7

    if-ne v0, v4, :cond_2d

    .line 181
    const-string v0, "level"

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 182
    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 183
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v2, v3, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gt v0, v1, :cond_2c

    const/4 v4, 0x1

    goto :goto_7

    :cond_2c
    const/4 v4, 0x0

    :goto_7
    return v4

    .line 185
    :cond_2d
    const/4 v4, 0x6

    if-ne v0, v4, :cond_32

    .line 186
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_31

    aget-object v5, v0, v4

    .line 187
    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 188
    const/4 v6, 0x0

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 189
    invoke-static {v2, v7}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v8

    .line 190
    const-string v9, "ef"

    invoke-static {v8, v9}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 191
    if-nez v8, :cond_2e

    return v6

    .line 192
    :cond_2e
    invoke-static {v2, v3, v7}, Lcom/project7/localmanager/LocalStoryFriendshipEngine;->current([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 193
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    aget-object v9, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lt v7, v8, :cond_30

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v6, v5, :cond_2f

    goto :goto_9

    .line 186
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 193
    :cond_30
    :goto_9
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_31
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_32
    const/4 v4, 0x5

    if-ne v0, v4, :cond_38

    .line 198
    const-string v0, "inv"

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    const-string v2, "items"

    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v0

    .line 199
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_37

    aget-object v4, v1, v3

    .line 200
    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 201
    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 202
    const-wide/16 v6, 0x0

    .line 203
    invoke-static {v0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 204
    invoke-static {v0, v9}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v9

    .line 205
    invoke-static {v9, v15}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 206
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "i"

    invoke-static {v9, v13}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    if-eqz v10, :cond_33

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v6, v9

    .line 207
    :cond_33
    goto :goto_b

    .line 208
    :cond_34
    const/4 v5, 0x1

    aget-object v8, v4, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_36

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v6, v4

    if-lez v4, :cond_35

    goto :goto_c

    .line 199
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 208
    :cond_36
    :goto_c
    const/4 v0, 0x0

    return v0

    .line 210
    :cond_37
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_38
    const/16 v4, 0x17

    if-ne v0, v4, :cond_3e

    .line 213
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_3d

    aget-object v4, v0, v3

    .line 214
    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 215
    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 216
    invoke-static/range {p2 .. p2}, Lcom/project7/localmanager/LocalServiceEngine;->cores([B)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_39
    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v5, :cond_39

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 217
    :cond_3a
    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v7, v5, :cond_3c

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v7, v4, :cond_3b

    goto :goto_f

    .line 213
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 217
    :cond_3c
    :goto_f
    const/4 v0, 0x0

    return v0

    .line 219
    :cond_3d
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_3e
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_41

    .line 222
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v1, :cond_40

    aget-object v5, v0, v4

    .line 223
    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 224
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

    if-nez v5, :cond_3f

    return v7

    .line 222
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 226
    :cond_40
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_41
    const/4 v7, 0x0

    return v7

    .line 177
    :cond_42
    :goto_11
    new-instance v3, Ljava/util/LinkedHashSet;

    const-string v5, "cgs"

    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 178
    if-ne v0, v4, :cond_43

    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    goto :goto_12

    :cond_43
    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v4, 0x1

    goto :goto_12

    :cond_44
    const/4 v4, 0x0

    :goto_12
    return v4

    .line 167
    :cond_45
    :goto_13
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 168
    const-string v4, "heromgr"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    const-string v4, "hrs"

    invoke-static {v2, v4}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 169
    invoke-static {v2}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 170
    invoke-static {v2, v5}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v5

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 171
    if-eqz v5, :cond_46

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_46
    goto :goto_14

    .line 173
    :cond_47
    invoke-static/range {p1 .. p1}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 174
    const/16 v2, 0x18

    if-ne v0, v2, :cond_48

    invoke-interface {v3, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_15

    :cond_48
    invoke-static {v3, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    :goto_15
    return v0

    .line 141
    :cond_49
    :goto_16
    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v9}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 142
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_52

    aget-object v6, v1, v4

    .line 143
    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 144
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

    .line 145
    if-ne v0, v5, :cond_4c

    .line 146
    const-string v8, "lv"

    invoke-static {v7, v8}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 147
    if-eqz v7, :cond_4b

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v7, v6, :cond_4a

    goto :goto_18

    .line 148
    :cond_4a
    goto :goto_1a

    .line 147
    :cond_4b
    :goto_18
    const/4 v8, 0x0

    return v8

    .line 149
    :cond_4c
    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v10, v6, v9

    invoke-static {v10}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .line 150
    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 151
    if-ltz v6, :cond_51

    const/16 v8, 0x8

    if-gt v6, v8, :cond_51

    .line 152
    if-nez v6, :cond_4f

    .line 153
    const/4 v6, 0x1

    :goto_19
    if-gt v6, v8, :cond_4e

    .line 154
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

    if-eqz v7, :cond_4d

    const/4 v10, 0x1

    return v10

    .line 153
    :cond_4d
    const/4 v10, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_4e
    const/4 v10, 0x1

    goto :goto_1a

    .line 155
    :cond_4f
    const/4 v10, 0x1

    invoke-static {v7, v9}, Lcom/project7/localmanager/LocalStoryConditions;->hasBuilding([BLjava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_50

    return v10

    .line 142
    :cond_50
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 151
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid building area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_52
    if-ne v0, v5, :cond_53

    const/4 v4, 0x1

    goto :goto_1b

    :cond_53
    const/4 v4, 0x0

    :goto_1b
    return v4

    .line 133
    :cond_54
    :goto_1c
    if-ne v0, v10, :cond_55

    const-string v0, "bf"

    goto :goto_1d

    :cond_55
    if-ne v0, v4, :cond_56

    const-string v0, "fv"

    goto :goto_1d

    :cond_56
    const/16 v3, 0x1b

    if-ne v0, v3, :cond_57

    const-string v0, "rv"

    goto :goto_1d

    :cond_57
    if-ne v0, v5, :cond_58

    const-string v0, "cc"

    goto :goto_1d

    :cond_58
    const-string v0, "dv"

    .line 134
    :goto_1d
    invoke-static {v2, v14}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 135
    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 136
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 137
    if-gt v2, v1, :cond_5a

    .line 138
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v2, :cond_59

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_59

    const/4 v4, 0x1

    goto :goto_1e

    :cond_59
    const/4 v4, 0x0

    :goto_1e
    return v4

    .line 137
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reversed interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_5b
    :goto_1f
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 91
    nop

    .line 92
    array-length v3, v1

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v3, :cond_5f

    aget-object v8, v1, v7

    .line 93
    invoke-virtual {v8, v12, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 94
    array-length v10, v8

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5e

    .line 95
    const/4 v10, 0x0

    aget-object v13, v8, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    aget-object v8, v8, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 96
    if-lez v13, :cond_5d

    if-lt v8, v14, :cond_5d

    const/16 v15, 0x1f

    if-gt v8, v15, :cond_5d

    .line 97
    invoke-static {v2, v13}, Lcom/project7/localmanager/LocalStoryMemoryEngine;->mask([BI)I

    move-result v13

    add-int/lit8 v8, v8, -0x1

    shl-int v8, v14, v8

    and-int/2addr v8, v13

    if-eqz v8, :cond_5c

    move v8, v14

    goto :goto_21

    :cond_5c
    move v8, v10

    .line 98
    :goto_21
    and-int/2addr v6, v8

    xor-int/lit8 v8, v8, 0x1

    and-int/2addr v4, v8

    .line 92
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 96
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid memory piece index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid memory piece"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_5f
    if-ne v0, v5, :cond_60

    move v4, v6

    :cond_60
    return v4
.end method

.method private static remainingFatigue([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;
    .locals 4

    .line 241
    invoke-static {p0, p2}, Lcom/project7/localmanager/BsonLite;->profileHeroDocument([BI)[B

    move-result-object v0

    .line 242
    if-eqz v0, :cond_4

    invoke-static {p0, p2}, Lcom/project7/localmanager/LocalResourceEngine;->ownsHero([BI)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    const-string v1, "q7EconomyCommit"

    invoke-static {p0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 244
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->stringValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    const-string v2, "cf"

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->economyCommit:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    invoke-static {p0, v2}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object p0

    .line 247
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 249
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 250
    if-eqz p0, :cond_1

    .line 251
    return-object p0

    .line 250
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid pending fatigue"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 254
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

    .line 255
    :cond_3
    invoke-static {v0, v2}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 242
    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
