.class Lcom/project7/localmanager/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/project7/localmanager/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/project7/localmanager/MainActivity;

.field final synthetic val$levelValueLabel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/project7/localmanager/MainActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$3;->this$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$3;->val$levelValueLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 399
    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p4, 0x2

    if-ne p3, p4, :cond_0

    move p4, p2

    goto :goto_0

    :cond_0
    move p4, p1

    .line 400
    :goto_0
    iget-object p5, p0, Lcom/project7/localmanager/MainActivity$3;->val$levelValueLabel:Landroid/widget/TextView;

    const/16 v0, 0x8

    if-eqz p4, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object p5, p0, Lcom/project7/localmanager/MainActivity$3;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {p5}, Lcom/project7/localmanager/MainActivity;->access$800(Lcom/project7/localmanager/MainActivity;)Landroid/widget/EditText;

    move-result-object p5

    if-eqz p4, :cond_2

    move p1, v0

    :cond_2
    invoke-virtual {p5, p1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 402
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity$3;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {p1}, Lcom/project7/localmanager/MainActivity;->access$800(Lcom/project7/localmanager/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    xor-int/2addr p4, p2

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 403
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity$3;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {p1}, Lcom/project7/localmanager/MainActivity;->access$800(Lcom/project7/localmanager/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    if-ne p3, p2, :cond_3

    const-string p4, "\u76ee\u6807\u7b49\u7ea7\uff081-110\uff09"

    goto :goto_2

    :cond_3
    const-string p4, "\u589e\u52a0\u7ecf\u9a8c\uff081-1000000000\uff09"

    :goto_2
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 404
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity$3;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {p1}, Lcom/project7/localmanager/MainActivity;->access$800(Lcom/project7/localmanager/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p4, p0, Lcom/project7/localmanager/MainActivity$3;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {p4}, Lcom/project7/localmanager/MainActivity;->access$900(Lcom/project7/localmanager/MainActivity;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_5

    if-ne p3, p2, :cond_4

    const-string p2, "30"

    goto :goto_3

    :cond_4
    const-string p2, "1000"

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/project7/localmanager/MainActivity$3;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {p2}, Lcom/project7/localmanager/MainActivity;->access$900(Lcom/project7/localmanager/MainActivity;)Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity$3;->this$0:Lcom/project7/localmanager/MainActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/project7/localmanager/MainActivity;->access$902(Lcom/project7/localmanager/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 407
    return-void
.end method
