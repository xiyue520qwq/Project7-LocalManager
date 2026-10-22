.class public final synthetic Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/project7/localmanager/MainActivity$AccountTask;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/MainActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/MainActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda40;->f$0:Lcom/project7/localmanager/MainActivity;

    iput-object p2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda40;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda40;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda40;->f$0:Lcom/project7/localmanager/MainActivity;

    iget-object v1, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda40;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/project7/localmanager/MainActivity$$ExternalSyntheticLambda40;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/project7/localmanager/MainActivity;->lambda$createAccounts$43$MainActivity(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
