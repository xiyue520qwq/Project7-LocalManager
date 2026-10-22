.class final Lcom/project7/localmanager/LocalRefreshFix;
.super Ljava/lang/Object;
.source "LocalRefreshFix.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method static ensure([B)[B
    .locals 5

    .line 10
    const-string v0, "injure_rate"

    const-string v1, "ta"

    if-nez p0, :cond_0

    .line 11
    return-object p0

    .line 13
    :cond_0
    :try_start_0
    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    .line 17
    :cond_1
    invoke-static {v2, v0}, Lcom/project7/localmanager/BsonLite;->numericValue([BLjava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    .line 18
    if-eqz v3, :cond_2

    .line 19
    return-object p0

    .line 21
    :cond_2
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    invoke-static {v2, v0, v3, v4}, Lcom/project7/localmanager/BsonLite;->withProfileDouble([BLjava/lang/String;D)[B

    move-result-object v0

    .line 22
    invoke-static {p0, v1, v0}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    return-object p0
.end method
