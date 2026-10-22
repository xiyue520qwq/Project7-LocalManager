.class public final synthetic Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/project7/localmanager/LocalEquipmentEngine$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    check-cast p1, [B

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalEquipmentEngine;->lambda$removeOwned$3(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method
