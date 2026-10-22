.class final Lcom/project7/localmanager/LocalArtifactFix;
.super Ljava/lang/Object;
.source "LocalArtifactFix.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fix([B)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "oa"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ar"

    invoke-static {p0, v1}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    :cond_0
    const-string v2, "o"

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    const-string v2, "il"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    const-string v2, "aao"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Lcom/project7/localmanager/BsonLite;->withProfileInt([BLjava/lang/String;I)[B

    move-result-object v1

    const-string v2, "oa"

    invoke-static {v1, v2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/project7/localmanager/BsonLite;->EMPTY_DOCUMENT:[B

    const-string v3, "oa"

    invoke-static {v1, v3, v2}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object v1

    :cond_1
    const-string v2, "ar"

    invoke-static {p0, v2, v1}, Lcom/project7/localmanager/BsonLite;->withProfileDocument([BLjava/lang/String;[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :catch_0
    move-exception v1

    return-object p0
.end method
