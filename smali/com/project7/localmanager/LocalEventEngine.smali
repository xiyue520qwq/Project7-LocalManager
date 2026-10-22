.class final Lcom/project7/localmanager/LocalEventEngine;
.super Ljava/lang/Object;
.source "LocalEventEngine.java"


# instance fields
.field private areaClick:Ljava/lang/String;

.field private final catalog:Lcom/project7/localmanager/LocalEventCatalog;

.field private final checkingMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private clientOperation:I

.field private conditionPass:Lcom/project7/localmanager/LocalStoryConditionPass;

.field private date:I

.field private eventBaseline:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lastConditionEvaluations:I

.field lastConditionRequests:I

.field lifecycleScans:J

.field private final memoizeConditions:Z

.field private final newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

.field private profile:[B

.field private final progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

.field private final starterEvent:I

.field private week:I


# direct methods
.method constructor <init>(Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalNewbeeCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)V
    .locals 6

    .line 34
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/LocalEventEngine;-><init>(Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalNewbeeCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)V

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalNewbeeCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)V
    .locals 7

    .line 44
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/project7/localmanager/LocalEventEngine;-><init>(Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalNewbeeCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I[BZ)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalNewbeeCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I[BZ)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->eventBaseline:Ljava/util/Set;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->checkingMessages:Ljava/util/Set;

    .line 21
    const-string v0, "0:0"

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->areaClick:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    .line 50
    iput-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    .line 51
    iput-object p3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    .line 52
    iput p4, p0, Lcom/project7/localmanager/LocalEventEngine;->starterEvent:I

    .line 53
    iput-object p5, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    .line 54
    iput-boolean p6, p0, Lcom/project7/localmanager/LocalEventEngine;->memoizeConditions:Z

    .line 55
    new-instance p2, Ljava/util/HashSet;

    const-string p4, "q7WeekEventBaseline"

    invoke-static {p5, p4}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->eventBaseline:Ljava/util/Set;

    .line 56
    const-string p2, "weeknum"

    invoke-static {p5, p2}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p2

    .line 57
    const-string p4, "w"

    invoke-static {p2, p4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    .line 58
    const-string p6, "d"

    invoke-static {p2, p6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 59
    const/4 p6, 0x0

    if-nez p4, :cond_0

    move p4, p6

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    :goto_0
    iput p4, p0, Lcom/project7/localmanager/LocalEventEngine;->week:I

    .line 60
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p6

    :goto_1
    iput p6, p0, Lcom/project7/localmanager/LocalEventEngine;->date:I

    .line 61
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->repairConflictingFinale()V

    .line 62
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreBattleConditions()V

    .line 63
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restorePendingNewbees()V

    .line 64
    iget-object p2, p3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    const-string p4, "battle"

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 65
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_2

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p4, p6}, Lcom/project7/localmanager/LocalEventEngine;->trace(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    .line 66
    :cond_2
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreMissionOutcomes()V

    .line 67
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreExternalGuideEvents()V

    .line 68
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restorePrivateReplies()V

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    iget-object p4, p3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 70
    invoke-static {p5, p1, p3, p4}, Lcom/project7/localmanager/LocalPuzzleEngine;->exitOutcome([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 71
    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p4

    const-string p6, "ui"

    invoke-virtual {p0, p6, p4}, Lcom/project7/localmanager/LocalEventEngine;->trace(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    .line 70
    :cond_3
    goto :goto_2

    .line 72
    :cond_4
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 73
    return-void
.end method

.method private beginNewbee(ILjava/lang/String;)Z
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalNewbeeCatalog;->get(I)Lcom/project7/localmanager/LocalNewbeeCatalog$Step;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->multiTrigger:Z

    if-eqz v1, :cond_2

    .line 463
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/project7/localmanager/LocalEventEngine;->requirementsMatch(Lcom/project7/localmanager/LocalNewbeeCatalog$Step;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 466
    :cond_1
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 464
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private complete(IZ)V
    .locals 8

    .line 524
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v0, v1, v2, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->exitOutcome([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 526
    :goto_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 528
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 529
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 530
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    .line 531
    :cond_2
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 532
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 531
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :cond_3
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventDays:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/project7/localmanager/LocalEventEngine;->week:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/project7/localmanager/LocalEventEngine;->date:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const/16 v2, 0x417

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    .line 536
    :cond_4
    if-eqz p2, :cond_9

    .line 537
    if-nez v0, :cond_5

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {p2, p1}, Lcom/project7/localmanager/LocalEventCatalog;->successors(I)Ljava/util/Set;

    move-result-object p2

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 538
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 539
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 540
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_7
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_8
    goto :goto_2

    .line 545
    :cond_9
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {p2, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object p1

    .line 546
    if-eqz p1, :cond_a

    iget p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    if-eqz p2, :cond_a

    .line 547
    iget p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->beginNewbee(I)Z

    .line 549
    :cond_a
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreMissionOutcomes()V

    .line 550
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 551
    return-void
.end method

.method private conditionMatches(Lcom/project7/localmanager/LocalEventCatalog$Event;Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalEventCatalog$Event;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 507
    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 508
    return p3

    .line 510
    :cond_0
    iget p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->id:I

    const/16 v0, 0x1f8e

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-static {p2, v0}, Lcom/project7/localmanager/LocalDailyPureEngine;->selected([BLcom/project7/localmanager/LocalEventCatalog;)[I

    move-result-object p2

    if-nez p2, :cond_1

    return p3

    .line 511
    :cond_1
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object p2, p2, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    iget v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget v2, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->id:I

    .line 512
    invoke-static {p2, v0, v1, v2}, Lcom/project7/localmanager/LocalPuzzleEngine;->exitOutcome([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_2

    return p3

    .line 513
    :cond_2
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object p2, p2, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    iget v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 514
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    aget v1, p2, p3

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    .line 515
    const-string v2, "money"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    aget p2, p2, v0

    if-ge v1, p2, :cond_3

    return p3

    .line 516
    :cond_3
    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 517
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 518
    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    .line 519
    :cond_4
    goto :goto_0

    .line 518
    :cond_5
    :goto_1
    return p3

    .line 520
    :cond_6
    return v0
.end method

.method private consumeStoryScene(II)Z
    .locals 3

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/project7/localmanager/LocalEventEngine;->pendingStoryScene(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missionPendingScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 211
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 212
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 215
    :cond_1
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    const-string v0, "missionPending"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 217
    return v1
.end method

.method private containsEmergency(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 854
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 855
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/project7/localmanager/LocalEventCatalog;->isEmergency(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    const/4 p1, 0x1

    return p1

    .line 858
    :cond_0
    goto :goto_0

    .line 859
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private dynamicTriggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalEventCatalog$Trigger;",
            "II",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 807
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/LocalEventEngine;->dynamicTriggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dynamicTriggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalEventCatalog$Trigger;",
            "II",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/project7/localmanager/LocalPatrolCatalog;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 812
    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->areaClicks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->areaClicks:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->areaClick:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "area-focus="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->areaClick:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 814
    :cond_0
    iget v0, p0, Lcom/project7/localmanager/LocalEventEngine;->date:I

    iget-object v1, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->date:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt v0, v1, :cond_9

    iget v0, p0, Lcom/project7/localmanager/LocalEventEngine;->date:I

    iget-object v1, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->date:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    if-gt v0, v1, :cond_9

    iget v0, p0, Lcom/project7/localmanager/LocalEventEngine;->week:I

    iget-object v1, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->week:[I

    aget v1, v1, v2

    if-lt v0, v1, :cond_9

    iget v0, p0, Lcom/project7/localmanager/LocalEventEngine;->week:I

    iget-object v1, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->week:[I

    aget v1, v1, v3

    if-le v0, v1, :cond_1

    goto/16 :goto_2

    .line 817
    :cond_1
    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->predicates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 818
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 819
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/project7/localmanager/LocalStoryConditions;->integers(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 820
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "patrol-heroes="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 823
    :cond_4
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->conditionPass:Lcom/project7/localmanager/LocalStoryConditionPass;

    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    .line 824
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/project7/localmanager/LocalStoryConditionPass;->evaluate(ILjava/lang/String;)Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    move-result-object v0

    goto :goto_1

    .line 825
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    .line 826
    if-eqz p2, :cond_6

    new-instance v1, Lcom/project7/localmanager/LocalStoryConditions$Context;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/project7/localmanager/LocalStoryConditions$Context;-><init>(IILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)V

    .line 824
    :cond_6
    invoke-static {v2, v0, v3, v4, v1}, Lcom/project7/localmanager/LocalStoryConditions;->evaluate(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalStoryConditions$Context;)Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    move-result-object v0

    .line 827
    :goto_1
    iget-boolean v1, v0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;->satisfied:Z

    if-nez v1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/project7/localmanager/LocalStoryConditions$Evaluation;->reason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 828
    :cond_7
    goto/16 :goto_0

    .line 829
    :cond_8
    return-object v1

    .line 816
    :cond_9
    :goto_2
    const-string p1, "calendar"

    return-object p1
.end method

.method private isMutex(I)Z
    .locals 7

    .line 722
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->mutex(I)Ljava/util/Set;

    move-result-object v0

    .line 723
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v1, p1}, Lcom/project7/localmanager/LocalEventCatalog;->trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    move-result-object v1

    .line 724
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 725
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v3, v4, v5, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->selectedClear([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    move-result-object p1

    .line 726
    if-eqz p1, :cond_3

    .line 727
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 730
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 731
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v5, v4}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v5

    .line 732
    iget v6, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->incomplete:I

    if-eq v4, v6, :cond_0

    if-eqz v5, :cond_1

    iget-boolean v5, v5, Lcom/project7/localmanager/LocalEventCatalog$Event;->repeatable:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    .line 733
    invoke-virtual {v5, v4}, Lcom/project7/localmanager/LocalEventCatalog;->successors(I)Ljava/util/Set;

    move-result-object v5

    iget v6, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->event:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 734
    :cond_1
    goto :goto_0

    .line 730
    :cond_2
    move-object v2, v3

    .line 736
    :cond_3
    invoke-static {v2, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 737
    invoke-static {p1, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_4

    iget-object p1, v1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->mutex:Ljava/util/Set;

    .line 738
    invoke-static {v2, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget-object v0, v1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->mutex:Ljava/util/Set;

    .line 739
    invoke-static {p1, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 736
    :goto_2
    return p1
.end method

.method static synthetic lambda$privateReplySatisfied$0(ILjava/lang/Integer;)Z
    .locals 0

    .line 387
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pendingStoryScene(II)Z
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "missionPending"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->battles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 202
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missionPendingScene:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 205
    const/4 v2, 0x1

    if-nez p1, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v2, :cond_3

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method private privateMessageReady(I)Z
    .locals 7

    .line 393
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->privateMessageEvents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 394
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->checkingMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 397
    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 398
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->eventBaseline:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 399
    :cond_2
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 408
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->checkingMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 399
    return v1

    .line 400
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v4, v2}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v4

    .line 401
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v5, v2}, Lcom/project7/localmanager/LocalEventCatalog;->trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    move-result-object v5

    .line 402
    if-eqz v4, :cond_5

    iget-boolean v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Event;->autoStart:Z

    if-eqz v6, :cond_5

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    if-nez v6, :cond_5

    iget-object v4, v4, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 403
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v5, :cond_5

    .line 404
    invoke-direct {p0, v5}, Lcom/project7/localmanager/LocalEventEngine;->triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    :cond_4
    nop

    .line 408
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->checkingMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    return v1

    .line 405
    :cond_5
    goto :goto_0

    .line 406
    :cond_6
    nop

    .line 408
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->checkingMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 406
    return v3

    .line 408
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->checkingMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 409
    throw v0
.end method

.method private privateReplyBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Ljava/lang/String;
    .locals 3

    .line 413
    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/project7/localmanager/LocalEventEngine;->privateReplySatisfied(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "private-reply="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 415
    :cond_1
    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAny:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAny:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog;->privateReplyMessages:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAny:Ljava/util/Set;

    .line 416
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda1;-><init>(Lcom/project7/localmanager/LocalEventEngine;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "private-reply-any="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAny:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 418
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private privateReplySatisfied(I)Z
    .locals 9

    .line 365
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->privateReplyMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 366
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 370
    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0xfe6

    if-ne p1, v3, :cond_1

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v4, v5}, Lcom/project7/localmanager/LocalWenziCityEngine;->valid([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    .line 371
    const/16 v5, 0xffa

    invoke-virtual {v4, v5}, Lcom/project7/localmanager/LocalEventCatalog;->successors(I)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    .line 372
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->eventBaseline:Ljava/util/Set;

    .line 373
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 374
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/LocalStoryItemRewardEngine;->completedDay([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)I

    move-result v3

    .line 375
    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    const/4 v4, 0x5

    if-gt v3, v4, :cond_1

    return v1

    .line 377
    :cond_1
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    const-string v4, "sd"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "pm"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    .line 378
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 379
    invoke-direct {p0, v4}, Lcom/project7/localmanager/LocalEventEngine;->privateMessageReady(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 380
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v5

    .line 381
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v6, v6, Lcom/project7/localmanager/LocalEventCatalog;->privateReplies:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 382
    const-string v6, "rp"

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 383
    if-eqz v7, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v1

    .line 386
    :cond_3
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 387
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v1

    .line 388
    :cond_4
    goto :goto_0

    .line 389
    :cond_5
    return v2
.end method

.method private reevaluateLifecycle()V
    .locals 8

    .line 604
    iget-wide v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lifecycleScans:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lifecycleScans:J

    .line 605
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalDailyPureEngine;->restore([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;)V

    .line 606
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->repairFirstBattleEvents()V

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 608
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 609
    :cond_1
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 610
    :cond_2
    goto :goto_0

    .line 611
    :cond_3
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/project7/localmanager/LocalEventEngine;->containsEmergency(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 612
    invoke-direct {p0, v0}, Lcom/project7/localmanager/LocalEventEngine;->containsEmergency(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v1

    .line 613
    :goto_2
    if-eqz v0, :cond_6

    .line 614
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-boolean v1, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    .line 615
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    const-string v1, "emergency"

    iput-object v1, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->status:Ljava/lang/String;

    goto :goto_3

    .line 616
    :cond_6
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-boolean v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-eqz v0, :cond_7

    .line 617
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-boolean v2, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    .line 618
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    const-string v1, "city"

    iput-object v1, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->status:Ljava/lang/String;

    .line 620
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->conditionPass:Lcom/project7/localmanager/LocalStoryConditionPass;

    .line 621
    new-instance v1, Lcom/project7/localmanager/LocalStoryConditionPass;

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-boolean v5, p0, Lcom/project7/localmanager/LocalEventEngine;->memoizeConditions:Z

    invoke-direct {v1, v3, v4, v5}, Lcom/project7/localmanager/LocalStoryConditionPass;-><init>([BLcom/project7/localmanager/LocalTutorialStore$Progress;Z)V

    .line 622
    iput-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->conditionPass:Lcom/project7/localmanager/LocalStoryConditionPass;

    .line 624
    :try_start_0
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v3}, Lcom/project7/localmanager/LocalEventCatalog;->triggers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    .line 628
    iget v5, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    const/16 v6, 0x1e46

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 629
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 630
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 631
    invoke-direct {p0, v4}, Lcom/project7/localmanager/LocalEventEngine;->triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 632
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 638
    :cond_8
    iget v5, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    const/16 v6, 0x3ed

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 639
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 640
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object v7, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    .line 641
    invoke-interface {v5, v7}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 642
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 644
    :cond_9
    iget v5, p0, Lcom/project7/localmanager/LocalEventEngine;->clientOperation:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4, v2, v5, v6}, Lcom/project7/localmanager/LocalEventEngine;->dynamicTriggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 645
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 646
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 648
    :cond_a
    invoke-direct {p0, v4}, Lcom/project7/localmanager/LocalEventEngine;->privateReplyBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 649
    :cond_b
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalEventCatalog$Effect;

    .line 650
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget v7, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-virtual {v6, v7}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v6

    .line 651
    if-eqz v5, :cond_c

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog$Effect;->privateMessages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    if-eqz v6, :cond_c

    iget-boolean v5, v6, Lcom/project7/localmanager/LocalEventCatalog$Event;->autoStart:Z

    if-eqz v5, :cond_c

    iget v5, v6, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    if-nez v5, :cond_c

    iget-object v5, v6, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    .line 652
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0, v4}, Lcom/project7/localmanager/LocalEventEngine;->triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 653
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 654
    :cond_c
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 655
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 656
    invoke-direct {p0, v4}, Lcom/project7/localmanager/LocalEventEngine;->triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 657
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget v4, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :cond_d
    goto/16 :goto_4

    .line 661
    :cond_e
    iput-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->conditionPass:Lcom/project7/localmanager/LocalStoryConditionPass;

    .line 662
    iget v0, v1, Lcom/project7/localmanager/LocalStoryConditionPass;->requests:I

    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lastConditionRequests:I

    iget v0, v1, Lcom/project7/localmanager/LocalStoryConditionPass;->evaluations:I

    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lastConditionEvaluations:I

    .line 663
    nop

    .line 664
    return-void

    .line 661
    :catchall_0
    move-exception v2

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->conditionPass:Lcom/project7/localmanager/LocalStoryConditionPass;

    .line 662
    iget v0, v1, Lcom/project7/localmanager/LocalStoryConditionPass;->requests:I

    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lastConditionRequests:I

    iget v0, v1, Lcom/project7/localmanager/LocalStoryConditionPass;->evaluations:I

    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lastConditionEvaluations:I

    .line 663
    throw v2
.end method

.method private repairConflictingFinale()V
    .locals 6

    .line 745
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v1, 0x1f65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v1, 0x1f66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 746
    const/16 v1, 0x1f7d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 747
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 748
    :cond_2
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget v3, v1, v2

    .line 749
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 750
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 751
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    const-string v5, "missionPending"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 752
    if-eqz v4, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 748
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x1f5a
        0x1f5b
        0x1f69
    .end array-data
.end method

.method private repairFirstBattleEvents()V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-lez v0, :cond_0

    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v1, 0x417

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 835
    return-void

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v1, 0x40e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v1, 0x40f

    .line 838
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v1, 0x410

    .line 839
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 840
    :goto_1
    const/16 v1, 0x413

    if-nez v0, :cond_5

    .line 841
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget v2, p0, Lcom/project7/localmanager/LocalEventEngine;->starterEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 842
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget v2, p0, Lcom/project7/localmanager/LocalEventEngine;->starterEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_4
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 845
    return-void

    .line 847
    :cond_5
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 848
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 849
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_6
    return-void
.end method

.method private repeatablePatrol(I)Z
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object p1

    .line 710
    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->repeatable:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private requirementsMatch(Lcom/project7/localmanager/LocalNewbeeCatalog$Step;Ljava/lang/String;)Z
    .locals 4

    .line 566
    iget-object v0, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->uiPanel:Ljava/lang/String;

    const-string v1, "card_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->uiPanel:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 567
    return v1

    .line 569
    :cond_0
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object v0, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireEventAnd:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 570
    return v1

    .line 572
    :cond_1
    iget-object p2, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireEventOr:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object v0, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireEventOr:Ljava/util/Set;

    .line 573
    invoke-static {p2, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 574
    return v1

    .line 576
    :cond_2
    iget-object p2, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireNotEventAnd:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 577
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 578
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 579
    return v1

    .line 581
    :cond_3
    goto :goto_0

    .line 582
    :cond_4
    iget-object p2, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireNotEventOr:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_7

    .line 583
    nop

    .line 584
    iget-object p2, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireNotEventOr:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 585
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 586
    nop

    .line 587
    move p2, v0

    goto :goto_2

    .line 589
    :cond_5
    goto :goto_1

    .line 584
    :cond_6
    move p2, v1

    .line 590
    :goto_2
    if-nez p2, :cond_7

    .line 591
    return v1

    .line 594
    :cond_7
    iget-object p1, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireNewbees:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 595
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    .line 596
    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 597
    return v1

    .line 599
    :cond_8
    goto :goto_3

    .line 600
    :cond_9
    return v0
.end method

.method private restoreBattleConditions()V
    .locals 5

    .line 668
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 669
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v1

    .line 670
    const-string v2, "battle"

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 671
    :goto_1
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    if-eqz v3, :cond_1

    .line 672
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 673
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-virtual {v1, v2, v3}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 675
    :cond_1
    goto :goto_0

    .line 676
    :cond_2
    return-void
.end method

.method private restoreExternalGuideEvents()V
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 495
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    iget-object v2, v2, Lcom/project7/localmanager/LocalNewbeeCatalog;->externalGuideEvents:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 496
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    invoke-virtual {v3, v1}, Lcom/project7/localmanager/LocalNewbeeCatalog;->get(I)Lcom/project7/localmanager/LocalNewbeeCatalog$Step;

    move-result-object v1

    .line 497
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/project7/localmanager/LocalEventEngine;->requirementsMatch(Lcom/project7/localmanager/LocalNewbeeCatalog$Step;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 498
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/project7/localmanager/LocalEventEngine;->triggerExternalEvent(I)Z

    goto :goto_1

    .line 499
    :cond_2
    goto :goto_0

    .line 500
    :cond_3
    return-void
.end method

.method private restoreMissionOutcomes()V
    .locals 8

    .line 257
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "missionWon"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 258
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "missionLost"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 259
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "battle"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 260
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 261
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    invoke-static {v5}, Lcom/project7/localmanager/LocalChapterCityEngine;->active([B)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/project7/localmanager/LocalCityProgress;->chapterScene(I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    .line 262
    invoke-static {v5, v6, v4}, Lcom/project7/localmanager/LocalDalviraCityEngine;->ownsOutcome([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x140

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    .line 263
    invoke-static {v5, v6}, Lcom/project7/localmanager/LocalAlanCityEngine;->active([BLcom/project7/localmanager/LocalTutorialStore$Progress;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 264
    :cond_2
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog;->cityOutcomes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    .line 265
    if-nez v4, :cond_3

    goto :goto_0

    .line 266
    :cond_3
    iget-object v4, v4, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->success:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 267
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v6, v5}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v6

    .line 268
    if-eqz v6, :cond_4

    iget-boolean v6, v6, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v6, :cond_4

    invoke-direct {p0, v5}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 269
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 270
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_4
    goto :goto_1

    .line 272
    :cond_5
    goto/16 :goto_0

    .line 273
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 274
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog;->outcomes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    .line 275
    if-nez v5, :cond_7

    goto :goto_2

    .line 277
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget v6, v5, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->scene:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v6, 0x1

    .line 278
    :goto_4
    if-nez v6, :cond_a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_2

    .line 279
    :cond_a
    if-eqz v6, :cond_b

    iget-object v4, v5, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->success:Ljava/util/Set;

    goto :goto_5

    :cond_b
    iget-object v4, v5, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->failure:Ljava/util/Set;

    :goto_5
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 280
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v6, v5}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v6

    .line 281
    if-eqz v6, :cond_c

    iget-boolean v6, v6, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v6, :cond_c

    invoke-direct {p0, v5}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 282
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 283
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_c
    goto :goto_6

    .line 285
    :cond_d
    goto/16 :goto_2

    .line 286
    :cond_e
    return-void
.end method

.method private restorePendingNewbees()V
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 555
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v1

    .line 556
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    iget v3, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    .line 557
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    iget v3, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    .line 558
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    goto :goto_0

    .line 561
    :cond_1
    iget v1, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    invoke-virtual {p0, v1}, Lcom/project7/localmanager/LocalEventEngine;->beginNewbee(I)Z

    .line 562
    goto :goto_0

    .line 563
    :cond_2
    return-void
.end method

.method private restorePrivateReplies()V
    .locals 5

    .line 349
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    const-string v1, "sd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "pm"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog;->privateReplies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 351
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/project7/localmanager/LocalEventEngine;->privateMessageReady(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v3

    const-string v4, "rp"

    invoke-static {v3, v4}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 353
    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 354
    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 356
    :cond_3
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v3

    .line 357
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-nez v4, :cond_4

    goto :goto_0

    .line 359
    :cond_4
    iget v4, v3, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    if-nez v4, :cond_5

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    goto :goto_2

    .line 360
    :cond_5
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_2
    goto/16 :goto_0

    .line 362
    :cond_6
    return-void
.end method

.method private triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;II)Ljava/lang/String;
    .locals 1

    .line 757
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/project7/localmanager/LocalEventEngine;->triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalEventCatalog$Trigger;",
            "II",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 762
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/project7/localmanager/LocalEventEngine;->triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/project7/localmanager/LocalEventCatalog$Trigger;",
            "II",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/project7/localmanager/LocalPatrolCatalog;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget v2, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v0, v1, v2}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->blocked([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "dalvira-dispatch-closed"

    return-object p1

    .line 768
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/project7/localmanager/LocalEventEngine;->dynamicTriggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)Ljava/lang/String;

    move-result-object p4

    .line 769
    if-eqz p4, :cond_1

    return-object p4

    .line 770
    :cond_1
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->privateReplyBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Ljava/lang/String;

    move-result-object p4

    .line 771
    if-eqz p4, :cond_2

    return-object p4

    .line 772
    :cond_2
    iget-object p4, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->patrolAreas:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->patrolAreas:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    :cond_3
    iget-object p4, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->clientOps:Ljava/util/Set;

    .line 773
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_5

    iget-object p4, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->clientOps:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 774
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "patrol/client-op="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 776
    :cond_5
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-virtual {p2, p3}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object p2

    .line 777
    if-eqz p2, :cond_c

    iget-boolean p3, p2, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz p3, :cond_c

    iget-boolean p2, p2, Lcom/project7/localmanager/LocalEventCatalog$Event;->autoTrigger:Z

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    .line 778
    invoke-interface {p2, p3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAny:Ljava/util/Set;

    .line 779
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAny:Ljava/util/Set;

    .line 780
    invoke-static {p2, p3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_c

    :cond_6
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->mutex:Ljava/util/Set;

    .line 781
    invoke-static {p2, p3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->mutex:Ljava/util/Set;

    .line 782
    invoke-static {p2, p3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 783
    invoke-direct {p0, p2}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->emergency:Ljava/lang/Integer;

    if-eqz p2, :cond_7

    iget-object p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->emergency:Ljava/lang/Integer;

    .line 785
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-boolean p3, p3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-eq p2, p3, :cond_7

    goto/16 :goto_1

    .line 788
    :cond_7
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    const-string p3, "battle"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 789
    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    if-eqz p2, :cond_8

    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    .line 790
    invoke-interface {p2, p3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 791
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "battles="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 793
    :cond_9
    iget-object p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->areas:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    .line 794
    const/4 p2, 0x0

    .line 795
    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->areas:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 796
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    iget-object p5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    invoke-static {p5, p3, v0}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 797
    goto :goto_0

    .line 798
    :cond_a
    if-nez p2, :cond_b

    .line 799
    const-string p1, "area-state"

    return-object p1

    .line 802
    :cond_b
    const/4 p1, 0x0

    return-object p1

    .line 786
    :cond_c
    :goto_1
    const-string p1, "prerequisite/mutex/calendar/emergency"

    return-object p1
.end method

.method private triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Z
    .locals 2

    .line 714
    iget v0, p0, Lcom/project7/localmanager/LocalEventEngine;->clientOperation:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/project7/localmanager/LocalEventEngine;->triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;II)Z

    move-result p1

    return p1
.end method

.method private triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;II)Z
    .locals 0

    .line 718
    invoke-direct {p0, p1, p2, p3}, Lcom/project7/localmanager/LocalEventEngine;->triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;II)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method abandonStoryBattle(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 223
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog;->outcomes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    .line 224
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->scene:I

    if-ne v4, p1, :cond_0

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->failure:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 225
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/project7/localmanager/LocalEventEngine;->consumeStoryScene(II)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 226
    :cond_2
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "missionLost"

    invoke-virtual {v3, v5, v4}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 227
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    goto :goto_0

    .line 230
    :cond_3
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreMissionOutcomes()V

    .line 231
    return-object v0
.end method

.method availableEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method beginNewbee(I)Z
    .locals 1

    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/project7/localmanager/LocalEventEngine;->beginNewbee(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method beginNewbeeForPanel(ILjava/lang/String;)Z
    .locals 0

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/project7/localmanager/LocalEventEngine;->beginNewbee(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method beginStoryBattle(I)Z
    .locals 6

    .line 176
    nop

    .line 177
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 178
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog;->battles:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 179
    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v1, 0x1

    .line 181
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "missionPending"

    invoke-virtual {v3, v5, v4}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 182
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missionPendingScene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 183
    goto :goto_0

    .line 184
    :cond_2
    return v1
.end method

.method blockedStoryEvents()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v1}, Lcom/project7/localmanager/LocalEventCatalog;->triggers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    .line 424
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget v4, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget v4, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 425
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 426
    invoke-direct {p0, v2}, Lcom/project7/localmanager/LocalEventEngine;->triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->patrolAreas:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 427
    :cond_1
    iget-object v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    .line 428
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    const-string v7, "battle"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-static {v3, v5}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    .line 429
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object v5, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v4

    .line 430
    :goto_1
    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x14

    if-ge v3, v5, :cond_5

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/project7/localmanager/LocalEventEngine;->clientOperation:I

    invoke-direct {p0, v2, v4, v5}, Lcom/project7/localmanager/LocalEventEngine;->triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_5
    goto/16 :goto_0

    .line 434
    :cond_6
    return-object v0
.end method

.method completeImmediateEvent(I)Z
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->battles:Ljava/util/Map;

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    .line 138
    return v0

    .line 135
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method enterPlace(Ljava/lang/String;)V
    .locals 1

    .line 438
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-object p1, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->scene:Ljava/lang/String;

    .line 441
    :cond_0
    return-void
.end method

.method finishNewbees(Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 471
    if-nez p1, :cond_0

    .line 472
    return-object v0

    .line 474
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 475
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 476
    goto :goto_0

    .line 478
    :cond_2
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 479
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/project7/localmanager/LocalNewbeeCatalog;->eventsAfterCompletion(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 481
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 482
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    .line 483
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 484
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_3
    goto :goto_1

    .line 487
    :cond_4
    goto :goto_0

    .line 488
    :cond_5
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreExternalGuideEvents()V

    .line 489
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 490
    return-object v0
.end method

.method finishStoryBattle(IZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 235
    nop

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 238
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog;->battles:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 239
    if-eqz v5, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    invoke-direct {p0, v4, p1}, Lcom/project7/localmanager/LocalEventEngine;->consumeStoryScene(II)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 241
    :cond_2
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog;->outcomes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    .line 242
    if-eqz v3, :cond_4

    iget v5, v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->scene:I

    if-ne v5, p1, :cond_4

    .line 243
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    if-eqz p2, :cond_3

    const-string v6, "missionWon"

    goto :goto_1

    :cond_3
    const-string v6, "missionLost"

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 244
    if-nez p2, :cond_4

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->failure:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 245
    invoke-direct {p0, v4, v2}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    .line 246
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_4
    const/4 v3, 0x1

    .line 250
    goto :goto_0

    .line 251
    :cond_5
    if-eqz v3, :cond_6

    if-eqz p2, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const-string p2, "battle"

    invoke-virtual {p0, p2, p1}, Lcom/project7/localmanager/LocalEventEngine;->trace(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    :cond_6
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreMissionOutcomes()V

    .line 253
    return-object v0
.end method

.method flashbackPatrol([BILjava/util/List;)Lcom/project7/localmanager/LocalPatrolEngine$Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/project7/localmanager/LocalPatrolEngine$Result;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/project7/localmanager/LocalFlashbackEngine;->patrol(Lcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalEventEngine;[BILjava/util/List;)Lcom/project7/localmanager/LocalPatrolEngine$Result;

    move-result-object p1

    return-object p1
.end method

.method hasPendingStoryBattle(I)Z
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->pendingStoryBattleOwners(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic lambda$privateReplyBlocker$1$LocalEventEngine(Ljava/lang/Integer;)Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->privateReplySatisfied(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method messagePublishers()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 87
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 88
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 90
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v3, v2}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v3

    .line 91
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v4, v4, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalEventCatalog$Effect;

    .line 92
    if-eqz v3, :cond_1

    iget-boolean v5, v3, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v3, Lcom/project7/localmanager/LocalEventCatalog$Event;->autoStart:Z

    if-eqz v5, :cond_1

    iget v5, v3, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    if-nez v5, :cond_1

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    .line 93
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    iget-object v3, v4, Lcom/project7/localmanager/LocalEventCatalog$Effect;->privateMessages:Ljava/util/Set;

    .line 94
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v4, Lcom/project7/localmanager/LocalEventCatalog$Effect;->socialMessages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    goto :goto_0

    .line 96
    :cond_2
    return-object v0
.end method

.method patrolEvents(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/project7/localmanager/LocalEventEngine;->patrolEvents(ILjava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method patrolEvents(ILjava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 686
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/project7/localmanager/LocalEventEngine;->patrolEvents(ILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method patrolEvents(ILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/project7/localmanager/LocalPatrolCatalog;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 691
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v1}, Lcom/project7/localmanager/LocalEventCatalog;->triggers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    .line 692
    iget-object v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->patrolAreas:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->clientOps:Ljava/util/Set;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget v4, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 693
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-direct {p0, v3}, Lcom/project7/localmanager/LocalEventEngine;->repeatablePatrol(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget v4, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 694
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog;->patrolExcluded:Ljava/util/Map;

    iget v4, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 695
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {p2, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    .line 696
    move-object v3, p0

    move-object v4, v2

    move v5, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/project7/localmanager/LocalEventEngine;->triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;Lcom/project7/localmanager/LocalPatrolCatalog;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 697
    iget v2, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_2
    goto :goto_0

    .line 700
    :cond_3
    return-object v0
.end method

.method pendingStoryBattleOwners(I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 193
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 194
    invoke-direct {p0, v2, p1}, Lcom/project7/localmanager/LocalEventEngine;->pendingStoryScene(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    goto :goto_0

    .line 196
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method processingEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method processingNewbees()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method queuePatrolReplays(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 705
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/project7/localmanager/LocalEventEngine;->repeatablePatrol(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 706
    :cond_1
    return-void
.end method

.method refreshProfile([B)V
    .locals 2

    .line 338
    iput-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    .line 339
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "q7WeekEventBaseline"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->eventBaseline:Ljava/util/Set;

    .line 340
    const-string v0, "weeknum"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p1

    .line 341
    const-string v0, "w"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "d"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 342
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->week:I

    .line 343
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/project7/localmanager/LocalEventEngine;->date:I

    .line 344
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restorePrivateReplies()V

    .line 345
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 346
    return-void
.end method

.method requestNewbee(I)Z
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalNewbeeCatalog;->get(I)Lcom/project7/localmanager/LocalNewbeeCatalog$Step;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->multiTrigger:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 457
    :cond_1
    iget-object v1, v0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->uiPanel:Ljava/lang/String;

    const-string v2, "card_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->uiPanel:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/project7/localmanager/LocalEventEngine;->beginNewbee(ILjava/lang/String;)Z

    move-result p1

    return p1

    .line 454
    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method resetWeekContext([B)V
    .locals 1

    .line 332
    const-string v0, "0:0"

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->areaClick:Ljava/lang/String;

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->clientOperation:I

    .line 334
    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 335
    return-void
.end method

.method selectEventOption(II)Z
    .locals 5

    .line 142
    const/4 v0, 0x0

    const/16 v1, 0x1f8e

    if-ne p1, v1, :cond_0

    return v0

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-static {v1, v2, p1}, Lcom/project7/localmanager/LocalStoryTreasureRewardEngine;->canComplete([BLcom/project7/localmanager/LocalEventCatalog;I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez p2, :cond_3

    goto :goto_0

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v1, p1}, Lcom/project7/localmanager/LocalEventCatalog;->successors(I)Ljava/util/Set;

    move-result-object v1

    .line 149
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 150
    return v0

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 153
    const/4 v2, 0x1

    if-eqz v1, :cond_5

    aget v3, v1, v0

    if-ne v3, v2, :cond_5

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    .line 154
    const-string v4, "money"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    aget v1, v1, v2

    if-ge v3, v1, :cond_5

    return v0

    .line 155
    :cond_5
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    .line 157
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v1, :cond_8

    .line 158
    :cond_6
    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_7
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_8
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 162
    return v2

    .line 146
    :cond_9
    :goto_0
    return v0
.end method

.method startEvent(I)Z
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v0, v1, p1}, Lcom/project7/localmanager/LocalDalviraStoryEngine;->blocked([BLcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    .line 106
    invoke-static {v0, v2, v3, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->canBegin([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 108
    return v2

    .line 110
    :cond_2
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 111
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    move-result-object v0

    .line 112
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->privateReplySatisfied(I)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/project7/localmanager/LocalEventEngine;->privateReplyBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 114
    if-eqz v0, :cond_4

    aget v3, v0, v1

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    .line 115
    const-string v4, "money"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    aget v0, v0, v2

    if-ge v3, v0, :cond_4

    return v1

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 121
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 122
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 123
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-boolean v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    .line 124
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    .line 126
    :cond_6
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 127
    return v2

    .line 117
    :cond_7
    :goto_0
    return v1

    .line 112
    :cond_8
    :goto_1
    return v1
.end method

.method trace(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 289
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-virtual {v0, p1, p2}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 293
    const-string v0, "battle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreMissionOutcomes()V

    .line 294
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 296
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v3

    .line 297
    if-eqz v3, :cond_2

    invoke-direct {p0, v3, p1, p2}, Lcom/project7/localmanager/LocalEventEngine;->conditionMatches(Lcom/project7/localmanager/LocalEventCatalog$Event;Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    .line 298
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/project7/localmanager/LocalStoryTreasureRewardEngine;->canComplete([BLcom/project7/localmanager/LocalEventCatalog;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    .line 300
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_2
    goto :goto_0

    .line 303
    :cond_3
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 304
    return-object v0

    .line 290
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method triggerExternalEvent(I)Z
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog;->externalEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    iget v1, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    :goto_0
    return v2

    .line 169
    :cond_3
    :goto_1
    return v2

    .line 168
    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method updateAreaClick(Ljava/lang/String;)Z
    .locals 1

    .line 317
    if-eqz p1, :cond_1

    const-string v0, "[0-9]+:[0-9]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iput-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->areaClick:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 323
    const/4 p1, 0x1

    return p1

    .line 318
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method updateClientOperation(I)V
    .locals 0

    .line 327
    iput p1, p0, Lcom/project7/localmanager/LocalEventEngine;->clientOperation:I

    .line 328
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 329
    return-void
.end method

.method updateStatus(Ljava/lang/String;)V
    .locals 1

    .line 308
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-object p1, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->status:Ljava/lang/String;

    .line 310
    const-string v0, "emergency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    .line 314
    :cond_0
    return-void
.end method
