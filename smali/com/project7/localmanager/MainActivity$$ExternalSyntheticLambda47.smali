.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:Lcom/project7/localmanager/MainActivity$AccountTask;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;Lcom/project7/localmanager/MainActivity$AccountTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda47;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda47;->f$1:Lcom/project7/localmanager/MainActivity$AccountTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda47;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda47;->f$1:Lcom/project7/localmanager/MainActivity$AccountTask;

    invoke-virtual {v0, v1}, Lcom/project7/localmanager/MainActivity;->lambda$runAccountTask$58$MainActivity(Lcom/project7/localmanager/MainActivity$AccountTask;)V

    return-void
.end method
