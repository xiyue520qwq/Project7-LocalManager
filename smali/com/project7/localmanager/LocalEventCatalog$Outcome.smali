.class final Lcom/project7/localmanager/LocalEventCatalog$Outcome;
.super Ljava/lang/Object;
.source "LocalEventCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalEventCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Outcome"
.end annotation


# instance fields
.field final failure:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final scene:I

.field final success:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput p1, p0, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->scene:I

    .line 382
    iput-object p2, p0, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->success:Ljava/util/Set;

    .line 383
    iput-object p3, p0, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->failure:Ljava/util/Set;

    .line 384
    return-void
.end method
