.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Ljava/util/Calendar;

.field public final synthetic f$3:Lcom/project7/localmanager/LocalActivityStore;

.field public final synthetic f$4:Lcom/project7/localmanager/LocalCommerceCatalog;

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/EditText;Ljava/util/Calendar;Lcom/project7/localmanager/LocalActivityStore;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$2:Ljava/util/Calendar;

    iput-object p4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$3:Lcom/project7/localmanager/LocalActivityStore;

    iput-object p5, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$4:Lcom/project7/localmanager/LocalCommerceCatalog;

    iput-object p6, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$2:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$3:Lcom/project7/localmanager/LocalActivityStore;

    iget-object v4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$4:Lcom/project7/localmanager/LocalCommerceCatalog;

    iget-object v5, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda30;->f$5:Ljava/lang/Runnable;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/project7/localmanager/MainActivity;->lambda$createActivityPage$30$MainActivity(Landroid/widget/EditText;Ljava/util/Calendar;Lcom/project7/localmanager/LocalActivityStore;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
