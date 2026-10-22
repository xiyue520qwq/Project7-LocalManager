.class Lcom/project7/localmanager/LocalUpdateNoticeDialog$1;
.super Ljava/lang/Object;
.source "LocalUpdateNoticeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalUpdateNoticeDialog;
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

    .line 36
    iput-object p1, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$1;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$1;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$000(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)V

    .line 39
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$1;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$100(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$1;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$200(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$1;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$300(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$1;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$400(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$1;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$600(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Lcom/project7/localmanager/LocalNoticeReadGate;

    move-result-object v0

    invoke-static {}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$500()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/project7/localmanager/LocalNoticeReadGate;->canConfirm(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/project7/localmanager/LocalUpdateNoticeDialog$1;->this$0:Lcom/project7/localmanager/LocalUpdateNoticeDialog;

    invoke-static {v0}, Lcom/project7/localmanager/LocalUpdateNoticeDialog;->access$700(Lcom/project7/localmanager/LocalUpdateNoticeDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    :cond_0
    return-void
.end method
