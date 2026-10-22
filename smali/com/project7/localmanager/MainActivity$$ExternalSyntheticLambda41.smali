.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda41;->f$0:Landroid/view/View;

    iput p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda41;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda41;->f$0:Landroid/view/View;

    iget v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda41;->f$1:I

    invoke-static {v0, v1}, Lcom/project7/localmanager/MainActivity;->lambda$restoreDraft$42(Landroid/view/View;I)V

    return-void
.end method
