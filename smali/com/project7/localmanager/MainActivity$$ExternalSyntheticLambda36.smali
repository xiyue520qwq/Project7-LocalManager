.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/app/AlertDialog;Ljava/util/function/IntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda36;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda36;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda36;->f$2:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda36;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda36;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda36;->f$2:Ljava/util/function/IntConsumer;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/project7/localmanager/MainActivity;->lambda$showSearchList$35(Ljava/util/List;Landroid/app/AlertDialog;Ljava/util/function/IntConsumer;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
