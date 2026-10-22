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

    .line 444
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalNewbeeCatalog;->get(I)Lcom/project7/localmanager/LocalNewbeeCatalog$Step;

    move-result-object v0

    .line 445
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

    .line 446
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/project7/localmanager/LocalEventEngine;->requirementsMatch(Lcom/project7/localmanager/LocalNewbeeCatalog$Step;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 449
    :cond_1
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 447
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private complete(IZ)V
    .locals 8

    .line 506
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v0, v1, v2, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->exitOutcome([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 508
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

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 510
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 511
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 512
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    .line 513
    :cond_2
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventCompletions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 514
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 513
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

    .line 515
    :cond_3
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
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

    .line 517
    const/16 v2, 0x417

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->initPrologue:Z

    .line 518
    :cond_4
    if-eqz p2, :cond_9

    .line 519
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

    .line 520
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 521
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 522
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_7
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_8
    goto :goto_2

    .line 527
    :cond_9
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {p2, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object p1

    .line 528
    if-eqz p1, :cond_a

    iget p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    if-eqz p2, :cond_a

    .line 529
    iget p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->beginNewbee(I)Z

    .line 531
    :cond_a
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreMissionOutcomes()V

    .line 532
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 533
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

    .line 490
    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 491
    return p3

    .line 493
    :cond_0
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object p2, p2, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    iget v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget v2, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->id:I

    .line 494
    invoke-static {p2, v0, v1, v2}, Lcom/project7/localmanager/LocalPuzzleEngine;->exitOutcome([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_1

    return p3

    .line 495
    :cond_1
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object p2, p2, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    iget v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 496
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    aget v1, p2, p3

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    .line 497
    const-string v2, "money"

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v1

    aget p2, p2, v0

    if-ge v1, p2, :cond_2

    return p3

    .line 498
    :cond_2
    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 499
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 500
    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 501
    :cond_3
    goto :goto_0

    .line 500
    :cond_4
    :goto_1
    return p3

    .line 502
    :cond_5
    return v0
.end method

.method private consumeStoryScene(II)Z
    .locals 3

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/project7/localmanager/LocalEventEngine;->pendingStoryScene(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 207
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

    .line 208
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 209
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 212
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

    .line 213
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    const-string v0, "missionPending"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 214
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

    .line 807
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 808
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/project7/localmanager/LocalEventCatalog;->isEmergency(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    const/4 p1, 0x1

    return p1

    .line 811
    :cond_0
    goto :goto_0

    .line 812
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private dynamicTriggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;)Ljava/lang/String;
    .locals 7
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

    .line 765
    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->areaClicks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->areaClicks:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->areaClick:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "area-focus="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->areaClick:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 767
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

    .line 770
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

    .line 771
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 772
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

    .line 773
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

    .line 776
    :cond_4
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->conditionPass:Lcom/project7/localmanager/LocalStoryConditionPass;

    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    .line 777
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

    .line 778
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    .line 779
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0x1d

    if-ne v0, v6, :cond_6

    if-eqz p2, :cond_6

    new-instance v1, Lcom/project7/localmanager/LocalStoryConditions$Context;

    invoke-direct {v1, p2, p3}, Lcom/project7/localmanager/LocalStoryConditions$Context;-><init>(II)V

    .line 777
    :cond_6
    invoke-static {v2, v3, v4, v5, v1}, Lcom/project7/localmanager/LocalStoryConditions;->evaluate(ILjava/lang/String;[BLcom/project7/localmanager/LocalTutorialStore$Progress;Lcom/project7/localmanager/LocalStoryConditions$Context;)Lcom/project7/localmanager/LocalStoryConditions$Evaluation;

    move-result-object v0

    .line 780
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

    .line 781
    :cond_7
    goto/16 :goto_0

    .line 782
    :cond_8
    return-object v1

    .line 769
    :cond_9
    :goto_2
    const-string p1, "calendar"

    return-object p1
.end method

.method private isMutex(I)Z
    .locals 7

    .line 686
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->mutex(I)Ljava/util/Set;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v1, p1}, Lcom/project7/localmanager/LocalEventCatalog;->trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    move-result-object v1

    .line 688
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 689
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v3, v4, v5, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->selectedClear([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    move-result-object p1

    .line 690
    if-eqz p1, :cond_3

    .line 691
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 694
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

    .line 695
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v5, v4}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v5

    .line 696
    iget v6, p1, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->incomplete:I

    if-eq v4, v6, :cond_0

    if-eqz v5, :cond_1

    iget-boolean v5, v5, Lcom/project7/localmanager/LocalEventCatalog$Event;->repeatable:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    .line 697
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

    .line 698
    :cond_1
    goto :goto_0

    .line 694
    :cond_2
    move-object v2, v3

    .line 700
    :cond_3
    invoke-static {v2, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 701
    invoke-static {p1, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_4

    iget-object p1, v1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->mutex:Ljava/util/Set;

    .line 702
    invoke-static {v2, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget-object v0, v1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->mutex:Ljava/util/Set;

    .line 703
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

    .line 700
    :goto_2
    return p1
.end method

.method static synthetic lambda$privateReplySatisfied$0(ILjava/lang/Integer;)Z
    .locals 0

    .line 370
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

    .line 197
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

    .line 198
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

    .line 199
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 200
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

    .line 202
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

    .line 376
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->privateMessageEvents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 377
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->checkingMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 380
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

    .line 381
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->eventBaseline:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 382
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

    .line 391
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->checkingMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 382
    return v1

    .line 383
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v4, v2}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v4

    .line 384
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v5, v2}, Lcom/project7/localmanager/LocalEventCatalog;->trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    move-result-object v5

    .line 385
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

    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v5, :cond_5

    .line 387
    invoke-direct {p0, v5}, Lcom/project7/localmanager/LocalEventEngine;->triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    :cond_4
    nop

    .line 391
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->checkingMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 387
    return v1

    .line 388
    :cond_5
    goto :goto_0

    .line 389
    :cond_6
    nop

    .line 391
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->checkingMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 389
    return v3

    .line 391
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->checkingMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 392
    throw v0
.end method

.method private privateReplyBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Ljava/lang/String;
    .locals 3

    .line 396
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

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "private-reply="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 398
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

    .line 399
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda1;-><init>(Lcom/project7/localmanager/LocalEventEngine;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "private-reply-any="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAny:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 401
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private privateReplySatisfied(I)Z
    .locals 8

    .line 358
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->privateReplyMessages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 359
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    const-string v3, "sd"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "pm"

    invoke-static {v2, v3}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v2

    .line 361
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 362
    invoke-direct {p0, v3}, Lcom/project7/localmanager/LocalEventEngine;->privateMessageReady(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v4

    .line 364
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog;->privateReplies:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 365
    const-string v5, "rp"

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 366
    if-eqz v6, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    .line 369
    :cond_2
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lcom/project7/localmanager/BsonLite;->boolValue([BLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 370
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/project7/localmanager/LocalEventEngine$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    .line 371
    :cond_3
    goto :goto_0

    .line 372
    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private reevaluateLifecycle()V
    .locals 8

    .line 586
    iget-wide v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lifecycleScans:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lifecycleScans:J

    .line 587
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->repairFirstBattleEvents()V

    .line 588
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

    .line 589
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

    .line 590
    :cond_1
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 591
    :cond_2
    goto :goto_0

    .line 592
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

    .line 593
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

    .line 594
    :goto_2
    if-eqz v0, :cond_6

    .line 595
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-boolean v1, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    .line 596
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    const-string v1, "emergency"

    iput-object v1, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->status:Ljava/lang/String;

    goto :goto_3

    .line 597
    :cond_6
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-boolean v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-eqz v0, :cond_7

    .line 598
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-boolean v2, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    .line 599
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    const-string v1, "city"

    iput-object v1, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->status:Ljava/lang/String;

    .line 601
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->conditionPass:Lcom/project7/localmanager/LocalStoryConditionPass;

    .line 602
    new-instance v1, Lcom/project7/localmanager/LocalStoryConditionPass;

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-boolean v5, p0, Lcom/project7/localmanager/LocalEventEngine;->memoizeConditions:Z

    invoke-direct {v1, v3, v4, v5}, Lcom/project7/localmanager/LocalStoryConditionPass;-><init>([BLcom/project7/localmanager/LocalTutorialStore$Progress;Z)V

    .line 603
    iput-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->conditionPass:Lcom/project7/localmanager/LocalStoryConditionPass;

    .line 605
    :try_start_0
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v3}, Lcom/project7/localmanager/LocalEventCatalog;->triggers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    .line 610
    iget v5, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    const/16 v6, 0x3ed

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 611
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 612
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object v7, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    .line 613
    invoke-interface {v5, v7}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 614
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 616
    :cond_8
    iget v5, p0, Lcom/project7/localmanager/LocalEventEngine;->clientOperation:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4, v2, v5, v6}, Lcom/project7/localmanager/LocalEventEngine;->dynamicTriggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 617
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 618
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 620
    :cond_9
    invoke-direct {p0, v4}, Lcom/project7/localmanager/LocalEventEngine;->privateReplyBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 621
    :cond_a
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalEventCatalog$Effect;

    .line 622
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget v7, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-virtual {v6, v7}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v6

    .line 623
    if-eqz v5, :cond_b

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog$Effect;->privateMessages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v6, :cond_b

    iget-boolean v5, v6, Lcom/project7/localmanager/LocalEventCatalog$Event;->autoStart:Z

    if-eqz v5, :cond_b

    iget v5, v6, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    if-nez v5, :cond_b

    iget-object v5, v6, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    .line 624
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, v4}, Lcom/project7/localmanager/LocalEventEngine;->triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 625
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 626
    :cond_b
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget v6, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 627
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 628
    invoke-direct {p0, v4}, Lcom/project7/localmanager/LocalEventEngine;->triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 629
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget v4, v4, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    :cond_c
    goto/16 :goto_4

    .line 633
    :cond_d
    iput-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->conditionPass:Lcom/project7/localmanager/LocalStoryConditionPass;

    .line 634
    iget v0, v1, Lcom/project7/localmanager/LocalStoryConditionPass;->requests:I

    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lastConditionRequests:I

    iget v0, v1, Lcom/project7/localmanager/LocalStoryConditionPass;->evaluations:I

    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lastConditionEvaluations:I

    .line 635
    nop

    .line 636
    return-void

    .line 633
    :catchall_0
    move-exception v2

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->conditionPass:Lcom/project7/localmanager/LocalStoryConditionPass;

    .line 634
    iget v0, v1, Lcom/project7/localmanager/LocalStoryConditionPass;->requests:I

    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lastConditionRequests:I

    iget v0, v1, Lcom/project7/localmanager/LocalStoryConditionPass;->evaluations:I

    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->lastConditionEvaluations:I

    .line 635
    throw v2
.end method

.method private repairConflictingFinale()V
    .locals 6

    .line 709
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

    .line 710
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

    .line 711
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 712
    :cond_2
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget v3, v1, v2

    .line 713
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 714
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 715
    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    const-string v5, "missionPending"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 716
    if-eqz v4, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 712
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 718
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

    .line 786
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->weekIndex:I

    if-lez v0, :cond_0

    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v1, 0x417

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 788
    return-void

    .line 790
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

    .line 791
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    const/16 v1, 0x410

    .line 792
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

    .line 793
    :goto_1
    const/16 v1, 0x413

    if-nez v0, :cond_5

    .line 794
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget v2, p0, Lcom/project7/localmanager/LocalEventEngine;->starterEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 795
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget v2, p0, Lcom/project7/localmanager/LocalEventEngine;->starterEvent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_4
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 798
    return-void

    .line 800
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

    .line 801
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 802
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_6
    return-void
.end method

.method private repeatablePatrol(I)Z
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object p1

    .line 674
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

    .line 548
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

    .line 549
    return v1

    .line 551
    :cond_0
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object v0, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireEventAnd:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 552
    return v1

    .line 554
    :cond_1
    iget-object p2, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireEventOr:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object v0, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireEventOr:Ljava/util/Set;

    .line 555
    invoke-static {p2, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 556
    return v1

    .line 558
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

    .line 559
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 560
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 561
    return v1

    .line 563
    :cond_3
    goto :goto_0

    .line 564
    :cond_4
    iget-object p2, p1, Lcom/project7/localmanager/LocalNewbeeCatalog$Step;->requireNotEventOr:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_7

    .line 565
    nop

    .line 566
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

    .line 567
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 568
    nop

    .line 569
    move p2, v0

    goto :goto_2

    .line 571
    :cond_5
    goto :goto_1

    .line 566
    :cond_6
    move p2, v1

    .line 572
    :goto_2
    if-nez p2, :cond_7

    .line 573
    return v1

    .line 576
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

    .line 577
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    .line 578
    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 579
    return v1

    .line 581
    :cond_8
    goto :goto_3

    .line 582
    :cond_9
    return v0
.end method

.method private restoreBattleConditions()V
    .locals 5

    .line 640
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

    .line 641
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v1

    .line 642
    const-string v2, "battle"

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 643
    :goto_1
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    if-eqz v3, :cond_1

    .line 644
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 645
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-virtual {v1, v2, v3}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 647
    :cond_1
    goto :goto_0

    .line 648
    :cond_2
    return-void
.end method

.method private restoreExternalGuideEvents()V
    .locals 4

    .line 477
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

    .line 478
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    iget-object v2, v2, Lcom/project7/localmanager/LocalNewbeeCatalog;->externalGuideEvents:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 479
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    invoke-virtual {v3, v1}, Lcom/project7/localmanager/LocalNewbeeCatalog;->get(I)Lcom/project7/localmanager/LocalNewbeeCatalog$Step;

    move-result-object v1

    .line 480
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/project7/localmanager/LocalEventEngine;->requirementsMatch(Lcom/project7/localmanager/LocalNewbeeCatalog$Step;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 481
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

    .line 482
    :cond_2
    goto :goto_0

    .line 483
    :cond_3
    return-void
.end method

.method private restoreMissionOutcomes()V
    .locals 8

    .line 254
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "missionWon"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 255
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "missionLost"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 256
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "battle"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 257
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    invoke-static {v3}, Lcom/project7/localmanager/LocalChapterCityEngine;->active([B)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 258
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog;->cityOutcomes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    .line 259
    if-nez v4, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    iget-object v4, v4, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->success:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 261
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v6, v5}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v6

    .line 262
    if-eqz v6, :cond_1

    iget-boolean v6, v6, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v6, :cond_1

    invoke-direct {p0, v5}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 263
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 264
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_1
    goto :goto_1

    .line 266
    :cond_2
    goto :goto_0

    .line 267
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v4, v4, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 268
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog;->outcomes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    .line 269
    if-nez v5, :cond_4

    goto :goto_2

    .line 271
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget v6, v5, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->scene:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v6, 0x1

    .line 272
    :goto_4
    if-nez v6, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    .line 273
    :cond_7
    if-eqz v6, :cond_8

    iget-object v4, v5, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->success:Ljava/util/Set;

    goto :goto_5

    :cond_8
    iget-object v4, v5, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->failure:Ljava/util/Set;

    :goto_5
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 274
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v6, v5}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v6

    .line 275
    if-eqz v6, :cond_9

    iget-boolean v6, v6, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz v6, :cond_9

    invoke-direct {p0, v5}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    .line 276
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 277
    iget-object v6, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v6, v6, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_9
    goto :goto_6

    .line 279
    :cond_a
    goto/16 :goto_2

    .line 280
    :cond_b
    return-void
.end method

.method private restorePendingNewbees()V
    .locals 4

    .line 536
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

    .line 537
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v1

    .line 538
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    iget v3, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    .line 539
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    iget v3, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    .line 540
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    goto :goto_0

    .line 543
    :cond_1
    iget v1, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    invoke-virtual {p0, v1}, Lcom/project7/localmanager/LocalEventEngine;->beginNewbee(I)Z

    .line 544
    goto :goto_0

    .line 545
    :cond_2
    return-void
.end method

.method private restorePrivateReplies()V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    const-string v1, "sd"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    const-string v1, "pm"

    invoke-static {v0, v1}, Lcom/project7/localmanager/LocalResourceEngine;->doc([BLjava/lang/String;)[B

    move-result-object v0

    .line 343
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

    .line 344
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/project7/localmanager/LocalEventEngine;->privateMessageReady(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 345
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

    .line 346
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

    .line 347
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

    .line 348
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 349
    :cond_3
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v3

    .line 350
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-nez v4, :cond_4

    goto :goto_0

    .line 352
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

    .line 353
    :cond_5
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    :goto_2
    goto/16 :goto_0

    .line 355
    :cond_6
    return-void
.end method

.method private triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;II)Ljava/lang/String;
    .locals 1

    .line 721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/project7/localmanager/LocalEventEngine;->triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;)Ljava/lang/String;
    .locals 2
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

    .line 726
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/project7/localmanager/LocalEventEngine;->dynamicTriggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object p4

    .line 727
    if-eqz p4, :cond_0

    return-object p4

    .line 728
    :cond_0
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->privateReplyBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Ljava/lang/String;

    move-result-object p4

    .line 729
    if-eqz p4, :cond_1

    return-object p4

    .line 730
    :cond_1
    iget-object p4, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->patrolAreas:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->patrolAreas:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    :cond_2
    iget-object p4, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->clientOps:Ljava/util/Set;

    .line 731
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    iget-object p4, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->clientOps:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 732
    :cond_3
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

    .line 734
    :cond_4
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-virtual {p2, p3}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object p2

    .line 735
    if-eqz p2, :cond_b

    iget-boolean p3, p2, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    if-eqz p3, :cond_b

    iget-boolean p2, p2, Lcom/project7/localmanager/LocalEventCatalog$Event;->autoTrigger:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAll:Ljava/util/Set;

    .line 736
    invoke-interface {p2, p3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAny:Ljava/util/Set;

    .line 737
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->preAny:Ljava/util/Set;

    .line 738
    invoke-static {p2, p3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_b

    :cond_5
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->mutex:Ljava/util/Set;

    .line 739
    invoke-static {p2, p3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->mutex:Ljava/util/Set;

    .line 740
    invoke-static {p2, p3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 741
    invoke-direct {p0, p2}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->emergency:Ljava/lang/Integer;

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->emergency:Ljava/lang/Integer;

    .line 743
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-boolean p3, p3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    if-eq p2, p3, :cond_6

    goto/16 :goto_1

    .line 746
    :cond_6
    iget-object p2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p2, p2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    const-string p3, "battle"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 747
    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    if-eqz p2, :cond_7

    iget-object p3, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    .line 748
    invoke-interface {p2, p3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 749
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "battles="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 751
    :cond_8
    iget-object p2, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->areas:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 752
    const/4 p2, 0x0

    .line 753
    iget-object p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->areas:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 754
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    invoke-static {v0, p3, v1}, Lcom/project7/localmanager/LocalCityProgress;->status(Lcom/project7/localmanager/LocalTutorialStore$Progress;I[B)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p2, p3

    .line 755
    goto :goto_0

    .line 756
    :cond_9
    if-nez p2, :cond_a

    .line 757
    const-string p1, "area-state"

    return-object p1

    .line 760
    :cond_a
    const/4 p1, 0x0

    return-object p1

    .line 744
    :cond_b
    :goto_1
    const-string p1, "prerequisite/mutex/calendar/emergency"

    return-object p1
.end method

.method private triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Z
    .locals 2

    .line 678
    iget v0, p0, Lcom/project7/localmanager/LocalEventEngine;->clientOperation:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/project7/localmanager/LocalEventEngine;->triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;II)Z

    move-result p1

    return p1
.end method

.method private triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;II)Z
    .locals 0

    .line 682
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

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
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

    .line 220
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog;->outcomes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    .line 221
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->scene:I

    if-ne v4, p1, :cond_0

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->failure:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/project7/localmanager/LocalEventEngine;->consumeStoryScene(II)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 223
    :cond_2
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "missionLost"

    invoke-virtual {v3, v5, v4}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 224
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    goto :goto_0

    .line 227
    :cond_3
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreMissionOutcomes()V

    .line 228
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

    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/project7/localmanager/LocalEventEngine;->beginNewbee(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method beginNewbeeForPanel(ILjava/lang/String;)Z
    .locals 0

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/project7/localmanager/LocalEventEngine;->beginNewbee(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method beginStoryBattle(I)Z
    .locals 6

    .line 173
    nop

    .line 174
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

    .line 175
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog;->battles:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 176
    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v1, 0x1

    .line 178
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "missionPending"

    invoke-virtual {v3, v5, v4}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 179
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

    .line 180
    goto :goto_0

    .line 181
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

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
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

    .line 407
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

    .line 408
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 409
    invoke-direct {p0, v2}, Lcom/project7/localmanager/LocalEventEngine;->triggerMatches(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->patrolAreas:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 410
    :cond_1
    iget-object v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->battles:Ljava/util/Set;

    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v5, v5, Lcom/project7/localmanager/LocalTutorialStore$Progress;->eventConditions:Ljava/util/Map;

    .line 411
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

    .line 412
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

    .line 413
    :goto_1
    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x14

    if-ge v3, v5, :cond_5

    .line 414
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

    .line 416
    :cond_5
    goto/16 :goto_0

    .line 417
    :cond_6
    return-object v0
.end method

.method completeImmediateEvent(I)Z
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->battles:Ljava/util/Map;

    .line 132
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

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    .line 137
    return v0

    .line 134
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method enterPlace(Ljava/lang/String;)V
    .locals 1

    .line 421
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-object p1, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->scene:Ljava/lang/String;

    .line 424
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

    .line 453
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 454
    if-nez p1, :cond_0

    .line 455
    return-object v0

    .line 457
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

    .line 458
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 459
    goto :goto_0

    .line 461
    :cond_2
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingNewbees:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 462
    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v2, v2, Lcom/project7/localmanager/LocalTutorialStore$Progress;->finishedNewbees:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 463
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

    .line 464
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    .line 465
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    .line 466
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 467
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_3
    goto :goto_1

    .line 470
    :cond_4
    goto :goto_0

    .line 471
    :cond_5
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreExternalGuideEvents()V

    .line 472
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 473
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

    .line 232
    nop

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
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

    .line 235
    iget-object v5, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v5, v5, Lcom/project7/localmanager/LocalEventCatalog;->battles:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 236
    if-eqz v5, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0, v4, p1}, Lcom/project7/localmanager/LocalEventEngine;->consumeStoryScene(II)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 238
    :cond_2
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog;->outcomes:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    .line 239
    if-eqz v3, :cond_4

    iget v5, v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->scene:I

    if-ne v5, p1, :cond_4

    .line 240
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

    .line 241
    if-nez p2, :cond_4

    iget-object v3, v3, Lcom/project7/localmanager/LocalEventCatalog$Outcome;->failure:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 242
    invoke-direct {p0, v4, v2}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_4
    const/4 v3, 0x1

    .line 247
    goto :goto_0

    .line 248
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

    .line 249
    :cond_6
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreMissionOutcomes()V

    .line 250
    return-object v0
.end method

.method hasPendingStoryBattle(I)Z
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->pendingStoryBattleOwners(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic lambda$privateReplyBlocker$1$LocalEventEngine(Ljava/lang/Integer;)Z
    .locals 1

    .line 399
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

    .line 651
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolHeroes:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/project7/localmanager/LocalEventEngine;->patrolEvents(ILjava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method patrolEvents(ILjava/util/Collection;)Ljava/util/List;
    .locals 6
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

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
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

    .line 657
    iget-object v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->patrolAreas:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->clientOps:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    iget v5, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 658
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-direct {p0, v3}, Lcom/project7/localmanager/LocalEventEngine;->repeatablePatrol(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v3, v3, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    iget v5, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    .line 659
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 660
    invoke-direct {p0, v2, p1, v4, p2}, Lcom/project7/localmanager/LocalEventEngine;->triggerBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 661
    iget v2, v2, Lcom/project7/localmanager/LocalEventCatalog$Trigger;->eventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_2
    goto :goto_0

    .line 664
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

    .line 189
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 190
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

    .line 191
    invoke-direct {p0, v2, p1}, Lcom/project7/localmanager/LocalEventEngine;->pendingStoryScene(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    goto :goto_0

    .line 193
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

    .line 668
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    iget-object v1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v1, v1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 669
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

    .line 670
    :cond_1
    return-void
.end method

.method refreshProfile([B)V
    .locals 2

    .line 331
    iput-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    .line 332
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "q7WeekEventBaseline"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->intArrayValues([BLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->eventBaseline:Ljava/util/Set;

    .line 333
    const-string v0, "weeknum"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->documentValue([BLjava/lang/String;)[B

    move-result-object p1

    .line 334
    const-string v0, "w"

    invoke-static {p1, v0}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "d"

    invoke-static {p1, v1}, Lcom/project7/localmanager/BsonLite;->intValue([BLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 335
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->week:I

    .line 336
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/project7/localmanager/LocalEventEngine;->date:I

    .line 337
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restorePrivateReplies()V

    .line 338
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 339
    return-void
.end method

.method requestNewbee(I)Z
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->newbeeCatalog:Lcom/project7/localmanager/LocalNewbeeCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalNewbeeCatalog;->get(I)Lcom/project7/localmanager/LocalNewbeeCatalog$Step;

    move-result-object v0

    .line 436
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

    .line 438
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

    .line 440
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

    .line 437
    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method resetWeekContext([B)V
    .locals 1

    .line 325
    const-string v0, "0:0"

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->areaClick:Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/project7/localmanager/LocalEventEngine;->clientOperation:I

    .line 327
    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->refreshProfile([B)V

    .line 328
    return-void
.end method

.method selectEventOption(II)Z
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->successors(I)Ljava/util/Set;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    return v1

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 150
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    aget v3, v0, v1

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    .line 151
    const-string v4, "money"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    aget v0, v0, v2

    if-ge v3, v0, :cond_3

    return v1

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 153
    invoke-direct {p0, p1, v1}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    .line 154
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->completedEvents:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_6

    .line 155
    :cond_4
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolReplays:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_5
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_6
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 159
    return v2

    .line 143
    :cond_7
    :goto_0
    return v1
.end method

.method startEvent(I)Z
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    iget-object v2, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    .line 105
    invoke-static {v0, v2, v3, p1}, Lcom/project7/localmanager/LocalPuzzleEngine;->canBegin([BLcom/project7/localmanager/LocalEventCatalog;Lcom/project7/localmanager/LocalTutorialStore$Progress;I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 107
    return v2

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 110
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    move-result-object v0

    .line 111
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->privateReplySatisfied(I)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/project7/localmanager/LocalEventEngine;->privateReplyBlocker(Lcom/project7/localmanager/LocalEventCatalog$Trigger;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 113
    if-eqz v0, :cond_3

    aget v3, v0, v1

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->profile:[B

    .line 114
    const-string v4, "money"

    invoke-static {v3, v4}, Lcom/project7/localmanager/LocalResourceEngine;->value([BLjava/lang/String;)I

    move-result v3

    aget v0, v0, v2

    if-ge v3, v0, :cond_3

    return v1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->processingEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 120
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 121
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object p1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolEvents:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 122
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-boolean v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolRewardPending:Z

    .line 123
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput v1, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->patrolArea:I

    .line 125
    :cond_5
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 126
    return v2

    .line 116
    :cond_6
    :goto_0
    return v1

    .line 111
    :cond_7
    :goto_1
    return v1
.end method

.method trace(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
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

    .line 283
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    invoke-virtual {v0, p1, p2}, Lcom/project7/localmanager/LocalTutorialStore$Progress;->recordCondition(Ljava/lang/String;Ljava/util/Collection;)V

    .line 287
    const-string v0, "battle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->restoreMissionOutcomes()V

    .line 288
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
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

    .line 290
    iget-object v3, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v3

    .line 291
    if-eqz v3, :cond_2

    invoke-direct {p0, v3, p1, p2}, Lcom/project7/localmanager/LocalEventEngine;->conditionMatches(Lcom/project7/localmanager/LocalEventCatalog$Event;Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    .line 293
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_2
    goto :goto_0

    .line 296
    :cond_3
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 297
    return-object v0

    .line 284
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method triggerExternalEvent(I)Z
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->catalog:Lcom/project7/localmanager/LocalEventCatalog;

    invoke-virtual {v0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v0

    .line 164
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

    .line 165
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventEngine;->isMutex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 166
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

    .line 167
    :cond_1
    iget v1, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/project7/localmanager/LocalEventEngine;->complete(IZ)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iget-object v0, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->availableEvents:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_0
    return v2

    .line 166
    :cond_3
    :goto_1
    return v2

    .line 165
    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method updateAreaClick(Ljava/lang/String;)Z
    .locals 1

    .line 310
    if-eqz p1, :cond_1

    const-string v0, "[0-9]+:[0-9]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iput-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->areaClick:Ljava/lang/String;

    .line 315
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 316
    const/4 p1, 0x1

    return p1

    .line 311
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method updateClientOperation(I)V
    .locals 0

    .line 320
    iput p1, p0, Lcom/project7/localmanager/LocalEventEngine;->clientOperation:I

    .line 321
    invoke-direct {p0}, Lcom/project7/localmanager/LocalEventEngine;->reevaluateLifecycle()V

    .line 322
    return-void
.end method

.method updateStatus(Ljava/lang/String;)V
    .locals 1

    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    iput-object p1, v0, Lcom/project7/localmanager/LocalTutorialStore$Progress;->status:Ljava/lang/String;

    .line 303
    const-string v0, "emergency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/project7/localmanager/LocalEventEngine;->progress:Lcom/project7/localmanager/LocalTutorialStore$Progress;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/project7/localmanager/LocalTutorialStore$Progress;->inEmergency:Z

    .line 307
    :cond_0
    return-void
.end method
