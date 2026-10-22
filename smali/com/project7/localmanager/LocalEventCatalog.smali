.class final Lcom/project7/localmanager/LocalEventCatalog;
.super Ljava/lang/Object;
.source "LocalEventCatalog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/project7/localmanager/LocalEventCatalog$Event;,
        Lcom/project7/localmanager/LocalEventCatalog$Trigger;,
        Lcom/project7/localmanager/LocalEventCatalog$Effect;,
        Lcom/project7/localmanager/LocalEventCatalog$Outcome;
    }
.end annotation


# static fields
.field static final FIRST_EVENT:I = 0x3e8


# instance fields
.field final arkRaids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field final autoSocialMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final baiyuEffects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final battles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final buildingUnlocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final cityEffects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field final cityOutcomes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalEventCatalog$Outcome;",
            ">;"
        }
    .end annotation
.end field

.field final clearNotes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final clueEffects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final clueFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final clueRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final confidenceEffects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final consumptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field final effects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalEventCatalog$Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final events:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalEventCatalog$Event;",
            ">;"
        }
    .end annotation
.end field

.field final externalEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final heroClears:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final heroRewards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field final itemRewards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;",
            ">;"
        }
    .end annotation
.end field

.field final memoryPieces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;",
            ">;"
        }
    .end annotation
.end field

.field final memoryRewards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mutexEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final notes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field final outcomes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalEventCatalog$Outcome;",
            ">;"
        }
    .end annotation
.end field

.field final permanentSocialMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final privateMessageEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final privateReplies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final privateReplyMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final puzzleClues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalPuzzleEngine$Clue;",
            ">;"
        }
    .end annotation
.end field

.field final puzzleRooms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalPuzzleEngine$Room;",
            ">;"
        }
    .end annotation
.end field

.field final routes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final sailafeimuEffects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private final serverEdges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final socialActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final socialConflicts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final socialEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final socialMutex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final targetCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final targetEffects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final triggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/project7/localmanager/LocalEventCatalog$Trigger;",
            ">;"
        }
    .end annotation
.end field

.field wingDrugs:[I

.field final wingGardens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field final yisakeEffects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "event_graph.tsv"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventCatalog;-><init>(Ljava/io/InputStream;)V

    .line 67
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->events:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->serverEdges:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->triggers:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->mutexEvents:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->notes:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->clearNotes:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->heroClears:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->privateReplies:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->privateReplyMessages:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->privateMessageEvents:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->externalEvents:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->routes:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->targetCounts:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->targetEffects:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->confidenceEffects:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->sailafeimuEffects:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->baiyuEffects:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->yisakeEffects:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->wingGardens:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->cityEffects:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->cityOutcomes:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->arkRaids:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->battles:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->outcomes:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->buildingUnlocks:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->socialEvents:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->socialActions:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->socialMutex:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->autoSocialMessages:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->permanentSocialMessages:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->socialConflicts:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->clueFamilies:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->clueRoutes:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->clueEffects:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->memoryPieces:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->memoryRewards:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->heroRewards:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->itemRewards:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleClues:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->parseLine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 77
    return-void

    .line 70
    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$parseLine$0(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0

    .line 272
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$parseLine$1(Ljava/lang/Integer;)Ljava/util/Map;
    .locals 0

    .line 288
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 0

    .line 371
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 372
    :catch_0
    move-exception p0

    .line 373
    return p1
.end method

.method private static parseIntList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static parseIntSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 357
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 360
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 361
    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 362
    if-eqz v4, :cond_1

    .line 363
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 366
    :cond_2
    return-object v0

    .line 358
    :cond_3
    :goto_1
    return-object v0
.end method

.method private parseLine(Ljava/lang/String;)V
    .locals 27

    .line 117
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_c

    .line 120
    :cond_0
    const/4 v2, -0x1

    const-string v3, "\t"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v2, 0x0

    aget-object v3, v1, v2

    const-string v4, "@wingDrugs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-eqz v3, :cond_4

    array-length v3, v1

    if-ne v3, v4, :cond_4

    .line 122
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    if-nez v3, :cond_3

    .line 123
    new-array v3, v5, [I

    iput-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    .line 124
    nop

    :goto_0
    if-ge v2, v5, :cond_1

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    add-int/lit8 v4, v2, 0x1

    aget-object v6, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v2

    move v2, v4

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    return-void

    .line 126
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unreviewed original medicine policy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duplicate original medicine policy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_4
    aget-object v3, v1, v2

    const-string v6, "@wingGarden"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_6

    array-length v3, v1

    if-ne v3, v6, :cond_6

    .line 130
    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    if-lez v3, :cond_5

    if-ne v4, v8, :cond_5

    if-lez v1, :cond_5

    iget-object v5, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingGardens:Ljava/util/Map;

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v8, [I

    aput v4, v6, v2

    aput v1, v6, v9

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 134
    return-void

    .line 133
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid original garden agreement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_6
    aget-object v3, v1, v2

    const-string v10, "@itemReward"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    array-length v3, v1

    const/16 v10, 0x8

    if-ne v3, v10, :cond_8

    .line 137
    new-instance v2, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;-><init>([Ljava/lang/String;)V

    .line 138
    iget-object v1, v0, Lcom/project7/localmanager/LocalEventCatalog;->itemRewards:Ljava/util/Map;

    iget v3, v2, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->event:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 140
    return-void

    .line 139
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duplicate story item reward"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_8
    aget-object v3, v1, v2

    const-string v10, "@heroReward"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    array-length v3, v1

    if-ne v3, v6, :cond_a

    .line 143
    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 144
    if-lez v3, :cond_9

    if-lez v4, :cond_9

    if-lt v1, v9, :cond_9

    if-gt v1, v6, :cond_9

    iget-object v5, v0, Lcom/project7/localmanager/LocalEventCatalog;->heroRewards:Ljava/util/Map;

    .line 145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v8, [I

    aput v4, v6, v2

    aput v1, v6, v9

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    .line 147
    return-void

    .line 146
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid original hero reward definition"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_a
    aget-object v3, v1, v2

    const-string v10, "@arkRaid"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    array-length v3, v1

    if-ne v3, v5, :cond_b

    .line 150
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->arkRaids:Ljava/util/Map;

    aget-object v4, v1, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v7, [I

    aget-object v10, v1, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v5, v2

    aget-object v2, v1, v7

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v5, v9

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v5, v8

    .line 150
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void

    .line 154
    :cond_b
    aget-object v3, v1, v2

    const-string v10, "@memoryPiece"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    array-length v3, v1

    if-ne v3, v4, :cond_d

    .line 155
    new-instance v2, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;-><init>([Ljava/lang/String;)V

    .line 156
    iget-object v1, v0, Lcom/project7/localmanager/LocalEventCatalog;->memoryPieces:Ljava/util/Map;

    iget v3, v2, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->item:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    .line 157
    return-void

    .line 156
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duplicate memory definition"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_d
    aget-object v3, v1, v2

    const-string v10, "@puzzleRoom"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v10, 0x7

    if-eqz v3, :cond_e

    array-length v3, v1

    if-ne v3, v10, :cond_e

    .line 160
    new-instance v2, Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/LocalPuzzleEngine$Room;-><init>([Ljava/lang/String;)V

    .line 161
    iget-object v1, v0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    iget v3, v2, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->event:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void

    .line 164
    :cond_e
    aget-object v3, v1, v2

    const-string v11, "@puzzleClue"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    array-length v3, v1

    if-ne v3, v6, :cond_f

    .line 165
    new-instance v2, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;-><init>([Ljava/lang/String;)V

    .line 166
    iget-object v1, v0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleClues:Ljava/util/Map;

    iget v3, v2, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void

    .line 169
    :cond_f
    aget-object v3, v1, v2

    const-string v11, "@memoryReward"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    array-length v3, v1

    if-ne v3, v7, :cond_10

    .line 170
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->memoryRewards:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void

    .line 173
    :cond_10
    aget-object v3, v1, v2

    const-string v11, "@sailafeimu"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    array-length v3, v1

    if-ne v3, v6, :cond_11

    .line 174
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->sailafeimuEffects:Ljava/util/Map;

    aget-object v4, v1, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v8, [I

    aget-object v6, v1, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v2

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v5, v9

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void

    .line 177
    :cond_11
    aget-object v3, v1, v2

    const-string v11, "@confidence"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    array-length v3, v1

    if-ne v3, v7, :cond_12

    .line 178
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->confidenceEffects:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void

    .line 181
    :cond_12
    aget-object v3, v1, v2

    const-string v11, "@baiyu"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    array-length v3, v1

    if-ne v3, v7, :cond_14

    .line 182
    aget-object v2, v1, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 183
    if-lez v2, :cond_13

    if-eqz v1, :cond_13

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->baiyuEffects:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    .line 185
    return-void

    .line 184
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid signed Wing effect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_14
    aget-object v3, v1, v2

    const-string v11, "@yisake"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    array-length v3, v1

    if-ne v3, v7, :cond_16

    .line 188
    aget-object v2, v1, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 189
    if-lez v2, :cond_15

    if-lez v1, :cond_15

    const/16 v3, 0x64

    if-gt v1, v3, :cond_15

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->yisakeEffects:Ljava/util/Map;

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    .line 192
    return-void

    .line 191
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid original Yisake effect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_16
    aget-object v3, v1, v2

    const-string v11, "@targetCount"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    array-length v3, v1

    if-ne v3, v7, :cond_17

    .line 195
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->targetCounts:Ljava/util/Map;

    aget-object v3, v1, v9

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void

    .line 198
    :cond_17
    aget-object v3, v1, v2

    const-string v11, "@targetEffect"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    array-length v3, v1

    if-ne v3, v7, :cond_19

    .line 199
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 200
    aget-object v4, v1, v8

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_18

    aget-object v7, v4, v6

    .line 201
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 202
    aget-object v8, v7, v2

    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 204
    :cond_18
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->targetEffects:Ljava/util/Map;

    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void

    .line 207
    :cond_19
    aget-object v3, v1, v2

    const-string v11, "@cityEffect"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    array-length v3, v1

    if-ne v3, v7, :cond_1a

    .line 208
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->cityEffects:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    aget-object v1, v1, v8

    invoke-virtual {v4, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void

    .line 211
    :cond_1a
    aget-object v3, v1, v2

    const-string v11, "@cityOutcome"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    array-length v3, v1

    if-ne v3, v6, :cond_1b

    .line 212
    aget-object v2, v1, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 213
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->cityOutcomes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    aget-object v6, v1, v8

    invoke-static {v6}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v5, v2, v6, v1}, Lcom/project7/localmanager/LocalEventCatalog$Outcome;-><init>(ILjava/util/Set;Ljava/util/Set;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void

    .line 216
    :cond_1b
    aget-object v3, v1, v2

    const-string v11, "@clue"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    array-length v3, v1

    if-ne v3, v6, :cond_1c

    .line 217
    aget-object v2, v1, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 218
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->clueFamilies:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, v1, v8

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->clueRoutes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v1, v1, v7

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void

    .line 222
    :cond_1c
    aget-object v3, v1, v2

    const-string v11, "@clueEffect"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    array-length v3, v1

    if-ne v3, v6, :cond_1d

    .line 223
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->clueEffects:Ljava/util/Map;

    aget-object v4, v1, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v8, [Ljava/util/Set;

    aget-object v6, v1, v8

    .line 224
    invoke-static {v6}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    aput-object v6, v5, v2

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    aput-object v1, v5, v9

    .line 223
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void

    .line 227
    :cond_1d
    aget-object v3, v1, v2

    const-string v11, "@socialPermanent"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    array-length v3, v1

    if-ne v3, v8, :cond_1e

    .line 228
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->permanentSocialMessages:Ljava/util/Set;

    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    return-void

    .line 231
    :cond_1e
    aget-object v3, v1, v2

    const-string v11, "@socialConflict"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    array-length v3, v1

    if-ne v3, v7, :cond_1f

    .line 232
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->socialConflicts:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void

    .line 235
    :cond_1f
    aget-object v3, v1, v2

    const-string v11, "@build"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    array-length v3, v1

    if-ne v3, v7, :cond_20

    .line 236
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->buildingUnlocks:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void

    .line 239
    :cond_20
    aget-object v3, v1, v2

    const-string v11, "@social"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    array-length v3, v1

    if-lt v3, v6, :cond_24

    .line 240
    aget-object v2, v1, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 241
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->socialEvents:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v8, v1, v8

    invoke-static {v8}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    aget-object v3, v1, v7

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->autoSocialMessages:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_21
    array-length v3, v1

    if-lt v3, v5, :cond_22

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->socialActions:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_22
    array-length v3, v1

    if-lt v3, v4, :cond_23

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->socialMutex:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_23
    return-void

    .line 247
    :cond_24
    aget-object v3, v1, v2

    const-string v11, "@outcome"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    array-length v3, v1

    if-ne v3, v5, :cond_25

    .line 248
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->outcomes:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v7, v1, v7

    .line 249
    invoke-static {v7}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    aget-object v1, v1, v6

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v4, v5, v7, v1}, Lcom/project7/localmanager/LocalEventCatalog$Outcome;-><init>(ILjava/util/Set;Ljava/util/Set;)V

    .line 248
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void

    .line 252
    :cond_25
    aget-object v3, v1, v2

    const-string v11, "@consume"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    array-length v3, v1

    if-ne v3, v4, :cond_26

    .line 253
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    aget-object v4, v1, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v10, v6, [I

    aget-object v11, v1, v8

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v10, v2

    aget-object v2, v1, v7

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v10, v9

    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v10, v8

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v10, v7

    .line 253
    invoke-interface {v3, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void

    .line 257
    :cond_26
    aget-object v3, v1, v2

    const-string v11, "@battle"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    array-length v3, v1

    if-ne v3, v7, :cond_27

    .line 258
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->battles:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-void

    .line 261
    :cond_27
    aget-object v3, v1, v2

    const-string v11, "@external"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    array-length v3, v1

    if-ne v3, v8, :cond_28

    .line 262
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->externalEvents:Ljava/util/Set;

    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    return-void

    .line 265
    :cond_28
    aget-object v3, v1, v2

    const-string v11, "@route"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    array-length v3, v1

    if-ne v3, v7, :cond_29

    .line 266
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->routes:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v8

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void

    .line 269
    :cond_29
    aget-object v3, v1, v2

    const-string v11, "@effect"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    array-length v3, v1

    if-ne v3, v4, :cond_2b

    .line 270
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/project7/localmanager/LocalEventCatalog$Effect;

    invoke-direct {v4, v1}, Lcom/project7/localmanager/LocalEventCatalog$Effect;-><init>([Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/project7/localmanager/LocalEventCatalog$Effect;

    iget-object v2, v2, Lcom/project7/localmanager/LocalEventCatalog$Effect;->privateMessages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 272
    iget-object v4, v0, Lcom/project7/localmanager/LocalEventCatalog;->privateMessageEvents:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda0;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    aget-object v4, v1, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 273
    :cond_2a
    return-void

    .line 275
    :cond_2b
    aget-object v3, v1, v2

    const-string v11, "@note"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    array-length v3, v1

    if-ne v3, v6, :cond_2c

    .line 276
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->notes:Ljava/util/Map;

    aget-object v4, v1, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v8, [I

    aget-object v6, v1, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v2

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v5, v9

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void

    .line 279
    :cond_2c
    aget-object v3, v1, v2

    const-string v11, "@clearNote"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    array-length v3, v1

    if-ne v3, v7, :cond_2d

    .line 280
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->clearNotes:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void

    .line 283
    :cond_2d
    aget-object v3, v1, v2

    const-string v11, "@heroClear"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    array-length v3, v1

    if-ne v3, v7, :cond_2e

    .line 284
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->heroClears:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void

    .line 287
    :cond_2e
    aget-object v3, v1, v2

    const-string v11, "@privateReply"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    array-length v3, v1

    if-ne v3, v6, :cond_2f

    .line 288
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->privateReplies:Ljava/util/Map;

    aget-object v3, v1, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda1;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    aget-object v3, v1, v8

    .line 289
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->privateReplyMessages:Ljava/util/Map;

    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda0;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    aget-object v1, v1, v9

    .line 291
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    return-void

    .line 294
    :cond_2f
    aget-object v3, v1, v2

    const-string v11, "@mutex"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    array-length v3, v1

    if-ne v3, v7, :cond_30

    .line 295
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->mutexEvents:Ljava/util/Map;

    aget-object v4, v1, v9

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void

    .line 298
    :cond_30
    aget-object v3, v1, v2

    const-string v11, "@trigger"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v11, 0xa

    if-eqz v3, :cond_33

    .line 299
    array-length v3, v1

    if-eq v3, v11, :cond_31

    array-length v3, v1

    const/16 v4, 0xc

    if-eq v3, v4, :cond_31

    array-length v3, v1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_31

    array-length v3, v1

    const/16 v4, 0xe

    if-ne v3, v4, :cond_32

    .line 300
    :cond_31
    aget-object v3, v1, v9

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 301
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->triggers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    invoke-direct {v5, v2, v1}, Lcom/project7/localmanager/LocalEventCatalog$Trigger;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_32
    return-void

    .line 305
    :cond_33
    aget-object v3, v1, v2

    const-string v12, "@edge"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 306
    array-length v3, v1

    if-lt v3, v7, :cond_34

    .line 307
    aget-object v3, v1, v9

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 308
    aget-object v1, v1, v8

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 309
    if-eqz v3, :cond_34

    if-eqz v1, :cond_34

    .line 310
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->serverEdges:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda0;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_34
    return-void

    .line 315
    :cond_35
    array-length v3, v1

    if-ge v3, v10, :cond_36

    .line 316
    return-void

    .line 318
    :cond_36
    aget-object v3, v1, v2

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 319
    aget-object v3, v1, v9

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 320
    if-nez v13, :cond_37

    .line 321
    return-void

    .line 323
    :cond_37
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 324
    aget-object v4, v1, v4

    const-string v12, ";"

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v12, v4

    move v14, v2

    :goto_3
    if-ge v14, v12, :cond_39

    aget-object v15, v4, v14

    .line 325
    const/16 v9, 0x3d

    invoke-virtual {v15, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 326
    if-lez v9, :cond_38

    .line 327
    nop

    .line 328
    invoke-virtual {v15, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v9, v9, 0x1

    .line 329
    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .line 327
    invoke-interface {v10, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_38
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x5

    const/4 v9, 0x1

    goto :goto_3

    .line 333
    :cond_39
    iget-object v4, v0, Lcom/project7/localmanager/LocalEventCatalog;->events:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v9, Lcom/project7/localmanager/LocalEventCatalog$Event;

    and-int/lit8 v12, v3, 0x1

    if-eqz v12, :cond_3a

    const/4 v14, 0x1

    goto :goto_4

    :cond_3a
    move v14, v2

    :goto_4
    and-int/lit8 v12, v3, 0x2

    if-eqz v12, :cond_3b

    const/4 v15, 0x1

    goto :goto_5

    :cond_3b
    move v15, v2

    :goto_5
    and-int/lit8 v12, v3, 0x4

    if-eqz v12, :cond_3c

    const/16 v17, 0x1

    goto :goto_6

    :cond_3c
    move/from16 v17, v2

    :goto_6
    and-int/lit8 v12, v3, 0x8

    if-eqz v12, :cond_3d

    const/16 v18, 0x1

    goto :goto_7

    :cond_3d
    move/from16 v18, v2

    :goto_7
    and-int/lit8 v12, v3, 0x10

    if-eqz v12, :cond_3e

    const/16 v19, 0x1

    goto :goto_8

    :cond_3e
    move/from16 v19, v2

    :goto_8
    and-int/lit8 v12, v3, 0x20

    if-eqz v12, :cond_3f

    const/16 v20, 0x1

    goto :goto_9

    :cond_3f
    move/from16 v20, v2

    :goto_9
    and-int/lit8 v12, v3, 0x40

    if-eqz v12, :cond_40

    const/16 v21, 0x1

    goto :goto_a

    :cond_40
    move/from16 v21, v2

    :goto_a
    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_41

    const/4 v3, 0x1

    goto :goto_b

    :cond_41
    move v3, v2

    :goto_b
    aget-object v8, v1, v8

    .line 343
    invoke-static {v8, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v22

    aget-object v7, v1, v7

    .line 344
    invoke-static {v7, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v23

    aget-object v2, v1, v6

    .line 345
    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v24

    const/4 v2, 0x5

    aget-object v1, v1, v2

    .line 346
    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    move-object v12, v9

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    move-object/from16 v26, v10

    invoke-direct/range {v12 .. v26}, Lcom/project7/localmanager/LocalEventCatalog$Event;-><init>(IZZZZZZZZIIILjava/util/List;Ljava/util/Map;)V

    .line 333
    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void

    .line 118
    :cond_42
    :goto_c
    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x1
        0x2
        0x2
        -0x2
    .end array-data
.end method


# virtual methods
.method events()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/project7/localmanager/LocalEventCatalog$Event;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->events:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->events:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/project7/localmanager/LocalEventCatalog$Event;

    return-object p1
.end method

.method isEmergency(I)Z
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object p1

    .line 113
    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/project7/localmanager/LocalEventCatalog$Event;->emergency:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method mutex(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->mutexEvents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 95
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method successors(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 100
    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->successors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventCatalog;->serverEdges:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 105
    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_1
    return-object v0
.end method

.method trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->triggers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    return-object p1
.end method

.method triggers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/project7/localmanager/LocalEventCatalog$Trigger;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->triggers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
