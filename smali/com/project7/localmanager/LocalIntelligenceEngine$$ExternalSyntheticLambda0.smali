.class public final synthetic Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/project7/localmanager/LocalTutorialStore$Progress;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/project7/localmanager/LocalTutorialStore$Progress;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda0;->f$0:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-object p2, p0, Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda0;->f$1:[B

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda0;->f$0:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, p0, Lcom/project7/localmanager/LocalIntelligenceEngine$$ExternalSyntheticLambda0;->f$1:[B

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/LocalIntelligenceEngine;->lambda$refresh$1(Lcom/project7/localmanager/LocalTutorialStore$Progress;[BLjava/lang/Integer;)Z

    move-result p1

    return p1
.end method
