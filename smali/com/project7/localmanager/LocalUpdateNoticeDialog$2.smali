.class Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;
.super Landroid/webkit/WebViewClient;
.source "LocalUpdateNoticeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/project7/localmanager/LocalUpdateNoticeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;


# direct methods
.method constructor <init>(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 102
    iget-object p2, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {p2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$100(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {p2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$400(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    const-wide/16 v0, 0x1

    new-instance p2, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;

    invoke-direct {p2, p0, p1}, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2$1;-><init>(Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0, v1, p2}, Landroid/webkit/WebView;->postVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V

    .line 113
    return-void

    .line 102
    :cond_1
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$1100(Lcom/project7/localmanager/LocalUpdateNoticeDialog;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$2;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {p1, p2}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$1100(Lcom/project7/localmanager/LocalUpdateNoticeDialog;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
