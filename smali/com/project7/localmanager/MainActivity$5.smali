.class Lcom/project7/localmanager/MainActivity$5;
.super Landroid/widget/ArrayAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/project7/localmanager/MainActivity;->showSearchList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/function/IntConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/project7/localmanager/MainActivity;


# direct methods
.method constructor <init>(Lcom/project7/localmanager/MainActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$5;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 730
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 731
    sget p2, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 732
    iget-object p2, p0, Lcom/project7/localmanager/MainActivity$5;->this$0:Lcom/project7/localmanager/MainActivity;

    const/16 p3, 0x38

    invoke-static {p2, p3}, Lcom/project7/localmanager/MainActivity;->access$1100(Lcom/project7/localmanager/MainActivity;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinHeight(I)V

    iget-object p2, p0, Lcom/project7/localmanager/MainActivity$5;->this$0:Lcom/project7/localmanager/MainActivity;

    const/16 p3, 0x8

    invoke-static {p2, p3}, Lcom/project7/localmanager/MainActivity;->access$1100(Lcom/project7/localmanager/MainActivity;I)I

    move-result p2

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$5;->this$0:Lcom/project7/localmanager/MainActivity;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/project7/localmanager/MainActivity;->access$1100(Lcom/project7/localmanager/MainActivity;I)I

    move-result v0

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$5;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v2, p3}, Lcom/project7/localmanager/MainActivity;->access$1100(Lcom/project7/localmanager/MainActivity;I)I

    move-result p3

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$5;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v2, v1}, Lcom/project7/localmanager/MainActivity;->access$1100(Lcom/project7/localmanager/MainActivity;I)I

    move-result v1

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 733
    return-object p1
.end method
