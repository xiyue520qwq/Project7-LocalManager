.class final Lcom/project7/localmanager/BsonLite$ArrayValue;
.super Ljava/lang/Object;
.source "BsonLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/BsonLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayValue"
.end annotation


# instance fields
.field final bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/BsonLite$ArrayValue;->bytes:[B

    return-void
.end method
