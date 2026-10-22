.class Lcom/project7/localmanager/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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


# direct methods
.method constructor <init>(Lcom/project7/localmanager/MainActivity;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$2;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 346
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 344
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 345
    iget-object p1, p0, Lcom/project7/localmanager/MainActivity$2;->this$0:Lcom/project7/localmanager/MainActivity;

    invoke-static {p1}, Lcom/project7/localmanager/MainActivity;->access$700(Lcom/project7/localmanager/MainActivity;)V

    return-void
.end method
