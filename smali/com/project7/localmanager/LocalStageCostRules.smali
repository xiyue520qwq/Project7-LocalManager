.class final Lcom/project7/localmanager/LocalStageCostRules;
.super Ljava/lang/Object;
.source "LocalStageCostRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalStageCostRules$Cost;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculate(IIIIII)Lcom/project7/localmanager/LocalStageCostRules$Cost;
    .locals 0

    .line 12
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    if-ltz p5, :cond_1

    .line 14
    if-ge p4, p3, :cond_0

    move p1, p2

    .line 15
    :cond_0
    new-instance p2, Lcom/project7/localmanager/LocalStageCostRules$Cost;

    const/4 p3, 0x0

    sub-int/2addr p1, p5

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p2, p0, p1}, Lcom/project7/localmanager/LocalStageCostRules$Cost;-><init>(II)V

    return-object p2

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid original stage cost"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static normal([II)Lcom/project7/localmanager/LocalStageCostRules$Cost;
    .locals 7

    .line 19
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 20
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    const/4 v0, 0x2

    aget v3, p0, v0

    const/4 v0, 0x3

    aget v4, p0, v0

    const/4 v6, 0x0

    move v5, p1

    invoke-static/range {v1 .. v6}, Lcom/project7/localmanager/LocalStageCostRules;->calculate(IIIIII)Lcom/project7/localmanager/LocalStageCostRules$Cost;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "missing original stage cost"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static query([BII)Lcom/project7/localmanager/LocalStageCostRules$Cost;
    .locals 9

    .line 24
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 25
    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Integer;

    .line 26
    const-string v3, "va"

    const-string v4, "fatigue"

    const-string v5, "overFatigue"

    const-string v6, "force_recommend"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    .line 27
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_3

    .line 28
    aget-object v6, v3, v5

    invoke-static {p0, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 29
    aget-object v6, v2, v5

    if-nez v6, :cond_2

    .line 30
    invoke-static {p0}, Lcom/project7/localmanager/BsonLite;->keys([B)Ljava/util/List;

    move-result-object v6

    aget-object v7, v3, v5

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v0

    .line 31
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 27
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    :cond_3
    :try_start_0
    aget-object p0, v2, v4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 p0, 0x1

    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 p0, 0x2

    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 p0, 0x3

    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v7, p1

    move v8, p2

    invoke-static/range {v3 .. v8}, Lcom/project7/localmanager/LocalStageCostRules;->calculate(IIIIII)Lcom/project7/localmanager/LocalStageCostRules$Cost;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 35
    :catch_0
    move-exception p0

    return-object v0
.end method
