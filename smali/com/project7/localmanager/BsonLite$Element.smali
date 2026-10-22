.class final Lcom/project7/localmanager/BsonLite$Element;
.super Ljava/lang/Object;
.source "BsonLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/BsonLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Element"
.end annotation


# instance fields
.field final type:I

.field final value:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    iput p1, p0, Lcom/project7/localmanager/BsonLite$Element;->type:I

    .line 1554
    iput-object p2, p0, Lcom/project7/localmanager/BsonLite$Element;->value:[B

    .line 1555
    return-void
.end method
