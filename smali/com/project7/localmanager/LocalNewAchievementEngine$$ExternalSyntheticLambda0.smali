.class public final synthetic Lcom/project7/localmanager/LocalNewAchievementEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/project7/localmanager/LocalNewAchievementEngine$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/project7/localmanager/LocalNewAchievementEngine$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/project7/localmanager/LocalNewAchievementEngine;->lambda$refresh$0(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
