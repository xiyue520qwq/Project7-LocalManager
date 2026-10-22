.class Lcom/project7/localmanager/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/project7/localmanager/MainActivity;


# direct methods
.method constructor <init>(Lcom/project7/localmanager/MainActivity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 125
    invoke-static {}, Lcom/project7/localmanager/GatewayService;->isRunning()Z

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v1}, Lcom/project7/localmanager/MainActivity;->access$000(Lcom/project7/localmanager/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 127
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v1}, Lcom/project7/localmanager/MainActivity;->access$100(Lcom/project7/localmanager/MainActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    if-eqz v0, :cond_0

    const-string v1, "\u672c\u5730\u7f51\u5173\u8fd0\u884c\u4e2d"

    goto :goto_0

    :cond_0
    const-string v1, "\u672c\u5730\u7f51\u5173\u5df2\u505c\u6b62"

    .line 129
    :goto_0
    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v2}, Lcom/project7/localmanager/MainActivity;->access$200(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 130
    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v2}, Lcom/project7/localmanager/MainActivity;->access$200(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v1}, Lcom/project7/localmanager/MainActivity;->access$200(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/project7/localmanager/LocalUiStyle;->INK:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v1}, Lcom/project7/localmanager/MainActivity;->access$300(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "\u5728\u7ebf"

    goto :goto_1

    :cond_1
    const-string v2, "\u5f85\u542f\u52a8"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v1}, Lcom/project7/localmanager/MainActivity;->access$300(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_2

    sget v2, Lcom/project7/localmanager/LocalUiStyle;->ACCENT:I

    goto :goto_2

    :cond_2
    sget v2, Lcom/project7/localmanager/LocalUiStyle;->MUTED:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v1}, Lcom/project7/localmanager/MainActivity;->access$300(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_3

    sget v2, Lcom/project7/localmanager/LocalUiStyle;->SOFT_ACCENT:I

    goto :goto_3

    .line 135
    :cond_3
    sget v2, Lcom/project7/localmanager/LocalUiStyle;->BACKGROUND:I

    :goto_3
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    sget v0, Lcom/project7/localmanager/LocalUiStyle;->SOFT_ACCENT:I

    goto :goto_4

    :cond_4
    sget v0, Lcom/project7/localmanager/LocalUiStyle;->BACKGROUND:I

    :goto_4
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v5}, Lcom/project7/localmanager/MainActivity;->access$300(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;

    move-result-object v5

    .line 134
    invoke-static {v2, v3, v0, v4, v5}, Lcom/project7/localmanager/LocalUiStyle;->surface(IIIILandroid/view/View;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_5
    invoke-static {}, Lcom/project7/localmanager/GatewayService;->statusText()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v1}, Lcom/project7/localmanager/MainActivity;->access$400(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v1}, Lcom/project7/localmanager/MainActivity;->access$400(Lcom/project7/localmanager/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_6
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v0}, Lcom/project7/localmanager/MainActivity;->access$500(Lcom/project7/localmanager/MainActivity;)V

    .line 140
    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$1;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {v0}, Lcom/project7/localmanager/MainActivity;->access$600(Lcom/project7/localmanager/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    return-void
.end method
