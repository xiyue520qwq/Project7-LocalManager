.class final Lcom/project7/localmanager/BsonLite$UuidValue;
.super Ljava/lang/Object;
.source "BsonLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/BsonLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UuidValue"
.end annotation


# instance fields
.field final bytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    const/16 v0, 0xc

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/project7/localmanager/BsonLite$UuidValue;->bytes:[B

    .line 918
    if-eqz p1, :cond_1

    const-string v1, "[0-9a-fA-F]{24}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/project7/localmanager/BsonLite$UuidValue;->bytes:[B

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 920
    :cond_0
    return-void

    .line 918
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid UUID"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
