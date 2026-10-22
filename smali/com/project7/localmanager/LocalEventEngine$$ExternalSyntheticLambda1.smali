.class public final synthetic Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/LocalEventEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/LocalEventEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda1;->f$0:Lcom/project7/localmanager/LocalEventEngine;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda1;->f$0:Lcom/project7/localmanager/LocalEventEngine;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventEngine;->lambda$privateReplyBlocker$1$LocalEventEngine(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
