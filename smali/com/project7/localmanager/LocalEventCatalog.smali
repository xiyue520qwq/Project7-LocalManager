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

.field final dailyPure:Ljava/util/Map;
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

.field flashbackEntry:I

.field flashbackLimit:I

.field final flashbackRounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field final generalRewards:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
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

.field final patrolExcluded:Ljava/util/Map;
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

.field final storyTreasureExclusions:Ljava/util/Map;
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

.field final storyTreasures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
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

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "event_graph.tsv"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventCatalog;-><init>(Ljava/io/InputStream;)V

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
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

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->patrolExcluded:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->notes:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->clearNotes:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->heroClears:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->dailyPure:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->privateReplies:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->privateReplyMessages:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->privateMessageEvents:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->externalEvents:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->routes:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->targetCounts:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->targetEffects:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->confidenceEffects:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->sailafeimuEffects:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->baiyuEffects:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->yisakeEffects:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->generalRewards:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->flashbackRounds:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->wingGardens:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->cityEffects:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->cityOutcomes:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->arkRaids:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->battles:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->outcomes:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->buildingUnlocks:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->socialEvents:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->socialActions:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->socialMutex:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->autoSocialMessages:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->permanentSocialMessages:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->socialConflicts:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->clueFamilies:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->clueRoutes:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->clueEffects:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->memoryPieces:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->memoryRewards:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->heroRewards:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->itemRewards:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->storyTreasures:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->storyTreasureExclusions:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleClues:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 80
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->parseLine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 84
    return-void

    .line 77
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

    .line 301
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$parseLine$1(Ljava/lang/Integer;)Ljava/util/Map;
    .locals 0

    .line 317
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 0

    .line 410
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 411
    :catch_0
    move-exception p0

    .line 412
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

    .line 391
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

    .line 395
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 396
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 399
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

    .line 400
    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 401
    if-eqz v4, :cond_1

    .line 402
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    :cond_2
    return-object v0

    .line 397
    :cond_3
    :goto_1
    return-object v0
.end method

.method private parseLine(Ljava/lang/String;)V
    .locals 27

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_c

    .line 127
    :cond_0
    const/4 v2, -0x1

    const-string v3, "\t"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 128
    const/4 v2, 0x0

    aget-object v3, v1, v2

    const-string v4, "@dailyPure"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_1

    array-length v3, v1

    if-ne v3, v4, :cond_1

    .line 129
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->dailyPure:Ljava/util/Map;

    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v9, v6, [I

    aget-object v10, v1, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v2

    aget-object v2, v1, v6

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v9, v8

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v9, v7

    .line 129
    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void

    .line 133
    :cond_1
    aget-object v3, v1, v2

    const-string v9, "@wingDrugs"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x6

    if-eqz v3, :cond_5

    array-length v3, v1

    if-ne v3, v9, :cond_5

    .line 134
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    if-nez v3, :cond_4

    .line 135
    new-array v3, v4, [I

    iput-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    .line 136
    nop

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    add-int/lit8 v5, v2, 0x1

    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v2

    move v2, v5

    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingDrugs:[I

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    return-void

    .line 138
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unreviewed original medicine policy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duplicate original medicine policy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_5
    aget-object v3, v1, v2

    const-string v10, "@wingGarden"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    array-length v3, v1

    if-ne v3, v5, :cond_7

    .line 142
    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 143
    if-lez v3, :cond_6

    if-ne v4, v7, :cond_6

    if-lez v1, :cond_6

    iget-object v5, v0, Lcom/project7/localmanager/LocalEventCatalog;->wingGardens:Ljava/util/Map;

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v7, [I

    aput v4, v6, v2

    aput v1, v6, v8

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 146
    return-void

    .line 145
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid original garden agreement"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_7
    aget-object v3, v1, v2

    const-string v10, "@itemReward"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    array-length v3, v1

    const/16 v10, 0x8

    if-ne v3, v10, :cond_9

    .line 149
    new-instance v2, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;-><init>([Ljava/lang/String;)V

    .line 150
    iget-object v1, v0, Lcom/project7/localmanager/LocalEventCatalog;->itemRewards:Ljava/util/Map;

    iget v3, v2, Lcom/project7/localmanager/LocalStoryItemRewardEngine$Reward;->event:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 152
    return-void

    .line 151
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duplicate story item reward"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_9
    aget-object v3, v1, v2

    const-string v10, "@heroReward"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    array-length v3, v1

    if-ne v3, v5, :cond_b

    .line 155
    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 156
    if-lez v3, :cond_a

    if-lez v4, :cond_a

    if-lt v1, v8, :cond_a

    if-gt v1, v5, :cond_a

    iget-object v5, v0, Lcom/project7/localmanager/LocalEventCatalog;->heroRewards:Ljava/util/Map;

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v7, [I

    aput v4, v6, v2

    aput v1, v6, v8

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    .line 159
    return-void

    .line 158
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid original hero reward definition"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_b
    aget-object v3, v1, v2

    const-string v10, "@arkRaid"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    array-length v3, v1

    if-ne v3, v4, :cond_c

    .line 162
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->arkRaids:Ljava/util/Map;

    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v9, v6, [I

    aget-object v10, v1, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v2

    aget-object v2, v1, v6

    .line 163
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v9, v8

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v9, v7

    .line 162
    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void

    .line 166
    :cond_c
    aget-object v3, v1, v2

    const-string v10, "@memoryPiece"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    array-length v3, v1

    if-ne v3, v9, :cond_e

    .line 167
    new-instance v2, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;-><init>([Ljava/lang/String;)V

    .line 168
    iget-object v1, v0, Lcom/project7/localmanager/LocalEventCatalog;->memoryPieces:Ljava/util/Map;

    iget v3, v2, Lcom/project7/localmanager/LocalStoryMemoryEngine$Piece;->item:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    .line 169
    return-void

    .line 168
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "duplicate memory definition"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_e
    aget-object v3, v1, v2

    const-string v10, "@puzzleRoom"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v10, 0x7

    if-eqz v3, :cond_f

    array-length v3, v1

    if-ne v3, v10, :cond_f

    .line 172
    new-instance v2, Lcom/project7/localmanager/LocalPuzzleEngine$Room;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/LocalPuzzleEngine$Room;-><init>([Ljava/lang/String;)V

    .line 173
    iget-object v1, v0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleRooms:Ljava/util/Map;

    iget v3, v2, Lcom/project7/localmanager/LocalPuzzleEngine$Room;->event:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void

    .line 176
    :cond_f
    aget-object v3, v1, v2

    const-string v11, "@puzzleClue"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    array-length v3, v1

    if-ne v3, v5, :cond_10

    .line 177
    new-instance v2, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;

    invoke-direct {v2, v1}, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;-><init>([Ljava/lang/String;)V

    .line 178
    iget-object v1, v0, Lcom/project7/localmanager/LocalEventCatalog;->puzzleClues:Ljava/util/Map;

    iget v3, v2, Lcom/project7/localmanager/LocalPuzzleEngine$Clue;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void

    .line 181
    :cond_10
    aget-object v3, v1, v2

    const-string v11, "@memoryReward"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    array-length v3, v1

    if-ne v3, v6, :cond_11

    .line 182
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->memoryRewards:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void

    .line 185
    :cond_11
    aget-object v3, v1, v2

    const-string v11, "@sailafeimu"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    array-length v3, v1

    if-ne v3, v5, :cond_12

    .line 186
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->sailafeimuEffects:Ljava/util/Map;

    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v7, [I

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v2

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v5, v8

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void

    .line 189
    :cond_12
    aget-object v3, v1, v2

    const-string v11, "@confidence"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    array-length v3, v1

    if-ne v3, v6, :cond_13

    .line 190
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->confidenceEffects:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void

    .line 193
    :cond_13
    aget-object v3, v1, v2

    const-string v11, "@baiyu"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    array-length v3, v1

    if-ne v3, v6, :cond_15

    .line 194
    aget-object v2, v1, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 195
    if-lez v2, :cond_14

    if-eqz v1, :cond_14

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->baiyuEffects:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    .line 197
    return-void

    .line 196
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid signed Wing effect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_15
    aget-object v3, v1, v2

    const-string v11, "@generalReward"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    array-length v3, v1

    if-ne v3, v6, :cond_17

    .line 200
    aget-object v2, v1, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 201
    if-lez v2, :cond_16

    if-lez v1, :cond_16

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->generalRewards:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    .line 203
    return-void

    .line 202
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid general currency reward"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_17
    aget-object v3, v1, v2

    const-string v11, "@flashback"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    array-length v3, v1

    if-ne v3, v6, :cond_19

    .line 206
    aget-object v2, v1, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->flashbackEntry:I

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/project7/localmanager/LocalEventCatalog;->flashbackLimit:I

    .line 207
    iget v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->flashbackEntry:I

    if-lez v2, :cond_18

    if-ne v1, v6, :cond_18

    .line 208
    return-void

    .line 207
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid flashback entry"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_19
    aget-object v3, v1, v2

    const-string v11, "@flashbackRound"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    array-length v3, v1

    if-ne v3, v5, :cond_1b

    .line 211
    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 212
    if-lt v3, v8, :cond_1a

    if-gt v3, v10, :cond_1a

    if-lez v4, :cond_1a

    if-lez v1, :cond_1a

    iget-object v5, v0, Lcom/project7/localmanager/LocalEventCatalog;->flashbackRounds:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v7, [I

    aput v4, v6, v2

    aput v1, v6, v8

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 214
    return-void

    .line 213
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid flashback round"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_1b
    aget-object v3, v1, v2

    const-string v11, "@yisake"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    array-length v3, v1

    if-ne v3, v6, :cond_1d

    .line 217
    aget-object v2, v1, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 218
    if-lez v2, :cond_1c

    if-lez v1, :cond_1c

    const/16 v3, 0x64

    if-gt v1, v3, :cond_1c

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->yisakeEffects:Ljava/util/Map;

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 221
    return-void

    .line 220
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid original Yisake effect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_1d
    aget-object v3, v1, v2

    const-string v11, "@targetCount"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    array-length v3, v1

    if-ne v3, v6, :cond_1e

    .line 224
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->targetCounts:Ljava/util/Map;

    aget-object v3, v1, v8

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void

    .line 227
    :cond_1e
    aget-object v3, v1, v2

    const-string v11, "@targetEffect"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    array-length v3, v1

    if-ne v3, v6, :cond_20

    .line 228
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 229
    aget-object v4, v1, v7

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1f

    aget-object v7, v4, v6

    .line 230
    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 231
    aget-object v9, v7, v2

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 233
    :cond_1f
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->targetEffects:Ljava/util/Map;

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void

    .line 236
    :cond_20
    aget-object v3, v1, v2

    const-string v11, "@cityEffect"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    array-length v3, v1

    if-ne v3, v6, :cond_21

    .line 237
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->cityEffects:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    aget-object v1, v1, v7

    invoke-virtual {v4, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void

    .line 240
    :cond_21
    aget-object v3, v1, v2

    const-string v11, "@cityOutcome"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    array-length v3, v1

    if-ne v3, v5, :cond_22

    .line 241
    aget-object v2, v1, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 242
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->cityOutcomes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    aget-object v7, v1, v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    aget-object v1, v1, v6

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v5, v2, v7, v1}, Lcom/project7/localmanager/LocalEventCatalog$Outcome;-><init>(ILjava/util/Set;Ljava/util/Set;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void

    .line 245
    :cond_22
    aget-object v3, v1, v2

    const-string v11, "@clue"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    array-length v3, v1

    if-ne v3, v5, :cond_23

    .line 246
    aget-object v2, v1, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 247
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->clueFamilies:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->clueRoutes:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v1, v1, v6

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void

    .line 251
    :cond_23
    aget-object v3, v1, v2

    const-string v11, "@clueEffect"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    array-length v3, v1

    if-ne v3, v5, :cond_24

    .line 252
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->clueEffects:Ljava/util/Map;

    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v7, [Ljava/util/Set;

    aget-object v7, v1, v7

    .line 253
    invoke-static {v7}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    aput-object v7, v5, v2

    aget-object v1, v1, v6

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    aput-object v1, v5, v8

    .line 252
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void

    .line 256
    :cond_24
    aget-object v3, v1, v2

    const-string v11, "@socialPermanent"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    array-length v3, v1

    if-ne v3, v7, :cond_25

    .line 257
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->permanentSocialMessages:Ljava/util/Set;

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    return-void

    .line 260
    :cond_25
    aget-object v3, v1, v2

    const-string v11, "@socialConflict"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    array-length v3, v1

    if-ne v3, v6, :cond_26

    .line 261
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->socialConflicts:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void

    .line 264
    :cond_26
    aget-object v3, v1, v2

    const-string v11, "@build"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    array-length v3, v1

    if-ne v3, v6, :cond_27

    .line 265
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->buildingUnlocks:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void

    .line 268
    :cond_27
    aget-object v3, v1, v2

    const-string v11, "@social"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    array-length v3, v1

    if-lt v3, v5, :cond_2b

    .line 269
    aget-object v2, v1, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 270
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->socialEvents:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v7, v1, v7

    invoke-static {v7}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    aget-object v3, v1, v6

    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->autoSocialMessages:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_28
    array-length v3, v1

    if-lt v3, v4, :cond_29

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->socialActions:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_29
    array-length v3, v1

    if-lt v3, v9, :cond_2a

    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->socialMutex:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v1, v1, v4

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_2a
    return-void

    .line 276
    :cond_2b
    aget-object v3, v1, v2

    const-string v11, "@outcome"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    array-length v3, v1

    if-ne v3, v4, :cond_2c

    .line 277
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->outcomes:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/project7/localmanager/LocalEventCatalog$Outcome;

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v1, v6

    .line 278
    invoke-static {v6}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v4, v7, v6, v1}, Lcom/project7/localmanager/LocalEventCatalog$Outcome;-><init>(ILjava/util/Set;Ljava/util/Set;)V

    .line 277
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void

    .line 281
    :cond_2c
    aget-object v3, v1, v2

    const-string v11, "@consume"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    array-length v3, v1

    if-ne v3, v9, :cond_2d

    .line 282
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->consumptions:Ljava/util/Map;

    aget-object v9, v1, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v5, [I

    aget-object v11, v1, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v10, v2

    aget-object v2, v1, v6

    .line 283
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v10, v8

    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v10, v7

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v10, v6

    .line 282
    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void

    .line 286
    :cond_2d
    aget-object v3, v1, v2

    const-string v11, "@battle"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    array-length v3, v1

    if-ne v3, v6, :cond_2e

    .line 287
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->battles:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void

    .line 290
    :cond_2e
    aget-object v3, v1, v2

    const-string v11, "@external"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    array-length v3, v1

    if-ne v3, v7, :cond_2f

    .line 291
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->externalEvents:Ljava/util/Set;

    aget-object v1, v1, v8

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

    const-string v11, "@route"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    array-length v3, v1

    if-ne v3, v6, :cond_30

    .line 295
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->routes:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v7

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void

    .line 298
    :cond_30
    aget-object v3, v1, v2

    const-string v11, "@effect"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    array-length v3, v1

    if-ne v3, v9, :cond_32

    .line 299
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/project7/localmanager/LocalEventCatalog$Effect;

    invoke-direct {v4, v1}, Lcom/project7/localmanager/LocalEventCatalog$Effect;-><init>([Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->effects:Ljava/util/Map;

    aget-object v3, v1, v8

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

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 301
    iget-object v4, v0, Lcom/project7/localmanager/LocalEventCatalog;->privateMessageEvents:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda0;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 302
    :cond_31
    return-void

    .line 304
    :cond_32
    aget-object v3, v1, v2

    const-string v11, "@note"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    array-length v3, v1

    if-ne v3, v5, :cond_33

    .line 305
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->notes:Ljava/util/Map;

    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v7, [I

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v2

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v5, v8

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void

    .line 308
    :cond_33
    aget-object v3, v1, v2

    const-string v11, "@clearNote"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    array-length v3, v1

    if-ne v3, v6, :cond_34

    .line 309
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->clearNotes:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void

    .line 312
    :cond_34
    aget-object v3, v1, v2

    const-string v11, "@heroClear"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    array-length v3, v1

    if-ne v3, v6, :cond_35

    .line 313
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->heroClears:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    return-void

    .line 316
    :cond_35
    aget-object v3, v1, v2

    const-string v11, "@privateReply"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    array-length v3, v1

    if-ne v3, v5, :cond_36

    .line 317
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->privateReplies:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda1;->INSTANCE:Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda1;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    aget-object v3, v1, v7

    .line 318
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->privateReplyMessages:Ljava/util/Map;

    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda0;->INSTANCE:Lcom/project7/localmanager/LocalEventCatalog$$ExternalSyntheticLambda0;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    aget-object v1, v1, v8

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    return-void

    .line 323
    :cond_36
    aget-object v3, v1, v2

    const-string v11, "@mutex"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    array-length v3, v1

    if-ne v3, v6, :cond_37

    .line 324
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->mutexEvents:Ljava/util/Map;

    aget-object v4, v1, v8

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-void

    .line 327
    :cond_37
    aget-object v3, v1, v2

    const-string v11, "@patrolExcluded"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    array-length v3, v1

    if-ne v3, v6, :cond_38

    .line 328
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->patrolExcluded:Ljava/util/Map;

    aget-object v4, v1, v8

    invoke-static {v4, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v1, v1, v7

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-void

    .line 331
    :cond_38
    aget-object v3, v1, v2

    const-string v11, "@storyTreasure"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    array-length v3, v1

    if-ne v3, v10, :cond_39

    .line 332
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->storyTreasures:Ljava/util/Map;

    aget-object v10, v1, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v11, v5, [I

    aget-object v12, v1, v7

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v11, v2

    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v11, v8

    aget-object v2, v1, v5

    .line 333
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v11, v7

    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v11, v6

    .line 332
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v2, v0, Lcom/project7/localmanager/LocalEventCatalog;->storyTreasureExclusions:Ljava/util/Map;

    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v1, v1, v9

    invoke-static {v1}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-void

    .line 337
    :cond_39
    aget-object v3, v1, v2

    const-string v11, "@trigger"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v11, 0xa

    if-eqz v3, :cond_3c

    .line 338
    array-length v3, v1

    if-eq v3, v11, :cond_3a

    array-length v3, v1

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3a

    array-length v3, v1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3a

    array-length v3, v1

    const/16 v4, 0xe

    if-ne v3, v4, :cond_3b

    .line 339
    :cond_3a
    aget-object v3, v1, v8

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 340
    iget-object v3, v0, Lcom/project7/localmanager/LocalEventCatalog;->triggers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/project7/localmanager/LocalEventCatalog$Trigger;

    invoke-direct {v5, v2, v1}, Lcom/project7/localmanager/LocalEventCatalog$Trigger;-><init>(I[Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_3b
    return-void

    .line 344
    :cond_3c
    aget-object v3, v1, v2

    const-string v12, "@edge"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 345
    array-length v3, v1

    if-lt v3, v6, :cond_3d

    .line 346
    aget-object v3, v1, v8

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 347
    aget-object v1, v1, v7

    invoke-static {v1, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 348
    if-eqz v3, :cond_3d

    if-eqz v1, :cond_3d

    .line 349
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

    .line 352
    :cond_3d
    return-void

    .line 354
    :cond_3e
    array-length v3, v1

    if-ge v3, v10, :cond_3f

    .line 355
    return-void

    .line 357
    :cond_3f
    aget-object v3, v1, v2

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 358
    aget-object v3, v1, v8

    invoke-static {v3, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 359
    if-nez v13, :cond_40

    .line 360
    return-void

    .line 362
    :cond_40
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 363
    aget-object v9, v1, v9

    const-string v12, ";"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v12, v9

    move v14, v2

    :goto_3
    if-ge v14, v12, :cond_42

    aget-object v15, v9, v14

    .line 364
    const/16 v8, 0x3d

    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 365
    if-lez v8, :cond_41

    .line 366
    nop

    .line 367
    invoke-virtual {v15, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v8, v8, 0x1

    .line 368
    invoke-virtual {v15, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/project7/localmanager/LocalEventCatalog;->parseIntSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    .line 366
    invoke-interface {v10, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_41
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x5

    const/4 v8, 0x1

    goto :goto_3

    .line 372
    :cond_42
    iget-object v4, v0, Lcom/project7/localmanager/LocalEventCatalog;->events:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/project7/localmanager/LocalEventCatalog$Event;

    and-int/lit8 v12, v3, 0x1

    if-eqz v12, :cond_43

    const/4 v14, 0x1

    goto :goto_4

    :cond_43
    move v14, v2

    :goto_4
    and-int/lit8 v12, v3, 0x2

    if-eqz v12, :cond_44

    const/4 v15, 0x1

    goto :goto_5

    :cond_44
    move v15, v2

    :goto_5
    and-int/lit8 v12, v3, 0x4

    if-eqz v12, :cond_45

    const/16 v17, 0x1

    goto :goto_6

    :cond_45
    move/from16 v17, v2

    :goto_6
    and-int/lit8 v12, v3, 0x8

    if-eqz v12, :cond_46

    const/16 v18, 0x1

    goto :goto_7

    :cond_46
    move/from16 v18, v2

    :goto_7
    and-int/lit8 v12, v3, 0x10

    if-eqz v12, :cond_47

    const/16 v19, 0x1

    goto :goto_8

    :cond_47
    move/from16 v19, v2

    :goto_8
    and-int/lit8 v12, v3, 0x20

    if-eqz v12, :cond_48

    const/16 v20, 0x1

    goto :goto_9

    :cond_48
    move/from16 v20, v2

    :goto_9
    and-int/lit8 v12, v3, 0x40

    if-eqz v12, :cond_49

    const/16 v21, 0x1

    goto :goto_a

    :cond_49
    move/from16 v21, v2

    :goto_a
    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4a

    const/4 v3, 0x1

    goto :goto_b

    :cond_4a
    move v3, v2

    :goto_b
    aget-object v7, v1, v7

    .line 382
    invoke-static {v7, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v22

    aget-object v6, v1, v6

    .line 383
    invoke-static {v6, v2}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v23

    aget-object v2, v1, v5

    .line 384
    invoke-static {v2, v11}, Lcom/project7/localmanager/LocalEventCatalog;->parseInt(Ljava/lang/String;I)I

    move-result v24

    const/4 v2, 0x5

    aget-object v1, v1, v2

    .line 385
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

    .line 372
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    return-void

    .line 125
    :cond_4b
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

    .line 97
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->events:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;
    .locals 1

    .line 87
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

    .line 119
    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object p1

    .line 120
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

    .line 101
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->mutexEvents:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 102
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

    .line 106
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/project7/localmanager/LocalEventCatalog;->get(I)Lcom/project7/localmanager/LocalEventCatalog$Event;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    iget-object v1, v1, Lcom/project7/localmanager/LocalEventCatalog$Event;->successors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/project7/localmanager/LocalEventCatalog;->serverEdges:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 112
    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 115
    :cond_1
    return-object v0
.end method

.method trigger(I)Lcom/project7/localmanager/LocalEventCatalog$Trigger;
    .locals 1

    .line 90
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

    .line 93
    iget-object v0, p0, Lcom/project7/localmanager/LocalEventCatalog;->triggers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
