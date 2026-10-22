.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>([ZLandroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda7;->f$0:[Z

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda7;->f$1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda7;->f$0:[Z

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda7;->f$1:Landroid/widget/Button;

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/MainActivity;->lambda$confirmAdjustLevel$55([ZLandroid/widget/Button;Landroid/content/DialogInterface;)V

    return-void
.end method
