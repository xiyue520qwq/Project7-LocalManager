.class public final synthetic Lcom/project7/localmanager/LocalStoryDiscussion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/project7/localmanager/LocalStoryDiscussion$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/project7/localmanager/LocalStoryDiscussion$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {v0, p1, p2}, Lcom/project7/localmanager/LocalStoryDiscussion;->lambda$apply$0(Z[B[B)I

    move-result p1

    return p1
.end method
