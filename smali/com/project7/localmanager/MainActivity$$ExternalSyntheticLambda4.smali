.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/Button;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda4;->f$5:Ljava/util/List;

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/project7/localmanager/MainActivity;->lambda$confirmSendMail$51$MainActivity(Landroid/widget/Button;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
