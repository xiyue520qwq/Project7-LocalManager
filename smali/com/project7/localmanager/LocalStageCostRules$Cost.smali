.class final Lcom/project7/localmanager/LocalStageCostRules$Cost;
.super Ljava/lang/Object;
.source "LocalStageCostRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalStageCostRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cost"
.end annotation


# instance fields
.field final actions:I

.field final fatigue:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/project7/localmanager/LocalStageCostRules$Cost;->actions:I

    iput p2, p0, Lcom/project7/localmanager/LocalStageCostRules$Cost;->fatigue:I

    return-void
.end method
