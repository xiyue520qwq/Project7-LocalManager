.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:Lcom/project7/localmanager/LocalActivityStore;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/project7/localmanager/LocalCommerceCatalog;

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;Lcom/project7/localmanager/LocalActivityStore;Ljava/lang/String;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;->f$1:Lcom/project7/localmanager/LocalActivityStore;

    iput-object p3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;->f$3:Lcom/project7/localmanager/LocalCommerceCatalog;

    iput-object p5, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;->f$1:Lcom/project7/localmanager/LocalActivityStore;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;->f$3:Lcom/project7/localmanager/LocalCommerceCatalog;

    iget-object v4, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Runnable;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/project7/localmanager/MainActivity;->lambda$createActivityPage$31$MainActivity(Lcom/project7/localmanager/LocalActivityStore;Ljava/lang/String;Lcom/project7/localmanager/LocalCommerceCatalog;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
