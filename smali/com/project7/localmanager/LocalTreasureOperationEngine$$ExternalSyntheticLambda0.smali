.class public final synthetic Lcom/project7/localmanager/LocalTreasureOperationEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/LocalFeatureCatalog;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/LocalFeatureCatalog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/LocalTreasureOperationEngine$$ExternalSyntheticLambda0;->f$0:Lcom/project7/localmanager/LocalFeatureCatalog;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/project7/localmanager/LocalTreasureOperationEngine$$ExternalSyntheticLambda0;->f$0:Lcom/project7/localmanager/LocalFeatureCatalog;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/project7/localmanager/LocalTreasureOperationEngine;->lambda$preview$1(Lcom/project7/localmanager/LocalFeatureCatalog;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
