.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/Button;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda45;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda45;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda45;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda45;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda45;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda45;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda45;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda45;->f$3:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/project7/localmanager/MainActivity;->lambda$confirmSendMail$49$MainActivity(Landroid/widget/Button;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
