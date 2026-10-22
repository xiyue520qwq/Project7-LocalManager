.class final Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;
.super Ljava/lang/Object;
.source "LocalLevelAdmin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalLevelAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HeroGrant"
.end annotation


# instance fields
.field final added:I

.field final profile:[B

.field final total:I


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;->profile:[B

    iput p2, p0, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;->added:I

    iput p3, p0, Lcom/project7/localmanager/LocalLevelAdmin$HeroGrant;->total:I

    .line 10
    return-void
.end method
