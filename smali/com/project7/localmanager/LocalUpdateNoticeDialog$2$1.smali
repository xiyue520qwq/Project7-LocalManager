.class Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;
.super Landroid/webkit/WebView$VisualStateCallback;
.source "LocalUpdateNoticeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;Landroid/webkit/WebView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;->this$1:Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;

    iput-object p2, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebView$VisualStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(J)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;->this$1:Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;

    iget-object p1, p1, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {p1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$100(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;->this$1:Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;

    iget-object p1, p1, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {p1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$400(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;->this$1:Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;

    iget-object p1, p1, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$402(Lcom/project7/localmanager/LocalUpdateNoticeDialog;Z)Z

    .line 107
    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;->this$1:Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;

    iget-object p1, p1, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {p1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$700(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;->this$1:Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;

    iget-object p2, p2, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {p2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$800(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;->val$view:Landroid/webkit/WebView;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;->this$1:Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;

    iget-object v0, v0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$900(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 109
    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;->this$1:Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;

    iget-object p1, p1, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {p1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$1000(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)V

    .line 111
    :cond_0
    return-void
.end method
