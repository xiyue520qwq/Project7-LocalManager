.class final Lcom/project7/localmanager/LocalEventCatalog$Event;
.super Ljava/lang/Object;
.source "LocalEventCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/project7/localmanager/LocalEventCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Event"
.end annotation


# instance fields
.field final autoStart:Z

.field final autoTrigger:Z

.field final completeConditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final completeEnterMainPanel:Z

.field final dialog:I

.field final emergency:Z

.field final id:I

.field final leaveEmergency:Z

.field final newbee:Z

.field final newbeeEvent:I

.field final priority:I

.field final release:Z

.field final repeatable:Z

.field final successors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IZZZZZZZZIIILjava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZZZZZZIII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput p1, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->id:I

    .line 527
    iput-boolean p2, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->emergency:Z

    .line 528
    iput-boolean p3, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->leaveEmergency:Z

    .line 529
    iput-boolean p4, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeEnterMainPanel:Z

    .line 530
    iput-boolean p5, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->autoTrigger:Z

    .line 531
    iput-boolean p6, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->autoStart:Z

    .line 532
    iput-boolean p7, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->release:Z

    .line 533
    iput-boolean p8, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbee:Z

    .line 534
    iput-boolean p9, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->repeatable:Z

    .line 535
    iput p10, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->dialog:I

    .line 536
    iput p11, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->newbeeEvent:I

    .line 537
    iput p12, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->priority:I

    .line 538
    invoke-static {p13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->successors:Ljava/util/List;

    .line 539
    invoke-static {p14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/project7/localmanager/LocalEventCatalog$Event;->completeConditions:Ljava/util/Map;

    .line 540
    return-void
.end method
