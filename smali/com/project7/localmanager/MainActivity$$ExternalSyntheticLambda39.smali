.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/project7/localmanager/MainActivity$AccountTask;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda39;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda39;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda39;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda39;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/project7/localmanager/MainActivity;->lambda$deleteSelectedAccounts$45$MainActivity(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
