.class final Lcom/project7/localmanager/LocalStoryConditionPass;
.super Ljava/lang/Object;
.source "LocalStoryConditionPass.java"


# instance fields
.field evaluations:I

.field final memoize:Z

.field final profile:[B

.field final progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

.field requests:I

.field private final results:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/project7/localmanager/LocalStoryConditions$Evaluation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([BLcom/project7/localmanager/LocalTutorialStore$Progress;Z)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->results:Ljava/util/Map;

    .line 15
    iput-object p1, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->profile:[B

    iput-object p2, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-boolean p3, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->memoize:Z

    .line 16
    return-void
.end method

.method static synthetic lambda$evaluate$0(Ljava/lang/Integer;)Ljava/util/Map;
    .locals 0

    .line 23
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method


# virtual methods
.method evaluate(ILjava/lang/String;)Lcom/project7/localmanager/LocalStoryConditions$Evaluation;
    .locals 3

    .line 18
    iget v0, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->requests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->requests:I

    .line 19
    iget-object v0, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->results:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 20
    iget-boolean v1, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->memoize:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    return-object p1

    .line 21
    :cond_0
    iget v0, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->evaluations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->evaluations:I

    .line 22
    iget-object v0, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->profile:[B

    iget-object v1, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/project7/localmanager/LocalStoryConditions;->evaluate(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalStoryConditions$Context;)Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    move-result-object v0

    .line 23
    iget-boolean v1, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->memoize:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/project7/localmanager/LocalStoryConditionPass;->results:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v2, Lcom/project7/localmanager/LocalStoryConditionPass$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalStoryConditionPass$$ExternalSyntheticLambda0;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_1
    return-object v0
.end method
