.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;[ZLjava/util/List;ZZILjava/lang/String;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$1:[Z

    iput-object p3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    iput-boolean p4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$3:Z

    iput-boolean p5, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$4:Z

    iput p6, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$5:I

    iput-object p7, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$7:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$1:[Z

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    iget-boolean v3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$3:Z

    iget-boolean v4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$4:Z

    iget v5, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$5:I

    iget-object v6, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda6;->f$7:Landroid/widget/Button;

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/project7/localmanager/MainActivity;->lambda$confirmAdjustLevel$54$MainActivity([ZLjava/util/List;ZZILjava/lang/String;Landroid/widget/Button;Landroid/content/DialogInterface;I)V

    return-void
.end method
