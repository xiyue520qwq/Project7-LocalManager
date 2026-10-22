.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:Lcom/project7/localmanager/LocalActivityStore;

.field public final synthetic f$2:Lcom/project7/localmanager/LocalCommerceCatalog;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;Lcom/project7/localmanager/LocalActivityStore;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda31;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda31;->f$1:Lcom/project7/localmanager/LocalActivityStore;

    iput-object p3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda31;->f$2:Lcom/project7/localmanager/LocalCommerceCatalog;

    iput-object p4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda31;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda31;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda31;->f$1:Lcom/project7/localmanager/LocalActivityStore;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda31;->f$2:Lcom/project7/localmanager/LocalCommerceCatalog;

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda31;->f$3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/project7/localmanager/MainActivity;->lambda$createActivityPage$32$MainActivity(Lcom/project7/localmanager/LocalActivityStore;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
